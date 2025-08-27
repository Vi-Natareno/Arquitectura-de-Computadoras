module HA(input op1, input op2, output S, output AS); //AS acarreo salida

assign S = op1^op2;
assign AS = op1&op2;

endmodule