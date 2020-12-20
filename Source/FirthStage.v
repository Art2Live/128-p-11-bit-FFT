// -------------------------------------------------------------
// 
// File Name: hdlsrc2\FFTscheme2\FirthStage.v
// Created: 2020-11-01 20:23:00
// 
// Generated by MATLAB 9.4 and HDL Coder 3.12
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: FirthStage
// Source Path: FFTscheme2/FFTv2/Butterflies/128 input 5 step  /FirthStage 
// Hierarchy Level: 3
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module FirthStage
          (In1,
           In2,
           Const_input,
           Out1,
           Out2);


  input   signed [10:0] In1;  // sfix11_En3
  input   signed [10:0] In2;  // sfix11_En3
  input   signed [10:0] Const_input;  // sfix11_En9
  output  signed [11:0] Out1;  // sfix12_En3
  output  signed [11:0] Out2;  // sfix12_En3


  wire signed [21:0] Product_mul_temp;  // sfix22_En12
  wire signed [11:0] Product_out1;  // sfix12_En4
  wire signed [12:0] Sum_add_cast;  // sfix13_En4
  wire signed [12:0] Sum_add_cast_1;  // sfix13_En4
  wire signed [12:0] Sum_add_temp;  // sfix13_En4
  wire signed [11:0] Sum_out1;  // sfix12_En3
  wire signed [12:0] Sum1_sub_cast;  // sfix13_En4
  wire signed [12:0] Sum1_sub_cast_1;  // sfix13_En4
  wire signed [12:0] Sum1_sub_temp;  // sfix13_En4
  wire signed [11:0] Sum1_out1;  // sfix12_En3


  assign Product_mul_temp = Const_input * In2;
  assign Product_out1 = ((Product_mul_temp[21] == 1'b0) && (Product_mul_temp[20:19] != 2'b00) ? 12'sb011111111111 :
              ((Product_mul_temp[21] == 1'b1) && (Product_mul_temp[20:19] != 2'b11) ? 12'sb100000000000 :
              $signed(Product_mul_temp[19:8])));



  assign Sum_add_cast = {In1[10], {In1, 1'b0}};
  assign Sum_add_cast_1 = {Product_out1[11], Product_out1};
  assign Sum_add_temp = Sum_add_cast + Sum_add_cast_1;
  assign Sum_out1 = Sum_add_temp[12:1];



  assign Out1 = Sum_out1;

  assign Sum1_sub_cast = {In1[10], {In1, 1'b0}};
  assign Sum1_sub_cast_1 = {Product_out1[11], Product_out1};
  assign Sum1_sub_temp = Sum1_sub_cast - Sum1_sub_cast_1;
  assign Sum1_out1 = Sum1_sub_temp[12:1] + $signed({1'b0, Sum1_sub_temp[0]});



  assign Out2 = Sum1_out1;

endmodule  // FirthStage

