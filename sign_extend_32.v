module sign_extend_32(immediate[15:0], extended[31:0]);
	input [15:0] immediate;
	
	output[31:0] extended;
	
	
	
	or(extended[0], immediate[0], 0);
	or(extended[1], immediate[1], 0);
	or(extended[2], immediate[2], 0);
	or(extended[3], immediate[3], 0);
	or(extended[4], immediate[4], 0);
	or(extended[5], immediate[5], 0);
	or(extended[6], immediate[6], 0);
	or(extended[7], immediate[7], 0);
	or(extended[8], immediate[8], 0);
	or(extended[9], immediate[9], 0);
	or(extended[10], immediate[10], 0);
	or(extended[11], immediate[11], 0);
	or(extended[12], immediate[12], 0);
	or(extended[13], immediate[13], 0);
	or(extended[14], immediate[14], 0);
	or(extended[15], immediate[15], 0);
	or(extended[16], immediate[15], 0);
	or(extended[17], immediate[15], 0);
	or(extended[18], immediate[15], 0);
	or(extended[19], immediate[15], 0);
	or(extended[20], immediate[15], 0);
	or(extended[21], immediate[15], 0);
	or(extended[22], immediate[15], 0);
	or(extended[23], immediate[15], 0);
	or(extended[24], immediate[15], 0);
	or(extended[25], immediate[15], 0);
	or(extended[26], immediate[15], 0);
	or(extended[27], immediate[15], 0);
	or(extended[28], immediate[15], 0);
	or(extended[29], immediate[15], 0);
	or(extended[30], immediate[15], 0);
	or(extended[31], immediate[15], 0);
	
	endmodule
	

	
	
	