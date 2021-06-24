`timescale 1 ns / 1ns
module adder_tb();

	reg [23:0] b;
	reg [15:0] a;
	wire [23:0] o;

	adder#(16, 24, 24) a1(a, b, o);

	initial begin
		$dumpfile("adderVCD");
		$dumpvars(0, a1);
		a = 10; b = 15;
		#50;
		a = -10; b = 20;
		#50;
		a = 12; b = -1;
		#50;

	end
	
endmodule