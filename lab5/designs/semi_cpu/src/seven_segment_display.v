module seven_segment_display(
    input wire clk,
    input wire [31:0] number,
    output reg [6:0] seg,
    output reg [7:0] an
);

    reg [19:0] refresh_counter = 0;
    wire [2:0] refresh_clock;
    
    always @(posedge clk) begin
        refresh_counter <= refresh_counter + 1;
    end
    
    assign refresh_clock = refresh_counter[19:17];
    
    reg [3:0] digit;
    reg [31:0] display_number;
    
    always @(*) begin
        display_number = number;
    end
    
    always @(*) begin
        case (refresh_clock)
            3'b000: begin
                an = 8'b11111110;
                digit = display_number % 10;
            end
            3'b001: begin
                an = 8'b11111101;
                digit = (display_number / 10) % 10;
            end
            3'b010: begin
                an = 8'b11111011;
                digit = (display_number / 100) % 10;
            end
            3'b011: begin
                an = 8'b11110111;
                digit = (display_number / 1000) % 10;
            end
            3'b100: begin
                an = 8'b11101111;
                digit = (display_number / 10000) % 10;
            end
            3'b101: begin
                an = 8'b11011111;
                digit = (display_number / 100000) % 10;
            end
            3'b110: begin
                an = 8'b10111111;
                digit = (display_number / 1000000) % 10;
            end
            3'b111: begin
                an = 8'b01111111;
                digit = (display_number / 10000000) % 10;
            end
        endcase
    end
    
    always @(*) begin
        case (digit)
            4'b0000: seg = 7'b1000000;
            4'b0001: seg = 7'b1111001;
            4'b0010: seg = 7'b0100100;
            4'b0011: seg = 7'b0110000;
            4'b0100: seg = 7'b0011001;
            4'b0101: seg = 7'b0010010;
            4'b0110: seg = 7'b0000010;
            4'b0111: seg = 7'b1111000;
            4'b1000: seg = 7'b0000000;
            4'b1001: seg = 7'b0010000;
            default: seg = 7'b1111111;
        endcase
    end

endmodule
