//1.
`timescale 1ns/1ns
module ALU(input [7:0]A, input [7:0]B, input [3:0]sel, output reg[7:0]C);
//2.Componentes internos NA

//3.Assing, bloques secuenciales
//initial, always - no assigns, solo reg
always@(*)
begin
    case (sel)
        4'b0000: C = A + B;
        4'b0001: C = A - B;
        4'b0010: C = A & B;
        4'b0011: C = A | B;
        4'b0100: C = A ^ B;
        4'b0101: C = A == B;
        4'b0110: C = A<<1; //izquierda
        4'b0111: C = B<<1; //izquierda
        4'b1000: C = A>>1; //derecha
        4'b1001: C = B>>1; //derecha
        4'b1010: C = A > B;
        4'b1011: C = A < B;
    endcase
end

endmodule