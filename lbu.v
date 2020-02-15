module lbu(rt_value[31:0], sign_extended[31:0]);

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
or(sign_extended[8], 0, 0);
or(sign_extended[9], 0, 0);
or(sign_extended[10], 0, 0);
or(sign_extended[11], 0, 0);
or(sign_extended[12], 0, 0);
or(sign_extended[13], 0, 0);
or(sign_extended[14], 0, 0);
or(sign_extended[15], 0, 0);
or(sign_extended[16], 0, 0);
or(sign_extended[17], 0, 0);
or(sign_extended[18], 0, 0);
or(sign_extended[19], 0, 0);
or(sign_extended[20], 0, 0);
or(sign_extended[21], 0, 0);
or(sign_extended[22], 0, 0);
or(sign_extended[23], 0, 0);
or(sign_extended[24], 0, 0);
or(sign_extended[25], 0, 0);
or(sign_extended[26], 0, 0);
or(sign_extended[27], 0, 0);
or(sign_extended[28], 0, 0);
or(sign_extended[29], 0, 0);
or(sign_extended[30], 0, 0);
or(sign_extended[31], 0, 0);


endmodule

