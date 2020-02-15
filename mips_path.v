module mips_path(instruction[31:0], clock);

input clock;

input [31:0] instruction;
wire lbOutput;
wire lbuOutput;
wire lhOutput;
wire lhuOutput;
wire lwOutput;
wire sbOutput;
wire shOutput;
wire swOutput;
wire luiOutput;


wire RegWrite, MemRead, MemWrite,luiSignal;

wire select2, select1, select0;


mips_control_signals signals(instruction[31:26], RegWrite, MemRead, MemWrite, luiSignal,select2, select1, select0);


wire  [31:0]read_data_1;
wire  [31:0]read_data_2;
wire [31:0]write_data;

mips_registers registerRes( read_data_1, read_data_2, write_data, instruction[25:21], instruction[20:16], instruction[20:16], RegWrite, clock);


wire[31:0] sign_extended;

sign_extend_32 sign_res(instruction[15:0], sign_extended);



 
	 
	 
wire [31:0]ALU;

Y32_bit_ALU resultALU32(ALU, cout, read_data_1, read_data_2, 0, 1, 0, 1, 0);

wire[31:0] read_data;

mips_data_mem mem(read_data, ALU, instruction[20:16], MemRead, MemWrite,select2,select1,select0);


wire[31:0] lb_result;
wire[31:0] lbu_result;
wire[31:0] lh_result;
wire[31:0] lhu_result;


lb lb_res(read_data, lb_result);
lbu lbu_res(read_data, lbu_result);
lh lh_res(read_data, lh_result);
lhu lhu_res(read_data, lhu_result);


mips_registers registerRes1( read_data_1, read_data_2, read_data, instruction[25:21], instruction[20:16], instruction[20:16], RegWrite, clock);







 always @*
    $display("Readdata1: %32b, Readdata2: %32b, signExtended: %32b, MemRead: %b, MemWrite %b, luiSignal %b, MemData  %32b,ALU Res: %32b\n",read_data_1, read_data_2, sign_extended,MemRead,MemWrite,luiSignal,read_data,ALU);





	
endmodule



