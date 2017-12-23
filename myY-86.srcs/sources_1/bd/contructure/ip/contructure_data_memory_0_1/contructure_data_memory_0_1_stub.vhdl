-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
-- Date        : Sat Dec 23 19:57:21 2017
-- Host        : CodeFlash running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {e:/vivado
--               project/myY-86/myY-86.srcs/sources_1/bd/contructure/ip/contructure_data_memory_0_1/contructure_data_memory_0_1_stub.vhdl}
-- Design      : contructure_data_memory_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a15tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity contructure_data_memory_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    enabler : in STD_LOGIC;
    enablew : in STD_LOGIC;
    dstM : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    valM : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end contructure_data_memory_0_1;

architecture stub of contructure_data_memory_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,enabler,enablew,dstM[63:0],data[63:0],valM[63:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "data_memory,Vivado 2017.1";
begin
end;
