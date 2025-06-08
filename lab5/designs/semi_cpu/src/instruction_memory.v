module instruction_memory(
    input wire [4:0] address,
    output reg [31:0] instruction
);

    always @(*) begin
        case (address)
            5'd0: instruction = {3'b110, 5'd10, 5'd0, 19'd10};        
            5'd1: instruction = {3'b110, 5'd15, 5'd0, 19'd15};        
            5'd2: instruction = {3'b010, 5'd25, 5'd10, 5'd15, 14'd0}; 
            5'd3: instruction = {3'b111, 5'd20, 5'd25, 19'd5};        
            5'd4: instruction = {3'b110, 5'd5, 5'd0, 19'd2};          
            5'd5: instruction = {3'b100, 5'd30, 5'd25, 5'd5, 14'd0};  
            default: instruction = 32'h00000000;                       
        endcase
    end

endmodule     
     
