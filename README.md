# Project: 128-point-11bit-FFT
# This repository contains all files that needed to generate SoC implementation of 128-point 11-bit FFT using Vivado, Cadence RTL Compiler and Cadence Encounter
#Absolute tolerance of the device - 2 LSB, relative - <0.01%. Device works at 10MHz frequency with 0.5% clock uncertainty. For simulation during development Cadence Incisive was used.
# All verilog files from current branch is needed to synthesize the device with a link to the technological library xfab xt018.
# Order and description for tcl scripts 
#1. FFTv4_synth_corner.tcl - used for RTL Compiler, generate mapped design, choose corner. Also links to library files are in X-FAB_corner.
#2. FFT_PaR.tcl - used for Encounter, sets of command to implement design.
#3. MMMC.tcl - included in FFT_PaR.tcl, contains timing library pathes, analysis views and SDC link.
# Other Files 
#1) Verilog Testbenches for design - FFTv3_TB and sdf annotated file - FFTv3_TB_L are used to simulation. The first one for source and RTL compiler stage, the second after lauyot generation. Note: for simulation RTL compiler output netlist it is needed to load verilog description of library cells. 
#2) SDC files for RTL Compiler and Encounter: FFTRTL.sdc and FFTENC.sdc
#3) Used SDCs with different timing constraints
# How to build
#Put all files from main branch into folder.
#1) Run RTL_Compiler with file FFTv4_synth for typical corner. 
#2) Run Encounter with FFT_PaR script.
#3) All generated files in folder Outputs. 3 netlists - FFTv3_s (RTL_compiler generated), FFTv3physical_netlist (device netlist for import), FFTv3_FinalNetlist (for simulation only netlist, use with FFTv3_TB_L). SDF flie and DEF file.
