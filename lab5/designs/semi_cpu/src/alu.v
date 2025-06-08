module alu(
    input wire [31:0] A,
    input wire [31:0] B,
    input wire [2:0] alu_op,
    output reg [31:0] result
);

    always @(*) begin
        case (alu_op)
            3'b000, 3'b001: result = 32'b0;           
            3'b010: result = A + B;                   
            3'b011: result = A - B;                   
            3'b100: result = A << B[4:0];            
            3'b101: result = A >> B[4:0];            
            3'b110: result = A + B;                   
            3'b111: result = A - B;                   
            default: result = 32'b0;
        endcase
    end

endmodule
