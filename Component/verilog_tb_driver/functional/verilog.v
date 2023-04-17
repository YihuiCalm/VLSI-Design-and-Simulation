//Verilog HDL for "Lab", "verilog_tb_driver" "functional"
`timescale 10us/1us

module verilog_tb_driver ( clk, kernel_0, kernel_1, kernel_2, data, result );
	input [9:0] result;
	output [3:0] data;
	output [3:0] kernel_0;
	output [3:0] kernel_1;
	output [3:0] kernel_2;
	output clk;

	reg [3:0] kernel_0 = 1;
	reg [3:0] kernel_1 = 3;
	reg [3:0] kernel_2 = 1;
	reg [3:0] data = 0;
	reg [3:0] data_3 = 0;
	reg [3:0] data_1 = 0;
	reg [3:0] data_2 = 0;
	reg clk = 0;

	always #1 clk = ~clk;
	always @(negedge clk) begin
		#0.1;
		data = $random();
		data_3 = data_2;
		data_2 = data_1;
	    data_1 = data;
	end
	always @(posedge clk) begin
		#0.1 $display ("d0 = %d, d1 = %d, d2 = %d, result = %d, clk = %d", data_1, data_2, data_3, result, clk);
	end

endmodule