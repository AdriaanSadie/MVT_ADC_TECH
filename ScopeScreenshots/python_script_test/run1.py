import pandas as pd
import matplotlib.pyplot as plt

# Load the CSV file, skipping the header metadata (first 20 rows)
df = pd.read_csv('tek0000.csv', skiprows=20)

# Apply an offset of 4 to CH2
df['CH2_offset'] = df['CH2'] + 4

# Plot TIME vs CH1 and TIME vs CH2_offset on the same figure
plt.figure(figsize=(10, 6))
plt.plot(df['TIME'], df['CH1'], label='CH1', color='blue')
plt.plot(df['TIME'], df['CH2_offset'], label='CH2 (offset +4V)', color='orange')

# Add labels and title
plt.xlabel('Time (s)')
plt.ylabel('Voltage (V)')
plt.title('Oscilloscope Data: CH1 and CH2 (with +4V offset) vs Time')
plt.legend()
plt.grid(True)

# Show the plot
plt.show()