//module XNOR1 will find the answer to the expression X = ~(A ^ B);
//module XNOR6 will find A XNOR B for every digit using module XNOR1.

module XNOR6(f,g,h);

	input wire[5:0] f,g;
	output wire[5:0] h;


//using XNOR1 module to get ~(A ^ B) for each digit.	
	XNOR1 ans_bit0_unit(.j0(f[0]),.j1(g[0]),.k(h[0])); 
	XNOR1 ans_bit1_unit(.j0(f[1]),.j1(g[1]),.k(h[1]));
	XNOR1 ans_bit2_unit(.j0(f[2]),.j1(g[2]),.k(h[2]));
	XNOR1 ans_bit3_unit(.j0(f[3]),.j1(g[3]),.k(h[3]));
	XNOR1 ans_bit4_unit(.j0(f[4]),.j1(g[4]),.k(h[4]));
	XNOR1 ans_bit5_unit(.j0(f[5]),.j1(g[5]),.k(h[5]));
endmodule
