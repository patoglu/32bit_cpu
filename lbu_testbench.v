
`define DELAY 20 
module lbu_testbench();

wire [31:0] result;

reg [31:0] inputx; 



lbu res(inputx, result[31:0]);

initial begin
inputx = 32'b00000101010101010000010111010101;

#`DELAY;

inputx = 32'b00000101010101010000010101010111;

#`DELAY;
end

initial begin
$monitor("time = %2d, INPUT =%32b, OUTPUT=%32b\n", $time, inputx, result);		
end 

 
endmodule