
module COUNTER(
input [15:0]din,
input ld,dec,clk,
output reg [15:0]dout);
always @(posedge clk)
if (ld) dout<=din;
else if (dec) dout<=dout;
endmodule


