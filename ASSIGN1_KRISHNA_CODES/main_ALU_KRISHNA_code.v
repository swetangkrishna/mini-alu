//this module is the main module.
module ALU_KRISHNA(A,B,fxn,X);



//output is a 6-bit number as well.
	input wire[5:0] A,B;
	input wire[2:0] fxn;
	output reg[5:0] X;

    assign A = 6'b010010;
    assign B = 6'b010011;
    assign fxn = 3'b111;

// ‘NEG_A’ & ‘NEG_B’ stores the negative values of A & B respectively.
//’XOR_A_B’ stores the value of ‘~(A ^ B)’.
//agrb stores the value 0 or 1 depending upon whether ‘a<b’ or ‘a>b’.
//’add_a_b’ stores the value of ‘A+B’.

	wire[5:0] NEG_A,NEG_B, XNOR_A_B;
	wire agrb;
	wire[5:0] add_a_b;
//using module negative we get negative of number ‘A’ and storing it in ‘NEG_A’.
// using module negative we get negative of number ‘B’ and storing it in ‘NEG_B’.


	negative neg_A(.m(A), .nega(NEG_A));
	negative neg_B(.m(B), .nega(NEG_B));

//using ‘Gr6’ module to check whether ‘A<B’and storing the output in ‘agrb’.
	gr6 greater(.x(A),.y(B),.final_bit(agrb));

//using ‘XNOR’ module to find ‘~(a ^ b)’ and storing the value in ‘XNOR_A_B’.
//inputs ‘A’ and ‘B’ are 6-bit numbers.
	XNOR6 constraints_XNOR(.f(A), .g(B), .h(XNOR_A_B));

//using ‘adder_6_bit’ module to find ‘a+b’ and storing the output in ‘add_a_b’.
	six_bit_adder contraints_adder(.x(A),.y(B),.z(add_a_b));


//using demux to find what operation must be performed
always@ (*)
    begin
	   case(fxn)
//if fxn = 000 then output is ‘A’.
	   3'b000:{X}= {A};
// if fxn = 001 then output is ‘B’.
	   3'b001:{X}= {B};
// if fxn = 010 then output is ‘-A’.
	   3'b010:{X}= {NEG_A};
// if fxn = 011 then output is ‘-B’.
	   3'b011:{X}= {NEG_B};
// if fxn = 100 then output is ‘agrb’.
	   3'b100:{X}= {5'b00000,agrb};
// if fxn = 101 then output is ‘XNOR_A_B’.
	   3'b101:{X}= {XNOR_A_B};
// if fxn = 110 then output is ‘add_a_b’.
	   3'b110:{X}= {add_a_b};
// if fxn = 111 then output is ‘A-B’.
	   3'b111:{X}= {A-B};
// if no input is given the output will be 0.
	   default:X= 0;
	   endcase
end   
endmodule
