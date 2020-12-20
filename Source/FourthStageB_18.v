// -------------------------------------------------------------
// 
// File Name: hdlsrc2\FFTscheme2\FourthStageB_18.v
// Created: 2020-11-01 20:22:59
// 
// Generated by MATLAB 9.4 and HDL Coder 3.12
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: FourthStageB_18
// Source Path: FFTscheme2/FFTv2/Butterflies/128 input 4 step  /FourthStageB 18
// Hierarchy Level: 3
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module FourthStageB_18
          (In1_re,
           In1_im,
           In2_re,
           In2_im,
           Const_input_re,
           Const_input_im,
           Out1_re,
           Out1_im,
           Out2_re,
           Out2_im);


  input   signed [10:0] In1_re;  // sfix11_En3
  input   signed [10:0] In1_im;  // sfix11_En3
  input   signed [10:0] In2_re;  // sfix11_En3
  input   signed [10:0] In2_im;  // sfix11_En3
  input   signed [11:0] Const_input_re;  // sfix12_En10
  input   signed [11:0] Const_input_im;  // sfix12_En10
  output  signed [10:0] Out1_re;  // sfix11_En3
  output  signed [10:0] Out1_im;  // sfix11_En3
  output  signed [10:0] Out2_re;  // sfix11_En3
  output  signed [10:0] Out2_im;  // sfix11_En3


  wire signed [22:0] Product_mul_temp;  // sfix23_En13
  wire signed [10:0] Product_sub_cast;  // sfix11_En3
  wire signed [22:0] Product_mul_temp_1;  // sfix23_En13
  wire signed [10:0] Product_sub_cast_1;  // sfix11_En3
  wire signed [22:0] Product_mul_temp_2;  // sfix23_En13
  wire signed [10:0] Product_add_cast;  // sfix11_En3
  wire signed [22:0] Product_mul_temp_3;  // sfix23_En13
  wire signed [10:0] Product_add_cast_1;  // sfix11_En3
  wire signed [10:0] Product_out1_re;  // sfix11_En3
  wire signed [10:0] Product_out1_im;  // sfix11_En3
  wire signed [10:0] Sum_out1_re;  // sfix11_En3
  wire signed [10:0] Sum_out1_im;  // sfix11_En3
  wire signed [10:0] Sum1_out1_re;  // sfix11_En3
  wire signed [10:0] Sum1_out1_im;  // sfix11_En3


  assign Product_mul_temp = Const_input_re * In2_re;
  assign Product_sub_cast = Product_mul_temp[20:10];
  assign Product_mul_temp_1 = Const_input_im * In2_im;
  assign Product_sub_cast_1 = Product_mul_temp_1[20:10];
  assign Product_out1_re = Product_sub_cast - Product_sub_cast_1;
  assign Product_mul_temp_2 = Const_input_im * In2_re;
  assign Product_add_cast = Product_mul_temp_2[20:10];
  assign Product_mul_temp_3 = Const_input_re * In2_im;
  assign Product_add_cast_1 = Product_mul_temp_3[20:10];
  assign Product_out1_im = Product_add_cast + Product_add_cast_1;



  assign Sum_out1_re = In1_re + Product_out1_re;
  assign Sum_out1_im = In1_im + Product_out1_im;



  assign Out1_re = Sum_out1_re;

  assign Out1_im = Sum_out1_im;

  assign Sum1_out1_re = In1_re - Product_out1_re;
  assign Sum1_out1_im = In1_im - Product_out1_im;



  assign Out2_re = Sum1_out1_re;

  assign Out2_im = Sum1_out1_im;

endmodule  // FourthStageB_18

