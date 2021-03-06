// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:decode:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module contructure_decode_0_2 (
  d_rvalA,
  d_rvalB,
  icode,
  e_dstE,
  M_dstE,
  M_dstM,
  W_dstM,
  W_dstE,
  e_valE,
  m_valM,
  M_valE,
  W_valM,
  W_valE,
  srcA,
  srcB,
  valP,
  valA,
  valB
);

input wire [63 : 0] d_rvalA;
input wire [63 : 0] d_rvalB;
input wire [3 : 0] icode;
input wire [3 : 0] e_dstE;
input wire [3 : 0] M_dstE;
input wire [3 : 0] M_dstM;
input wire [3 : 0] W_dstM;
input wire [3 : 0] W_dstE;
input wire [63 : 0] e_valE;
input wire [63 : 0] m_valM;
input wire [63 : 0] M_valE;
input wire [63 : 0] W_valM;
input wire [63 : 0] W_valE;
input wire [3 : 0] srcA;
input wire [3 : 0] srcB;
input wire [63 : 0] valP;
output wire [63 : 0] valA;
output wire [63 : 0] valB;

  decode inst (
    .d_rvalA(d_rvalA),
    .d_rvalB(d_rvalB),
    .icode(icode),
    .e_dstE(e_dstE),
    .M_dstE(M_dstE),
    .M_dstM(M_dstM),
    .W_dstM(W_dstM),
    .W_dstE(W_dstE),
    .e_valE(e_valE),
    .m_valM(m_valM),
    .M_valE(M_valE),
    .W_valM(W_valM),
    .W_valE(W_valE),
    .srcA(srcA),
    .srcB(srcB),
    .valP(valP),
    .valA(valA),
    .valB(valB)
  );
endmodule
