`timescale 1ns / 1ps
`include "const_defination.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/12/21 19:56:48
// Design Name: 
// Module Name: introduction_memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module introduction_memory(
    input wire[`digitsBus] pc,
    output reg[`MaxIntroduction] intd,
	output reg imem_error
    );
    
    reg[7:0] intds[`introduction_memory_size];   //一行一个字节，有800个字节
    initial $readmemh ( "E:/vivado project/myY-86/test.txt",intds );  
    
    always@(*)
    begin
        if(pc<`introduction_memory_length)
        begin
            intd={intds[pc][7:0],intds[pc+1][7:0],intds[pc+2][7:0],intds[pc+3][7:0],intds[pc+4][7:0],intds[pc+5][7:0],intds[pc+6][7:0],intds[pc+7][7:0],intds[pc+8][7:0],intds[pc+9][7:0]};
			imem_error=0;
		end
        else if(pc>`introduction_memory_length)
		begin
			imem_error=1;
		end
		else
        begin
            intd=80'h10000000000000000000;   //这个数值是为了使初始时的指令为nop
			imem_error=0;
        end
    end
    
endmodule
