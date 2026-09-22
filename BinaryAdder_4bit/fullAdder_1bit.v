`timescale 1ps/1ns
module fullAdder_1bit(
    input wire A
    input wire B
    input wire Cin
    output wire Sum 
    output wire Cout
);

assign Sum = A^B^Cin;
assign Cout = ((A&B) + (Cin&(A^B)));

endmodule 
