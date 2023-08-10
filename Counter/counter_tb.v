`timescale 1ns/1ps
module counter_tb ();

    reg clk_tb;
    reg rst_tb;
    wire [3:0]out_tb;

    always begin
        #5 clk_tb= ~clk_tb;
    end

    initial begin
        clk_tb = 1 ;
        rst_tb = 1 ;
        #10;
        rst_tb = 1 ;
        #10;
        rst_tb = 0 ;
        #150;
        $finish;

       
    end

    counter u_counter0
    (
        .clk(clk_tb),
        .rst(rst_tb),
        .out(out_tb)
    );

    initial begin
       $dumpfile("counter.vcd");
       $dumpvars(0,counter_tb);
    end

    
    
endmodule