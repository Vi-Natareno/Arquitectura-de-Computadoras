
//1. deifnicion del modulo
//RR read register
//RD read data
module banco_registros( RR1, RR2, WriteReg, WriteData, Regwrite, RD1, RD2);
input [4:0] RR1;
input [4:0] RR2;
input [4:0] WriteReg;
input [32:0] WriteData;
input Regwrite;
output reg [31:0] RD1;
output reg [31:0] RD2; //dentro de always, tipo registro

// //2. Componentes internos


 reg [31:0] Banco [0:31]; 
 initial
	 begin
 		$readmemb("data.txt", Banco);
 	end

	always @*
begin

	if (Regwrite) 
		begin
			Banco[WriteReg] = WriteData;
		end
	RD1 = Banco[RR1]; //lectura (siempre)
	RD2 = Banco[RR2]; 
	
end


endmodule