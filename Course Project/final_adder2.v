`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:21:15 04/18/2022 
// Design Name: 
// Module Name:    final_adder2 
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
module final_adder2(a,b,cin,sum,cout
    );
	
	 input a,b,cin;
	 output sum,cout;
	 wire w1,w2,w3,w4;
	 xor a1(w1,a,b);
	 xor a2(sum,w1,cin);
	 and a3(w2,a,b);
	 xor a4(w3,a,b);
	 and a5(w4,w3,cin);
	 or a6(cout,w4,w2);


endmodule


module RCA_4adder(X,Y,C,S,Cout);

 input [7:0]X,Y;
 input C;
 output [7:0]S;
 output Cout;
 wire w1,w2,w3,w4,w5,w6,w7,w8;
   final_adder2 a1(X[0],Y[0],C,S[0],w1);
   final_adder2 a2(X[1],Y[1],w1,S[1],w2);
   final_adder2 a3(X[2],Y[2],w2,S[2],w3);
   final_adder2 a4(X[3],Y[3],w3,S[3],w4);
   final_adder2 a5(X[4],Y[4],w4,S[4],w5);
   final_adder2 a6(X[5],Y[5],w5,S[5],w6);
   final_adder2 a7(X[6],Y[6],w6,S[6],w7);
   final_adder2 a8(X[7],Y[7],w7,S[7],Cout);
  


endmodule
