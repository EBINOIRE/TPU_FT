`timescale 1ns/1ns
module tpu(
    o, d, w, clk, rst
);
    parameter arraySize = 4;
    output wire [23:0] o[1:arraySize];
    input  logic [7:0] d[1:arraySize]; 
    input  logic [7:0] w[1:arraySize]; 
    input   clk, rst;

    // where we left
    // declare two dimension wires for so, wo, dout, si, di, wi
    // change input and output to two dimension 
    wire [7:0] dout[1:arraySize + 1][1:arraySize];
    wire [7:0] wo[1:arraySize][1:arraySize + 1];
    wire [23:0] so[1:arraySize][0:arraySize];
    genvar i, j;
    generate
        // i represents columns
        for (i = 1; i < arraySize + 1; i = i + 1)begin 
            // j represent rows
            for (j = 1; j < arraySize + 1; j = j + 1) begin: PEij
                PE macij(so[i][j], wo[i][j + 1], dout[i + 1][j], so[i][j - 1], dout[i][j], wo[i][j], clk, rst);
            end
        end
    endgenerate

    // assings boundary signals
    genvar k;
    generate 
        for (k = 1; k < arraySize + 1; k = k + 1) begin: signalAss
            assign wo[k][1] = w[k];
            assign dout[1][k] = d[k];
            assign o[k] = so[k][arraySize];
            assign so[k][0] = 0;
        end
    endgenerate

    // PE mac11(d[1])
    
endmodule