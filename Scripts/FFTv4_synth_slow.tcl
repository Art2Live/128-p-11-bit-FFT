## Setup technology files
include ../X-FAB_FAST.tcl
#set_attribute remove_assigns true /
## disable optimization of constant 0 signals that goes through registers 
set_attribute optimize_constant_0_flops false /
## Setup variables
set DESIGN FFTv3
set PARAMS {}
## Read in Verilog HDL files
read_hdl -v2001 ../Source/alpha128_input_1step.v
read_hdl -v2001 ../Source/alpha128_input_2_step.v
read_hdl -v2001 ../Source/alpha128_input_3_step.v
read_hdl -v2001 ../Source/alpha128_input_4_step.v
read_hdl -v2001 ../Source/alpha128_input_5_step.v
read_hdl -v2001 ../Source/alpha128_input_6_step.v
read_hdl -v2001 ../Source/alpha128_input_7_step.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_10.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_11.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_12.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_13.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_14.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_15.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_16.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_17.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_18.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_19.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_1.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_20.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_21.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_22.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_23.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_24.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_25.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_26.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_27.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_28.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_29.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_2.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_30.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_31.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_32.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_33.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_34.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_35.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_36.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_37.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_38.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_39.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_3.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_40.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_41.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_42.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_43.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_44.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_45.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_46.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_47.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_48.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_49.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_4.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_50.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_51.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_52.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_53.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_54.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_55.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_56.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_57.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_58.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_59.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_5.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_60.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_61.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_62.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_63.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_64.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_6.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_7.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_8.v
read_hdl -v2001 ../Source/alpha2_input_butterfly_9.v
read_hdl -v2001 ../Source/Butterflies.v
read_hdl -v2001 ../Source/FFTv3.v
read_hdl -v2001 ../Source/FirthStage_10.v
read_hdl -v2001 ../Source/FirthStage_11.v
read_hdl -v2001 ../Source/FirthStage_12.v
read_hdl -v2001 ../Source/FirthStage_13.v
read_hdl -v2001 ../Source/FirthStage_14.v
read_hdl -v2001 ../Source/FirthStage_15.v
read_hdl -v2001 ../Source/FirthStage_16.v
read_hdl -v2001 ../Source/FirthStage_17.v
read_hdl -v2001 ../Source/FirthStage_18.v
read_hdl -v2001 ../Source/FirthStage_19.v
read_hdl -v2001 ../Source/FirthStage_1.v
read_hdl -v2001 ../Source/FirthStage_20.v
read_hdl -v2001 ../Source/FirthStage_21.v
read_hdl -v2001 ../Source/FirthStage_22.v
read_hdl -v2001 ../Source/FirthStage_23.v
read_hdl -v2001 ../Source/FirthStage_24.v
read_hdl -v2001 ../Source/FirthStage_25.v
read_hdl -v2001 ../Source/FirthStage_26.v
read_hdl -v2001 ../Source/FirthStage_27.v
read_hdl -v2001 ../Source/FirthStage_28.v
read_hdl -v2001 ../Source/FirthStage_29.v
read_hdl -v2001 ../Source/FirthStage_2.v
read_hdl -v2001 ../Source/FirthStage_30.v
read_hdl -v2001 ../Source/FirthStage_31.v
read_hdl -v2001 ../Source/FirthStage_32.v
read_hdl -v2001 ../Source/FirthStage_33.v
read_hdl -v2001 ../Source/FirthStage_34.v
read_hdl -v2001 ../Source/FirthStage_35.v
read_hdl -v2001 ../Source/FirthStage_36.v
read_hdl -v2001 ../Source/FirthStage_37.v
read_hdl -v2001 ../Source/FirthStage_38.v
read_hdl -v2001 ../Source/FirthStage_39.v
read_hdl -v2001 ../Source/FirthStage_3.v
read_hdl -v2001 ../Source/FirthStage_40.v
read_hdl -v2001 ../Source/FirthStage_41.v
read_hdl -v2001 ../Source/FirthStage_42.v
read_hdl -v2001 ../Source/FirthStage_43.v
read_hdl -v2001 ../Source/FirthStage_44.v
read_hdl -v2001 ../Source/FirthStage_45.v
read_hdl -v2001 ../Source/FirthStage_46.v
read_hdl -v2001 ../Source/FirthStage_47.v
read_hdl -v2001 ../Source/FirthStage_48.v
read_hdl -v2001 ../Source/FirthStage_49.v
read_hdl -v2001 ../Source/FirthStage_4.v
read_hdl -v2001 ../Source/FirthStage_50.v
read_hdl -v2001 ../Source/FirthStage_51.v
read_hdl -v2001 ../Source/FirthStage_52.v
read_hdl -v2001 ../Source/FirthStage_53.v
read_hdl -v2001 ../Source/FirthStage_54.v
read_hdl -v2001 ../Source/FirthStage_55.v
read_hdl -v2001 ../Source/FirthStage_56.v
read_hdl -v2001 ../Source/FirthStage_57.v
read_hdl -v2001 ../Source/FirthStage_58.v
read_hdl -v2001 ../Source/FirthStage_59.v
read_hdl -v2001 ../Source/FirthStage_5.v
read_hdl -v2001 ../Source/FirthStage_60.v
read_hdl -v2001 ../Source/FirthStage_61.v
read_hdl -v2001 ../Source/FirthStage_62.v
read_hdl -v2001 ../Source/FirthStage_63.v
read_hdl -v2001 ../Source/FirthStage_6.v
read_hdl -v2001 ../Source/FirthStage_7.v
read_hdl -v2001 ../Source/FirthStage_8.v
read_hdl -v2001 ../Source/FirthStage_9.v
read_hdl -v2001 ../Source/FirthStage.v
read_hdl -v2001 ../Source/FourthStageB_10.v
read_hdl -v2001 ../Source/FourthStageB_11.v
read_hdl -v2001 ../Source/FourthStageB_12.v
read_hdl -v2001 ../Source/FourthStageB_13.v
read_hdl -v2001 ../Source/FourthStageB_14.v
read_hdl -v2001 ../Source/FourthStageB_15.v
read_hdl -v2001 ../Source/FourthStageB_16.v
read_hdl -v2001 ../Source/FourthStageB_17.v
read_hdl -v2001 ../Source/FourthStageB_18.v
read_hdl -v2001 ../Source/FourthStageB_19.v
read_hdl -v2001 ../Source/FourthStageB_1.v
read_hdl -v2001 ../Source/FourthStageB_20.v
read_hdl -v2001 ../Source/FourthStageB_21.v
read_hdl -v2001 ../Source/FourthStageB_22.v
read_hdl -v2001 ../Source/FourthStageB_23.v
read_hdl -v2001 ../Source/FourthStageB_24.v
read_hdl -v2001 ../Source/FourthStageB_25.v
read_hdl -v2001 ../Source/FourthStageB_26.v
read_hdl -v2001 ../Source/FourthStageB_27.v
read_hdl -v2001 ../Source/FourthStageB_28.v
read_hdl -v2001 ../Source/FourthStageB_29.v
read_hdl -v2001 ../Source/FourthStageB_2.v
read_hdl -v2001 ../Source/FourthStageB_30.v
read_hdl -v2001 ../Source/FourthStageB_31.v
read_hdl -v2001 ../Source/FourthStageB_32.v
read_hdl -v2001 ../Source/FourthStageB_33.v
read_hdl -v2001 ../Source/FourthStageB_34.v
read_hdl -v2001 ../Source/FourthStageB_35.v
read_hdl -v2001 ../Source/FourthStageB_36.v
read_hdl -v2001 ../Source/FourthStageB_37.v
read_hdl -v2001 ../Source/FourthStageB_38.v
read_hdl -v2001 ../Source/FourthStageB_39.v
read_hdl -v2001 ../Source/FourthStageB_3.v
read_hdl -v2001 ../Source/FourthStageB_40.v
read_hdl -v2001 ../Source/FourthStageB_41.v
read_hdl -v2001 ../Source/FourthStageB_42.v
read_hdl -v2001 ../Source/FourthStageB_43.v
read_hdl -v2001 ../Source/FourthStageB_44.v
read_hdl -v2001 ../Source/FourthStageB_45.v
read_hdl -v2001 ../Source/FourthStageB_46.v
read_hdl -v2001 ../Source/FourthStageB_47.v
read_hdl -v2001 ../Source/FourthStageB_48.v
read_hdl -v2001 ../Source/FourthStageB_49.v
read_hdl -v2001 ../Source/FourthStageB_4.v
read_hdl -v2001 ../Source/FourthStageB_50.v
read_hdl -v2001 ../Source/FourthStageB_51.v
read_hdl -v2001 ../Source/FourthStageB_52.v
read_hdl -v2001 ../Source/FourthStageB_53.v
read_hdl -v2001 ../Source/FourthStageB_54.v
read_hdl -v2001 ../Source/FourthStageB_55.v
read_hdl -v2001 ../Source/FourthStageB_56.v
read_hdl -v2001 ../Source/FourthStageB_57.v
read_hdl -v2001 ../Source/FourthStageB_58.v
read_hdl -v2001 ../Source/FourthStageB_59.v
read_hdl -v2001 ../Source/FourthStageB_5.v
read_hdl -v2001 ../Source/FourthStageB_60.v
read_hdl -v2001 ../Source/FourthStageB_61.v
read_hdl -v2001 ../Source/FourthStageB_62.v
read_hdl -v2001 ../Source/FourthStageB_63.v
read_hdl -v2001 ../Source/FourthStageB_6.v
read_hdl -v2001 ../Source/FourthStageB_7.v
read_hdl -v2001 ../Source/FourthStageB_8.v
read_hdl -v2001 ../Source/FourthStageB_9.v
read_hdl -v2001 ../Source/FourthStageB.v
read_hdl -v2001 ../Source/SeventhStage10.v
read_hdl -v2001 ../Source/SeventhStage11.v
read_hdl -v2001 ../Source/SeventhStage12.v
read_hdl -v2001 ../Source/SeventhStage13.v
read_hdl -v2001 ../Source/SeventhStage14.v
read_hdl -v2001 ../Source/SeventhStage15.v
read_hdl -v2001 ../Source/SeventhStage16.v
read_hdl -v2001 ../Source/SeventhStage17.v
read_hdl -v2001 ../Source/SeventhStage18.v
read_hdl -v2001 ../Source/SeventhStage19.v
read_hdl -v2001 ../Source/SeventhStage1.v
read_hdl -v2001 ../Source/SeventhStage20.v
read_hdl -v2001 ../Source/SeventhStage21.v
read_hdl -v2001 ../Source/SeventhStage22.v
read_hdl -v2001 ../Source/SeventhStage23.v
read_hdl -v2001 ../Source/SeventhStage24.v
read_hdl -v2001 ../Source/SeventhStage25.v
read_hdl -v2001 ../Source/SeventhStage26.v
read_hdl -v2001 ../Source/SeventhStage27.v
read_hdl -v2001 ../Source/SeventhStage28.v
read_hdl -v2001 ../Source/SeventhStage29.v
read_hdl -v2001 ../Source/SeventhStage2.v
read_hdl -v2001 ../Source/SeventhStage30.v
read_hdl -v2001 ../Source/SeventhStage31.v
read_hdl -v2001 ../Source/SeventhStage32.v
read_hdl -v2001 ../Source/SeventhStage33.v
read_hdl -v2001 ../Source/SeventhStage34.v
read_hdl -v2001 ../Source/SeventhStage35.v
read_hdl -v2001 ../Source/SeventhStage36.v
read_hdl -v2001 ../Source/SeventhStage37.v
read_hdl -v2001 ../Source/SeventhStage38.v
read_hdl -v2001 ../Source/SeventhStage39.v
read_hdl -v2001 ../Source/SeventhStage3.v
read_hdl -v2001 ../Source/SeventhStage40.v
read_hdl -v2001 ../Source/SeventhStage41.v
read_hdl -v2001 ../Source/SeventhStage42.v
read_hdl -v2001 ../Source/SeventhStage43.v
read_hdl -v2001 ../Source/SeventhStage44.v
read_hdl -v2001 ../Source/SeventhStage45.v
read_hdl -v2001 ../Source/SeventhStage46.v
read_hdl -v2001 ../Source/SeventhStage47.v
read_hdl -v2001 ../Source/SeventhStage48.v
read_hdl -v2001 ../Source/SeventhStage49.v
read_hdl -v2001 ../Source/SeventhStage4.v
read_hdl -v2001 ../Source/SeventhStage50.v
read_hdl -v2001 ../Source/SeventhStage51.v
read_hdl -v2001 ../Source/SeventhStage52.v
read_hdl -v2001 ../Source/SeventhStage53.v
read_hdl -v2001 ../Source/SeventhStage54.v
read_hdl -v2001 ../Source/SeventhStage55.v
read_hdl -v2001 ../Source/SeventhStage56.v
read_hdl -v2001 ../Source/SeventhStage57.v
read_hdl -v2001 ../Source/SeventhStage58.v
read_hdl -v2001 ../Source/SeventhStage59.v
read_hdl -v2001 ../Source/SeventhStage5.v
read_hdl -v2001 ../Source/SeventhStage60.v
read_hdl -v2001 ../Source/SeventhStage61.v
read_hdl -v2001 ../Source/SeventhStage62.v
read_hdl -v2001 ../Source/SeventhStage63.v
read_hdl -v2001 ../Source/SeventhStage6.v
read_hdl -v2001 ../Source/SeventhStage7.v
read_hdl -v2001 ../Source/SeventhStage8.v
read_hdl -v2001 ../Source/SeventhStage9.v
read_hdl -v2001 ../Source/SeventhStage.v
read_hdl -v2001 ../Source/SixthStageB10.v
read_hdl -v2001 ../Source/SixthStageB11.v
read_hdl -v2001 ../Source/SixthStageB12.v
read_hdl -v2001 ../Source/SixthStageB13.v
read_hdl -v2001 ../Source/SixthStageB14.v
read_hdl -v2001 ../Source/SixthStageB15.v
read_hdl -v2001 ../Source/SixthStageB16.v
read_hdl -v2001 ../Source/SixthStageB17.v
read_hdl -v2001 ../Source/SixthStageB18.v
read_hdl -v2001 ../Source/SixthStageB19.v
read_hdl -v2001 ../Source/SixthStageB1.v
read_hdl -v2001 ../Source/SixthStageB20.v
read_hdl -v2001 ../Source/SixthStageB21.v
read_hdl -v2001 ../Source/SixthStageB22.v
read_hdl -v2001 ../Source/SixthStageB23.v
read_hdl -v2001 ../Source/SixthStageB24.v
read_hdl -v2001 ../Source/SixthStageB25.v
read_hdl -v2001 ../Source/SixthStageB26.v
read_hdl -v2001 ../Source/SixthStageB27.v
read_hdl -v2001 ../Source/SixthStageB28.v
read_hdl -v2001 ../Source/SixthStageB29.v
read_hdl -v2001 ../Source/SixthStageB2.v
read_hdl -v2001 ../Source/SixthStageB30.v
read_hdl -v2001 ../Source/SixthStageB31.v
read_hdl -v2001 ../Source/SixthStageB32.v
read_hdl -v2001 ../Source/SixthStageB33.v
read_hdl -v2001 ../Source/SixthStageB34.v
read_hdl -v2001 ../Source/SixthStageB35.v
read_hdl -v2001 ../Source/SixthStageB36.v
read_hdl -v2001 ../Source/SixthStageB37.v
read_hdl -v2001 ../Source/SixthStageB38.v
read_hdl -v2001 ../Source/SixthStageB39.v
read_hdl -v2001 ../Source/SixthStageB3.v
read_hdl -v2001 ../Source/SixthStageB40.v
read_hdl -v2001 ../Source/SixthStageB41.v
read_hdl -v2001 ../Source/SixthStageB42.v
read_hdl -v2001 ../Source/SixthStageB43.v
read_hdl -v2001 ../Source/SixthStageB44.v
read_hdl -v2001 ../Source/SixthStageB45.v
read_hdl -v2001 ../Source/SixthStageB46.v
read_hdl -v2001 ../Source/SixthStageB47.v
read_hdl -v2001 ../Source/SixthStageB48.v
read_hdl -v2001 ../Source/SixthStageB49.v
read_hdl -v2001 ../Source/SixthStageB4.v
read_hdl -v2001 ../Source/SixthStageB50.v
read_hdl -v2001 ../Source/SixthStageB51.v
read_hdl -v2001 ../Source/SixthStageB52.v
read_hdl -v2001 ../Source/SixthStageB53.v
read_hdl -v2001 ../Source/SixthStageB54.v
read_hdl -v2001 ../Source/SixthStageB55.v
read_hdl -v2001 ../Source/SixthStageB56.v
read_hdl -v2001 ../Source/SixthStageB57.v
read_hdl -v2001 ../Source/SixthStageB58.v
read_hdl -v2001 ../Source/SixthStageB59.v
read_hdl -v2001 ../Source/SixthStageB5.v
read_hdl -v2001 ../Source/SixthStageB60.v
read_hdl -v2001 ../Source/SixthStageB61.v
read_hdl -v2001 ../Source/SixthStageB62.v
read_hdl -v2001 ../Source/SixthStageB63.v
read_hdl -v2001 ../Source/SixthStageB6.v
read_hdl -v2001 ../Source/SixthStageB7.v
read_hdl -v2001 ../Source/SixthStageB8.v
read_hdl -v2001 ../Source/SixthStageB9.v
read_hdl -v2001 ../Source/SixthStageB.v
read_hdl -v2001 ../Source/Subsystem10.v
read_hdl -v2001 ../Source/Subsystem11.v
read_hdl -v2001 ../Source/Subsystem12.v
read_hdl -v2001 ../Source/Subsystem13.v
read_hdl -v2001 ../Source/Subsystem14.v
read_hdl -v2001 ../Source/Subsystem15.v
read_hdl -v2001 ../Source/Subsystem16.v
read_hdl -v2001 ../Source/Subsystem17.v
read_hdl -v2001 ../Source/Subsystem18.v
read_hdl -v2001 ../Source/Subsystem19.v
read_hdl -v2001 ../Source/Subsystem1_block.v
read_hdl -v2001 ../Source/Subsystem1.v
read_hdl -v2001 ../Source/Subsystem20.v
read_hdl -v2001 ../Source/Subsystem21.v
read_hdl -v2001 ../Source/Subsystem22.v
read_hdl -v2001 ../Source/Subsystem23.v
read_hdl -v2001 ../Source/Subsystem24.v
read_hdl -v2001 ../Source/Subsystem25.v
read_hdl -v2001 ../Source/Subsystem26.v
read_hdl -v2001 ../Source/Subsystem27.v
read_hdl -v2001 ../Source/Subsystem28.v
read_hdl -v2001 ../Source/Subsystem29.v
read_hdl -v2001 ../Source/Subsystem2_block.v
read_hdl -v2001 ../Source/Subsystem2.v
read_hdl -v2001 ../Source/Subsystem30.v
read_hdl -v2001 ../Source/Subsystem31.v
read_hdl -v2001 ../Source/Subsystem32.v
read_hdl -v2001 ../Source/Subsystem33.v
read_hdl -v2001 ../Source/Subsystem34.v
read_hdl -v2001 ../Source/Subsystem35.v
read_hdl -v2001 ../Source/Subsystem36.v
read_hdl -v2001 ../Source/Subsystem37.v
read_hdl -v2001 ../Source/Subsystem38.v
read_hdl -v2001 ../Source/Subsystem39.v
read_hdl -v2001 ../Source/Subsystem3_block.v
read_hdl -v2001 ../Source/Subsystem3.v
read_hdl -v2001 ../Source/Subsystem40.v
read_hdl -v2001 ../Source/Subsystem41.v
read_hdl -v2001 ../Source/Subsystem42.v
read_hdl -v2001 ../Source/Subsystem43.v
read_hdl -v2001 ../Source/Subsystem44.v
read_hdl -v2001 ../Source/Subsystem45.v
read_hdl -v2001 ../Source/Subsystem46.v
read_hdl -v2001 ../Source/Subsystem47.v
read_hdl -v2001 ../Source/Subsystem48.v
read_hdl -v2001 ../Source/Subsystem49.v
read_hdl -v2001 ../Source/Subsystem4_block.v
read_hdl -v2001 ../Source/Subsystem4.v
read_hdl -v2001 ../Source/Subsystem50.v
read_hdl -v2001 ../Source/Subsystem51.v
read_hdl -v2001 ../Source/Subsystem52.v
read_hdl -v2001 ../Source/Subsystem53.v
read_hdl -v2001 ../Source/Subsystem54.v
read_hdl -v2001 ../Source/Subsystem55.v
read_hdl -v2001 ../Source/Subsystem56.v
read_hdl -v2001 ../Source/Subsystem57.v
read_hdl -v2001 ../Source/Subsystem58.v
read_hdl -v2001 ../Source/Subsystem59.v
read_hdl -v2001 ../Source/Subsystem5_block.v
read_hdl -v2001 ../Source/Subsystem5.v
read_hdl -v2001 ../Source/Subsystem60.v
read_hdl -v2001 ../Source/Subsystem61.v
read_hdl -v2001 ../Source/Subsystem62.v
read_hdl -v2001 ../Source/Subsystem63.v
read_hdl -v2001 ../Source/Subsystem6.v
read_hdl -v2001 ../Source/Subsystem7.v
read_hdl -v2001 ../Source/Subsystem8.v
read_hdl -v2001 ../Source/Subsystem9.v
read_hdl -v2001 ../Source/Subsystem_block.v
read_hdl -v2001 ../Source/Subsystem.v
read_hdl -v2001 ../Source/ThirdStageB_10.v
read_hdl -v2001 ../Source/ThirdStageB_11.v
read_hdl -v2001 ../Source/ThirdStageB_12.v
read_hdl -v2001 ../Source/ThirdStageB_13.v
read_hdl -v2001 ../Source/ThirdStageB_14.v
read_hdl -v2001 ../Source/ThirdStageB_15.v
read_hdl -v2001 ../Source/ThirdStageB_16.v
read_hdl -v2001 ../Source/ThirdStageB_17.v
read_hdl -v2001 ../Source/ThirdStageB_18.v
read_hdl -v2001 ../Source/ThirdStageB_19.v
read_hdl -v2001 ../Source/ThirdStageB_1.v
read_hdl -v2001 ../Source/ThirdStageB_20.v
read_hdl -v2001 ../Source/ThirdStageB_21.v
read_hdl -v2001 ../Source/ThirdStageB_22.v
read_hdl -v2001 ../Source/ThirdStageB_23.v
read_hdl -v2001 ../Source/ThirdStageB_24.v
read_hdl -v2001 ../Source/ThirdStageB_25.v
read_hdl -v2001 ../Source/ThirdStageB_26.v
read_hdl -v2001 ../Source/ThirdStageB_27.v
read_hdl -v2001 ../Source/ThirdStageB_28.v
read_hdl -v2001 ../Source/ThirdStageB_29.v
read_hdl -v2001 ../Source/ThirdStageB_2.v
read_hdl -v2001 ../Source/ThirdStageB_30.v
read_hdl -v2001 ../Source/ThirdStageB_31.v
read_hdl -v2001 ../Source/ThirdStageB_32.v
read_hdl -v2001 ../Source/ThirdStageB_33.v
read_hdl -v2001 ../Source/ThirdStageB_34.v
read_hdl -v2001 ../Source/ThirdStageB_35.v
read_hdl -v2001 ../Source/ThirdStageB_36.v
read_hdl -v2001 ../Source/ThirdStageB_37.v
read_hdl -v2001 ../Source/ThirdStageB_38.v
read_hdl -v2001 ../Source/ThirdStageB_39.v
read_hdl -v2001 ../Source/ThirdStageB_3.v
read_hdl -v2001 ../Source/ThirdStageB_40.v
read_hdl -v2001 ../Source/ThirdStageB_41.v
read_hdl -v2001 ../Source/ThirdStageB_42.v
read_hdl -v2001 ../Source/ThirdStageB_43.v
read_hdl -v2001 ../Source/ThirdStageB_44.v
read_hdl -v2001 ../Source/ThirdStageB_45.v
read_hdl -v2001 ../Source/ThirdStageB_46.v
read_hdl -v2001 ../Source/ThirdStageB_47.v
read_hdl -v2001 ../Source/ThirdStageB_48.v
read_hdl -v2001 ../Source/ThirdStageB_49.v
read_hdl -v2001 ../Source/ThirdStageB_4.v
read_hdl -v2001 ../Source/ThirdStageB_50.v
read_hdl -v2001 ../Source/ThirdStageB_51.v
read_hdl -v2001 ../Source/ThirdStageB_52.v
read_hdl -v2001 ../Source/ThirdStageB_53.v
read_hdl -v2001 ../Source/ThirdStageB_54.v
read_hdl -v2001 ../Source/ThirdStageB_55.v
read_hdl -v2001 ../Source/ThirdStageB_56.v
read_hdl -v2001 ../Source/ThirdStageB_57.v
read_hdl -v2001 ../Source/ThirdStageB_58.v
read_hdl -v2001 ../Source/ThirdStageB_59.v
read_hdl -v2001 ../Source/ThirdStageB_5.v
read_hdl -v2001 ../Source/ThirdStageB_60.v
read_hdl -v2001 ../Source/ThirdStageB_61.v
read_hdl -v2001 ../Source/ThirdStageB_62.v
read_hdl -v2001 ../Source/ThirdStageB_63.v
read_hdl -v2001 ../Source/ThirdStageB_6.v
read_hdl -v2001 ../Source/ThirdStageB_7.v
read_hdl -v2001 ../Source/ThirdStageB_8.v
read_hdl -v2001 ../Source/ThirdStageB_9.v
read_hdl -v2001 ../Source/ThirdStageB.v

## Compile our code (create a technology-independent schematic)
elaborate -parameters $PARAMS $DESIGN
## Setup design constraints
## read_sdc ../Source/Top/Synthesis/Top.sdc
read_sdc ../Source/SDCs/FFTRTL.sdc
## all remaining assign statements in design will be replaced with buffer BUHDX1
set_remove_assign_options -ignore_preserve_setting -buffer BUHDX1 -design FFTv3


## Synthesize our schematic (create a technology-dependent schematic)
#synthesize -to_generic
synthesize -to_mapped
synthesize -incremental

## Write out area and timing reports
report area > ../Reports/FFT_synth_area_report_slow
report timing > ../Reports/FFT_synth_timing_report_slow
## Write out synthesized Verilog netlist
write_hdl -mapped > ../Source/FFT/Synthesis/FFTv3_synth_slow.v
## Write out the SDC file we will take into the place n route tool
write_sdc > ../Source/FFT/Synthesis/FFTv3_out.sdc
gui_show

