//full adder adds a single bit digit and stores the sum in ‘s’ and the carry digit in cout.

module full_Adder(a,b,cin,s,cout);
    input wire a, b, cin;
//cin is the initial carry which is set to 0.
	output wire s, cout;

//assigning 's' as : cin XOR a XOR b
	assign s = cin ^ a ^ b;

//assigning 'cout' 
	assign cout = (b & cin) | (a & cin) | (a & b); 
endmodule
