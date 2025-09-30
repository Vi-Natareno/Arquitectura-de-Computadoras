
module BR(
	input [4:0]AR1,
	input [4:0]AR2,
	input [4:0]AWrite,
	input [31:0]DataIn,
	input RegWrite,
	output reg[31:0]DR1,
	output reg[31:0]DR2
	);

//Arreglo bidimencional de registros
reg [31:0]Banco[0:31];

initial
begin
	$readmemb("Datos.txt",Banco);
end
//SIEMPRE LEE

always @*
begin
	//Leer
	DR1= Banco[AR1];
	DR2= Banco[AR2];

	if (RegWrite) begin
		// Escribir
		Banco[AWrite] = DataIn;
	end
end

endmodule