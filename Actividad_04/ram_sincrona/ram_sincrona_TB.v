module ram_asincrona_TB();

//2. Registros, cables
reg [7:0] direccion_tb; //definir como wire -asignarle un valor como wire- da error 'asignacion ilegal'
reg [7:0] dato_e_tb;
reg EN_tb;
reg clk_tb;
wire [7:0] dato_s_tb;

//instancias
ram_sincrona DUV ( .direccion(direccion_tb), .dato_e(dato_e_tb) , .EN(EN_tb), .dato_s(dato_s_tb), .clk(clk_tb) );

//3. Cuerpo del modulo

initial
    begin
        // Prueba 1 
        EN_tb=0;
        direccion_tb = 8'd0; 
        clk_tb=0;               //valor inicial
        #50  


        clk_tb=1;    //posedge, lectura
        #50
        clk_tb = 0;  //negedge
        #50


        //Prueba 2
        direccion_tb = 8'd1;

        clk_tb=1;  //posedge, lectura
        #50

        //Prueba 3
        direccion_tb = 8'd3;

        clk_tb=0; //negedge, todavia no lee
        #50
        clk_tb=1; //posedge, lectura dir = 3
        #50
        
        //Prueba 4
        EN_tb=1;
        clk_tb = 0; //negedge
        #50

        direccion_tb= 8'd0;
        dato_e_tb= 8'd64;

        clk_tb = 1; //posedge, escritura
        #50
        clk_tb = 0;
        #50
    
        //Prueba 5
        direccion_tb= 8'd1;
        dato_e_tb= 8'd12;
        
        clk_tb = 1;
        #50
        clk_tb=0;
        #50

        //Prueba 6 lectura
        EN_tb = 0;
        direccion_tb = 8'd0;
        clk_tb = 1;
        #50
        clk_tb = 0;
        #50
        //Prueba 7 lectura
        direccion_tb = 8'd1;
        clk_tb = 1;
        


        
        
    
    end


endmodule