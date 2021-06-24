`timescale 1 ns / 1ns
module multSigned_tb();

	reg [7:0] x, y;
	wire [15:0] po;

	multSigned#(8) m1(x, y, po);

	initial begin
		$dumpfile("multVCD");
		$dumpvars(0, m1);
		x = 10; y = 15;
		#50;
		x = -10; y = 20;
		#50;
		x = 12; y = -1;
		#50;

	end
	
endmodule