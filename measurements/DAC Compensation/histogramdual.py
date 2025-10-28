#!/usr/bin/env python3
"""
Plot two histograms on the SAME graph,
but each dataset uses its OWN bin edges (same number of bins).

Files:
    data1.txt   → one number per line
    data2.txt   → one number per line

Run:
    python histogram_dual_separate_bins.py -b 12 --output comparison.png
"""

import argparse
import sys
import numpy as np
import matplotlib.pyplot as plt

def load_data(filename):
    """Load numbers from a text file (one per line)."""
    try:
        with open(filename, 'r') as f:
            lines = [line.strip() for line in f if line.strip()]
        return np.array([float(x) for x in lines])
    except FileNotFoundError:
        sys.exit(f"Error: File '{filename}' not found.")
    except ValueError as e:
        sys.exit(f"Error: Invalid number in '{filename}': {e}")

def main():
    parser = argparse.ArgumentParser(
        description="Plot two histograms with same number of bins but separate bin edges.")
    parser.add_argument('-b', '--bins', type=int, default=10,
                        help="Number of bins PER dataset (default: 10)")
    parser.add_argument('--label1', type=str, default="Uncompensated",
                        help="Legend label for data1.txt")
    parser.add_argument('--label2', type=str, default="Compensated",
                        help="Legend label for data2.txt")
    parser.add_argument('--title', type=str, default=None,
                        help="Custom plot title")
    parser.add_argument('--output', type=str, default=None,
                        help="Save plot to file (e.g. plot.png)")
    parser.add_argument('--alpha', type=float, default=0.6,
                        help="Bar transparency (0–1, default: 0.6)")

    args = parser.parse_args()

    # Load data
    print("Loading data1.txt...")
    d1 = load_data("data1.txt")
    print(f"→ {len(d1)} values (min={d1.min():.2f}, max={d1.max():.2f})")

    print("Loading data2.txt...")
    d2 = load_data("data2.txt")
    print(f"→ {len(d2)} values (min={d2.min():.2f}, max={d2.max():.2f})")

    if args.bins < 1:
        sys.exit("Error: Number of bins must be >= 1")

    # Create separate bin edges for each dataset
    bin_edges1 = np.linspace(d1.min(), d1.max(), args.bins + 1)
    bin_edges2 = np.linspace(d2.min(), d2.max(), args.bins + 1)

    # Plot on same axis
    fig, ax = plt.subplots(figsize=(11, 6))

    # Dataset 1
    ax.hist(d1, bins=bin_edges1, alpha=args.alpha,
            color='#1f77b4', edgecolor='black', label=args.label1)

    # Dataset 2
    ax.hist(d2, bins=bin_edges2, alpha=args.alpha,
            color='#ff7f0e', edgecolor='black', label=args.label2)

    # Styling
    title = args.title or f"Bit 4 Error voltage measured for Vref = 0.9V"
    ax.set_title(title, fontsize=14)
    ax.set_xlabel('Error in voltage (mV)')
    ax.set_ylabel('Frequency')
    ax.grid(axis='y', alpha=0.3)
    ax.legend(frameon=True, fancybox=True, shadow=True)
    ax.tick_params(axis='x', rotation=45)

    plt.tight_layout()

    # Save or show
    if args.output:
        plt.savefig(args.output, dpi=300, bbox_inches='tight')
        print(f"Plot saved to '{args.output}'")
    else:
        plt.show()

    # Print stats
    print("\n" + "="*60)
    print("Uncompensated (data1.txt)".center(60))
    print("="*60)
    print(f"  Count     : {len(d1)}")
    print(f"  Min       : {d1.min():.2f}")
    print(f"  Max       : {d1.max():.2f}")
    print(f"  Mean      : {d1.mean():.2f}")
    print(f"  Std Dev   : {d1.std():.2f}")
    print(f"  Bin width : {(d1.max() - d1.min())/args.bins:.3f}")

    print("\n" + "="*60)
    print("Compensated (data2.txt)".center(60))
    print("="*60)
    print(f"  Count     : {len(d2)}")
    print(f"  Min       : {d2.min():.2f}")
    print(f"  Max       : {d2.max():.2f}")
    print(f"  Mean      : {d2.mean():.2f}")
    print(f"  Std Dev   : {d2.std():.2f}")
    print(f"  Bin width : {(d2.max() - d2.min())/args.bins:.3f}")

if __name__ == '__main__':
    main()