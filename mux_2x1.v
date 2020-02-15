module mux_2x1(mux_output, mux_input1, mux_input2,select);

	output mux_output;
	input mux_input1, mux_input2, select;
	
	wire muxwire1;
	wire muxwire2;
	
	wire not_select;
	not(not_select, select);
	my_nand muxpath1(muxwire1, not_select, mux_input1);
	my_nand muxpath2(muxwire2, select, mux_input2);
	
	my_nand result(mux_output, muxwire1, muxwire2);
	
endmodule

