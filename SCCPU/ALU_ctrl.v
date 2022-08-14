`timescale 1ns / 1ps

module ALU_ctrl( funct, ALU_OP,ALU_CTRL );
    input [5:0] funct;
    input [1:0] ALU_OP;
    output [3:0]ALU_CTRL;
    /* add your design */   
    wire [7:0] ALU_CTRL_IN;
    reg [3:0] ALU_CTRL;
    assign ALU_CTRL_IN = {ALU_OP,funct};
    always @(ALU_CTRL_IN)
    casex (ALU_CTRL_IN)
	    8'b00xxxxxx: ALU_CTRL=4'b0010;
	    8'b01xxxxxx: ALU_CTRL=4'b0110;
	    8'b10100000: ALU_CTRL=4'b0010;
	    8'b10100010: ALU_CTRL=4'b0110;
	    8'b10100100: ALU_CTRL=4'b0000;
	    8'b10100101: ALU_CTRL=4'b0001;
	    8'b10101010: ALU_CTRL=4'b0111;
        default: ALU_CTRL=4'b0010;
	endcase
endmodule
