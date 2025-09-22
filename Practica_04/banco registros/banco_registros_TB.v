`timescale 1ns/1ns
//1. definicion del modulo
module banco_registros_TB();
//2. Componentes internos
reg [4:0] RR1_tb;
reg [4:0] RR2_tb;
reg [4:0] WriteReg_tb;
reg [31:0] WriteData_tb;
reg Regwrite_tb;
wire [31:0] RD1_tb;
wire [31:0] RD2_tb;

banco_registros DUV( .RR1(RR1_tb), .RR2(RR2_tb), .WriteReg(WriteReg_tb), .WriteData(WriteData_tb), .Regwrite(Regwrite_tb), .RD1(RD1_tb),  .RD2(RD2_tb));

//3.cuerpo del modulo

initial
	begin
	//prueba 1 
	Regwrite_tb = 0; //siempre lee, pero deberia escribir
	RR1_tb = 5'd0;
	RR2_tb = 5'd1;
	#100
	//prueba 2
	RR1_tb = 5'd0; //al mismo tiempo, , lee
	RR2_tb = 5'd10;
	WriteReg_tb = 5'd0; //al mismo tiempo, escribe
	#100
	//prueba 3
	WriteReg_tb = 5'd24;
	WriteData_tb = 32'd101;
	#100
	//prueba 4
	Regwrite_tb = 1; 
	RR1_tb = 5'd8;
	#100
	//prueba 5
	RR2_tb = 5'd11;
	RR1_tb = 5'd5;
	WriteReg_tb = 5'd5;
	WriteData_tb = 32'd128;
	#100
	Regwrite_tb = 0;
	
	end
endmodule