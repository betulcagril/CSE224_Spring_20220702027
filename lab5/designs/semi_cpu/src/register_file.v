module register_file(
    input wire CLK,
    input wire WE3,
    input wire [4:0] A1,
    input wire [4:0] A2,
    input wire [4:0] A3,
    input wire [31:0] WD3,
    output reg [31:0] RD1,
    output reg [31:0] RD2
);

  
    reg [31:0] registers [31:0];
    
   
    integer i;
    initial begin
        for (i = 0; i < 32; i = i + 1) begin
            registers[i] = 32'b0;
        end
    end
    
    
    always @(posedge CLK) begin
        if (WE3 && A3 != 5'b0) begin  
            registers[A3] <= WD3;
        end
    end
    
    
    always @(*) begin
        if (A1 == 5'b0)
            RD1 = 32'b0;  
        else
            RD1 = registers[A1];
            
        if (A2 == 5'b0)
            RD2 = 32'b0;  
        else
            RD2 = registers[A2];
    end

endmodule
