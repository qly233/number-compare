`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:29:16 11/04/2021
// Design Name:   compare
// Module Name:   D:/szdl/numbercompare/test.v
// Project Name:  numbercompare
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: compare
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [2:0] Y;

	// Instantiate the Unit Under Test (UUT)
	compare uut (
		.A(A), 
		.B(B), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		A = 4'b0001;
		B = 4'b0001;

		// Wait 100 ns for global reset to finish
		#100;
      A = 4'b0001;
		B = 4'b0010;

		// Wait 100 ns for global reset to finish
		#100;
		A = 4'b0100;
		B = 4'b0001;

		// Wait 100 ns for global reset to finish
		#100;
		A = 4'b1110;
		B = 4'b1101;

		// Wait 100 ns for global reset to finish
		// Add stimulus here

	end
      
endmodule

