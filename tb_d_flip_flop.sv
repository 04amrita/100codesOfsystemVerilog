`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2023 11:49:21
// Design Name: 
// Module Name: tb_d_flip_flop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tb_d_flip_flop;
  logic clk, rst, d, q;
  
  d_flip_flop dff_inst(
        .clk(clk),
        .rst(rst),
        .d(d),
        .q(q)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        rst = 1;
        #10;
        rst = 0;
        d = 0;
        #5;
        d = 0;
        #10;
        $display("Test Case 1: D = %b, Q = %b", d, q);
        d = 1;
        #10;
        $display("Test Case 2: D = %b, Q = %b", d, q);
        d = 0;
        #10;
        $display("Test Case 3: D = %b, Q = %b", d, q);
        $finish;
    end
endmodule

