`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:23:46 11/03/2021 
// Design Name: 
// Module Name:    compare 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module compare(A,B,Y);
	input[3:0] A,B;
	wire[3:0] A,B;
	output[2:0] Y;
	reg[2:0] Y;
	always @ ( A or B )
     begin 
         if ( A > B ) 
             Y = 3'b001;
         else if ( A == B)
             Y = 3'b010;
         else 
             Y = 3'b100;
       end


endmodule
