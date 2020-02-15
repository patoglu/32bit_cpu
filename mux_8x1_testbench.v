`define DELAY 20
module mux_8x1_testbench(); 
reg mux1, mux2, mux3;
wire  muxoutputx;

/*Here I showed that I selected 4. as true input you can try other combinations like:
my_mux resultmux(muxoutputx, 0, 0, 0, 1, mux1, mux2);
my_mux resultmux(muxoutputx, 0, 0, 1, 0, mux1, mux2);
my_mux resultmux(muxoutputx, 0, 1, 0, 0, mux1, mux2);
my_mux resultmux(muxoutputx, 1, 0, 0, 0, mux1, mux2);
*/

mux_8x1 resultmux(muxoutputx, 1, 0, 0, 0, 0, 0, 0, 0 ,mux1, mux2,mux3);



initial begin
mux1 = 1'b0; mux2 = 1'b0; mux3 = 1'b0;
#`DELAY;
mux1 = 1'b0; mux2 = 1'b0; mux3 = 1'b1;
#`DELAY;
mux1 = 1'b0; mux2 = 1'b1; mux3 = 1'b0;
#`DELAY;
mux1 = 1'b0; mux2 = 1'b1; mux3 = 1'b1;
#`DELAY;
mux1 = 1'b1; mux2 = 1'b0; mux3 = 1'b0;
#`DELAY;
mux1 = 1'b1; mux2 = 1'b0; mux3 = 1'b1;
#`DELAY;
mux1 = 1'b1; mux2 = 1'b1; mux3 = 1'b1;
end

initial begin
$monitor("time = %2d, mux1 =%1b, mux2=%1b,mux3=%1b, result=%1b", $time, mux1, mux2,mux3, muxoutputx);
end
 
endmodule