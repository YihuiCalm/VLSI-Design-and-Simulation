//Verilog HDL for "Lab", "verilog_tb_driver" "functional"
`timescale 10us/1us

module verilog_tb_driver_trans ( clk, kernel_0, kernel_1, kernel_2, data, result );
	input [9:0] result;
	output [3:0] data;
	output [3:0] kernel_0;
	output [3:0] kernel_1;
	output [3:0] kernel_2;
	output clk;

	reg [3:0] kernel_0 = 4'b1111;
	reg [3:0] kernel_1 = 4'b1111;
	reg [3:0] kernel_2 = 4'b1111;
	reg [3:0] data = 4'b1111;
	reg clk = 0;

	always #1 clk = ~clk;

	

endmodule