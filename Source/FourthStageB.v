// -------------------------------------------------------------
// 
// File Name: hdlsrc2\FFTscheme2\FourthStageB.v
// Created: 2020-11-01 20:22:59
// 
// Generated by MATLAB 9.4 and HDL Coder 3.12
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: FourthStageB
// Source Path: FFTscheme2/FFTv2/Butterflies/128 input 4 step  /FourthStageB 
// Hierarchy Level: 3
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module FourthStageB
          (In1,
           In2,
           Const_input,
           Out1,
           Out2);


  input   signed [10:0] In1;  // sfix11_En3
  input   signed [10:0] In2;  // sfix11_En3
  input   signed [11:0] Const_input;  // sfix12_En10
  output  signed [10:0] Out1;  // sfix11_En3
  output  signed [10:0] Out2;  // sfix11_En3


  wire signed [22:0] Product_mul_temp;  // sfix23_En13
  wire signed [10:0] Product_out1;  // sfix11_En3
  wire signed [10:0] Sum_out1;  // sfix11_En3
  wire signed [10:0] Sum1_out1;  // sfix11_En3


  assign Product_mul_temp = Const_input * In2;
  assign Product_out1 = Product_mul_temp[20:10];



  assign Sum_out1 = In1 + Product_out1;



  assign Out1 = Sum_out1;

  assign Sum1_out1 = In1 - Product_out1;



  assign Out2 = Sum1_out1;

endmodule  // FourthStageB

