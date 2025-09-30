`timescale 1ns/1ns
module Burrito_Tb();

reg [18:0] instruccion;
reg [18:0] instrucciones [0:4];

initial
begin
	$readmemb("Instrucciones.txt",instrucciones);
end


Burrito DUV (
    .Dir1(instruccion[18:14]),
    .Dir2(instruccion[13:9]),
    .DirEscritura(instruccion[8:4]),
    .selector_operacion(instruccion[3:0])
);

initial
begin
    #100
    instruccion = instrucciones[0];
    #100
    instruccion = instrucciones[1];
    #100
    instruccion = instrucciones[2];
    #100
    instruccion = instrucciones[3];

end


endmodule