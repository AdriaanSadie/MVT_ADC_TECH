import numpy as np
import matplotlib.pyplot as plt

# --- Parameters ---
fs = 1000              # sampling rate (Hz)
sync_start = 0.02      # sync pulse rising edge (s)
sync_width = 0.1       # pulse width (s)
tri_period = 1.2       # triangle duration (s)
tri_amplitude = 2.0    # amplitude of triangle
v_ref = 1.0            # reference voltage
delta_v = 0.2          # small offset above V_ref

# --- Timing ---
t_start = 0.0
t_end = sync_start + tri_period + 0.05
t = np.linspace(t_start, t_end, int(fs * (t_end - t_start)))

# --- Sync pulse ---
sync = np.zeros_like(t)
sync[(t >= sync_start) & (t < sync_start + sync_width)] = 1.0

# --- Triangular wave (starts at sync rising edge) ---
tri = np.zeros_like(t)
start_time = sync_start
end_time = start_time + tri_period
mask = (t >= start_time) & (t <= end_time)
tri_time = t[mask] - start_time
tri[mask] = tri_amplitude * (1 - 2 * np.abs((tri_time / tri_period) - 0.5))

# --- Vertical positioning ---
sync_y = sync * 0.5 - 1.2     # lower
tri_y = tri - 0.2             # triangle position
vref_y = v_ref - 0.2          # reference line aligned to triangle
dvref_y = v_ref + delta_v - 0.2  # small red line above V_ref

# --- Plot ---
plt.figure(figsize=(7, 3))
plt.plot(t, sync_y, color='C1', linewidth=2)
plt.plot(t, tri_y, color='C0', linewidth=2)

# --- Reference lines ---
plt.hlines(vref_y, start_time, end_time, color='black', linestyles='dotted', linewidth=1.5)
# Short red dotted line that intersects triangle (somewhere near the middle)
delta_start = start_time + tri_period * 0.2 + 0.05
delta_end = delta_start + 0.1
plt.hlines(dvref_y, delta_start, delta_end, color='red', linestyles='dotted', linewidth=1.8)

# --- Labels ---
plt.text(sync_start + 0.015, -1.0, "Sync Pulse", color='C1', fontsize=10)
plt.text(start_time + tri_period / 3 - 0.2, tri_amplitude * 0.7 + 0.2, "Triangular Wave", color='C0', fontsize=10)
plt.text(end_time - 0.15, vref_y + 0.1, r"$V_{ref}$", color='black', fontsize=10, style='italic')
plt.text(delta_end + 0.02, dvref_y + 0.05, r"$\Delta V_{RE}$", color='red', fontsize=10, style='italic')

# --- Style ---
plt.title("Sync Pulse, Triangular Wave, and Reference Levels")
plt.xlabel("Time (s)")
plt.yticks([])
plt.grid(True, linestyle='--', alpha=0.4)
plt.xlim(sync_start - 0.05, end_time + 0.05)

plt.tight_layout()
plt.show()
