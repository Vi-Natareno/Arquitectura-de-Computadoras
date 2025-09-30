//1.
module ALU(
    input [31:0]A,
    input [31:0]B,
    input [3:0]sel,
    output reg[31:0] C_salida);

//2.Componentes internos NA

//3.Assing, bloques secuenciales
//initial, always - no assigns, solo reg
always@(*)
begin
    case (sel)
        4'b0000: C_salida = A + B;
        4'b0001: C_salida = A - B;
        4'b0010: C_salida = A & B;
        4'b0011: C_salida = A | B;
        4'b0100: C_salida = A ^ B;
        4'b0101: C_salida = A == B;
        4'b0110: C_salida = A<<1; //izquierda
        4'b0111: C_salida = A>>1; //derecha
        4'b1000: C_salida = A > B;
    endcase
end

endmodule