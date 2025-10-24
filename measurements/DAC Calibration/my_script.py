import sys

def parse_string_to_8char_segments(input_string):
    """
    Parse a string into 8-character segments, excluding trailing padding or incomplete segments.
    Returns a list of 8-character strings suitable for Excel.
    
    Args:
        input_string (str): The input string to parse (e.g., sequence of hexadecimal values).
    
    Returns:
        list: A list of 8-character strings.
    """
    # Handle empty or very short strings
    if not input_string or len(input_string) < 8:
        return []
    
    # Remove any trailing '00000000' padding
    if input_string.endswith('00000000'):
        input_string = input_string[:-8]
    
    # Calculate the number of complete 8-character segments
    segment_length = 8
    num_segments = len(input_string) // segment_length
    
    # Extract 8-character segments
    segments = [input_string[i * segment_length:(i + 1) * segment_length] 
                for i in range(num_segments)]
    
    # Filter out any incomplete segments (less than 8 characters)
    segments = [seg for seg in segments if len(seg) == segment_length]
    
    return segments

def save_to_file(segments, output_file="parsed_segments.txt"):
    """
    Save the list of segments to a text file, one segment per line.
    
    Args:
        segments (list): List of 8-character strings.
        output_file (str): Path to the output text file.
    """
    with open(output_file, 'w') as f:
        if not segments:
            f.write("No valid 8-character segments found.\n")
        else:
            for segment in segments:
                f.write(segment + '\n')
    print(f"Output saved to {output_file}")

def main():
    # Check if an input string was provided as a command-line argument
    if len(sys.argv) < 2:
        print("Error: No input string provided.")
        print("Usage: python parse_hex.py <input_string>")
        sys.exit(1)
    
    # Get the input string from command-line argument
    input_string = sys.argv[1]
    
    # Parse the string
    segments = parse_string_to_8char_segments(input_string)
    
    # Print segments (for verification)
    if not segments:
        print("No valid 8-character segments found.")
    else:
        for segment in segments:
            print(segment)
    
    # Save to a text file
    save_to_file(segments, "parsed_segments.txt")

if __name__ == "__main__":
    main()