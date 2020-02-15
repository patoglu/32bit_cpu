
`define DELAY 20 
module sign_extend_32_testbench();

wire [31:0] result;

reg [15:0] inputx; 





 sign_extend_32 res(inputx, result);

initial begin
inputx = 16'b1000010101010101;

#`DELAY;

inputx = 16'b0000010101010101;

#`DELAY;
end

initial begin
$monitor("time = %2d, INPUT =%16b, OUTPUT=%32b\n", $time, inputx, result);		
end 

 
endmodule