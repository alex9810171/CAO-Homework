module full_adder(input1,input2,input3,count,sum);

	input input1, input2, input3;
	output count, sum;
	wire w1, w2, w3;

	//Please add your code here !!
	assign w1 = input1 ^ input2;
	assign w2 = input1 & input2;
	assign sum = w1 ^ input3;
	assign w3 = w1 & input3;
	assign count = w3 | w2;
endmodule