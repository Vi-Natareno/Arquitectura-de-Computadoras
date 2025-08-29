//1.
`timescale 1ns/1ns
module pre_ALU(input [3:0]A, input [3:0]B, input sel, output reg[3:0]C);
//sel es selector
//2.Componentes internos NA

//3.Assing, bloques secuenciales
//initial, always - no assigns, solo reg

always@(*)
begin
    case (sel)
        1'b0: C = A + B;
        1'b1: C = A & B;
    endcase
end

endmodule