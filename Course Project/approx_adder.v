`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:27:27 04/18/2022 
// Design Name: 
// Module Name:    approx_adder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module approx_adder(a, b, c, S, Co
    );
  input a, b, c;
  output S, Co;
  wire w1,w2,w3;
  xor b1(w1,a,b);
  or b2(S,w1,c);
  and b3(w2,a,b);
  and b4(w3,w1,c);
  or b5(Co,w3,w2);


endmodule
module approx_4adder(X,Y,C,S,Cout); 

 input [7:0]X,Y;
 input C;
 output [7:0]S;
 output Cout;
 wire w1,w2,w3,w4,w5,w6,w7,w8;
   approx_adder a1(X[0],Y[0],C,S[0],w1);
   approx_adder a2(X[1],Y[1],w1,S[1],w2);
   approx_adder a3(X[2],Y[2],w2,S[2],w3);
   approx_adder a4(X[3],Y[3],w3,S[3],w4);
   approx_adder a5(X[4],Y[4],w4,S[4],w5);
   approx_adder a6(X[5],Y[5],w5,S[5],w6);
   approx_adder a7(X[6],Y[6],w6,S[6],w7);
   approx_adder a8(X[7],Y[7],w7,S[7],Cout);
  

endmodule 