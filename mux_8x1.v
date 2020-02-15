module mux_8x1(mux_output, mux_input1, mux_input2,mux_input3, mux_input4, mux_input5, mux_input6, mux_input7, mux_input8, select2, select1, select0);

input mux_input1, mux_input2,mux_input3, mux_input4, mux_input5, mux_input6, mux_input7, mux_input8, select2, select1, select0;

output mux_output;

wire mux_4x1_first;
wire mux_4x1_second;



my_mux muxpath1(mux_4x1_first, mux_input1, mux_input2,mux_input3, mux_input4, select0, select1);


my_mux muxpath2(mux_4x1_second, mux_input5, mux_input6,mux_input7, mux_input8, select0, select1);

mux_2x1 muxfinal(mux_output, mux_4x1_first, mux_4x1_second,select2);

endmodule