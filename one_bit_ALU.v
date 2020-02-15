module one_bit_ALU(ri,c_next,ai, bi, ci, less_i, alu_op2, alu_op1, alu_op0);
input ai,bi,ci,less_i, alu_op0, alu_op1, alu_op2;
wire mux0s, mux1s, mux2s, mux3s;
output ri, c_next;
wire wire1, wire2, wire3, wire4, wire5, wire6, wire7, wire8;

my_xor alu_path1(wire1, bi, alu_op2);
or(wire2, wire1, ai);
and(wire3,wire1,ai);
not(wire4, wire3);
and(wire5, wire4, wire2);
and(wire6, wire5, ci);
or(wire7, wire5, ci);
or(c_next, wire3, wire6);
not(wire8, wire6);
and(mux2s, wire8, wire7);
or(mux0s, wire3, wire3);
or(mux1s, wire2, wire2);
or(mux3s, less_i,less_i);
my_mux alu_path2(ri, mux0s, mux1s, mux2s, mux3s, alu_op1, alu_op0);


endmodule