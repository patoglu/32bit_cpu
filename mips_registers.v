module mips_registers( read_data_1, read_data_2, write_data, read_reg_1, read_reg_2, write_reg, signal_reg_write, clk);

	output reg [31:0] read_data_1, read_data_2;
	input [31:0] write_data;
	input [4:0] read_reg_1, read_reg_2, write_reg;
	input signal_reg_write, clk;
	
	reg [31:0] registers [31:0];
		
	
	
	//first initialize register file.
	initial begin
		$readmemb(".\\registers.mem", registers);
	end
	
	//need to use nonblocking assignments cause of sequential block.
	always @(posedge clk)
	begin
		if(signal_reg_write) begin
			registers[write_reg] <= write_data;
			
		end
		begin
			read_data_1 <= registers[read_reg_1];
			read_data_2 <= registers[read_reg_2];
		end
	end

	endmodule
