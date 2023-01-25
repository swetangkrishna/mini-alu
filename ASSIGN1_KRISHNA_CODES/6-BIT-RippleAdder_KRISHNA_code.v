// module ‘six_bit_adder’ adds up the six bit inputs and store the result in z.

module six_bit_adder(x,y,z);
//as the numbers are in 2’s complement form we can set the result bit size to 6.

	input wire[5:0] x,y;
	output wire[5:0] z;
    wire[5:0] cinr; 

//the carry for LSB is set to 0.
    

//using full_adder module to get the sum and carry for each digit.
//for further digits the ‘cout’ of the previous digit become the ‘cin’ for the following digit.

	full_Adder add_bit0(.a(x[0]), .b(y[0]), .cin(1'd0), .s(z[0]), .cout(cinr[0]));
	full_Adder add_bit1(.a(x[1]), .b(y[1]), .cin(cinr[0]), .s(z[1]), .cout(cinr[1]));
	full_Adder add_bit2(.a(x[2]), .b(y[2]), .cin(cinr[1]), .s(z[2]), .cout(cinr[2]));
	full_Adder add_bit3(.a(x[3]), .b(y[3]), .cin(cinr[2]), .s(z[3]), .cout(cinr[3]));
	full_Adder add_bit4(.a(x[4]), .b(y[4]), .cin(cinr[3]), .s(z[4]), .cout(cinr[4]));
	full_Adder add_bit5(.a(x[5]), .b(y[5]), .cin(cinr[4]), .s(z[5]), .cout(cinr[5]));


endmodule
