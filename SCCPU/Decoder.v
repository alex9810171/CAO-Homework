`timescale 1ns / 1ps

module Decoder( OP, Reg_WE, DM_WE, ALU_OP, ALU_src,MEM_to_REG,REG_Dst,funct);
    input [5:0] OP;
    input [5:0] funct;
    output Reg_WE, DM_WE, ALU_src,MEM_to_REG,REG_Dst;
    output [1:0] ALU_OP;
    /* add your design */   	
    reg Reg_WE, DM_WE, ALU_src,MEM_to_REG,REG_Dst;
    reg [1:0] ALU_OP;
    always @(*)
    begin
	case(OP)
	6'b000000: // R-type
	    begin	
                casex(funct)
                6'b1xxxxx:
                    begin
			REG_Dst = 1'b1;
			ALU_src = 1'b0;
		        MEM_to_REG = 1'b0;
		        Reg_WE = 1'b1;
		        DM_WE = 1'b0;
		        ALU_OP = 2'b10;
                    end
                endcase
	    end
	6'b101011: // SW
	    begin	
		REG_Dst = 1'b0; // x
		ALU_src = 1'b1;
		MEM_to_REG = 1'b0; // x
		Reg_WE = 1'b0;
		DM_WE = 1'b1;
		ALU_OP = 2'b00;
	    end
	endcase
	end

endmodule
