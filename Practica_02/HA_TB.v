`timescale 1ns/1ns
module _and_TB();

//2. definir cables, regs e instancias
reg A_tb, B_tb;
wire S_tb, AS_tb;
//3. assigns, instancias
//conectar entradas con half adder
HA DUV (.op1(A_tb), .op2(B_tb), .S(S_tb), .AS(AS_tb)); // .Entrada de HA(de tb, Conecta entrada con esto)

//initial sirve para comenzar a validar diferentes m
initial
begin
A_tb = 0;
B_tb = 0;
#100; //unidades de tiempo del timescale, 100ns en este caso
A_tb = 1;
B_tb = 0;
#100; 
A_tb = 0;
B_tb = 1;
#100; 
A_tb = 1;
B_tb = 1;
#100; 
end

endmodule