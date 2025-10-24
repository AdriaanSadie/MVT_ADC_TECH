#!/usr/bin/env python3
"""
hex_to_voltage_waveform.py

Usage:
    python hex_to_voltage_waveform.py "your_hex_string"

What it does:
- Splits hex string into individual hex chars
- Converts each to decimal (0-15), starting from LSB (rightmost)
- Scales to voltage: decimal * 0.1 (since 15 -> 1.5V)
- Writes voltages to: voltages.txt (one per line)
- Plots waveform: voltage vs time (200 MHz sampling)
- Superimposes a fitted sine wave (amp=0.85V, offset=0.85V, freq=500kHz)
- Fits the phase to best match the sampled voltages
- Saves plot to: waveform.png
"""

import sys
import os
import matplotlib.pyplot as plt
import numpy as np
from scipy.optimize import minimize_scalar

def main():
    if len(sys.argv) != 2:
        print("Usage: python hex_to_voltage_waveform.py \"<hex_string>\"")
        sys.exit(1)

    hex_str = sys.argv[1].strip().upper()
    
    # Keep only valid hex chars
    hex_str = ''.join(c for c in hex_str if c in '0123456789ABCDEF')
    
    if not hex_str:
        print("Error: No valid hex characters found.")
        sys.exit(1)

    # Convert each hex char to decimal (0-15), from RIGHT to LEFT (LSB first)
    decimals = [int(c, 16) for c in reversed(hex_str)]
    
    # Scale to voltages: 0-15 -> 0-1.5V (step 0.1V)
    voltages = np.array([d * 0.1 for d in decimals])

    # Write voltages to file
    script_dir = os.path.dirname(os.path.abspath(__file__))
    output_file = os.path.join(script_dir, "voltages1.txt")
    with open(output_file, 'w') as f:
        f.write('\n'.join(f"{v:.1f}" for v in voltages))

    print(f"Success: {len(voltages)} voltages written to {output_file}")
    print(f"   First 5 (LSB): {voltages[:5].tolist()}")
    print(f"   Last  5 (MSB): {voltages[-5:].tolist()}")

    # Time array: 200 MHz -> dt = 5e-9 s
    dt = 5e-9  # seconds
    times = np.arange(0, len(voltages) * dt, dt)

    # Define sine function
    amp = 0.85
    offset = 0.85
    freq = 500e3  # 500 kHz
    def sine(phi):
        return offset + amp * np.sin(2 * np.pi * freq * times + phi)

    # Fit phase phi to minimize MSE
    def mse(phi):
        return np.mean((voltages - sine(phi))**2)
    
    res = minimize_scalar(mse, bounds=(0, 2 * np.pi), method='bounded')
    best_phi = res.x
    print(f"Best fitted phase: {best_phi:.4f} radians")

    # Generate fitted sine
    sine_vals = sine(best_phi)

    # Plot: sampled as step, sine as smooth line
    plt.figure(figsize=(12, 6))
    plt.step(times, voltages, where='post', label='Sampled ADC (4-bit)', linewidth=1.5)
    plt.plot(times, sine_vals, label='Fitted Sine Wave (12-bit equivalent)', color='red', linewidth=1.5)
    plt.xlabel('Time (seconds)')
    plt.ylabel('Voltage (V)')
    plt.title('ADC Waveform with Superimposed Fitted Sine (200 MHz sampling)')
    plt.legend(loc='upper right')
    plt.grid(True)
    
    # Save plot
    plot_file = os.path.join(script_dir, "waveform.png")
    plt.savefig(plot_file)
    plt.close()
    
    print(f"Waveform plot saved to {plot_file}")

if __name__ == "__main__":
    main()