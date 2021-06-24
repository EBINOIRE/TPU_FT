`timescale 1 ns / 1ns
module multSigned #(parameter size = 8) (x,y,po);
	input signed [size - 1:0] x;
	input signed [size - 1:0] y;
	output signed [(size * 2) - 1:0] po;
	
	assign po = x * y;

endmodule

