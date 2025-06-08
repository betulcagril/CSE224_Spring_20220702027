module cpu_core(
    input wire CLK,
    input wire reset,
    input wire [4:0] read_addr1,
    input wire [4:0] read_addr2,
    input wire [4:0] write_addr,
    input wire [31:0] write_data,
    input wire write_enable,
    input wire [1:0] alu_op,
    output wire [31:0] alu_result,
    output wire [31:0] read_data1,
    output wire [31:0] read_data2
);

    wire [31:0] reg_data1, reg_data2;
    
   
    register_file rf(
        .CLK(CLK),
        .WE3(write_enable),
        .A1(read_addr1),
        .A2(read_addr2),
        .A3(write_addr),
        .WD3(write_data),
        .RD1(reg_data1),
        .RD2(reg_data2)
    );
    
    
    alu alu_unit(
        .A(reg_data1),
        .B(reg_data2),
        .opcode(alu_op),
        .result(alu_result)
    );
    
   
    assign read_data1 = reg_data1;
    assign read_data2 = reg_data2;

endmodule