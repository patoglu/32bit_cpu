module my_nand(nand_output, input1_nand, input2_nand);
output nand_output;
input input1_nand, input2_nand;
wire wire1nand, wire2nand;

not(wire1nand, input1_nand);
not(wire2nand, input2_nand);
or(nand_output, wire1nand, wire2nand);

endmodule