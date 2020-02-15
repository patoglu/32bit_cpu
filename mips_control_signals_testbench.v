`define DELAY 20
module mips_control_signals_testbench(); 

reg [5:0] opcode;
wire luiSign, select2, select1, select0,RegWrite, MemRead, MemWrite;



mips_control_signals control_test(opcode, RegWrite, MemRead, MemWrite, luiSign,select2, select1, select0);

initial begin

opcode = 6'b100000;
#`DELAY;

opcode = 6'b100100;
#`DELAY;

opcode = 6'b100001;
#`DELAY;

opcode = 6'b100101;
#`DELAY;

opcode = 6'b100011;
#`DELAY;

opcode = 6'b101000;
#`DELAY;

opcode = 6'b101001;
#`DELAY;
opcode = 6'b101011;
#`DELAY;
opcode = 6'b001111;
end


initial begin

$monitor("time = %2d, OPCODE =%6b, SELECT2=%3d, SELECT1=%3d, SELECT0=%3d, REGWRITE=%3d, MEMREAD=%3d,MEMWRITE=%3d,LUI=%3d", $time, opcode, select2, select1, select0, RegWrite, MemRead, MemWrite,luiSign);

end


endmodule

