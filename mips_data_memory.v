module mips_data_mem (read_data, mem_address, write_data, sig_mem_read, sig_mem_write,select2, select1, select0);
output [31:0] read_data;
input [31:0] mem_address;
input [31:0] write_data;
input sig_mem_read;
input sig_mem_write;

reg [31:0] data_mem  [255:0];
reg [31:0] read_data;

reg[31:0] selection1;
reg[31:0] selection2;
reg[31:0] selection3;
reg[31:0] selection4;
reg[31:0] selection5;

input select2, select1, select0;
reg[31:0] reg1;

initial begin
	$readmemb("data.txt", data_mem);
end

always @(mem_address or write_data or sig_mem_read or sig_mem_write) begin
	if (sig_mem_read) begin
		if(select2 == 1'b0 && select1 == 1'b0 && select0 == 1'b0)begin
			read_data = {24'b0, data_mem[mem_address][7:0]};
		end
		if(select2 == 1'b0 && select1 == 1'b0 && select0 == 1'b1)begin
			read_data = {{24{data_mem[mem_address][7]}}, data_mem[mem_address][7:0]};
		end
		if(select2 == 1'b0 && select1 == 1'b1 && select0 == 1'b0)begin
			read_data = {16'b0, data_mem[mem_address][15:0]};
		end
		if(select2 == 1'b0 && select1 == 1'b1 && select0 == 1'b1)begin
			read_data = {{16{data_mem[mem_address][15]}}, data_mem[mem_address][15:0]};
		end
		if(select2 == 1'b1 && select1 == 1'b0 && select0 == 1'b0)begin
			read_data <= data_mem[mem_address];
		end
		//read_data <= data_mem[mem_address];
	end
	
	if (sig_mem_write) begin
		if(select2 == 1'b1 && select1 == 1'b0 && select0 == 1'b1)begin
			reg1 = {data_mem[mem_address] [31:8],write_data[7:0]};
			data_mem[mem_address] <= reg1;
		end
		if(select2 == 1'b1 && select1 == 1'b1 && select0 == 1'b0)begin
			reg1 = {data_mem[mem_address] [31:16],write_data[15:0]};
			data_mem[mem_address] <= reg1;
		end
		if(select2 == 1'b1 && select1 == 1'b1 && select0 == 1'b1)begin
			data_mem[mem_address] <= write_data[31:0];
		end
		
		
		
		
		
	end
end

endmodule