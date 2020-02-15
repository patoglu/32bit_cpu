`define DELAY 20
module my_nand_testbench(); 
reg a1, b1;
wire  nand_outputx;

my_nand result(nand_outputx, a1, b1);

initial begin
a1 = 1'b0; b1 = 1'b0;
#`DELAY;
a1 = 1'b1; b1 = 1'b0;
#`DELAY;
a1 = 1'b0; b1 = 1'b1;
#`DELAY;
a1 = 1'b1; b1 = 1'b1;
end
 
 
initial
begin
$monitor("time = %2d, a =%1b, b=%1b, sum=%1b", $time, a1, b1, nand_outputx);
end
 
endmodule