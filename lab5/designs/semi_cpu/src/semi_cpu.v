module semi_cpu(
    input wire clk,
    input wire reset,
    input wire control,
    output reg [31:0] result,
    output wire [6:0] seg,
    output wire [7:0] an
);

    wire [4:0] pc;
    wire [31:0] instruction;
    wire [2:0] alu_op;
    wire [4:0] read_addr1, read_addr2, write_addr;
    wire [31:0] immediate;
    wire reg_write, use_immediate;
    wire [31:0] read_data1, read_data2;
    wire [31:0] alu_input_b;
    wire [31:0] alu_result;
    
    program_counter pc_unit(
        .clk(clk),
        .reset(reset),
        .control(control),
        .pc(pc)
    );
    
    instruction_memory imem(
        .address(pc),
        .instruction(instruction)
    );
    
    instruction_decoder decoder(
        .instruction(instruction),
        .control(control),
        .alu_op(alu_op),
        .read_addr1(read_addr1),
        .read_addr2(read_addr2),
        .write_addr(write_addr),
        .immediate(immediate),
        .reg_write(reg_write),
        .use_immediate(use_immediate)
    );
    
    register_file rf(
        .CLK(clk),
        .WE3(reg_write),
        .A1(read_addr1),
        .A2(read_addr2),
        .A3(write_addr),
        .WD3(alu_result),
        .RD1(read_data1),
        .RD2(read_data2)
    );
    
    assign alu_input_b = use_immediate ? immediate : read_data2;
    
    alu alu_unit(
        .A(read_data1),
        .B(alu_input_b),
        .alu_op(alu_op),
        .result(alu_result)
    );
    
    // Result register - her instruction'da güncellenir
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            result <= 32'b0;
        end else if (reg_write) begin
            result <= alu_result;
        end
    end
    
    seven_segment_display display(
        .clk(clk),
        .number(result),
        .seg(seg),
        .an(an)
    );

endmodule
