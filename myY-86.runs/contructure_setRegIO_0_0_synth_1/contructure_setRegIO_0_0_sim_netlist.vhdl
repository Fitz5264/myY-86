-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
-- Date        : Sat Dec 23 20:00:56 2017
-- Host        : CodeFlash running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ contructure_setRegIO_0_0_sim_netlist.vhdl
-- Design      : contructure_setRegIO_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a15tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    icode : in STD_LOGIC_VECTOR ( 3 downto 0 );
    srcA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    srcB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    d_srcA : out STD_LOGIC_VECTOR ( 3 downto 0 );
    d_srcB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    d_dstE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    d_dstM : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "contructure_setRegIO_0_0,setRegIO,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "setRegIO,Vivado 2017.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const1>\ : STD_LOGIC;
begin
  d_dstE(3) <= \<const1>\;
  d_dstE(2) <= \<const1>\;
  d_dstE(1) <= \<const1>\;
  d_dstE(0) <= \<const1>\;
  d_dstM(3) <= \<const1>\;
  d_dstM(2) <= \<const1>\;
  d_dstM(1) <= \<const1>\;
  d_dstM(0) <= \<const1>\;
  d_srcA(3) <= \<const1>\;
  d_srcA(2) <= \<const1>\;
  d_srcA(1) <= \<const1>\;
  d_srcA(0) <= \<const1>\;
  d_srcB(3) <= \<const1>\;
  d_srcB(2) <= \<const1>\;
  d_srcB(1) <= \<const1>\;
  d_srcB(0) <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
