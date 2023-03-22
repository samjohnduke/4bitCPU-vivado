`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/21/2023 08:57:45 PM
// Design Name: 
// Module Name: top
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


module top(
    input clk_in_1,
    input reset,
    input switch_0,
    input switch_1,
    input switch_2,
    input switch_3,
    input btn_0,
    input btn_1,
    output out_3,
    output out_2,
    output out_1,
    output out_0
    );
    
    wire clk;
    
    
    clk_wiz_0 c(.clk_in1(clk_in_1), .reset(1'b0), .clk_out1(clk));
        
    cpu core1(
        .clk(clk), 
        .reset(1'b0), 
        .btn_0(btn_0), 
        .btn_1(btn_1), 
        .switch_0(switch_0), 
        .switch_1(switch_1), 
        .switch_2(switch_2), 
        .switch_3(switch_3), 
        .out({out_3, out_2, out_1, out_0})
        );
    
endmodule
