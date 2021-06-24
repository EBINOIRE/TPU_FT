`timescale 1 ns / 1ns
module mac(so, si, di, wi);
	// Parameters
	parameter inputWeightSize = 8;
	parameter parSumSize = 24;
	parameter outputSize = 24;

	// ports
	input [inputWeightSize - 1:0] di;
	input [inputWeightSize - 1:0] wi;
	input [parSumSize - 1:0] si;
	output [outputSize - 1:0] so;
	
	// intermediate wires
	wire [(inputWeightSize * 2) - 1:0] multOut;
	
	multSigned#(inputWeightSize) MUL(di, wi, multOut);
	adder#((inputWeightSize * 2), parSumSize, outputSize) ADD(multOut,si,so);
endmodule