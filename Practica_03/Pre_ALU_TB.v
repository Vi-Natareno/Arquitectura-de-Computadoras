//1.
`timescale 1ns/1ns
module pre_ALU_TB ();
//2.cables, registros, instancias
reg [3:0]A_tb,B_tb;
wire sel_tb;
wire [3:0]C_tb;
//3. Instacias
pre_ALU DUV ( .A(A_tb), .B(B_tb), .sel(sel_tb), .C(C_tb));
//valores
initial
begin
    A_tb = 4'b0001; 
    B_tb = 4'b0001;
    sel_tb = 0; //suma -> debe dar 0001 (1) + 0001 (1) = 0010 (2) 
    #100
    sel_tb = 1; //AND -> debe dar 0001 & 0001  = 0001 
    #100
//segundo test
    A_tb = 4'b0111;  //suma -> 1010 (10) 
    B_tb = 4'b0011;
    sel_tb = 0;
    #100
    sel_tb = 1; //AND-> 0011 4
    #100
//tercer test
    A_tb = 4'b0100;  
    B_tb = 4'b0001;
    sel_tb = 0;
    #100
    sel_tb = 1;
    #100
//cuarto test
    A_tb = 4'b1101;  
    B_tb = 4'b0110;
    sel_tb = 0;
    #100
    sel_tb = 1;
    #100
//quinto test
    A_tb = 4'b1111;  
    B_tb = 4'b1011;
    sel_tb = 0;
    #100
    sel_tb = 1;
end


endmodule