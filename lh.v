module lh(rt_value[31:0], sign_extended[31:0]);

input [31:0] rt_value;
output[31:0] sign_extended;

or(sign_extended[0], rt_value[0], 0);
or(sign_extended[1], rt_value[1], 0);
or(sign_extended[2], rt_value[2], 0);
or(sign_extended[3], rt_value[3], 0);
or(sign_extended[4], rt_value[4], 0);
or(sign_extended[5], rt_value[5], 0);
or(sign_extended[6], rt_value[6], 0);
or(sign_extended[7], rt_value[7], 0);
or(sign_extended[8], rt_value[8], 0);
or(sign_extended[9], rt_value[9], 0);
or(sign_extended[10], rt_value[10], 0);
or(sign_extended[11], rt_value[11], 0);
or(sign_extended[12], rt_value[12], 0);
or(sign_extended[13], rt_value[13], 0);
or(sign_extended[14], rt_value[14], 0);
or(sign_extended[15], rt_value[15], 0);
or(sign_extended[16], rt_value[15], 0);
or(sign_extended[17], rt_value[15], 0);
or(sign_extended[18], rt_value[15], 0);
or(sign_extended[19], rt_value[15], 0);
or(sign_extended[20], rt_value[15], 0);
or(sign_extended[21], rt_value[15], 0);
or(sign_extended[22], rt_value[15], 0);
or(sign_extended[23], rt_value[15], 0);
or(sign_extended[24], rt_value[15], 0);
or(sign_extended[25], rt_value[15], 0);
or(sign_extended[26], rt_value[15], 0);
or(sign_extended[27], rt_value[15], 0);
or(sign_extended[28], rt_value[15], 0);
or(sign_extended[29], rt_value[15], 0);
or(sign_extended[30], rt_value[15], 0);
or(sign_extended[31], rt_value[15], 0);


endmodule

