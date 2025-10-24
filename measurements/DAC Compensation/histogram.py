#!/usr/bin/env python3
"""
Histogram from command-line values (comma- or space-separated).
Frequency labels above bars are REMOVED.

Example:
    python histogram_cli.py 27.86,28.54,... 29.33 -b 12
"""

import argparse
import sys
import numpy as np
import matplotlib.pyplot as plt

def parse_values(arg_strs):
    """Turn a list of strings (comma- or space-separated) into a float array."""
    raw = ' '.join(arg_strs)          # join all args into one string
    raw = raw.replace(',', ' ')       # treat commas as spaces
    parts = raw.split()
    try:
        return np.array([float(p) for p in parts if p.strip()])
    except ValueError as e:
        sys.exit(f"Error parsing numbers: {e}")

def main():
    parser = argparse.ArgumentParser(
        description="Create a histogram from command-line numeric values.")
    parser.add_argument('values', nargs='+',
                        help="One or more numbers (comma- or space-separated)")
    parser.add_argument('-b', '--bins', type=int, default=10,
                        help="Number of equal-width bins (default: 10)")
    parser.add_argument('--title', type=str, default=None,
                        help="Custom plot title")
    parser.add_argument('--output', type=str, default=None,
                        help="Save plot to file (e.g. plot.png)")

    args = parser.parse_args()

    data = parse_values(args.values)
    if data.size == 0:
        sys.exit("No valid numbers supplied.")

    # ---- histogram -------------------------------------------------
    fig, ax = plt.subplots(figsize=(10, 6))
    n, bins, patches = ax.hist(data, bins=args.bins,
                               edgecolor='black', color='#4c72b0', alpha=0.75)

    # <-- NO frequency labels are added here -->

    # cosmetics
    title = args.title or f'Histogram (n={len(data)}, {args.bins} bins)'
    ax.set_title(title, fontsize=14)
    ax.set_xlabel('Error Voltage (mV)')
    ax.set_ylabel('Frequency')
    ax.grid(axis='y', alpha=0.3)
    ax.set_xticks(bins)
    ax.tick_params(axis='x', rotation=45)

    plt.tight_layout()

    # ---- show / save ------------------------------------------------
    if args.output:
        plt.savefig(args.output, dpi=300)
        print(f"Plot saved to {args.output}")
    else:
        plt.show()

    # ---- stats ------------------------------------------------------
    print("\n=== Data summary ===")
    print(f"  Count      : {len(data)}")
    print(f"  Min        : {data.min():.2f}")
    print(f"  Max        : {data.max():.2f}")
    print(f"  Mean       : {data.mean():.2f}")
    print(f"  Std-dev    : {data.std():.2f}")
    print(f"  Bins       : {args.bins}")
    print(f"  Bin width  : {(data.max() - data.min())/args.bins:.3f}")

if __name__ == '__main__':
    main()