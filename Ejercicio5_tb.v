module testbench();
    reg a,b,c;
    reg a1,b1,c1;
    wire out1,out2,out3,out4,out5,out6;

Tabla1Mux8_1 A1(a,b,c,out1);
Tabla1Mux4_1 A2(a,b,c,out2);
Tabla1Mux2_1 A3(a,b,c,out3);

Tabla2Mux8_1 A4(a1,b1,c1,out4);
Tabla2Mux4_1 A5(a1,b1,c1,out5);
Tabla2Mux2_1 A6(a1,b1,c1,out6);

initial begin
    $display("\n");
    $display("Tabla 1 - Mux 8:1");
    $display("|---------|");
    $display("|A B C | Y|");
    $display("|------|--|");
    $monitor("|%b %b %b | %b|", a, b, c, out1);
    a = 0; b = 0; c = 0;
    #1 c = 1;
    #1 b = 1; c = 0;
    #1 c = 1;
    #1 a = 1; b = 0; c = 0;
    #1 c = 1;
    #1 b = 1; c = 0;
    #1 c = 1;
    #1 $display("|---------|");
    end
initial begin
    #9
    $display("\n");
    $display("Tabla 1 - Mux 4:1");
    $display("|---------|");
    $display("|A B C | Y|");
    $display("|------|--|");
    $monitor("|%b %b %b | %b|", a, b, c, out2);
    a = 0; b = 0; c = 0;
    #1 c = 1;
    #1 b = 1; c = 0;
    #1 c = 1;
    #1 a = 1; b = 0; c = 0;
    #1 c = 1;
    #1 b = 1; c = 0;
    #1 c = 1;
    #1 $display("|---------|");
    end
initial begin
    #18
    $display("\n");
    $display("Tabla 1 - Mux 2:1");
    $display("|---------|");
    $display("|A B C | Y|");
    $display("|------|--|");
    $monitor("|%b %b %b | %b|", a, b, c, out3);
    a = 0; b = 0; c = 0;
    #1 c = 1;
    #1 b = 1; c = 0;
    #1 c = 1;
    #1 a = 1; b = 0; c = 0;
    #1 c = 1;
    #1 b = 1; c = 0;
    #1 c = 1;
    #1 $display("|---------|");
    end
initial begin
    #27
    $display("\n");
    $display("Tabla 2 - Mux 8:1");
    $display("|---------|");
    $display("|A B C | Y|");
    $display("|------|--|");
    $monitor("|%b %b %b | %b|", a1, b1, c1, out4);
    a1 = 0; b1 = 0; c1 = 0;
    #1 c1 = 1;
    #1 b1 = 1; c1 = 0;
    #1 c1 = 1;
    #1 a1 = 1; b1 = 0; c1 = 0;
    #1 c1 = 1;
    #1 b1 = 1; c1 = 0;
    #1 c1 = 1;
    #1 $display("|---------|");
    end
initial begin
    #36
    $display("\n");
    $display("Tabla 2 - Mux 4:1");
    $display("|---------|");
    $display("|A B C | Y|");
    $display("|------|--|");
    $monitor("|%b %b %b | %b|", a1, b1, c1, out5);
    a1 = 0; b1 = 0; c1 = 0;
    #1 c1 = 1;
    #1 b1 = 1; c1 = 0;
    #1 c1 = 1;
    #1 a1 = 1; b1 = 0; c1 = 0;
    #1 c1 = 1;
    #1 b1 = 1; c1 = 0;
    #1 c1 = 1;
    #1 $display("|---------|");
    end
initial begin
    #45
    $display("\n");
    $display("Tabla 2 - Mux 2:1");
    $display("|---------|");
    $display("|A B C | Y|");
    $display("|------|--|");
    $monitor("|%b %b %b | %b|", a1, b1, c1, out6);
    a1 = 0; b1 = 0; c1 = 0;
    #1 c1 = 1;
    #1 b1 = 1; c1 = 0;
    #1 c1 = 1;
    #1 a1 = 1; b1 = 0; c1 = 0;
    #1 c1 = 1;
    #1 b1 = 1; c1 = 0;
    #1 c1 = 1;
    #1 $display("|---------|");
    end


initial #55 $finish;
    /*initial begin
        $dumpfile("Ejercicio5_tb.vcd");
        $dumpvars(0,testbench);
    end*/
endmodule