`timescale 1ns / 1ps
`include "const_defination.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/12/22 12:43:52
// Design Name: 
// Module Name: Split
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

module Split(
    input wire[`MaxIntroduction] intd,
    //读寄存器的地址
    output reg[3:0] reg1_read_src,reg2_read_src,
    //解码出来的icode,ifun,valc 的值
    output reg[`icodeBus] icode,
    output reg[`ifunBus] ifun,
    output reg [`digitsBus] valc,
    //输出给add_pc module 用以增加pc
    output reg need_valc,
    output reg need_regids
    );
    
    reg [3:0] reg1;
    reg [3:0] reg2;
    
    always@(*)
    begin 
		icode=intd[`icodeRange];
		ifun=intd[`ifunRange];
		reg1=intd[`reg1Range];
		reg2=intd[`reg2Range];
		
		case({icode,4'h0})
			`halt:
				begin
					reg1_read_src=`NONE;
					reg2_read_src=`NONE;
					need_valc=0;
					need_regids=0;
					valc=0;
				end
			`nop:
				begin
					reg1_read_src=`NONE;
					reg2_read_src=`NONE;
					need_valc=0;
					need_regids=0;
					valc=0;
				end
			`rrmovq:
				begin
					reg1_read_src=reg1;
					reg2_read_src=reg2;
					need_valc=0;
					need_regids=1;
					valc=0;
				end
			`irmovq:
				begin
					reg1_read_src=`NONE;
					reg2_read_src=reg2;
					need_valc=1;
					need_regids=1;
					valc=intd[`valcRange];
					valc=intd[`valcRange];
				end
			`rmmovq:
				begin
					reg1_read_src=reg1;
					reg2_read_src=reg2;
					need_valc=1;
					need_regids=1;
					valc=intd[`valcRange];
				end
			`mrmovq:
				begin
					reg1_read_src=reg1;
					reg2_read_src=reg2;
					need_valc=1;
					need_regids=1;
					valc=intd[`valcRange];
				end
			`addq:
				begin
					reg1_read_src=reg1;
					reg2_read_src=reg2;
					need_valc=0;
					need_regids=1;  
					valc=0;
				end
			`jmp:
				begin
					reg1_read_src=`NONE;
					reg2_read_src=`NONE;
					need_valc=1;
					need_regids=0;    
					valc=intd[`noRegValcRange];
				end
			`call:
				begin
					reg1_read_src=`NONE;
					reg2_read_src=`NONE;
					need_valc=1;
					need_regids=0;
					valc=intd[`noRegValcRange];
				end
			`ret:
				begin
					reg1_read_src=`NONE;
					reg2_read_src=`NONE;
					need_valc=0;
					need_regids=0;
					valc=0;
				end
			`pushq:
				begin
					reg1_read_src=reg1;
					reg2_read_src=`rsp;
					need_valc=0;
					need_regids=1; 
					valc=0;
				end
			`popq:
				begin
					reg1_read_src=reg1;
					reg2_read_src=`rsp;
					need_valc=0;
					need_regids=1;  
					valc=0;
				end
			default:
				begin
					reg1_read_src=`NONE;
					reg2_read_src=`NONE;
					need_valc=0;
					need_regids=0;
					valc=0;
				end
		endcase
    end
    
endmodule
