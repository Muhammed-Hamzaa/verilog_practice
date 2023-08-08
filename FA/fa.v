`timescale 1ns/1ps
module fa (a,b,cin,sum,cout);
 input wire a;
 input wire b;
 input wire cin;
 output wire sum ;
 output wire cout;

 wire s0;
 wire c1;
 wire c0;

 assign s0 = a^b;
 assign c1 = s0&cin;
 assign c0 =a&b;
 assign sum = s0^cin;
 assign cout = c1|c0;

    
endmodule