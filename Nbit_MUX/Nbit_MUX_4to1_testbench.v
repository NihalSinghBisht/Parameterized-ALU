`timescale 1ns / 1ps

module Nbit_MUX_4to1_tb;

    reg [7:0] in1, in2, in3, in4;
    reg [1:0] sel;
    wire[7:0] out;

    Nbit_MUX_4to1 #(.dw(8)) uut (
        .in1(in1), .in2(in2), .in3(in3), .in4(in4),
        .sel(sel), .out(out)
    );

    initial begin
        $dumpfile("Nbit_MUX_4to1_wave.vcd");
        $dumpvars(0, Nbit_MUX_4to1_tb);
        $monitor("Time=%0t ns | sel=%b | out=%h", $time, sel, out);
        
        in1 = 8'hAA;
        in2 = 8'hBB;
        in3 = 8'hCC;
        in4 = 8'hDD;
        sel = 2'b00; #100;
        sel = 2'b01; #100;
        sel = 2'b10; #100;
        sel = 2'b11; #100;
        
        #100;
        $finish;
    end

endmodule
