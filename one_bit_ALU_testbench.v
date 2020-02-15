`define DELAY 20
module one_bit_ALU_testbench(); 
reg a1x, b1x, c1x;
wire  c_next, ri1;
reg alutest2,alutest1,alutest0;

one_bit_ALU resultALU(ri1,c_next,a1x, b1x, c1x, 0, alutest2, alutest1, alutest0);

initial begin
a1x = 1'b0; b1x = 1'b0; c1x = 1'b0;
alutest2 = 1'b0;  alutest1 = 1'b0; alutest0 = 1'b0; 
#`DELAY;
a1x = 1'b0; b1x = 1'b0; c1x = 1'b1;
alutest2 = 1'b0;  alutest1 = 1'b0; alutest0 = 1'b1;
#`DELAY;
a1x = 1'b0; b1x = 1'b1; c1x = 1'b0;
alutest2 = 1'b0;  alutest1 = 1'b1; alutest0 = 1'b0;
#`DELAY;
a1x = 1'b0; b1x = 1'b1; c1x = 1'b1;
alutest2 = 1'b1;  alutest1 = 1'b1; alutest0 = 1'b0;
end
 
 
initial
begin
$monitor("time = %2d, a =%1b, b =%1b, c=%1b, ri=%1b, cnext=%1b", $time, a1x, b1x, c1x, ri1, c_next);
end
 
endmodule