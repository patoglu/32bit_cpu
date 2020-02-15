module Y32_bit_ALU(r_bits, cout, a_bits, b_bits, cin, cless_than, alu_op_2, alu_op1, alu_op0);

output [31:0] r_bits;
output cout;
input [31:0] a_bits;
input [31:0] b_bits;
wire [31:0] cout_out;
input cin, cless_than;
input  alu_op_2, alu_op1, alu_op0;

one_bit_ALU alu_path_beg(r_bits[0],cout_out[0],a_bits[0], b_bits[0], cin, cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_1(r_bits[1],cout_out[1],a_bits[1], b_bits[1], cout_out[0], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_2(r_bits[2],cout_out[2],a_bits[2], b_bits[2], cout_out[1], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_3(r_bits[3],cout_out[3],a_bits[3], b_bits[3], cout_out[2], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_4(r_bits[4],cout_out[4],a_bits[4], b_bits[4], cout_out[3], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_5(r_bits[5],cout_out[5],a_bits[5], b_bits[5], cout_out[4], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_6(r_bits[6],cout_out[6],a_bits[6], b_bits[6], cout_out[5], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_7(r_bits[7],cout_out[7],a_bits[7], b_bits[7], cout_out[6], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_8(r_bits[8],cout_out[8],a_bits[8], b_bits[8], cout_out[7], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_9(r_bits[9],cout_out[9],a_bits[9], b_bits[9], cout_out[8], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_10(r_bits[10],cout_out[10],a_bits[10], b_bits[10], cout_out[9], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_11(r_bits[11],cout_out[11],a_bits[11], b_bits[11], cout_out[10], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_12(r_bits[12],cout_out[12],a_bits[12], b_bits[12], cout_out[11], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_13(r_bits[13],cout_out[13],a_bits[13], b_bits[13], cout_out[12], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_14(r_bits[14],cout_out[14],a_bits[14], b_bits[14], cout_out[13], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_15(r_bits[15],cout_out[15],a_bits[15], b_bits[15], cout_out[14], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_16(r_bits[16],cout_out[16],a_bits[16], b_bits[16], cout_out[15], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_17(r_bits[17],cout_out[17],a_bits[17], b_bits[17], cout_out[16], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_18(r_bits[18],cout_out[18],a_bits[18], b_bits[18], cout_out[17], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_19(r_bits[19],cout_out[19],a_bits[19], b_bits[19], cout_out[18], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_20(r_bits[20],cout_out[20],a_bits[20], b_bits[20], cout_out[19], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_21(r_bits[21],cout_out[21],a_bits[21], b_bits[21], cout_out[20], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_22(r_bits[22],cout_out[22],a_bits[22], b_bits[22], cout_out[21], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_23(r_bits[23],cout_out[23],a_bits[23], b_bits[23], cout_out[22], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_24(r_bits[24],cout_out[24],a_bits[24], b_bits[24], cout_out[23], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_25(r_bits[25],cout_out[25],a_bits[25], b_bits[25], cout_out[24], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_26(r_bits[26],cout_out[26],a_bits[26], b_bits[26], cout_out[25], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_27(r_bits[27],cout_out[27],a_bits[27], b_bits[27], cout_out[26], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_28(r_bits[28],cout_out[28],a_bits[28], b_bits[28], cout_out[27], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_29(r_bits[29],cout_out[29],a_bits[29], b_bits[29], cout_out[28], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_30(r_bits[30],cout_out[30],a_bits[30], b_bits[30], cout_out[29], cless_than, alu_op_2, alu_op1, alu_op0);
one_bit_ALU alu_path_final(r_bits[31],cout,a_bits[31], b_bits[31], cout_out[30], cless_than, alu_op_2, alu_op1, alu_op0);







endmodule