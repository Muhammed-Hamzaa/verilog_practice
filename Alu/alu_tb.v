`timescale 1ns/1ps
module alu_tb ();
 reg [7:0]a_tb;
 reg [7:0]b_tb;
 reg [2:0]op_tb;
 wire [7:0]res_tb;
 integer i;

 initial begin
    a_tb= 10;
    b_tb=3;
    for ( i=0; i<7; i++) begin
        op_tb=i;
        #1;
         $display ("res_tb value is %d",res_tb);
    #1;
    end
    


  

     end
     alu u_alu0
     (
        .a_i(a_tb),
        .b_i(b_tb),
        .op_i(op_tb),
        .res_o(res_tb)
     );
initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0,alu_tb);
end
    
endmodule
