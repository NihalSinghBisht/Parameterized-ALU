`timescale 1ns / 1ps

module RCA_4bit(
    input [3:0] A,      
    input [3:0] B,      
    input Cin,
    output [3:0] Sum,   
    output Cout        
);
    wire c1, c2, c3;
    fullAdder_1bit FA0 (
        .A(A[0]), 
        .B(B[0]), 
        .Cin(Cin), 
        .Sum(Sum[0]), 
        .Cout(c1)
    );
    fullAdder_1bit FA1 (
        .A(A[1]), 
        .B(B[1]), 
        .Cin(c1), 
        .Sum(Sum[1]), 
        .Cout(c2)
    );
    fullAdder_1bit FA2 (
        .A(A[2]), 
        .B(B[2]), 
        .Cin(c2), 
        .Sum(Sum[2]), 
        .Cout(c3)
    );
    fullAdder_1bit FA3 (
        .A(A[3]), 
        .B(B[3]), 
        .Cin(c3), 
        .Sum(Sum[3]), 
        .Cout(Cout)
    );

endmodule

