1. histogram.py

run as follows:

py .\my_histogram.py "comma separated error voltages from DAC calibrated spreadsheet"

e.g.

py .\my_histogram.py -1.08,0.07,-0.12,-0.36,-1.63,0.36,-1.03,-1.25,-0.31,-1.84


This script creates a histogram of a single data set of error voltages measured for a single LVDS comparator. The data is first copied from Vivado BRAM, then modified with the my_script.py, then copied to the spreadsheet, then the calculated values in mV is copied to notepad, changed from newline separated to comma separated, then the resulting string is passed as command line argument for this script.



2. histogramdual.py

run as follows:

py .\histogramdual.py -b 20 --output comparison.png

This script creates a histogram of a two sets of data. The first is the set of error voltages measured for a single LVDS comparator. The second is the compensated error voltages of the same LVDS comparator. The data is first copied from Vivado BRAM, then modified with the my_script.py, then copied to the spreadsheet, then the calculated values in mV is copied and pasted into two text files. Uncompensated data goes into "data1.txt" and compensated goes into "data2.txt". Remember to open the source code of histogramdual.py and modify the labels of the plot depending on the data sets you use. Also, the "-b" command line parameter sets the bin count for each set of data. The "--output" parameter sets the name of output image of histogram.