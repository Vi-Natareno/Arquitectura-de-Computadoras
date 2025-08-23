
//`timescale 1ns/1ns
//1.creacion del modulo
module  _and(
    input A,
    input B,
    output cmp_and,
    output cmp_nand,
    output cmp_or,
    output cmp_nor,
    output cmp_not,
    output cmp_xor,
    output cmp_xnor
);
    
//2.declara señales/elementos internos
//3.Comportamiento del modulo
assign cmp_and = A&B;
assign cmp_nand = ~(A&B);
assign cmp_or = A | B;
assign cmp_nor = ~(A | B);
assign cmp_not = ~(A);
assign cmp_xor = A^B;
assign cmp_xnor = ~(A^B);


endmodule
