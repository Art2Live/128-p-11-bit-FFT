# Project: 128-point-11bit-FFT
# This repository contains all files that needed to generate SoC implementation of 128-point 11-bit FFT using Vivado, Cadence RTL Compiler and Cadence Encounter
# All verilog files from current branch is needed to synthesize the device with a link to the technological library xfab xt018.
# Order for tcl scripts 
#1. FFTv4_synth_corner.tcl - used for RTL Compiler, generate mapped design, choose corner. Also links to library files are in X-FAB_corner
#2. FFT_PaR.tcl - used for Encounter, sets of command to implement design.
#3.  MMMC.tcl - included in FFT_PaR.tcl, contains timing library pathes, analysis views and SDC link.
# Other Files - Verilog Testbenches for design, and with SDF annotation FFTv3_TB and FFTv3_TB_L and SDC files for RTL Compiler and Encounter: FFTRTL.sdc and FFTENC.sdc

