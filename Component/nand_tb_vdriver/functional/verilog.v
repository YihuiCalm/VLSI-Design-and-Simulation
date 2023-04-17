//Verilog HDL for "Lab", "nand_tb_vdriver" "functional"
`timescale 10us/1us


module nand_tb_vdriver ( test_data, results );
	input results; 
	output [1:0] test_data;
	reg [1:0] test_data;

		always begin
			#1 test_data = 2'b00;
			#1 test_data = 2'b01;
			#1 test_data = 2'b10;
			#1 test_data = 2'b11;
		end
endmodule
