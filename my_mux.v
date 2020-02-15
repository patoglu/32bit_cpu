module my_mux(mux_output, mux_input0, mux_input1, mux_input2, mux_input3, select2, select1);
input mux_input0, mux_input1, mux_input2, mux_input3, select1, select2;
output mux_output;

wire nand1wire, nand2wire, nand3wire, nand4wire, nand5wire, nand6wire, nand7wire, nand8wire;
wire notselect1, notselect2;
not(notselect1, select1);
not(notselect2, select2);


my_nand muxpath1(nand1wire, select1, mux_input3);

my_nand muxpath2(nand2wire, notselect1, mux_input2);

my_nand muxpath3(nand3wire, select1, mux_input1);

my_nand muxpath4(nand4wire, notselect1, mux_input0);

my_nand muxpath5(nand5wire, nand1wire, nand2wire);

my_nand muxpath6(nand6wire, nand3wire, nand4wire);


my_nand muxpath7(nand7wire, nand5wire, select2);

my_nand muxpath8(nand8wire, nand6wire, notselect2);

my_nand muxpath9(mux_output, nand7wire, nand8wire);



endmodule