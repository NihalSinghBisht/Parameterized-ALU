`timescale 1ns / 1ps
module Nbit_MUX_4to1 #(
    parameter dw = 8
) (
    input wire [dw - 1 : 0] in1,
    input wire [dw - 1 : 0] in2,
    input wire [dw - 1 : 0] in3,
    input wire [dw - 1 : 0] in4,
    input wire [1:0] sel,
    output reg [dw - 1 : 0] out
);  
    always @(*) begin 
        case(sel)
            2'b00 : out = in1;
            2'b01 : out = in2;
            2'b10 : out = in3;
            2'b11 : out = in4;
            default : out = {dw{1'b0}};
        endcase
    end
endmodule
