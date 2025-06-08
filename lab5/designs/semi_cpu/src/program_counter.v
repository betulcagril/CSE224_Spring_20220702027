module program_counter(
    input wire clk,
    input wire reset,
    input wire control,
    output reg [4:0] pc
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            pc <= 5'b0;
        end else if (control) begin
            pc <= pc + 1;
        end
        
    end

endmodule
