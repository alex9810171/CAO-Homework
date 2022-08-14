`timescale 1ns / 1ps

module ALU( source1,source2,ALU_CTRL,result);
    input [15:0] source1;
    input [15:0] source2;
    input [3:0] ALU_CTRL;
    output [15:0] result;
    /* add your design */   
    reg [15:0] result;
    always @(*)
    begin
        case(ALU_CTRL) 
	4'b0000: result = source1 & source2;
	4'b0001: result = source1 | source2;
	4'b0010: result = source1 + source2;
	4'b0110: result = source1 - source2;
	4'b0111: begin if (source1<source2) result = 16'd1;
            else result = 16'd0;
    	    end
	default:result = source1 & source2;
	endcase
    end

endmodule
