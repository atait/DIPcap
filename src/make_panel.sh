## Panelized version

# This mousebite is tested and working
kikit panelize \
    --layout 'grid; rows: 2; cols: 4; space: 4mm' \
    --tabs 'fixed; width: 5mm; hcount: 2' \
    --cuts 'mousebites; prolong: 0.5mm' \
    --framing 'frame; width: 20mm; space: 4mm; slotwidth: 3mm; cuts: both' \
    --tooling '3hole; hoffset: 2.5mm; voffset: 2.5mm; size: 2mm' \
    --fiducials '3fid; hoffset: 5mm; voffset: 2.5mm; coppersize: 2mm; opening: 1mm;' \
    --post 'millradius: 1mm' \
    --text 'simple; text: Cap Switch Box v1; anchor: mt; voffset: 2.5mm; hjustify: center; vjustify: center;' \
    --text2 'simple; text: ELEC 221 2024, A. Tait; anchor: mb; voffset: -2.5mm; hjustify: center; vjustify: center;' \
    Switch-boxes.kicad_pcb Panelized/Switch-boxes-panelized.kicad_pcb

kikit fab jlcpcb \
    --assembly \
    --schematic Switch-boxes.kicad_sch \
    Panelized/Switch-boxes-panelized.kicad_pcb Panelized/tapeout-Switch-boxes-panelized


## Single PCB version

kikit fab jlcpcb \
    --assembly \
    --schematic Switch-boxes.kicad_sch \
    Switch-boxes.kicad_pcb tapeout-Switch-boxes-noPanel
