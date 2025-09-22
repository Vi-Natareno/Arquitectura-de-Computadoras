module ram_asincrona_TB();

//2. Registros, cables
reg [7:0] direccion_tb; //definir como wire -asignarle un valor como wire- da error 'asignacion ilegal'
reg [7:0] dato_e_tb;
reg EN_tb;
wire [7:0] dato_s_tb;

//instancias
ram_asincrona DUV ( .direccion(direccion_tb), .dato_e(dato_e_tb) , .EN(EN_tb), .dato_s(dato_s_tb));

//3. Cuerpo del modulo

initial
    begin
    // Prueba 1 - Lectura
        EN_tb=0; //EN=leer
        direccion_tb = 8'd10;  // RAM_A[10]
        #100
    // Prueba 2 - Escritura
        EN_tb=1; // EN=escribir
        direccion_tb = 8'd9;
        dato_e_tb = 8'd64;
        #100
    //Prueba 3 - Escritura
        direccion_tb = 8'd3;
        dato_e_tb = 8'd25;
        #100
    //Prueba 4 - Escritura
        direccion_tb = 8'd0;
        dato_e_tb = 8'd55;
        #100
    //Prueba 5
        direccion_tb = 8'd8;
        dato_e_tb = 8'd87;
        #100
    //Prueba 6
        direccion_tb = 8'd10;
        dato_e_tb = 8'd115;
    end


endmodule