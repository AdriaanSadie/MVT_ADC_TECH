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
- Plots waveform: voltage vs time (200 MHz clock, dt=5ns)
- Saves plot to: waveform.png
"""

import sys
import os
import matplotlib.pyplot as plt
import numpy as np

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
    voltages = [d * 0.1 for d in decimals]

    # Write voltages to file
    script_dir = os.path.dirname(os.path.abspath(__file__))
    output_file = os.path.join(script_dir, "voltages.txt")
    with open(output_file, 'w') as f:
        f.write('\n'.join(f"{v:.1f}" for v in voltages))

    print(f"Success: {len(voltages)} voltages written to {output_file}")
    print(f"   First 5 (LSB): {voltages[:5]}")
    print(f"   Last  5 (MSB): {voltages[-5:]}")

    # Generate waveform plot
    # Clock freq: 200 MHz -> dt = 1 / 200e6 = 5e-9 s
    dt = 5e-9  # seconds
    times = np.arange(0, len(voltages) * dt, dt)

    plt.figure(figsize=(12, 6))
    plt.step(times, voltages, where='post', linewidth=1.5)
    plt.xlabel('Time (seconds)')
    plt.ylabel('Voltage (V)')
    plt.title('ADC Waveform (200 MHz sampling)')
    plt.grid(True)
    
    # Save plot
    plot_file = os.path.join(script_dir, "waveform_adc.png")
    plt.savefig(plot_file)
    plt.close()
    
    print(f"Waveform plot saved to {plot_file}")

if __name__ == "__main__":
    main()