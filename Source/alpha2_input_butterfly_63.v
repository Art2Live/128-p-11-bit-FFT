// -------------------------------------------------------------
// 
// File Name: hdlsrc2\FFTscheme2\alpha2_input_butterfly_63.v
// Created: 2020-11-01 20:22:58
// 
// Generated by MATLAB 9.4 and HDL Coder 3.12
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: alpha2_input_butterfly_63
// Source Path: FFTscheme2/FFTv2/Butterflies/128 input 1step /2 input butterfly 63
// Hierarchy Level: 3
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module alpha2_input_butterfly_63
          (In1,
           In2,
           Const_input,
           Out1,
           Out2);


  input   signed [10:0] In1;  // sfix11_En6
  input   signed [10:0] In2;  // sfix11_En6
  input   Const_input;  // ufix1
  output  signed [9:0] Out1;  // sfix10_En4
  output  signed [9:0] Out2;  // sfix10_En4


  wire signed [10:0] Product_in0;  // sfix11_En6
  wire signed [11:0] Product_cast;  // sfix12_En6
  wire signed [10:0] Product_out1;  // sfix11_En6
  wire signed [11:0] Sum_add_cast;  // sfix12_En6
  wire signed [11:0] Sum_add_cast_1;  // sfix12_En6
  wire signed [11:0] Sum_add_temp;  // sfix12_En6
  wire signed [9:0] Sum_out1;  // sfix10_En4
  wire signed [11:0] Sum1_sub_cast;  // sfix12_En6
  wire signed [11:0] Sum1_sub_cast_1;  // sfix12_En6
  wire signed [11:0] Sum1_sub_temp;  // sfix12_En6
  wire signed [9:0] Sum1_out1;  // sfix10_En4


  assign Product_in0 = (Const_input == 1'b1 ? In2 :
              11'sb00000000000);
  assign Product_cast = {Product_in0[10], Product_in0};
  assign Product_out1 = Product_cast[10:0];



  assign Sum_add_cast = {In1[10], In1};
  assign Sum_add_cast_1 = {Product_out1[10], Product_out1};
  assign Sum_add_temp = Sum_add_cast + Sum_add_cast_1;
  assign Sum_out1 = Sum_add_temp[11:2];



  assign Out1 = Sum_out1;

  assign Sum1_sub_cast = {In1[10], In1};
  assign Sum1_sub_cast_1 = {Product_out1[10], Product_out1};
  assign Sum1_sub_temp = Sum1_sub_cast - Sum1_sub_cast_1;
  assign Sum1_out1 = Sum1_sub_temp[11:2];



  assign Out2 = Sum1_out1;

endmodule  // alpha2_input_butterfly_63

