//using gr1 module to find ‘Xi’ where, 
//’Xi’ = ~A[0].B[0] + A[0].~B[0] which we will further use to find if A<B.
module gr1(i0,i1,gr);

//’i0’ and ‘i1’ are the input single bits.
    input wire i0,i1;
//’gr’ is the final output which is true for A<B.
    output wire gr;

wire p0,p1;

//’gr’ is true for either ‘p0’ or ‘p1’.
	assign gr = p0 | p1;

//’p0’ and ‘p1’ will be true if ‘i0’ and ‘i1’ //are equal.
	assign p0 = ~i0 & ~i1;
	assign p1 = i0 & i1;

endmodule
