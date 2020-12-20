#######################################################
#                                                     
#  Encounter Command Logging File                     
#  Created on Sat Dec  5 20:24:48 2020                
#                                                     
#######################################################

#@(#)CDS: Encounter v14.28-s033_1 (64bit) 03/21/2016 13:34 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute v14.28-s005 NR160313-1959/14_28-UB (database version 2.30, 267.6.1) {superthreading v1.25}
#@(#)CDS: CeltIC v14.28-s006_1 (64bit) 03/08/2016 00:08:23 (Linux 2.6.18-194.el5)
#@(#)CDS: AAE 14.28-s002 (64bit) 03/21/2016 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 14.28-s007_1 (64bit) Mar  7 2016 23:11:05 (Linux 2.6.18-194.el5)
#@(#)CDS: CPE v14.28-s006
#@(#)CDS: IQRC/TQRC 14.2.2-s217 (64bit) Wed Apr 15 23:10:24 PDT 2015 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set _timing_library_enable_mt_flow 0
set dcgHonorSignalNetNDR 1
set defHierChar /
set delaycal_input_transition_delay 0.1ps
set distributed_client_message_echo 1
set fpIsMaxIoHeight 0
set gpsPrivate::dpgNewAddBufsDBUpdate 1
set gpsPrivate::lsgEnableNewDbApiInRestruct 1
set init_design_settop 0
set init_gnd_net VSS
set init_io_file ../Source/pin
set init_lef_file {/Cadence/Libs/X_FAB/XKIT/xt018/cadence/v5_0/techLEF/v5_0_2/xt018_xx43_MET4_METMID_METTHK.lef /Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/LEF/v4_0_0/xt018_D_CELLS_HD.lef}
set init_mmmc_file ../Scripts/MMMC.tcl
set init_oa_search_lib {}
set init_pwr_net VDD
set init_verilog ../Outputs/FFTv3_s.v
set lsgOCPGainMult 1.000000
set pegDefaultResScaleFactor 1.000000
set pegDetailResScaleFactor 1.000000
set timing_library_float_precision_tol 0.000010
set timing_library_load_pin_cap_indices {}
set tso_post_client_restore_command {update_timing ; write_eco_opt_db ;}
init_design
floorPlan -site core_hd -r 0.997652723443 0.65 11.0 11.0 11.0 11.0
uiSetTool select
clearGlobalNets
## CONNECTION OF GLOBALS NETS
globalNetConnect VDD -type pgpin -pin vdd -inst * -module {}
globalNetConnect VSS -type pgpin -pin gnd -inst * -module {}
globalNetConnect VSS -type tielo -inst * -module {}
globalNetConnect VDD -type tiehi -inst * -module {}
set sprCreateIeRingNets {}
set sprCreateIeRingLayers {}
set sprCreateIeRingWidth 1.0
set sprCreateIeRingSpacing 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
## GLOBAL NETS RINGS CREATION
addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -stacked_via_top_layer METTPL -type core_rings -jog_distance 3.15 -threshold 3.15 -nets {VDD VSS} -follow core -stacked_via_bottom_layer MET1 -layer {bottom MET1 top MET1 right MET2 left MET2} -width 3 -spacing {bottom 0.23 top 0.23 right 0.28 left 0.28} -offset 3.15
set sprCreateIeStripeNets {}
set sprCreateIeStripeLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeSpacing 2.0
set sprCreateIeStripeThreshold 1.0
## GLOBAL NETS STRIPES CREATION
addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit MET3 -max_same_layer_jog_length 6 -padcore_ring_bottom_layer_limit MET1 -set_to_set_distance 100 -skip_via_on_pin Standardcell -stacked_via_top_layer METTPL -padcore_ring_top_layer_limit MET3 -spacing 0.28 -merge_stripes_value 3.15 -layer MET2 -block_ring_bottom_layer_limit MET1 -width 3 -nets {VSS VDD} -stacked_via_bottom_layer MET1
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { MET1 METTPL } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { MET1 METTPL } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { MET1 METTPL }
setMultiCpuUsage -localCpu 8 -cpuPerRemoteHost 1 -remoteHost 0 -keepLicense true
setDistributeHost -local
setPlaceMode -fp false
## DESIGN INITIAL PLACING
placeDesign
## CLOCK TREE GENERATION
createClockTreeSpec -bufferList BUHDX12 -file Clock.ctstch
setCTSMode -engine ck
clockDesign -specFile Clock.ctstch -outDir clock_report -fixedInstBeforeCTS
## POST CTS OPTIMIZATION
setOptMode -fixCap true -fixTran true -fixFanoutLoad true
optDesign -postCTS
optDesign -postCTS -hold
setOptMode -fixCap false -fixTran false -fixFanoutLoad false
optDesign -postCTS -hold -incr
## ROUTE DESIGN AND DRC CORRECTION
setNanoRouteMode -quiet -routeInsertAntennaDiode 0
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail -viaOpt
setAnalysisMode -analysisType onChipVariation -skew true -clockPropagation sdcControl
setOptMode -fixCap true -fixTran true -fixFanoutLoad true
optDesign -postRoute
optDesign -postRoute -hold
setOptMode -fixCap false -fixTran false -fixFanoutLoad false
optDesign -postRoute -hold -incr
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -timingEngine CTE
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {DLY8HDX1 DLY8HDX0 DLY4HDX1 DLY4HDX0 DLY2HDX1 DLY2HDX0 DLY1HDX1 DLY1HDX0 BUHDX8 BUHDX6 BUHDX4 BUHDX3 BUHDX2 BUHDX1 BUHDX12 BUHDX0 INHDX8 INHDX6 INHDX4 INHDX3 INHDX2 INHDX1 INHDX12 INHDX0} -maxAllowedDelay 100
setOptMode -effort high -leakagePowerEffort none -dynamicPowerEffort none -reclaimArea true -simplifyNetlist true -allEndPoints true -setupTargetSlack 0 -holdTargetSlack 0 -maxDensity 0.95 -drcMargin 0 -usefulSkew true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -drouteStartIteration 1
setNanoRouteMode -quiet -routeInsertAntennaDiode true
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {DLY8HDX1 DLY8HDX0 DLY4HDX1 DLY4HDX0 DLY2HDX1 DLY2HDX0 DLY1HDX1 DLY1HDX0 BUHDX8 BUHDX6 BUHDX4 BUHDX3 BUHDX2 BUHDX1 BUHDX12 BUHDX0 INHDX8 INHDX6 INHDX4 INHDX3 INHDX2 INHDX1 INHDX12 INHDX0} -maxAllowedDelay 100
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {DLY8HDX1 DLY8HDX0 DLY4HDX1 DLY4HDX0 DLY2HDX1 DLY2HDX0 DLY1HDX1 DLY1HDX0 BUHDX8 BUHDX6 BUHDX4 BUHDX3 BUHDX2 BUHDX1 BUHDX12 BUHDX0 INHDX8 INHDX6 INHDX4 INHDX3 INHDX2 INHDX1 INHDX12 INHDX0} -maxAllowedDelay 100
setOptMode -fixCap false -fixTran false -fixFanoutLoad false
optDesign -postRoute -hold -incr
uiSetTool defineArea ::Rda_Route::NanoRoute::defineAreaAndRouteCallback
uiSetTool defineArea {}
setNanoRouteMode -quiet -routeWithEco 1
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
globalDetailRoute 202.942 2519.319 671.438 2012.21
uiSetTool select
uiSetTool defineArea ::Rda_Route::NanoRoute::defineAreaAndRouteCallback
uiSetTool defineArea {}
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
globalDetailRoute 2002.223 1639.75 2432.259 1070.407
uiSetTool select
windowSelect 2623.049 2078.871 2604.879 2021.331
selectWire 85.1750 540.9300 111.3850 541.2100 3 u_Butterflies/u_128_input_3_step/FE_PHN10666_ThirdStageB_11_out2_re_6_
uiSetTool stretchWire
editStretch x -0.585 high
deselectAll
selectWire 111.0800 540.9550 111.9400 541.1850 1 u_Butterflies/u_128_input_3_step/FE_PHN10666_ThirdStageB_11_out2_re_6_
editStretch x -0.435 low
editStretch x -0.62 low
editStretch x -0.09 low
deselectAll
selectWire 85.1750 540.9300 110.8000 541.2100 3 u_Butterflies/u_128_input_3_step/FE_PHN10666_ThirdStageB_11_out2_re_6_
editStretch x 0.455 high
deselectAll
selectWire 85.1750 540.9300 111.2550 541.2100 3 u_Butterflies/u_128_input_3_step/FE_PHN10666_ThirdStageB_11_out2_re_6_
editStretch x -0.73 high
deselectAll
selectWire 110.9650 540.9550 111.9400 541.1850 1 u_Butterflies/u_128_input_3_step/FE_PHN10666_ThirdStageB_11_out2_re_6_
editStretch x -0.63 low
editStretch x -0.91 low
deselectAll
uiSetTool addVia
editAddVia 110.267 541.063
dbGet head.rules.name {} -p1
dbGet 0x0.vias.name
dbGet head.rules.name
dbGet head.vias.isDefault 1 -p1
dbGet {0x7f5514856020 0x7f5514856180 0x7f55148562e0 0x7f5514856440 0x7f55148565a0 0x7f5514856700 0x7f5514856860 0x7f55148569c0 0x7f5514856b20 0x7f5514856c80 0x7f5514856de0 0x7f5514856f40 0x7f55148570a0 0x7f5514857200 0x7f5514857360 0x7f55148574c0 0x7f5514857620 0x7f5514857780 0x7f55148578e0 0x7f5514857a40 0x7f5514857ba0 0x7f5514857d00 0x7f5514857e60 0x7f5514860020 0x7f5514860180 0x7f55148602e0 0x7f5514860440 0x7f55148605a0 0x7f5514860700 0x7f5514860860 0x7f55148609c0 0x7f5514860b20 0x7f5514860c80 0x7f5514860de0 0x7f5514860f40 0x7f55148610a0 0x7f5514861200 0x7f5514861360 0x7f55148614c0 0x7f5514861620 0x7f5514861780 0x7f55148618e0 0x7f5514861a40 0x7f5514861ba0 0x7f5514861d00 0x7f5514861e60 0x7f551485e020 0x7f551485e180 0x7f551485e2e0 0x7f551485e440 0x7f551485e5a0 0x7f551485e700 0x7f551485e860 0x7f551485e9c0 0x7f551485eb20 0x7f551485ec80 0x7f551485ede0 0x7f551485ef40 0x7f551485f0a0 0x7f551485f200 0x7f551485f360 0x7f551485f4c0 0x7f551485f620 0x7f551485f780 0x7f551485f8e0 0x7f551485fa40 0x7f551485fba0 0x7f551485fd00 0x7f551485fe60 0x7f5514864020 0x7f5514864180 0x7f55148642e0 0x7f5514864440 0x7f55148645a0 0x7f5514864700 0x7f5514864860 0x7f55148649c0 0x7f5514864b20 0x7f5514864c80 0x7f5514864de0 0x7f5514864f40 0x7f55148650a0 0x7f5514865200 0x7f5514865360 0x7f55148654c0 0x7f5514865620 0x7f5514865780 0x7f55148658e0 0x7f5514865a40 0x7f5514865ba0 0x7f5514865d00 0x7f5514865e60 0x7f5514862020 0x7f5514862180 0x7f55148622e0 0x7f5514862440 0x7f55148625a0 0x7f5514862700 0x7f5514862860 0x7f55148629c0 0x7f5514862b20 0x7f5514862c80 0x7f5514862de0 0x7f5514862f40 0x7f55148630a0 0x7f5514863200 0x7f5514863360 0x7f55148634c0 0x7f5514863620 0x7f5514863780 0x7f55148638e0 0x7f5514863a40 0x7f5514863ba0 0x7f5514863d00 0x7f5514863e60 0x7f5514866020 0x7f5514866180 0x7f55148662e0 0x7f5514866440 0x7f55148665a0 0x7f5514866700 0x7f5514866860 0x7f55148669c0 0x7f5514866b20 0x7f5514866c80 0x7f5514866de0 0x7f5514866f40 0x7f55148670a0 0x7f5514867200 0x7f5514867360 0x7f55148674c0 0x7f5514867620 0x7f5514867780 0x7f55148678e0 0x7f5514867a40 0x7f5514867ba0 0x7f5514867d00 0x7f5514867e60 0x7f551486c020 0x7f551486c180 0x7f551486c2e0 0x7f551486c440 0x7f551486c5a0 0x7f551486c700 0x7f551486c860 0x7f551486c9c0 0x7f551486cb20 0x7f551486cc80 0x7f551486cde0 0x7f551486cf40 0x7f551486d0a0.name}
setViaEdit -cut_layer VIA2
editAddVia 110.264 541.063
selectWire 468.2650 2297.1200 468.5450 2298.6200 2 u_Butterflies/u_128_input_6_step/u_SixthStageB/n_57
editStretch y 0.625 high
deselectAll
selectVia 468.2650 2298.4700 468.6450 2298.8900 2 u_Butterflies/u_128_input_6_step/u_SixthStageB/n_57
uiSetTool move
deselectAll
selectWire 468.2650 2297.1200 468.5450 2298.6700 2 u_Butterflies/u_128_input_6_step/u_SixthStageB/n_57
editMove 0.055 0.002
editStretch x 0.047 low -no_conn 1
deselectAll
selectWire 468.3200 2297.1200 468.6000 2298.6700 2 u_Butterflies/u_128_input_6_step/u_SixthStageB/n_57
editMove 0.038 0.003
editStretch x 0.088 low -no_conn 1
editStretch x 0.206 low -no_conn 1
selectWire 468.3600 2297.1250 468.6400 2298.6700 2 u_Butterflies/u_128_input_6_step/u_SixthStageB/n_57
editMove 0.006 0.08
selectWire 468.3650 2297.2050 468.6450 2298.6700 2 u_Butterflies/u_128_input_6_step/u_SixthStageB/n_57
editMove -0.004 -0.002
editMove -0.052 -0.002
deselectAll
selectWire 467.6350 2298.2900 467.9150 2299.2300 3 u_Butterflies/u_128_input_6_step/u_SixthStageB/n_57
deleteSelectedFromFPlan
selectWire 467.6350 2298.9500 468.5950 2299.2300 3 u_Butterflies/u_128_input_6_step/u_SixthStageB/n_57
deleteSelectedFromFPlan
selectWire 467.5850 2298.3400 468.5450 2298.6200 2 u_Butterflies/u_128_input_6_step/u_SixthStageB/n_57
editMove 0.009 -0.032
deleteSelectedFromFPlan
uiSetTool select
deselectAll
selectWire 2210.5550 1342.8000 2211.4150 1343.0300 1 {u_Butterflies/alpha128_input_3_step_out116_re[3]}
deselectAll
uiSetTool move
selectVia 2210.5300 1342.6850 2210.8100 1343.4100 3 {u_Butterflies/alpha128_input_3_step_out116_re[3]}
uiSetTool ruler
uiSetTool ruler
uiSetTool addVia
dbGet head.vias.isDefault 1 -p1
dbGet {0x7f5514856020 0x7f5514856180 0x7f55148562e0 0x7f5514856440 0x7f55148565a0 0x7f5514856700 0x7f5514856860 0x7f55148569c0 0x7f5514856b20 0x7f5514856c80 0x7f5514856de0 0x7f5514856f40 0x7f55148570a0 0x7f5514857200 0x7f5514857360 0x7f55148574c0 0x7f5514857620 0x7f5514857780 0x7f55148578e0 0x7f5514857a40 0x7f5514857ba0 0x7f5514857d00 0x7f5514857e60 0x7f5514860020 0x7f5514860180 0x7f55148602e0 0x7f5514860440 0x7f55148605a0 0x7f5514860700 0x7f5514860860 0x7f55148609c0 0x7f5514860b20 0x7f5514860c80 0x7f5514860de0 0x7f5514860f40 0x7f55148610a0 0x7f5514861200 0x7f5514861360 0x7f55148614c0 0x7f5514861620 0x7f5514861780 0x7f55148618e0 0x7f5514861a40 0x7f5514861ba0 0x7f5514861d00 0x7f5514861e60 0x7f551485e020 0x7f551485e180 0x7f551485e2e0 0x7f551485e440 0x7f551485e5a0 0x7f551485e700 0x7f551485e860 0x7f551485e9c0 0x7f551485eb20 0x7f551485ec80 0x7f551485ede0 0x7f551485ef40 0x7f551485f0a0 0x7f551485f200 0x7f551485f360 0x7f551485f4c0 0x7f551485f620 0x7f551485f780 0x7f551485f8e0 0x7f551485fa40 0x7f551485fba0 0x7f551485fd00 0x7f551485fe60 0x7f5514864020 0x7f5514864180 0x7f55148642e0 0x7f5514864440 0x7f55148645a0 0x7f5514864700 0x7f5514864860 0x7f55148649c0 0x7f5514864b20 0x7f5514864c80 0x7f5514864de0 0x7f5514864f40 0x7f55148650a0 0x7f5514865200 0x7f5514865360 0x7f55148654c0 0x7f5514865620 0x7f5514865780 0x7f55148658e0 0x7f5514865a40 0x7f5514865ba0 0x7f5514865d00 0x7f5514865e60 0x7f5514862020 0x7f5514862180 0x7f55148622e0 0x7f5514862440 0x7f55148625a0 0x7f5514862700 0x7f5514862860 0x7f55148629c0 0x7f5514862b20 0x7f5514862c80 0x7f5514862de0 0x7f5514862f40 0x7f55148630a0 0x7f5514863200 0x7f5514863360 0x7f55148634c0 0x7f5514863620 0x7f5514863780 0x7f55148638e0 0x7f5514863a40 0x7f5514863ba0 0x7f5514863d00 0x7f5514863e60 0x7f5514866020 0x7f5514866180 0x7f55148662e0 0x7f5514866440 0x7f55148665a0 0x7f5514866700 0x7f5514866860 0x7f55148669c0 0x7f5514866b20 0x7f5514866c80 0x7f5514866de0 0x7f5514866f40 0x7f55148670a0 0x7f5514867200 0x7f5514867360 0x7f55148674c0 0x7f5514867620 0x7f5514867780 0x7f55148678e0 0x7f5514867a40 0x7f5514867ba0 0x7f5514867d00 0x7f5514867e60 0x7f551486c020 0x7f551486c180 0x7f551486c2e0 0x7f551486c440 0x7f551486c5a0 0x7f551486c700 0x7f551486c860 0x7f551486c9c0 0x7f551486cb20 0x7f551486cc80 0x7f551486cde0 0x7f551486cf40 0x7f551486d0a0.name}
dbGet head.vias.isDefault 1 -p1
dbGet {0x7f5514856020 0x7f5514856180 0x7f55148562e0 0x7f5514856440 0x7f55148565a0 0x7f5514856700 0x7f5514856860 0x7f55148569c0 0x7f5514856b20 0x7f5514856c80 0x7f5514856de0 0x7f5514856f40 0x7f55148570a0 0x7f5514857200 0x7f5514857360 0x7f55148574c0 0x7f5514857620 0x7f5514857780 0x7f55148578e0 0x7f5514857a40 0x7f5514857ba0 0x7f5514857d00 0x7f5514857e60 0x7f5514860020 0x7f5514860180 0x7f55148602e0 0x7f5514860440 0x7f55148605a0 0x7f5514860700 0x7f5514860860 0x7f55148609c0 0x7f5514860b20 0x7f5514860c80 0x7f5514860de0 0x7f5514860f40 0x7f55148610a0 0x7f5514861200 0x7f5514861360 0x7f55148614c0 0x7f5514861620 0x7f5514861780 0x7f55148618e0 0x7f5514861a40 0x7f5514861ba0 0x7f5514861d00 0x7f5514861e60 0x7f551485e020 0x7f551485e180 0x7f551485e2e0 0x7f551485e440 0x7f551485e5a0 0x7f551485e700 0x7f551485e860 0x7f551485e9c0 0x7f551485eb20 0x7f551485ec80 0x7f551485ede0 0x7f551485ef40 0x7f551485f0a0 0x7f551485f200 0x7f551485f360 0x7f551485f4c0 0x7f551485f620 0x7f551485f780 0x7f551485f8e0 0x7f551485fa40 0x7f551485fba0 0x7f551485fd00 0x7f551485fe60 0x7f5514864020 0x7f5514864180 0x7f55148642e0 0x7f5514864440 0x7f55148645a0 0x7f5514864700 0x7f5514864860 0x7f55148649c0 0x7f5514864b20 0x7f5514864c80 0x7f5514864de0 0x7f5514864f40 0x7f55148650a0 0x7f5514865200 0x7f5514865360 0x7f55148654c0 0x7f5514865620 0x7f5514865780 0x7f55148658e0 0x7f5514865a40 0x7f5514865ba0 0x7f5514865d00 0x7f5514865e60 0x7f5514862020 0x7f5514862180 0x7f55148622e0 0x7f5514862440 0x7f55148625a0 0x7f5514862700 0x7f5514862860 0x7f55148629c0 0x7f5514862b20 0x7f5514862c80 0x7f5514862de0 0x7f5514862f40 0x7f55148630a0 0x7f5514863200 0x7f5514863360 0x7f55148634c0 0x7f5514863620 0x7f5514863780 0x7f55148638e0 0x7f5514863a40 0x7f5514863ba0 0x7f5514863d00 0x7f5514863e60 0x7f5514866020 0x7f5514866180 0x7f55148662e0 0x7f5514866440 0x7f55148665a0 0x7f5514866700 0x7f5514866860 0x7f55148669c0 0x7f5514866b20 0x7f5514866c80 0x7f5514866de0 0x7f5514866f40 0x7f55148670a0 0x7f5514867200 0x7f5514867360 0x7f55148674c0 0x7f5514867620 0x7f5514867780 0x7f55148678e0 0x7f5514867a40 0x7f5514867ba0 0x7f5514867d00 0x7f5514867e60 0x7f551486c020 0x7f551486c180 0x7f551486c2e0 0x7f551486c440 0x7f551486c5a0 0x7f551486c700 0x7f551486c860 0x7f551486c9c0 0x7f551486cb20 0x7f551486cc80 0x7f551486cde0 0x7f551486cf40 0x7f551486d0a0.name}
dbGet head.rules.name
setViaEdit -cut_layer VIA1
dbGet head.vias.isDefault 1 -p1
dbGet {0x7f5514856020 0x7f5514856180 0x7f55148562e0 0x7f5514856440 0x7f55148565a0 0x7f5514856700 0x7f5514856860 0x7f55148569c0 0x7f5514856b20 0x7f5514856c80 0x7f5514856de0 0x7f5514856f40 0x7f55148570a0 0x7f5514857200 0x7f5514857360 0x7f55148574c0 0x7f5514857620 0x7f5514857780 0x7f55148578e0 0x7f5514857a40 0x7f5514857ba0 0x7f5514857d00 0x7f5514857e60 0x7f5514860020 0x7f5514860180 0x7f55148602e0 0x7f5514860440 0x7f55148605a0 0x7f5514860700 0x7f5514860860 0x7f55148609c0 0x7f5514860b20 0x7f5514860c80 0x7f5514860de0 0x7f5514860f40 0x7f55148610a0 0x7f5514861200 0x7f5514861360 0x7f55148614c0 0x7f5514861620 0x7f5514861780 0x7f55148618e0 0x7f5514861a40 0x7f5514861ba0 0x7f5514861d00 0x7f5514861e60 0x7f551485e020 0x7f551485e180 0x7f551485e2e0 0x7f551485e440 0x7f551485e5a0 0x7f551485e700 0x7f551485e860 0x7f551485e9c0 0x7f551485eb20 0x7f551485ec80 0x7f551485ede0 0x7f551485ef40 0x7f551485f0a0 0x7f551485f200 0x7f551485f360 0x7f551485f4c0 0x7f551485f620 0x7f551485f780 0x7f551485f8e0 0x7f551485fa40 0x7f551485fba0 0x7f551485fd00 0x7f551485fe60 0x7f5514864020 0x7f5514864180 0x7f55148642e0 0x7f5514864440 0x7f55148645a0 0x7f5514864700 0x7f5514864860 0x7f55148649c0 0x7f5514864b20 0x7f5514864c80 0x7f5514864de0 0x7f5514864f40 0x7f55148650a0 0x7f5514865200 0x7f5514865360 0x7f55148654c0 0x7f5514865620 0x7f5514865780 0x7f55148658e0 0x7f5514865a40 0x7f5514865ba0 0x7f5514865d00 0x7f5514865e60 0x7f5514862020 0x7f5514862180 0x7f55148622e0 0x7f5514862440 0x7f55148625a0 0x7f5514862700 0x7f5514862860 0x7f55148629c0 0x7f5514862b20 0x7f5514862c80 0x7f5514862de0 0x7f5514862f40 0x7f55148630a0 0x7f5514863200 0x7f5514863360 0x7f55148634c0 0x7f5514863620 0x7f5514863780 0x7f55148638e0 0x7f5514863a40 0x7f5514863ba0 0x7f5514863d00 0x7f5514863e60 0x7f5514866020 0x7f5514866180 0x7f55148662e0 0x7f5514866440 0x7f55148665a0 0x7f5514866700 0x7f5514866860 0x7f55148669c0 0x7f5514866b20 0x7f5514866c80 0x7f5514866de0 0x7f5514866f40 0x7f55148670a0 0x7f5514867200 0x7f5514867360 0x7f55148674c0 0x7f5514867620 0x7f5514867780 0x7f55148678e0 0x7f5514867a40 0x7f5514867ba0 0x7f5514867d00 0x7f5514867e60 0x7f551486c020 0x7f551486c180 0x7f551486c2e0 0x7f551486c440 0x7f551486c5a0 0x7f551486c700 0x7f551486c860 0x7f551486c9c0 0x7f551486cb20 0x7f551486cc80 0x7f551486cde0 0x7f551486cf40 0x7f551486d0a0.name}
dbGet head.vias.isDefault 1 -p1
dbGet {0x7f5514856020 0x7f5514856180 0x7f55148562e0 0x7f5514856440 0x7f55148565a0 0x7f5514856700 0x7f5514856860 0x7f55148569c0 0x7f5514856b20 0x7f5514856c80 0x7f5514856de0 0x7f5514856f40 0x7f55148570a0 0x7f5514857200 0x7f5514857360 0x7f55148574c0 0x7f5514857620 0x7f5514857780 0x7f55148578e0 0x7f5514857a40 0x7f5514857ba0 0x7f5514857d00 0x7f5514857e60 0x7f5514860020 0x7f5514860180 0x7f55148602e0 0x7f5514860440 0x7f55148605a0 0x7f5514860700 0x7f5514860860 0x7f55148609c0 0x7f5514860b20 0x7f5514860c80 0x7f5514860de0 0x7f5514860f40 0x7f55148610a0 0x7f5514861200 0x7f5514861360 0x7f55148614c0 0x7f5514861620 0x7f5514861780 0x7f55148618e0 0x7f5514861a40 0x7f5514861ba0 0x7f5514861d00 0x7f5514861e60 0x7f551485e020 0x7f551485e180 0x7f551485e2e0 0x7f551485e440 0x7f551485e5a0 0x7f551485e700 0x7f551485e860 0x7f551485e9c0 0x7f551485eb20 0x7f551485ec80 0x7f551485ede0 0x7f551485ef40 0x7f551485f0a0 0x7f551485f200 0x7f551485f360 0x7f551485f4c0 0x7f551485f620 0x7f551485f780 0x7f551485f8e0 0x7f551485fa40 0x7f551485fba0 0x7f551485fd00 0x7f551485fe60 0x7f5514864020 0x7f5514864180 0x7f55148642e0 0x7f5514864440 0x7f55148645a0 0x7f5514864700 0x7f5514864860 0x7f55148649c0 0x7f5514864b20 0x7f5514864c80 0x7f5514864de0 0x7f5514864f40 0x7f55148650a0 0x7f5514865200 0x7f5514865360 0x7f55148654c0 0x7f5514865620 0x7f5514865780 0x7f55148658e0 0x7f5514865a40 0x7f5514865ba0 0x7f5514865d00 0x7f5514865e60 0x7f5514862020 0x7f5514862180 0x7f55148622e0 0x7f5514862440 0x7f55148625a0 0x7f5514862700 0x7f5514862860 0x7f55148629c0 0x7f5514862b20 0x7f5514862c80 0x7f5514862de0 0x7f5514862f40 0x7f55148630a0 0x7f5514863200 0x7f5514863360 0x7f55148634c0 0x7f5514863620 0x7f5514863780 0x7f55148638e0 0x7f5514863a40 0x7f5514863ba0 0x7f5514863d00 0x7f5514863e60 0x7f5514866020 0x7f5514866180 0x7f55148662e0 0x7f5514866440 0x7f55148665a0 0x7f5514866700 0x7f5514866860 0x7f55148669c0 0x7f5514866b20 0x7f5514866c80 0x7f5514866de0 0x7f5514866f40 0x7f55148670a0 0x7f5514867200 0x7f5514867360 0x7f55148674c0 0x7f5514867620 0x7f5514867780 0x7f55148678e0 0x7f5514867a40 0x7f5514867ba0 0x7f5514867d00 0x7f5514867e60 0x7f551486c020 0x7f551486c180 0x7f551486c2e0 0x7f551486c440 0x7f551486c5a0 0x7f551486c700 0x7f551486c860 0x7f551486c9c0 0x7f551486cb20 0x7f551486cc80 0x7f551486cde0 0x7f551486cf40 0x7f551486d0a0.name}
dbGet head.vias.isDefault 1 -p1
dbGet {0x7f5514856020 0x7f5514856180 0x7f55148562e0 0x7f5514856440 0x7f55148565a0 0x7f5514856700 0x7f5514856860 0x7f55148569c0 0x7f5514856b20 0x7f5514856c80 0x7f5514856de0 0x7f5514856f40 0x7f55148570a0 0x7f5514857200 0x7f5514857360 0x7f55148574c0 0x7f5514857620 0x7f5514857780 0x7f55148578e0 0x7f5514857a40 0x7f5514857ba0 0x7f5514857d00 0x7f5514857e60 0x7f5514860020 0x7f5514860180 0x7f55148602e0 0x7f5514860440 0x7f55148605a0 0x7f5514860700 0x7f5514860860 0x7f55148609c0 0x7f5514860b20 0x7f5514860c80 0x7f5514860de0 0x7f5514860f40 0x7f55148610a0 0x7f5514861200 0x7f5514861360 0x7f55148614c0 0x7f5514861620 0x7f5514861780 0x7f55148618e0 0x7f5514861a40 0x7f5514861ba0 0x7f5514861d00 0x7f5514861e60 0x7f551485e020 0x7f551485e180 0x7f551485e2e0 0x7f551485e440 0x7f551485e5a0 0x7f551485e700 0x7f551485e860 0x7f551485e9c0 0x7f551485eb20 0x7f551485ec80 0x7f551485ede0 0x7f551485ef40 0x7f551485f0a0 0x7f551485f200 0x7f551485f360 0x7f551485f4c0 0x7f551485f620 0x7f551485f780 0x7f551485f8e0 0x7f551485fa40 0x7f551485fba0 0x7f551485fd00 0x7f551485fe60 0x7f5514864020 0x7f5514864180 0x7f55148642e0 0x7f5514864440 0x7f55148645a0 0x7f5514864700 0x7f5514864860 0x7f55148649c0 0x7f5514864b20 0x7f5514864c80 0x7f5514864de0 0x7f5514864f40 0x7f55148650a0 0x7f5514865200 0x7f5514865360 0x7f55148654c0 0x7f5514865620 0x7f5514865780 0x7f55148658e0 0x7f5514865a40 0x7f5514865ba0 0x7f5514865d00 0x7f5514865e60 0x7f5514862020 0x7f5514862180 0x7f55148622e0 0x7f5514862440 0x7f55148625a0 0x7f5514862700 0x7f5514862860 0x7f55148629c0 0x7f5514862b20 0x7f5514862c80 0x7f5514862de0 0x7f5514862f40 0x7f55148630a0 0x7f5514863200 0x7f5514863360 0x7f55148634c0 0x7f5514863620 0x7f5514863780 0x7f55148638e0 0x7f5514863a40 0x7f5514863ba0 0x7f5514863d00 0x7f5514863e60 0x7f5514866020 0x7f5514866180 0x7f55148662e0 0x7f5514866440 0x7f55148665a0 0x7f5514866700 0x7f5514866860 0x7f55148669c0 0x7f5514866b20 0x7f5514866c80 0x7f5514866de0 0x7f5514866f40 0x7f55148670a0 0x7f5514867200 0x7f5514867360 0x7f55148674c0 0x7f5514867620 0x7f5514867780 0x7f55148678e0 0x7f5514867a40 0x7f5514867ba0 0x7f5514867d00 0x7f5514867e60 0x7f551486c020 0x7f551486c180 0x7f551486c2e0 0x7f551486c440 0x7f551486c5a0 0x7f551486c700 0x7f551486c860 0x7f551486c9c0 0x7f551486cb20 0x7f551486cc80 0x7f551486cde0 0x7f551486cf40 0x7f551486d0a0.name}
dbGet head.rules.name
editAddVia 2217.979 1343.214
uiSetTool select
deselectAll
selectMarker 2217.9700 1343.1200 2218.1700 1343.3200 34 1 41
deselectAll
selectVia 2218.3550 1343.0300 2218.7350 1343.4100 3 {u_Butterflies/alpha128_input_3_step_out116_re[3]}
uiSetTool addWire
setEdit -layer_horizontal MET1
setEdit -layer_vertical MET2
setEdit -force_regular 1
setEdit -force_special 1
uiSetTool moveWire
deselectAll
selectWire 2218.4050 1343.0300 2218.6850 1362.3200 2 {u_Butterflies/alpha128_input_3_step_out116_re[3]}
deselectAll
selectVia 2210.5300 1342.6850 2210.8100 1343.4100 3 {u_Butterflies/alpha128_input_3_step_out116_re[3]}
deleteSelectedFromFPlan
selectWire 2210.5300 1342.7250 2210.8100 1343.4100 2 {u_Butterflies/alpha128_input_3_step_out116_re[3]}
deleteSelectedFromFPlan
selectWire 2210.4800 1343.0800 2218.3600 1343.3600 3 {u_Butterflies/alpha128_input_3_step_out116_re[3]}
deleteSelectedFromFPlan
selectWire 2210.5550 1342.8000 2211.4150 1343.0300 1 {u_Butterflies/alpha128_input_3_step_out116_re[3]}
deleteSelectedFromFPlan
selectWire 2211.1850 1342.8000 2211.4150 1343.3350 1 {u_Butterflies/alpha128_input_3_step_out116_re[3]}
deleteSelectedFromFPlan
selectWire 2211.1850 1343.1050 2217.9150 1343.3350 1 {u_Butterflies/alpha128_input_3_step_out116_re[3]}
deleteSelectedFromFPlan
setOptMode -fixCap false -fixTran false -fixFanoutLoad false
optDesign -postRoute -hold -incr
::Rda_Browser::VB::violationBrowserSetObjs
selectVia 2210.4800 1342.5100 2210.8600 1343.4100 3 {u_Butterflies/alpha128_input_3_step_out116_re[3]}
deselectAll
selectWire 2210.5550 1342.9500 2211.7300 1343.1800 1 {u_Butterflies/alpha128_input_3_step_out116_re[3]}
editMove y -0.02
editMove y -0.03
editMove y -0.09
deselectAll
selectVia 2210.4800 1342.5100 2210.8600 1343.4100 3 {u_Butterflies/alpha128_input_3_step_out116_re[3]}
deselectAll
selectInst u_Butterflies/u_128_input_6_step/u_SixthStageB4/mul_80_44/g1032
deselectAll
selectWire 427.3150 2298.9500 431.3750 2299.2300 3 FE_PHN18079_Butterflies_out16_re_1_
deselectAll
selectWire 428.5750 2298.9000 428.8550 2301.6700 2 {Butterflies_out22_re[5]}
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -drouteStartIteration 1
setNanoRouteMode -quiet -routeSelectedNetOnly true
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {BUHDX0 BUHDX12 BUHDX1 BUHDX2 BUHDX3 BUHDX4 BUHDX6 BUHDX8 DLY1HDX0 DLY1HDX1 DLY2HDX0 DLY2HDX1 DLY4HDX0 DLY4HDX1 DLY8HDX0 DLY8HDX1 INHDX0 INHDX12 INHDX1 INHDX2 INHDX3 INHDX4 INHDX6 INHDX8} -maxAllowedDelay 500
uiSetTool defineArea ::Rda_Route::NanoRoute::defineAreaAndRouteCallback
uiSetTool defineArea {}
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
globalDetailRoute 268.77 2414.856 664.488 2241.642
uiSetTool moveWire
create_constraint_mode -name CONSTRAINTS -sdc_files {../Source/SDCs/FFTENC.sdc}
create_library_set -name SLOWlib \
-timing {/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/liberty_LP5MOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LP5MOS_slow_1_62V_175C.lib}
create_library_set -name TYPlib \
-timing {/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/liberty_LP5MOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LP5MOS_typ_1_80V_25C.lib}
create_library_set -name FASTlib \
-timing {/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/liberty_LP5MOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LP5MOS_fast_1_98V_m40C.lib}
create_op_cond -name PVT_slow_1_62V_175C \
-library_file {/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/liberty_LP5MOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LP5MOS_slow_1_62V_175C.lib} \
-P {1} -V {1.62} -T {175}
create_op_cond -name PVT_typ_1_80V_25C \
-library_file {/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/liberty_LP5MOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LP5MOS_typ_1_80V_25C.lib} \
-P {1} -V {1.8} -T {25}
create_op_cond -name PVT_fast_1_98V_-40C \
-library_file {/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/liberty_LP5MOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LP5MOS_fast_1_98V_m40C.lib} \
-P {1} -V {1.98} -T {-40}
create_rc_corner -name RCcornerMIN \
-cap_table /Cadence/Libs/X_FAB/XKIT/xt018/cadence/v7_0/capTbl/v7_0_1/xt018_xx43_MET4_METMID_METTHK_min.capTbl \
-qx_tech_file /Cadence/Libs/X_FAB/XKIT/xt018/cadence/v7_0/QRC_pvs/v7_0_3/XT018_1243/QRC-Min/qrcTechFile
create_rc_corner -name RCcornerTYP \
-cap_table /Cadence/Libs/X_FAB/XKIT/xt018/cadence/v7_0/capTbl/v7_0_1/xt018_xx43_MET4_METMID_METTHK_typ.capTbl \
-qx_tech_file /Cadence/Libs/X_FAB/XKIT/xt018/cadence/v7_0/QRC_pvs/v7_0_3/XT018_1243/QRC-Typ/qrcTechFile
create_rc_corner -name RCcornerMAX \
-cap_table /Cadence/Libs/X_FAB/XKIT/xt018/cadence/v7_0/capTbl/v7_0_1/xt018_xx43_MET4_METMID_METTHK_max.capTbl \
-qx_tech_file /Cadence/Libs/X_FAB/XKIT/xt018/cadence/v7_0/QRC_pvs/v7_0_3/XT018_1243/QRC-Max/qrcTechFile
create_delay_corner -name DELAYcornerSLOW \
-library_set SLOWlib \
-rc_corner RCcornerMAX
create_delay_corner -name DELAYcornerTYP \
-library_set TYPlib \
-rc_corner RCcornerTYP
create_delay_corner -name DELAYcornerFAST \
-library_set FASTlib \
-rc_corner RCcornerMIN
create_analysis_view -name MAXview \
-delay_corner {DELAYcornerSLOW} \
-constraint_mode {CONSTRAINTS}
create_analysis_view -name TYPview \
-delay_corner {DELAYcornerTYP} \
-constraint_mode {CONSTRAINTS}
create_analysis_view -name MINview \
-delay_corner {DELAYcornerFAST} \
-constraint_mode {CONSTRAINTS}
set_analysis_view -setup {MAXview} -hold {MINview}
update_constraint_mode -name CONSTRAINTS -sdc_files {../Source/SDCs/FFTENC.sdc}
set_analysis_view -setup {MAXview} -hold {MINview}
setOptMode -fixCap false -fixTran false -fixFanoutLoad false
optDesign -postRoute -hold -incr
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -drouteStartIteration 1
setNanoRouteMode -quiet -drouteUseMultiCutViaEffort high
setNanoRouteMode -quiet -routeWithTimingDriven true
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {BUHDX0 BUHDX12 BUHDX1 BUHDX2 BUHDX3 BUHDX4 BUHDX6 BUHDX8 DLY1HDX0 DLY1HDX1 DLY2HDX0 DLY2HDX1 DLY4HDX0 DLY4HDX1 DLY8HDX0 DLY8HDX1 INHDX0 INHDX12 INHDX1 INHDX2 INHDX3 INHDX4 INHDX6 INHDX8} -maxAllowedDelay 500
setOptMode -fixCap false -fixTran false -fixFanoutLoad false
optDesign -postRoute -hold -incr
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false
setNanoRouteMode -quiet -routeTdrEffort 2
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail -viaOpt -wireOpt
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail -viaOpt -wireOpt
getMultiCpuUsage -localCpu
verify_drc -report FFTv3.drc.rpt -limit 1000
setNanoRouteMode -quiet -routeTdrEffort 8
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail -viaOpt -wireOpt
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail -viaOpt -wireOpt
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail -viaOpt -wireOpt
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail -viaOpt -wireOpt
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail -viaOpt -wireOpt
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail -viaOpt -wireOpt
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail -viaOpt -wireOpt
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail -viaOpt -wireOpt
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail -viaOpt -wireOpt
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail -viaOpt -wireOpt
saveDesign FFTv3_2drcno2opt.enc
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail -wireOpt
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail -wireOpt
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix FFTv3_postRoute -outDir timingReports
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
verifyConnectivity -type all -error 1000 -warning 50
verify_drc -report FFTv3.drc.rpt -limit 1000
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
verifyConnectivity -type all -error 1000 -warning 50
verify_drc -report FFTv3.drc.rpt -limit 1000
setOptMode -fixCap false -fixTran false -fixFanoutLoad false
optDesign -postRoute -hold -incr
selectInst u_Butterflies/u_128_input_7_step/u_SeventhStage7/mul_80_44/g748
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
deselectAll
selectInst u_Butterflies/u_128_input_7_step/u_SeventhStage7/mul_80_44/g748
uiSetTool defineArea ::Rda_Route::NanoRoute::defineAreaAndRouteCallback
uiSetTool defineArea {}
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
globalDetailRoute 2243.973 1399.363 2246.17 1395.982
uiSetTool select
uiSetTool defineArea ::Rda_Route::NanoRoute::defineAreaAndRouteCallback
uiSetTool defineArea {}
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
globalDetailRoute 1922.61 1362.362 1965.725 1306.278
uiSetTool select
uiSetTool defineArea ::Rda_Route::NanoRoute::defineAreaAndRouteCallback
uiSetTool defineArea {}
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
globalDetailRoute 125.87 518.83 139.26 503.162
uiSetTool select
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
verify_drc -report FFTv3.drc.rpt -limit 1000
uiSetTool defineArea ::Rda_Route::NanoRoute::defineAreaAndRouteCallback
uiSetTool defineArea {}
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
globalDetailRoute 2046.864 387.504 2061.461 375.027
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
verify_drc -report FFTv3.drc.rpt -limit 1000
deselectAll
verifyConnectivity -type all -error 1000 -warning 50
verifyProcessAntenna -reportfile FFTv3.antenna.rpt -error 1000
uiSetTool select
create_constraint_mode -name CONSTRAINTS -sdc_files {../Source/SDCs/SDCUsedInProgress/FFT_Enc10-1-50.sdc}
create_library_set -name SLOWlib \
-timing {/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/liberty_LP5MOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LP5MOS_slow_1_62V_175C.lib}
create_library_set -name TYPlib \
-timing {/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/liberty_LP5MOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LP5MOS_typ_1_80V_25C.lib}
create_library_set -name FASTlib \
-timing {/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/liberty_LP5MOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LP5MOS_fast_1_98V_m40C.lib}
create_op_cond -name PVT_slow_1_62V_175C \
-library_file {/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/liberty_LP5MOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LP5MOS_slow_1_62V_175C.lib} \
-P {1} -V {1.62} -T {175}
create_op_cond -name PVT_typ_1_80V_25C \
-library_file {/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/liberty_LP5MOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LP5MOS_typ_1_80V_25C.lib} \
-P {1} -V {1.8} -T {25}
create_op_cond -name PVT_fast_1_98V_-40C \
-library_file {/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/liberty_LP5MOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LP5MOS_fast_1_98V_m40C.lib} \
-P {1} -V {1.98} -T {-40}
create_rc_corner -name RCcornerMIN \
-cap_table /Cadence/Libs/X_FAB/XKIT/xt018/cadence/v7_0/capTbl/v7_0_1/xt018_xx43_MET4_METMID_METTHK_min.capTbl \
-qx_tech_file /Cadence/Libs/X_FAB/XKIT/xt018/cadence/v7_0/QRC_pvs/v7_0_3/XT018_1243/QRC-Min/qrcTechFile
create_rc_corner -name RCcornerTYP \
-cap_table /Cadence/Libs/X_FAB/XKIT/xt018/cadence/v7_0/capTbl/v7_0_1/xt018_xx43_MET4_METMID_METTHK_typ.capTbl \
-qx_tech_file /Cadence/Libs/X_FAB/XKIT/xt018/cadence/v7_0/QRC_pvs/v7_0_3/XT018_1243/QRC-Typ/qrcTechFile
create_rc_corner -name RCcornerMAX \
-cap_table /Cadence/Libs/X_FAB/XKIT/xt018/cadence/v7_0/capTbl/v7_0_1/xt018_xx43_MET4_METMID_METTHK_max.capTbl \
-qx_tech_file /Cadence/Libs/X_FAB/XKIT/xt018/cadence/v7_0/QRC_pvs/v7_0_3/XT018_1243/QRC-Max/qrcTechFile
create_delay_corner -name DELAYcornerSLOW \
-library_set SLOWlib \
-rc_corner RCcornerMAX
create_delay_corner -name DELAYcornerTYP \
-library_set TYPlib \
-rc_corner RCcornerTYP
create_delay_corner -name DELAYcornerFAST \
-library_set FASTlib \
-rc_corner RCcornerMIN
create_analysis_view -name MAXview \
-delay_corner {DELAYcornerSLOW} \
-constraint_mode {CONSTRAINTS}
create_analysis_view -name TYPview \
-delay_corner {DELAYcornerTYP} \
-constraint_mode {CONSTRAINTS}
create_analysis_view -name MINview \
-delay_corner {DELAYcornerFAST} \
-constraint_mode {CONSTRAINTS}
set_analysis_view -setup {MAXview} -hold {MINview}
update_constraint_mode -name CONSTRAINTS -sdc_files {../Source/SDCs/SDCUsedInProgress/FFT_Enc10-1-50.sdc}
set_analysis_view -setup {MAXview} -hold {MINview}
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix FFTv3_postRoute -outDir timingReports
setOptMode -fixCap false -fixTran false -fixFanoutLoad false
optDesign -postRoute -hold -incr
create_constraint_mode -name CONSTRAINTS -sdc_files {../Source/SDCs/FFTENC.sdc}
create_library_set -name SLOWlib \
-timing {/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/liberty_LP5MOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LP5MOS_slow_1_62V_175C.lib}
create_library_set -name TYPlib \
-timing {/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/liberty_LP5MOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LP5MOS_typ_1_80V_25C.lib}
create_library_set -name FASTlib \
-timing {/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/liberty_LP5MOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LP5MOS_fast_1_98V_m40C.lib}
create_op_cond -name PVT_slow_1_62V_175C \
-library_file {/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/liberty_LP5MOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LP5MOS_slow_1_62V_175C.lib} \
-P {1} -V {1.62} -T {175}
create_op_cond -name PVT_typ_1_80V_25C \
-library_file {/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/liberty_LP5MOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LP5MOS_typ_1_80V_25C.lib} \
-P {1} -V {1.8} -T {25}
create_op_cond -name PVT_fast_1_98V_-40C \
-library_file {/Cadence/Libs/X_FAB/XKIT/xt018/diglibs/D_CELLS_HD/v4_0/liberty_LP5MOS/v4_0_0/PVT_1_80V_range/D_CELLS_HD_LP5MOS_fast_1_98V_m40C.lib} \
-P {1} -V {1.98} -T {-40}
create_rc_corner -name RCcornerMIN \
-cap_table /Cadence/Libs/X_FAB/XKIT/xt018/cadence/v7_0/capTbl/v7_0_1/xt018_xx43_MET4_METMID_METTHK_min.capTbl \
-qx_tech_file /Cadence/Libs/X_FAB/XKIT/xt018/cadence/v7_0/QRC_pvs/v7_0_3/XT018_1243/QRC-Min/qrcTechFile
create_rc_corner -name RCcornerTYP \
-cap_table /Cadence/Libs/X_FAB/XKIT/xt018/cadence/v7_0/capTbl/v7_0_1/xt018_xx43_MET4_METMID_METTHK_typ.capTbl \
-qx_tech_file /Cadence/Libs/X_FAB/XKIT/xt018/cadence/v7_0/QRC_pvs/v7_0_3/XT018_1243/QRC-Typ/qrcTechFile
create_rc_corner -name RCcornerMAX \
-cap_table /Cadence/Libs/X_FAB/XKIT/xt018/cadence/v7_0/capTbl/v7_0_1/xt018_xx43_MET4_METMID_METTHK_max.capTbl \
-qx_tech_file /Cadence/Libs/X_FAB/XKIT/xt018/cadence/v7_0/QRC_pvs/v7_0_3/XT018_1243/QRC-Max/qrcTechFile
create_delay_corner -name DELAYcornerSLOW \
-library_set SLOWlib \
-rc_corner RCcornerMAX
create_delay_corner -name DELAYcornerTYP \
-library_set TYPlib \
-rc_corner RCcornerTYP
create_delay_corner -name DELAYcornerFAST \
-library_set FASTlib \
-rc_corner RCcornerMIN
create_analysis_view -name MAXview \
-delay_corner {DELAYcornerSLOW} \
-constraint_mode {CONSTRAINTS}
create_analysis_view -name TYPview \
-delay_corner {DELAYcornerTYP} \
-constraint_mode {CONSTRAINTS}
create_analysis_view -name MINview \
-delay_corner {DELAYcornerFAST} \
-constraint_mode {CONSTRAINTS}
set_analysis_view -setup {MAXview} -hold {MINview}
update_constraint_mode -name CONSTRAINTS -sdc_files {../Source/SDCs/FFTENC.sdc}
set_analysis_view -setup {MAXview} -hold {MINview}
setExtractRCMode -engine postRoute -effortLevel singoff
setExtractRCMode -engine postRoute -effortLevel signoff
## RC EXTRACTION AND FILLER ADDING
extractRC
getFillerMode -quiet
addFiller -cell FEED7HD FEED5HD FEED3HD FEED2HD FEED25HD FEED1HD FEED15HD FEED10HD DECAP7HD DECAP5HD DECAP3HD DECAP25HD DECAP15HD DECAP10HD -prefix FILLER
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
verify_drc -report FFTv3.drc.rpt -limit 1000
verifyConnectivity -type all -error 1000 -warning 50
extractRC
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -signoff -pathReports -drvReports -slackReports -numPaths 50 -prefix FFTv3_signOff -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -signoff -hold -pathReports -slackReports -numPaths 50 -prefix FFTv3_signOff_H -outDir timingReports
all_hold_analysis_views 
all_setup_analysis_views 
## SAVING RESULTS
write_sdf -view MINview  -ideal_clock_network ../Outputs/FFTv3_min.sdf
write_sdf -view MAXview  -ideal_clock_network ../Ouputs/FFTv3_max.sdf
saveNetlist ../Outputs/FFTv3_FinalNetlist.v
saveNetlist ../Outputs/FFTv3physical_netlist.v -includePhysicalCell {FEED7HD FEED5HD FEED3HD FEED2HD FEED25HD FEED1HD FEED15HD FEED10HD DECAP7HD DECAP5HD DECAP3HD DECAP25HD DECAP15HD DECAP10HD}
global dbgLefDefOutVersion
set dbgLefDefOutVersion 5.8
defOut -floorplan -netlist -routing ../Outputs/FFTv3_final.def
set dbgLefDefOutVersion 5.8
displayClockPhaseDelay -preRoute
clearClockDisplay
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix FFTv3_postRoute_hold -outDir timingReports
saveDesign FFTv3_Copmleted.enc
