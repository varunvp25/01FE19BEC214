module ha_tb();
reg a,b;
wire sum,carry;
ha DUT(.a(a),.b(b),.sum(sum),.carry(carry));
initial begin
$monitor("a =%b b =%b sum =%b carry =%b",a,b,sum,carry);
a=0;
b=0;
#10
a=0;
b=1;
#10
a=1;
b=0;
#10
a=1;
b=1;

end
endmodule


