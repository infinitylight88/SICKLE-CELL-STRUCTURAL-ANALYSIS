# ==============================
# SICKLE CELL STRUCTURAL ANALYSIS
# ==============================

# Load structures
fetch 2HHB, HbA
fetch 1A3N, HbB

# Clean view
hide everything
show cartoon

# Color structures
color cyan, HbA
color magenta, HbB

# Align structures
align HbB, HbA

# Focus on beta chains
select betaA, (HbA and chain B)
select betaB, (HbB and chain B)

color yellow, betaA
color orange, betaB

# Highlight mutation position (Residue 6)
select mutA, (HbA and chain B and resi 6)
select mutB, (HbB and chain B and resi 6)

show sticks, mutA
show sticks, mutB

color red, mutA
color green, mutB

# Zoom and label
zoom (mutA or mutB)

label mutA, "HbA: Glu (E)"
label mutB, "Variant: Val (V)"

# Improve visualization
bg_color white
set ray_opaque_background, off
set cartoon_transparency, 0.2

# Render high-quality image
ray 1200,1200

# Save image
png sickle_cell_alignment.png
