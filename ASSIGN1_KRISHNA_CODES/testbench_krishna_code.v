//testbench module 
//all the inputs will be taken as registers and the outputs as wire.
`timescale 1ns/1ps

module tb_Assign_Krishna();
reg[5:0] A,B;
reg[2:0] fxn;
wire[5:0] X;
//using the main ALU module to test our  design.
ALU_KRISHNA A1(A,B,fxn,X);
initial 
begin

//using 6’bit binary input for testing //the code.
//setting value of A as 1 and B as -1.
//following the tests for each ‘fxn’.

	A=6'b000001; B=6'b111111; fxn= 3'b000;
	#100;
	A=6'b000001; B=6'b111111; fxn= 3'b001;
	#100;
	A=6'b000001; B=6'b111111; fxn= 3'b010;
	#100;
	A=6'b000001; B=6'b111111; fxn= 3'b011;
	#100;
	A=6'b000001; B=6'b111111; fxn= 3'b100;
	#100;
	A=6'b000001; B=6'b111111; fxn= 3'b101;
	#100;
	A=6'b000001; B=6'b111111; fxn= 3'b110;
	#100;
	A=6'b000001; B=6'b111111; fxn= 3'b111;
	#100;
end
endmodule
	
	