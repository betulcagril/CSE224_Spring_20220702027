module testbench_lab5;

    reg clk;
    reg reset;
    reg control;
    wire [31:0] result;
    wire [6:0] seg;
    wire [7:0] an;
    
    semi_cpu dut (
        .clk(clk),
        .reset(reset),
        .control(control),
        .result(result),
        .seg(seg),
        .an(an)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        $dumpfile("semi_cpu_tb.vcd");
        $dumpvars(0, testbench_lab5);
        
        reset = 1;
        control = 0;
        
        $display("=== Semi CPU Test Started ===");
        
        #20 reset = 0;
        $display("Time %0t: Reset released, PC = %d", $time, dut.pc);
        
        #10;
        $display("Time %0t: PC = %d, Instruction = %h", $time, dut.pc, dut.instruction);
        $display("         Control = %b, ALU_OP = %b, Reg_Write = %b", control, dut.alu_op, dut.reg_write);
        $display("         Read_Addr1 = %d, Read_Addr2 = %d, Write_Addr = %d", dut.read_addr1, dut.read_addr2, dut.write_addr);
        $display("         Read_Data1 = %d, Read_Data2 = %d, Immediate = %d", dut.read_data1, dut.read_data2, dut.immediate);
        $display("         ALU_A = %d, ALU_B = %d, ALU_Result = %d", dut.alu_unit.A, dut.alu_unit.B, dut.alu_result);
        
        $display("\n=== Instruction 1: ADDI reg10, reg0, 10 ===");
        #10 control = 1;
        #1;
        $display("Time %0t: Control = 1, ALU_OP = %b, Reg_Write = %b", $time, dut.alu_op, dut.reg_write);
        $display("         ALU_A = %d, ALU_B = %d, ALU_Result = %d", dut.alu_unit.A, dut.alu_unit.B, dut.alu_result);
        #9 control = 0;
        #20;
        $display("Time %0t: After ADDI -> PC = %d, Result = %d", $time, dut.pc, result);
        
        $display("\n=== Instruction 2: ADDI reg15, reg0, 15 ===");
        #10 control = 1;
        #1;
        $display("Time %0t: Control = 1, ALU_OP = %b", $time, dut.alu_op);
        $display("         ALU_A = %d, ALU_B = %d, ALU_Result = %d", dut.alu_unit.A, dut.alu_unit.B, dut.alu_result);
        #9 control = 0;
        #20;
        $display("Time %0t: After ADDI -> PC = %d, Result = %d", $time, dut.pc, result);
        
        $display("\n=== Instruction 3: ADD reg25, reg10, reg15 ===");
        #10 control = 1;
        #1;
        $display("Time %0t: Control = 1, ALU_OP = %b", $time, dut.alu_op);
        $display("         ALU_A = %d, ALU_B = %d, ALU_Result = %d", dut.alu_unit.A, dut.alu_unit.B, dut.alu_result);
        #9 control = 0;
        #20;
        $display("Time %0t: After ADD -> PC = %d, Result = %d", $time, dut.pc, result);
        
        $display("\n=== Register File Contents ===");
        $display("Register 10 = %d", dut.rf.registers[10]);
        $display("Register 15 = %d", dut.rf.registers[15]);
        $display("Register 25 = %d", dut.rf.registers[25]);
        
        $display("\n=== Semi CPU Test Completed ===");
        #50 $finish;
    end

endmodule
