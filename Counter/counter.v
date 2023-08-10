module counter (clk,rst,out);
input wire clk,rst;
output reg [3:0]out;
always @(posedge clk ) begin

    if (rst == 1'b 1) begin
        out <= 4'b0000;
    end
    else begin
        out <= out + 1'b1;
    end
end

endmodule