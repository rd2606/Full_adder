`timescale 1ns / 1ps

module tb();
reg a,b,c;
wire sum,carry;

full_adder FA(.a(a),.b(b),.c(c),.sum(sum),.cout(carry));

integer i;
initial
begin
for(i=0;i<8;i=i+1)
begin
{a,b,c}=i;
#10;
end
end

initial
#80 $finish;

initial
$monitor($time,"a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);

endmodule
