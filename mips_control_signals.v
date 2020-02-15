module mips_control_signals(opcode[5:0], RegWrite, MemRead, MemWrite, luiSignal,select2, select1, select0);

input [5:0]opcode;
output select2, select1, select0;

output RegWrite, MemRead, MemWrite, luiSignal;
wire lb, lbu,lh, lhu, luiSignal,sb, sh, lw,sw;


wire [5:0]reverse_opcode;

not(reverse_opcode[0], opcode[0]);
not(reverse_opcode[1], opcode[1]);
not(reverse_opcode[2], opcode[2]);
not(reverse_opcode[3], opcode[3]);
not(reverse_opcode[4], opcode[4]);
not(reverse_opcode[5], opcode[5]);



	
// FOR I_TYPE INSTRUCTIONS

//100100
	and(lbu, opcode[5], reverse_opcode[4], reverse_opcode[3], opcode[2], reverse_opcode[1], reverse_opcode[0]);
	
//100000
	and(lb, opcode[5], reverse_opcode[4], reverse_opcode[3], reverse_opcode[2], reverse_opcode[1], reverse_opcode[0]); 
	
//100101
	and(lhu, opcode[5], reverse_opcode[4], reverse_opcode[3], opcode[2], reverse_opcode[1], opcode[0]);
//100001
	and(lh, opcode[5], reverse_opcode[4], reverse_opcode[3], reverse_opcode[2], reverse_opcode[1], opcode[0]);
//001111
	and(luiSignal, reverse_opcode[5], reverse_opcode[4], opcode[3], opcode[2], opcode[1], opcode[0]);
//100011
	and(lw,  opcode[5], reverse_opcode[4], reverse_opcode[3], reverse_opcode[2], opcode[1], opcode[0]);
//101000
	and(sb, opcode[5], reverse_opcode[4], opcode[3], reverse_opcode[2], reverse_opcode[1], reverse_opcode[0]);
//101001
	and(sh, opcode[5], reverse_opcode[4], opcode[3], reverse_opcode[2], reverse_opcode[1], opcode[0]);
//101011
	and(sw, opcode[5], reverse_opcode[4], opcode[3], reverse_opcode[2], opcode[1], opcode[0]);


	
	
or(RegWrite,lw,lbu,lb,lh,lhu,luiSignal);

or(MemRead, lw, lhu,lh,lb,lbu);

or(MemWrite, sw, sb, sh);


or(select2, opcode[1], opcode[3]);

wire s1left;
wire s1right;

and(s1left,reverse_opcode[1], opcode[0]);

and(s1right, opcode[3], opcode[0]);

or(select1, s1left, s1right);

wire s0left;
wire s0middle;
wire s0right;

or(s0left, opcode[2], 0);

and(s0middle, opcode[3], reverse_opcode[0]);

and(s0right, opcode[3], opcode[1]);


wire sum0;

or(sum0, s0left, s0middle);

or(select0, sum0, s0right);






endmodule