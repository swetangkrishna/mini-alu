//module gr6 is used to find if a 6-bit number is greater than the other.
//numbers x and y are to be compared.
//the final out put final_bit will be a single bit number.

module gr6(
	input wire[5:0] x,y,
	output wire final_bit
);

//out is a 6-bit number which will be 1 if 
//the digits compared are equal.

wire [5:0] gr_out;
wire [5:0] out;

//using gr1 module to find equality for each digit.
//further following this process for every //digit.
	gr1 gr_bit5_unit(.i0(x[5]),.i1(y[5]),.gr(out[5]));
	gr1 gr_bit4_unit(.i0(x[4]),.i1(y[4]),.gr(out[4]));
	gr1 gr_bit3_unit(.i0(x[3]),.i1(y[3]),.gr(out[3]));
	gr1 gr_bit2_unit(.i0(x[2]),.i1(y[2]),.gr(out[2]));
	gr1 gr_bit1_unit(.i0(x[1]),.i1(y[1]),.gr(out[1]));
	

assign gr_out[5] = x[5]&(~y[5]);
assign gr_out[4] = out[5]&(x[4]&(~y[4]));
assign gr_out[3] = out[5]&out[4]&(x[3]&(~y[3]));
assign gr_out[2] = out[5]&out[4]&out[3]&(x[2]&(~y[2]));
assign gr_out[1] = out[5]&out[4]&out[3]&out[2]&(x[1]&(~y[1]));
assign gr_out[0] = out[5]&out[4]&out[3]&out[2]&out[1]&(x[0]&(~y[0]));

//The final output is the sum of products, that is described in circuit diagram //(fig-4).

assign final_bit =  gr_out[0] |gr_out[1]|gr_out[2]|gr_out[3]|gr_out[4]|gr_out[5];
endmodule
