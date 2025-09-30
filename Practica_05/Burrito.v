module Burrito (
	input [4:0]Dir1,
	input [4:0]Dir2,
	input [4:0]DirEscritura,
	input [3:0]selector_operacion
	);

//2. 
wire [31:0]C1,C2,C3;

ALU tortilla ( //alu en vez de adder
	.A(C1),
	.B(C2),
	.sel(selector_operacion),
	.C_salida(C3)
	);

BR Relleno(
	.AR1(Dir1),
	.AR2(Dir2),
	.AWrite(DirEscritura),
	.DataIn(C3),
	.RegWrite(1),
	.DR1(C1),
	.DR2(C2)
	);


endmodule
