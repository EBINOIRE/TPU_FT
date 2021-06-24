`timescale 1 ns / 1ns
module adder(a, b, o);
	parameter firstInpSize = 16;
	parameter secondInpSize = 16;
	parameter outputSize = 24;
	input signed [firstInpSize - 1:0] a;
	input signed [secondInpSize - 1:0] b;
	output signed [outputSize - 1:0] o;
	
	
	assign o = a + b;

endmodule 