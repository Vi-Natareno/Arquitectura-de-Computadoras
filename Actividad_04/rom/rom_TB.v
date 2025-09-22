module rom_TB();

//2. Registros, cables
reg [7:0] direccion_tb; //definir como wire -asignarle un valor como wire- da error 'asignacion ilegal'
wire [7:0] dato_s_tb;

//instancias

rom DUV ( .direccion(direccion_tb), .dato_s(dato_s_tb));

//3. Cuerpo del modulo

initial
    begin
    // caso de prueba 1
        direccion_tb = 8'd0;
        #100
    // caso de prueba 2
        direccion_tb = 8'd1;
        #100
    // caso de prueba 3
        direccion_tb = 8'd2;
        #100
    // caso de prueba 4
        direccion_tb = 8'd3;
        #100
    // caso de prueba 5
        direccion_tb = 8'd4;
    end


endmodule