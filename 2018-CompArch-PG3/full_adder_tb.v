`timescale 1ns/10ps
module full_adder_tb;

reg input1;
reg input2;
reg input3;

wire sum;
wire count;

initial begin

input1 = 1'b0;
input2 = 1'b0;
input3 = 1'b0;

#1 
input1 = 1'b0;
input2 = 1'b0;
input3 = 1'b1;

#1 
input1 = 1'b0;
input2 = 1'b1;
input3 = 1'b0;

#1
input1 = 1'b0;
input2 = 1'b1;
input3 = 1'b1;

#1
input1 = 1'b1;
input2 = 1'b0;
input3 = 1'b0;

#1
input1 = 1'b1;
input2 = 1'b0;
input3 = 1'b1;

#1
input1 = 1'b1;
input2 = 1'b1;
input3 = 1'b0;

#1
input1 = 1'b1;
input2 = 1'b1;
input3 = 1'b1;

#1
$finish;
end

full_adder add(.input1(input1),.input2(input2),.input3(input3),.count(count),.sum(sum));

endmodule