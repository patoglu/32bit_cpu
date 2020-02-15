`define DELAY 20
module Y32_bit_ALU_testbench(); 

reg [31:0] a_regs, b_regs;

reg a2_select, a1_select, a0_select, less_select;
wire [31:0] result;
wire cout,overflow;

Y32_bit_ALU resultALU32(result, cout, a_regs, b_regs, 0, less_select, a2_select, a1_select, a0_select);

initial begin
a_regs = 32'b11000000000000000000000000000000; /*AND*/
b_regs = 32'b11000000000000000000000000011111;

a2_select = 1'b0; a1_select = 1'b0; a0_select = 1'b0; less_select = 1'b0;
#`DELAY;

a_regs = 32'b11000000010000000001000000000000; /*OR*/
b_regs = 32'b11000000010000000100000000000011;

a2_select = 1'b0; a1_select = 1'b0; a0_select = 1'b1; less_select = 1'b0;

#`DELAY;
a_regs = 32'b000001000010001000010001000001000; /*ADD*/
b_regs = 32'b000000000100001011100000000100110;
a2_select = 1'b0; a1_select = 1'b1; a0_select = 1'b0; less_select = 1'b0;
#`DELAY;
a_regs = 32'b111111000011100011111000111111111; /*SUB*/
b_regs = 32'b011000000100001011100100000000000;
a2_select = 1'b1; a1_select = 1'b1; a0_select = 1'b0; less_select = 1'b0;
#`DELAY;
a_regs = 32'b111111000000000111111111111111111; /*LESS*/
b_regs = 32'b011000000100001011100100000000000;
a2_select = 1'b1; a1_select = 1'b1; a0_select = 1'b1; less_select = 1'b1;
end

initial begin
$monitor("time = %2d, FIRST NUMBER =%32b, SECOND NUMBER=%32b, RESULT=%32b, COUT = %2d", $time, a_regs, b_regs, result,cout);		
end 

 
endmodule