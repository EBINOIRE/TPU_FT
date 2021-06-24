`timescale 1 ns / 1ns
module PE_tb();

	reg clk = 0, rst = 0;
	reg [7:0] di;
	reg [7:0] wi;
	reg [23:0] si;
	wire [7:0] do;
	wire [7:0] wo;
	wire [23:0] so;

	PE CUT(so, wo, do, si, di, wi, clk, rst);

    always #17 clk <= ~clk;

	initial begin
		$dumpfile("PE_VCD");
		$dumpvars(0, CUT);

        rst = 1; #50; rst = 0;

		di = 10; wi = 10; si = 1;
		#50;
		di = -10; wi = 20; si = 15;
		#50;
		di = 12; wi = -1; si = 15;
		#50;
		$stop;
	end
	
endmodule
