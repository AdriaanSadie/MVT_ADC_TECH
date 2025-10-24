#!/usr/bin/env python3
"""
hex_to_decimal_lsb.py

Usage:
    python hex_to_decimal_lsb.py "A1B2C3F"

Output:
    Saves decimal values (LSB first) to: values.txt
    Example input:  "A1B2C3F"
    Output file:
        15   (F)
        3    (3)
        12   (C)
        2    (2)
        11   (B)
        1    (1)
        10   (A)
"""

import sys
import os

def main():
    if len(sys.argv) != 2:
        print("Usage: python hex_to_decimal_lsb.py \"<hex_string>\"")
        sys.exit(1)

    hex_str = sys.argv[1].strip().upper()
    
    # Keep only valid hex chars
    hex_str = ''.join(c for c in hex_str if c in '0123456789ABCDEF')
    
    if not hex_str:
        print("Error: No valid hex characters found.")
        sys.exit(1)

    # Convert each hex char to decimal, from RIGHT to LEFT (LSB first)
    decimals = [int(c, 16) for c in reversed(hex_str)]

    # Write to file
    output_file = os.path.join(os.path.dirname(__file__), "values.txt")
    with open(output_file, 'w') as f:
        f.write('\n'.join(map(str, decimals)))

    print(f"Success: {len(decimals)} values written to values.txt")
    print(f"   First 5 (LSB): {decimals[:5]}")
    print(f"   Last  5 (MSB): {decimals[-5:]}")

if __name__ == "__main__":
    main()