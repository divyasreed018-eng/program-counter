`timescale 1ns/1ps

module program_counter_tb;

    reg        clk;
    reg        reset;
    reg        enable;
    reg [7:0]  next_pc;
    wire [7:0] pc;

    program_counter uut (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .next_pc(next_pc),
        .pc(pc)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        enable = 0;
        next_pc = 8'b0;

        // Reset
        #10;
        reset = 0;
        enable = 1;

        // Load PC = 10
        next_pc = 8'd10;
        #10;

        // Load PC = 20
        next_pc = 8'd20;
        #10;

        // Load PC = 30
        next_pc = 8'd30;
        #10;

        // Disable PC update
        enable = 0;
        next_pc = 8'd40;
        #10;

        // Enable again
        enable = 1;
        next_pc = 8'd50;
        #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | Reset=%b | Enable=%b | Next_PC=%d | PC=%d",
                 $time, reset, enable, next_pc, pc);
    end

endmodule