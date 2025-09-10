`timescale 1ns/1ns
module ALU_TB();
//2.cables, registros, instancias
reg [7:0]A_tb,B_tb;
reg [3:0]sel_tb;
wire [7:0]C_tb;
//3. Instacias
ALU DUV ( .A(A_tb), .B(B_tb), .sel(sel_tb), .C(C_tb));

initial
begin
    A_tb = 8'b00001111; 
    B_tb = 8'b00000001; 
    sel_tb = 4'b0000; //suma 
    #100
    sel_tb = 4'b0001; //resta
    #100
    sel_tb = 4'b0010; //AND
    #100
    sel_tb = 4'b0011; //OR
    #100
    sel_tb = 4'b0100; //XOR
    #100
    sel_tb = 4'b0101; //==
    #100
    sel_tb = 4'b0110; // A<<1
    #100
    sel_tb = 4'b0111; // B<<1
    #100
    sel_tb = 4'b1000; // A>>1
    #100
    sel_tb = 4'b1001; // B>>1
    #100
    sel_tb = 4'b1010; // A>B
    #100
    sel_tb = 4'b1011; // A<B
    #100
//segundo tb
A_tb = 8'b11110000; 
    B_tb = 8'b00001111; 
    sel_tb = 4'b0000; //suma 
    #100
    sel_tb = 4'b0001; //resta
    #100
    sel_tb = 4'b0010; //AND
    #100
    sel_tb = 4'b0011; //OR
    #100
    sel_tb = 4'b0100; //XOR
    #100
    sel_tb = 4'b0101; //==
    #100
    sel_tb = 4'b0110; // A<<1
    #100
    sel_tb = 4'b0111; // B<<1
    #100
    sel_tb = 4'b1000; // A>>1
    #100
    sel_tb = 4'b1001; // B>>1
    #100
    sel_tb = 4'b1010; // A>B
    #100
    sel_tb = 4'b1011; // A<B
    #100
//tercer tb
    A_tb = 8'b00010101; 
    B_tb = 8'b00010101; 
    sel_tb = 4'b0000; //suma 
    #100
    sel_tb = 4'b0001; //resta
    #100
    sel_tb = 4'b0010; //AND
    #100
    sel_tb = 4'b0011; //OR
    #100
    sel_tb = 4'b0100; //XOR
    #100
    sel_tb = 4'b0101; //==
    #100
    sel_tb = 4'b0110; // A<<1
    #100
    sel_tb = 4'b0111; // B<<1
    #100
    sel_tb = 4'b1000; // A>>1
    #100
    sel_tb = 4'b1001; // B>>1
    #100
    sel_tb = 4'b1010; // A>B
    #100
    sel_tb = 4'b1011; // A<B
    #100
//cuarto tb
    A_tb = 8'b00110000; 
    B_tb = 8'b00010101; 
    sel_tb = 4'b0000; //suma 
    #100
    sel_tb = 4'b0001; //resta
    #100
    sel_tb = 4'b0010; //AND
    #100
    sel_tb = 4'b0011; //OR
    #100
    sel_tb = 4'b0100; //XOR
    #100
    sel_tb = 4'b0101; //==
    #100
    sel_tb = 4'b0110; // A<<1
    #100
    sel_tb = 4'b0111; // B<<1
    #100
    sel_tb = 4'b1000; // A>>1
    #100
    sel_tb = 4'b1001; // B>>1
    #100
    sel_tb = 4'b1010; // A>B
    #100
    sel_tb = 4'b1011; // A<B
    #100
//quinto tb
    A_tb = 8'b00000000; 
    B_tb = 8'b01110001; 
    sel_tb = 4'b0000; //suma 
    #100
    sel_tb = 4'b0001; //resta
    #100
    sel_tb = 4'b0010; //AND
    #100
    sel_tb = 4'b0011; //OR
    #100
    sel_tb = 4'b0100; //XOR
    #100
    sel_tb = 4'b0101; //==
    #100
    sel_tb = 4'b0110; // A<<1
    #100
    sel_tb = 4'b0111; // B<<1
    #100
    sel_tb = 4'b1000; // A>>1
    #100
    sel_tb = 4'b1001; // B>>1
    #100
    sel_tb = 4'b1010; // A>B
    #100
    sel_tb = 4'b1011; // A<B
end


endmodule