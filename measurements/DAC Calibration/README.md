my_script.py

run as follows:

py .\my_script.py "hex string here"

This script is for the calibration of each bit. Paste the hex string in the command line as previously (this time data comes from the DAC BRAM block). The script produces the decimal value equivalent of each 32 bit word (there are 128 of them) and writes it in sequence to a file called "parsed_segments.txt". The contents of the file I then copy and paste to my spreadsheet where I calculate the errors. The values are the counter value for when a triangle wave crosses the threshold of a reference voltage for a single LVDS comparator.