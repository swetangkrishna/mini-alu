//this module finds the negative of a 6-bit //number in 2’s complement form.
module negative(m,nega);

//’m’ is the number whose negative is to be found.
	input wire[5:0] m;
//the negative of the number will be stored in ‘nega’.
	output reg[5:0] nega;
//’temp’ is a 000000 to help us find the 1’s compliment.
	wire[5:0] temp = 6'd0;


//in order to find the negative, we first need to subtract 1 from the LSB then find its XOR with temp and then find the negation of the result.
always@ (*)
nega = ~((m - 1) ^ temp);

endmodule
