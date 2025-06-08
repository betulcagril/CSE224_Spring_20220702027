module testbench;

    
    reg CLK;
    reg reset;
    reg [4:0] read_addr1, read_addr2, write_addr;
    reg [31:0] write_data;
    reg write_enable;
    reg [1:0] alu_op;
    wire [31:0] alu_result;
    wire [31:0] read_data1, read_data2;
    
    
    cpu_core dut (
        .CLK(CLK),
        .reset(reset),
        .read_addr1(read_addr1),
        .read_addr2(read_addr2),
        .write_addr(write_addr),
        .write_data(write_data),
        .write_enable(write_enable),
        .alu_op(alu_op),
        .alu_result(alu_result),
        .read_data1(read_data1),
        .read_data2(read_data2)
    );
    
   
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;  
    end
    
    
    initial begin
        $dumpfile("cpu_core_tb.vcd");
        $dumpvars(0, testbench);
        
       
        reset = 1;
        write_enable = 0;
        read_addr1 = 0;
        read_addr2 = 0;
        write_addr = 0;
        write_data = 0;
        alu_op = 0;
        
        #10 reset = 0;
        
        
        $display("=== Test 1: ADD Operation ===");
        
        
        #10 write_addr = 5'd10;
        write_data = 32'd10;
        write_enable = 1;
        #10 write_enable = 0;
        
        
        #10 write_addr = 5'd15;
        write_data = 32'd15;
        write_enable = 1;
        #10 write_enable = 0;
        
        
        #10 read_addr1 = 5'd10;
        read_addr2 = 5'd15;
        alu_op = 2'b00; 
        #10;
        $display("ADD: %d + %d = %d", read_data1, read_data2, alu_result);
        
        
        write_addr = 5'd20;
        write_data = alu_result;
        write_enable = 1;
        #10 write_enable = 0;
        
        
        $display("=== Test 2: SUB Operation ===");
        
       
        #10 write_addr = 5'd10;
        write_data = 32'd20;
        write_enable = 1;
        #10 write_enable = 0;
        
        
        #10 write_addr = 5'd15;
        write_data = 32'd15;
        write_enable = 1;
        #10 write_enable = 0;
        
        
        #10 read_addr1 = 5'd10;
        read_addr2 = 5'd15;
        alu_op = 2'b01;  
        #10;
        $display("SUB: %d - %d = %d", read_data1, read_data2, alu_result);
        
        
        write_addr = 5'd20;
        write_data = alu_result;
        write_enable = 1;
        #10 write_enable = 0;
        
       
        $display("=== Test 3: SHIFTL Operation ===");
        
       
        #10 write_addr = 5'd10;
        write_data = 32'd31;
        write_enable = 1;
        #10 write_enable = 0;
        
       
        #10 write_addr = 5'd15;
        write_data = 32'd2;
        write_enable = 1;
        #10 write_enable = 0;
        
        
        #10 read_addr1 = 5'd10;
        read_addr2 = 5'd15;
        alu_op = 2'b10;  
        #10;
        $display("SHIFTL: %d << %d = %d", read_data1, read_data2, alu_result);
        
       
        write_addr = 5'd20;
        write_data = alu_result;
        write_enable = 1;
        #10 write_enable = 0;
        
        
        $display("=== Test 4: SHIFTR Operation ===");
        
        
        #10 read_addr1 = 5'd10;
        read_addr2 = 5'd15;
        alu_op = 2'b11; 
        #10;
        $display("SHIFTR: %d >> %d = %d", read_data1, read_data2, alu_result);
        
        
        write_addr = 5'd20;
        write_data = alu_result;
        write_enable = 1;
        #10 write_enable = 0;
        
        
        #10 read_addr1 = 5'd20;
        #10;
        $display("Final value in register 20: %d", read_data1);
        
        $display("=== All tests completed ===");
        #50 $finish;
    end

endmodule