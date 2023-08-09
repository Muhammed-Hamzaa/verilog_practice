module rightshiftreg_tb;

    reg in_tb;
    reg clk;
    reg rst;
    wire [3:0] out_tb;

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
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

    rightshiftreg u_shiftut (
        .in(in_tb),
        .clk(clk),
        .rst(rst),
        .out(out_tb)
    );

    initial begin
        $dumpfile("rightshiftreg.vcd");
        $dumpvars(0, rightshiftreg_tb);
    end
endmodule