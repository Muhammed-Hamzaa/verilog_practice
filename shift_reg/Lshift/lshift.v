module leftshiftreg (in,clk,rst,out);

input wire in;
input wire clk;
input wire rst;

output reg  [3:0] out;

always @(posedge clk) begin
    if(rst)

    out <= 4'b0000;

    else begin

    out <= {out[2:0],in};


    end
    
end
    
 endmodule