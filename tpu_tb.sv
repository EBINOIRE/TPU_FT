`timescale 1ns/1ns
module tpu_tb();
    
    wire [23:0] o[1:4];
    logic [7:0] d[1:4]; 
    logic [7:0] w[1:4]; 
    logic clk = 0, rst = 0;

    tpu#(4) T1(o, d, w, clk, rst);

    always #17 clk = ~clk;

    initial begin
        $dumpfile("TPUpar_VCD");
        $dumpvars(0, T1);
        rst = 1; #50; rst = 0;
        d[1] = 1; d[2] = 2; d[3] = 3; d[4] = 4;
        w[1] = 1; w[2] = 1; w[3] = 1; w[4] = 1;
        #340;
        $stop;
    end

endmodule