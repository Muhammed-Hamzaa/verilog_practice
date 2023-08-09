`timescale 1ns/1ps
module leftshiftreg_tb;

    reg  in_tb;
    reg clk;
    reg rst;
    wire [3:0] out_tb;

    always #5 clk = ~clk;

    initial begin
        clk = 1;
        rst = 1;
        in_tb =1;
        #10;
        rst = 0;
        in_tb = 1'b 1;
        #10
        in_tb = 1'b0;
        #10
        in_tb = 1'b1;
        #10
        in_tb = 1'b0;
        #10



        
        $finish;
    end

    leftshiftreg u_Lshift (
        .in(in_tb),
        .clk(clk),
        .rst(rst),
        .out(out_tb)
    );

    initial begin
        $dumpfile("leftshiftreg.vcd");
        $dumpvars(0, leftshiftreg_tb);
    end
endmodule