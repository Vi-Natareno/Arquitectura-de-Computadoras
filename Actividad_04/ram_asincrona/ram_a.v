//1.Definicion del modulo
module ram_asincrona (direccion, dato_s, dato_e, EN);
	input [7:0] direccion;
	output reg [7:0] dato_s;
	input [7:0] dato_e;
	input EN;
//2.Componentes internos
//Creacion de la ROM

reg [7:0] RAM_A [0:10]; 

//3.Cuerpo del modulo
initial
	begin
		RAM_A [0] =8'd90;
		RAM_A [1] =8'd80;
		RAM_A [2] =8'd70;
		RAM_A [3] =8'd60;
		RAM_A [4] =8'd50;
		RAM_A [5] =8'd40;
		RAM_A [6] =8'd30;
		RAM_A [7] =8'd20;
		RAM_A [8] =8'd10;
		RAM_A [9] =8'd100;
		RAM_A [10] =8'd101;
	end 

always @*
begin

	if (EN) 
		begin
			RAM_A[direccion] = dato_e;
		end
	else
		begin
			dato_s = RAM_A[direccion]; //leer
		end
end

endmodule