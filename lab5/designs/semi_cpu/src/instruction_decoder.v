module instruction_decoder(
    input wire [31:0] instruction,
    input wire control,
    output reg [2:0] alu_op,
    output reg [4:0] read_addr1,
    output reg [4:0] read_addr2,
    output reg [4:0] write_addr,
    output reg [31:0] immediate,
    output reg reg_write,
    output reg use_immediate
);

    wire [2:0] opcode = instruction[31:29];
    wire [4:0] rd = instruction[28:24];
    wire [4:0] rs = instruction[23:19];
    wire [4:0] rt = instruction[18:14];
    wire [18:0] imm = instruction[18:0];

    always @(*) begin
        if (!control) begin
            alu_op = 3'b000;
            read_addr1 = 5'b0;
            read_addr2 = 5'b0;
            write_addr = 5'b0;
            immediate = 32'b0;
            reg_write = 1'b0;
            use_immediate = 1'b0;
        end else begin
            read_addr1 = rs;
            read_addr2 = rt;
            write_addr = rd;
            immediate = {{13{imm[18]}}, imm};
            reg_write = 1'b1;
            
            case (opcode)
                3'b000, 3'b001: begin 
                    alu_op = 3'b000;
                    reg_write = 1'b0;
                    use_immediate = 1'b0;
                end
                3'b010: begin 
                    alu_op = 3'b010;
                    use_immediate = 1'b0;
                end
                3'b011: begin 
                    alu_op = 3'b011;
                    use_immediate = 1'b0;
                end
                3'b100: begin 
                    alu_op = 3'b100;
                    use_immediate = 1'b0;
                end
                3'b101: begin 
                    alu_op = 3'b101;
                    use_immediate = 1'b0;
                end
                3'b110: begin 
                    alu_op = 3'b110;
                    use_immediate = 1'b1;
                end
                3'b111: begin 
                    alu_op = 3'b111;
                    use_immediate = 1'b1;
                end
                default: begin
                    alu_op = 3'b000;
                    reg_write = 1'b0;
                    use_immediate = 1'b0;
                end
            endcase
        end
    end

endmodule
