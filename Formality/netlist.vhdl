
library IEEE;

use IEEE.std_logic_1164.all;

package 
   CONV_PACK_am_baud_rate_gen_baudrate115200_clock_freq_mhz200_over_sample4 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_am_baud_rate_gen_baudrate115200_clock_freq_mhz200_over_sample4;

library IEEE;

use IEEE.std_logic_1164.all;

use 
   work.CONV_PACK_am_baud_rate_gen_baudrate115200_clock_freq_mhz200_over_sample4.all;

entity am_baud_rate_gen_baudrate115200_clock_freq_mhz200_over_sample4 is

   port( clk, rst : in std_logic;  baud_x_en, baud_en : out std_logic);

end am_baud_rate_gen_baudrate115200_clock_freq_mhz200_over_sample4;

architecture SYN_baud_rtl of 
   am_baud_rate_gen_baudrate115200_clock_freq_mhz200_over_sample4 is

   component IV
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component ND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component ND3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AN2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AO3
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component MUX21L
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component AO6
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component EO
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EN
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NR4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component FD1
      port( D, CP : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, slow_counter_1_port
      , N32, n11, n12, n14_port, n15_port, n16_port, n17_port, n18_port, 
      n19_port, n20_port, n21_port, n22_port, n23_port, n24, n25, n26, n27, n28
      , n29, n30, n31, n32_port, n33, n34, n35, n36, n37, n38, n39, n40, n41, 
      n42, n43, n44, n45, n_1000, n_1001, n_1002, n_1003, n_1004, n_1005, 
      n_1006, n_1007, n_1008, n_1009, n_1010, n_1011 : std_logic;

begin
   
   fast_counter_reg_0_inst : FD1 port map( D => N14, CP => clk, Q => n_1000, QN
                           => n16_port);
   slow_cnt_en_reg : FD1 port map( D => N23, CP => clk, Q => baud_x_en, QN => 
                           n18_port);
   fast_counter_reg_2_inst : FD1 port map( D => N16, CP => clk, Q => n_1001, QN
                           => n45);
   fast_counter_reg_1_inst : FD1 port map( D => N15, CP => clk, Q => n_1002, QN
                           => n17_port);
   fast_counter_reg_3_inst : FD1 port map( D => N17, CP => clk, Q => n22_port, 
                           QN => n_1003);
   fast_counter_reg_4_inst : FD1 port map( D => N18, CP => clk, Q => n_1004, QN
                           => n14_port);
   fast_counter_reg_5_inst : FD1 port map( D => N19, CP => clk, Q => n_1005, QN
                           => n15_port);
   fast_counter_reg_6_inst : FD1 port map( D => N20, CP => clk, Q => n21_port, 
                           QN => n_1006);
   fast_counter_reg_7_inst : FD1 port map( D => N21, CP => clk, Q => n_1007, QN
                           => n11);
   fast_counter_reg_8_inst : FD1 port map( D => N22, CP => clk, Q => n_1008, QN
                           => n12);
   baud_en_reg : FD1 port map( D => N32, CP => clk, Q => baud_en, QN => n_1009)
                           ;
   slow_counter_reg_0_inst : FD1 port map( D => n20_port, CP => clk, Q => 
                           n_1010, QN => n44);
   slow_counter_reg_1_inst : FD1 port map( D => n19_port, CP => clk, Q => 
                           slow_counter_1_port, QN => n_1011);
   U26 : ND2 port map( A => n23_port, B => n24, Z => n20_port);
   U27 : ND2 port map( A => n25, B => n24, Z => n19_port);
   U28 : MUX21L port map( A => n26, B => slow_counter_1_port, S => n23_port, Z 
                           => n25);
   U29 : EN port map( A => n18_port, B => slow_counter_1_port, Z => n26);
   U30 : NR4 port map( A => slow_counter_1_port, B => rst, C => n18_port, D => 
                           n23_port, Z => N32);
   U31 : EN port map( A => n44, B => n18_port, Z => n23_port);
   U32 : NR2 port map( A => rst, B => n27, Z => N23);
   U33 : OR2 port map( A => n28, B => n29, Z => N22);
   U34 : AO6 port map( A => n30, B => n11, C => n12, Z => n29);
   U35 : ND2 port map( A => n27, B => n31, Z => N21);
   U36 : EO port map( A => n11, B => n30, Z => n31);
   U37 : NR2 port map( A => n32_port, B => n28, Z => N20);
   U38 : AO6 port map( A => n33, B => n21_port, C => n30, Z => n32_port);
   U39 : AO3 port map( A => n15_port, B => n34, C => n33, D => n27, Z => N19);
   U40 : AN2 port map( A => n35, B => n14_port, Z => n34);
   U41 : ND2 port map( A => n27, B => n36, Z => N18);
   U42 : EO port map( A => n14_port, B => n35, Z => n36);
   U43 : NR2 port map( A => n37, B => n28, Z => N17);
   U44 : AO6 port map( A => n38, B => n22_port, C => n35, Z => n37);
   U45 : MUX21L port map( A => n39, B => n40, S => n45, Z => N16);
   U46 : ND2 port map( A => N14, B => n17_port, Z => n40);
   U47 : ND2 port map( A => n27, B => n41, Z => n39);
   U48 : AO3 port map( A => n17_port, B => n16_port, C => n41, D => n27, Z => 
                           N15);
   U49 : AN2 port map( A => n27, B => n16_port, Z => N14);
   U50 : IV port map( A => n28, Z => n27);
   U51 : ND2 port map( A => n24, B => n42, Z => n28);
   U52 : ND3 port map( A => n11, B => n30, C => n12, Z => n42);
   U53 : NR2 port map( A => n21_port, B => n33, Z => n30);
   U54 : ND3 port map( A => n35, B => n14_port, C => n15_port, Z => n33);
   U55 : NR2 port map( A => n22_port, B => n38, Z => n35);
   U56 : ND2 port map( A => n45, B => n43, Z => n38);
   U57 : IV port map( A => n41, Z => n43);
   U58 : ND2 port map( A => n17_port, B => n16_port, Z => n41);
   U59 : IV port map( A => rst, Z => n24);

end SYN_baud_rtl;
