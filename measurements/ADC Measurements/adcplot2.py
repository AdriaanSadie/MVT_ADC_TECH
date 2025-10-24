#!/usr/bin/env python3
"""
hex_to_voltage_waveform.py

- 4-bit ADC (200 MHz) → voltages (0-1.5 V), LSB first
- Loads oscilloscope CSV
- Fits **time shift** + **phase offset** → perfect alignment
- Plots **only**:
      • ADC step trace (blue)
      • Phase-aligned scope sine (red)
- Saves voltages.txt + waveform.png
"""

import sys
import os
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from scipy.optimize import minimize
from scipy.signal import hilbert
from scipy.interpolate import interp1d

def main():
    if len(sys.argv) != 3:
        print("Usage: python hex_to_voltage_waveform.py \"<hex_string>\" \"<csv_file>\"")
        sys.exit(1)

    hex_str = sys.argv[1].strip().upper()
    csv_file = sys.argv[2]

    # -------------------------------------------------
    # 1. ADC: hex → decimal → voltage (LSB first)
    # -------------------------------------------------
    hex_str = ''.join(c for c in hex_str if c in '0123456789ABCDEF')
    if not hex_str:
        print("Error: No valid hex characters.")
        sys.exit(1)

    decimals = [int(c, 16) for c in reversed(hex_str)]
    voltages = np.array([d * 0.1 for d in decimals])      # 0-1.5 V
    dt = 5e-9                                            # 200 MHz
    times_adc = np.arange(0, len(voltages) * dt, dt)

    # write voltages.txt
    out_dir = os.path.dirname(os.path.abspath(__file__))
    with open(os.path.join(out_dir, "voltages2.txt"), 'w') as f:
        f.write('\n'.join(f"{v:.1f}" for v in voltages))
    print(f"Saved {len(voltages)} ADC points to voltages.txt")

    # -------------------------------------------------
    # 2. Load oscilloscope CSV
    # -------------------------------------------------
    df = pd.read_csv(csv_file, skiprows=20)
    t_scope = df['TIME'].values
    v_scope = df['CH1'].values
    print(f"Loaded {len(t_scope)} scope points")

    # -------------------------------------------------
    # 3. Interpolation helper
    # -------------------------------------------------
    def scope_at_adc(shift):
        t_shifted = t_scope + shift
        order = np.argsort(t_shifted)
        interp = interp1d(t_shifted[order], v_scope[order],
                          kind='linear', fill_value='extrapolate')
        return interp(times_adc)

    # -------------------------------------------------
    # 4. Cost function: time shift + phase rotation
    # -------------------------------------------------
    def cost(params):
        shift, phase = params
        v_s = scope_at_adc(shift)

        # phase rotation via Hilbert transform
        analytic = hilbert(v_s)
        v_rot = np.real(analytic * np.exp(1j * phase))

        return np.mean((voltages - v_rot) ** 2)

    # initial guess & bounds
    x0 = [0.0, 0.0]
    bounds = [(-1e-5, 1e-5), (-np.pi, np.pi)]

    print("Fitting time shift + phase ...")
    res = minimize(cost, x0, bounds=bounds, method='L-BFGS-B')
    best_shift, best_phase = res.x
    print(f"Best shift : {best_shift:.3e} s")
    print(f"Best phase : {best_phase:.3f} rad ({np.degrees(best_phase):.1f}°)")

    # -------------------------------------------------
    # 5. Build the aligned scope trace (high-res)
    # -------------------------------------------------
    t_shifted = t_scope + best_shift
    order = np.argsort(t_shifted)
    interp = interp1d(t_shifted[order], v_scope[order],
                      kind='linear', fill_value='extrapolate')
    v_interp = interp(times_adc)

    analytic = hilbert(v_interp)
    v_aligned = np.real(analytic * np.exp(1j * best_phase))

    # -------------------------------------------------
    # 6. Trim scope to ADC window (for neat line ends)
    # -------------------------------------------------
    mask = (t_shifted >= times_adc[0]) & (t_shifted <= times_adc[-1])
    t_scope_trim = t_shifted[mask]
    v_scope_trim = v_scope[mask]

    # -------------------------------------------------
    # 7. Plot – ONLY ADC + aligned sine
    # -------------------------------------------------
    plt.figure(figsize=(12, 6))
    plt.step(times_adc, voltages, where='post',
             label='4-bit ADC (200 MHz)', linewidth=1.8, color='C0')
    plt.plot(times_adc, v_aligned,
             label='Oscilloscope (phase-aligned)', color='red', linewidth=2)

    plt.xlabel('Time (s)')
    plt.ylabel('Voltage (V)')
    plt.title('ADC Samples + Phase-Aligned Oscilloscope Sine')
    plt.legend()
    plt.grid(True, alpha=0.3)
    plt.xlim(times_adc[0], times_adc[-1])

    plot_path = os.path.join(out_dir, "waveform_plus_real_sine.png")
    plt.savefig(plot_path, dpi=200, bbox_inches='tight')
    plt.close()
    print(f"Plot saved → {plot_path}")

if __name__ == "__main__":
    main()