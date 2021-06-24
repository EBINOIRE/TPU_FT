`timescale 1 ns / 1ns
module PE(
	so, wo, dout, si, di, wi, bypass, clk, rst
);
	input clk, rst;
	input bypass;
	input [7:0] di;
	input [7:0] wi;
	input [23:0] si;
	output [7:0] dout;
	output [7:0] wo;
	output [23:0] so;
	
	reg [7:0] diReg;
	reg [7:0] wiReg;
	reg [23:0] soReg;
	wire [23:0] soReg_input;
	 
	mac#(8, 24, 24) MAC_UNIT(soReg_input, si, diReg, wiReg);

	always @(posedge clk, posedge rst) begin
		if (rst) begin
			diReg <= 0;
			wiReg <= 0;
			soReg <= 0;
		end
		else if ( bypass )
			diReg <= di;
			wiReg <= wi;
			soReg <= si;
		else begin
			diReg <= di;
			wiReg <= wi;
			soReg <= soReg_input;
		end
	end

	assign dout = diReg;
	assign wo = wiReg;
	assign so = soReg;
	
endmodule