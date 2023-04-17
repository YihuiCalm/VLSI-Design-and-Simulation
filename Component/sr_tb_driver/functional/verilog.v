//Verilog HDL for "Lab", "verilog_tb_driver" "functional"
`timescale 10us/1us

module sr_tb_driver ( clk, data, result );
	input [0:9] result;
	output [0:9] data;
	output clk;
	reg [0:9] data = 1;
	reg clk = 0;
	always #2 data = data + 3;
	always #1 clk = ~clk;
	always #1.3 $display ("din = %d, dout = %d, clk = %d", data, result, clk);
endmodule
