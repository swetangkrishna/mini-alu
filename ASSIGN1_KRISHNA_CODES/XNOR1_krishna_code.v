//module XNOR1 will find the answer to the expression X = ~(A ^ B);
module XNOR1(j0,j1,k);

	input wire j0,j1;
	output wire k;
	assign k = ~(j0 ^ j1);
	
endmodule
