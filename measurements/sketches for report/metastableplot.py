import numpy as np
import matplotlib.pyplot as plt

# -------------------------------------------------
# 1. Data generation
# -------------------------------------------------
t = np.linspace(0, 1, 1000)

V_ref = 1.5
deltaV = 0.3
V_in = 1.5 + np.sin(np.pi * t - np.pi/2)

# -------------------------------------------------
# 2. Logic signal (same as before)
# -------------------------------------------------
logic = np.zeros_like(t)

low_region  = V_in < (V_ref - deltaV)
high_region = V_in > (V_ref + deltaV)
transition_region = ~(low_region | high_region)

logic[low_region]  = 0
logic[high_region] = 1

# Sparse random switching inside the transition band
np.random.seed(1)
rand_vals = np.random.rand(np.sum(transition_region))
logic_transition = np.zeros_like(rand_vals)
state = 0
for i in range(len(rand_vals)):
    if rand_vals[i] < 0.1:               # ~10% chance to flip
        state = 1 - state
    logic_transition[i] = state
logic[transition_region] = logic_transition

# -------------------------------------------------
# 3. Find the crossing points (where V_in enters/leaves the band)
# -------------------------------------------------
# Boolean mask for the transition band
in_band = transition_region

# Detect edges: where the state changes from OUTSIDE to INSIDE the band
enter_band = np.diff(in_band.astype(int), prepend=0) == 1
exit_band  = np.diff(in_band.astype(int), prepend=0) == -1

crossings = t[enter_band | exit_band]      # x-positions of all crossings

# -------------------------------------------------
# 4. Plot setup
# -------------------------------------------------
fig, (ax1, ax2) = plt.subplots(
    2, 1, figsize=(10, 7), sharex=True,
    gridspec_kw={'height_ratios': [3, 1]}
)

# ---- Analog plot (top) ----
ax1.plot(t, [V_ref]*len(t), 'r-', linewidth=2)
ax1.plot(t, [V_ref + deltaV]*len(t), 'r--')
ax1.plot(t, [V_ref - deltaV]*len(t), 'r--')
ax1.plot(t, V_in, 'b', linewidth=2)

# Labels
ax1.text(0.82, V_ref + 0.02, r'$V_{ref}$', color='r', fontsize=12, va='bottom')
ax1.text(0.82, V_ref + deltaV + 0.02, r'$+\,\Delta V$', color='r', fontsize=12, va='bottom')
ax1.text(0.82, V_ref - deltaV - 0.05, r'$-\,\Delta V$', color='r', fontsize=12, va='top')
t_label = 0.68
ax1.text(t_label, V_in[int(t_label*len(t))] + 0.1, r'$V_{in}$', color='b', fontsize=12, va='bottom')

ax1.set_ylabel("Voltage (V)")
ax1.set_title("Analog Input vs Reference with Metastable Logic Region")
ax1.grid(True)
ax1.set_xticks([])

# ---- Logic plot (bottom) ----
ax2.step(t, logic, 'k', linewidth=2, where='post')
ax2.set_yticks([0, 1])
ax2.set_yticklabels(['L', 'H'])
ax2.set_ylabel("Logic")
ax2.set_ylim(-0.2, 1.2)
ax2.grid(True)
ax2.set_xticks([])

ax2.text(0.8, 0.55, "Logic Output", color='k', fontsize=12, va='bottom')

# -------------------------------------------------
# 5. Alignment lines (gray dotted)
# -------------------------------------------------
for x in crossings:
    ax1.axvline(x, color='gray', linestyle=':', linewidth=1.2, zorder=0)
    ax2.axvline(x, color='gray', linestyle=':', linewidth=1.2, zorder=0)

# -------------------------------------------------
# 6. Final layout & export
# -------------------------------------------------
plt.tight_layout()

# ---- Save to file ----
plt.savefig('figure.png', dpi=300, bbox_inches='tight')
# plt.show()   # uncomment if you also want an interactive window