// -------------------------------------------------------------
// 
// File Name: hdlsrc2\FFTscheme2\FirthStage_29.v
// Created: 2020-11-01 20:23:00
// 
// Generated by MATLAB 9.4 and HDL Coder 3.12
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: FirthStage_29
// Source Path: FFTscheme2/FFTv2/Butterflies/128 input 5 step  /FirthStage 29
// Hierarchy Level: 3
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module FirthStage_29
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
  input   signed [10:0] Const_input_re;  // sfix11_En9
  input   signed [10:0] Const_input_im;  // sfix11_En9
  output  signed [11:0] Out1_re;  // sfix12_En3
  output  signed [11:0] Out1_im;  // sfix12_En3
  output  signed [11:0] Out2_re;  // sfix12_En3
  output  signed [11:0] Out2_im;  // sfix12_En3


  wire signed [21:0] Product_mul_temp;  // sfix22_En12
  wire signed [11:0] Product_sub_cast;  // sfix12_En4
  wire signed [12:0] Product_sub_cast_1;  // sfix13_En4
  wire signed [21:0] Product_mul_temp_1;  // sfix22_En12
  wire signed [11:0] Product_sub_cast_2;  // sfix12_En4
  wire signed [12:0] Product_sub_cast_3;  // sfix13_En4
  wire signed [12:0] Product_sub_temp;  // sfix13_En4
  wire signed [21:0] Product_mul_temp_2;  // sfix22_En12
  wire signed [11:0] Product_add_cast;  // sfix12_En4
  wire signed [12:0] Product_add_cast_1;  // sfix13_En4
  wire signed [21:0] Product_mul_temp_3;  // sfix22_En12
  wire signed [11:0] Product_add_cast_2;  // sfix12_En4
  wire signed [12:0] Product_add_cast_3;  // sfix13_En4
  wire signed [12:0] Product_add_temp;  // sfix13_En4
  wire signed [11:0] Product_out1_re;  // sfix12_En4
  wire signed [11:0] Product_out1_im;  // sfix12_En4
  wire signed [12:0] Sum_add_cast;  // sfix13_En4
  wire signed [12:0] Sum_add_cast_1;  // sfix13_En4
  wire signed [12:0] Sum_add_temp;  // sfix13_En4
  wire signed [12:0] Sum_add_cast_2;  // sfix13_En4
  wire signed [12:0] Sum_add_cast_3;  // sfix13_En4
  wire signed [12:0] Sum_add_temp_1;  // sfix13_En4
  wire signed [11:0] Sum_out1_re;  // sfix12_En3
  wire signed [11:0] Sum_out1_im;  // sfix12_En3
  wire signed [12:0] Sum1_sub_cast;  // sfix13_En4
  wire signed [12:0] Sum1_sub_cast_1;  // sfix13_En4
  wire signed [12:0] Sum1_sub_temp;  // sfix13_En4
  wire signed [12:0] Sum1_sub_cast_2;  // sfix13_En4
  wire signed [12:0] Sum1_sub_cast_3;  // sfix13_En4
  wire signed [12:0] Sum1_sub_temp_1;  // sfix13_En4
  wire signed [11:0] Sum1_out1_re;  // sfix12_En3
  wire signed [11:0] Sum1_out1_im;  // sfix12_En3


  assign Product_mul_temp = Const_input_re * In2_re;
  assign Product_sub_cast = ((Product_mul_temp[21] == 1'b0) && (Product_mul_temp[20:19] != 2'b00) ? 12'sb011111111111 :
              ((Product_mul_temp[21] == 1'b1) && (Product_mul_temp[20:19] != 2'b11) ? 12'sb100000000000 :
              $signed(Product_mul_temp[19:8])));
  assign Product_sub_cast_1 = {Product_sub_cast[11], Product_sub_cast};
  assign Product_mul_temp_1 = Const_input_im * In2_im;
  assign Product_sub_cast_2 = ((Product_mul_temp_1[21] == 1'b0) && (Product_mul_temp_1[20:19] != 2'b00) ? 12'sb011111111111 :
              ((Product_mul_temp_1[21] == 1'b1) && (Product_mul_temp_1[20:19] != 2'b11) ? 12'sb100000000000 :
              $signed(Product_mul_temp_1[19:8])));
  assign Product_sub_cast_3 = {Product_sub_cast_2[11], Product_sub_cast_2};
  assign Product_sub_temp = Product_sub_cast_1 - Product_sub_cast_3;
  assign Product_out1_re = ((Product_sub_temp[12] == 1'b0) && (Product_sub_temp[11] != 1'b0) ? 12'sb011111111111 :
              ((Product_sub_temp[12] == 1'b1) && (Product_sub_temp[11] != 1'b1) ? 12'sb100000000000 :
              $signed(Product_sub_temp[11:0])));
  assign Product_mul_temp_2 = Const_input_im * In2_re;
  assign Product_add_cast = ((Product_mul_temp_2[21] == 1'b0) && (Product_mul_temp_2[20:19] != 2'b00) ? 12'sb011111111111 :
              ((Product_mul_temp_2[21] == 1'b1) && (Product_mul_temp_2[20:19] != 2'b11) ? 12'sb100000000000 :
              $signed(Product_mul_temp_2[19:8])));
  assign Product_add_cast_1 = {Product_add_cast[11], Product_add_cast};
  assign Product_mul_temp_3 = Const_input_re * In2_im;
  assign Product_add_cast_2 = ((Product_mul_temp_3[21] == 1'b0) && (Product_mul_temp_3[20:19] != 2'b00) ? 12'sb011111111111 :
              ((Product_mul_temp_3[21] == 1'b1) && (Product_mul_temp_3[20:19] != 2'b11) ? 12'sb100000000000 :
              $signed(Product_mul_temp_3[19:8])));
  assign Product_add_cast_3 = {Product_add_cast_2[11], Product_add_cast_2};
  assign Product_add_temp = Product_add_cast_1 + Product_add_cast_3;
  assign Product_out1_im = ((Product_add_temp[12] == 1'b0) && (Product_add_temp[11] != 1'b0) ? 12'sb011111111111 :
              ((Product_add_temp[12] == 1'b1) && (Product_add_temp[11] != 1'b1) ? 12'sb100000000000 :
              $signed(Product_add_temp[11:0])));



  assign Sum_add_cast = {In1_re[10], {In1_re, 1'b0}};
  assign Sum_add_cast_1 = {Product_out1_re[11], Product_out1_re};
  assign Sum_add_temp = Sum_add_cast + Sum_add_cast_1;
  assign Sum_out1_re = Sum_add_temp[12:1];
  assign Sum_add_cast_2 = {In1_im[10], {In1_im, 1'b0}};
  assign Sum_add_cast_3 = {Product_out1_im[11], Product_out1_im};
  assign Sum_add_temp_1 = Sum_add_cast_2 + Sum_add_cast_3;
  assign Sum_out1_im = Sum_add_temp_1[12:1];



  assign Out1_re = Sum_out1_re;

  assign Out1_im = Sum_out1_im;

  assign Sum1_sub_cast = {In1_re[10], {In1_re, 1'b0}};
  assign Sum1_sub_cast_1 = {Product_out1_re[11], Product_out1_re};
  assign Sum1_sub_temp = Sum1_sub_cast - Sum1_sub_cast_1;
  assign Sum1_out1_re = Sum1_sub_temp[12:1] + $signed({1'b0, Sum1_sub_temp[0]});
  assign Sum1_sub_cast_2 = {In1_im[10], {In1_im, 1'b0}};
  assign Sum1_sub_cast_3 = {Product_out1_im[11], Product_out1_im};
  assign Sum1_sub_temp_1 = Sum1_sub_cast_2 - Sum1_sub_cast_3;
  assign Sum1_out1_im = Sum1_sub_temp_1[12:1] + $signed({1'b0, Sum1_sub_temp_1[0]});



  assign Out2_re = Sum1_out1_re;

  assign Out2_im = Sum1_out1_im;

endmodule  // FirthStage_29

