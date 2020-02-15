module my_xor(xor_output, xor_input1, xor_input2);
input xor_input1, xor_input2;
output xor_output;
wire nand1;
wire or1;
wire result;

my_nand nameless(nand1, xor_input1, xor_input2);
or(or1,xor_input1, xor_input2);
and(xor_output, nand1, or1);

endmodule