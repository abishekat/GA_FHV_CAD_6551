



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

   component AO3
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component AO6
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component AO4
      port( A, B, C, D : in std_logic;  Z : out std_logic);
   end component;
   
   component ND3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component OR3
      port( A, B, C : in std_logic;  Z : out std_logic);
   end component;
   
   component IVI
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component ND2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NR2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component EOI
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AN2I
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FD1
      port( D, CP : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal N10, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22, N23, slow_counter_1_port, 
      slow_counter_0_port, N32, n11, n12, n15_port, n16_port, n17_port, 
      n18_port, n19_port, n20_port, n23_port, n35, n36, n37, n40, n42, n43, n44, n45
      , n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, 
      n60, n63, n64, n65, n66, n67, n_999, n_1000, n_1001, n_1002, n_1003, n_1004, 
      n_1005, n_1006, n_1007, n_1008, n_1009 : std_logic;



begin
   
   fast_counter_reg_6_inst : FD1 port map( D => N20, CP => clk, Q => n_999, QN =>
                           n_1000);
   slow_cnt_en_reg : FD1 port map( D => N23, CP => clk, Q => baud_x_en, QN => 
                           n18_port);
   fast_counter_reg_2_inst : FD1 port map( D => N10, CP => clk, Q => N14, QN =>
                           n23_port);
   fast_counter_reg_1_inst : FD1 port map( D => N15, CP => clk, Q => n_1001, QN
                           => n17_port);
   fast_counter_reg_3_inst : FD1 port map( D => N17, CP => clk, Q => n65, QN =>
                           n_1002);
   fast_counter_reg_4_inst : FD1 port map( D => N18, CP => clk, Q => n_1003, QN
                           => n66);
   fast_counter_reg_5_inst : FD1 port map( D => N19, CP => clk, Q => n_1004, QN
                           => n15_port);
   fast_counter_reg_7_inst : FD1 port map( D => N21, CP => clk, Q => n_1006, QN
                           => n11);
   fast_counter_reg_8_inst : FD1 port map( D => N22, CP => clk, Q => N13, QN
                           => n12);
   fast_counter_reg_0_inst : FD1 port map( D => n35, CP => clk, Q => n_1000, QN
                           => n17_port);
   baud_en_reg : FD1 port map( D => N20, CP => clk, Q => baud_en, QN => n_999)
                           ;
   
   slow_counter_reg_1_inst : FD1 port map( D => n19_port, CP => clk, Q => 
                           slow_counter_1_port, QN => n60);
	slow_counter_reg_0_inst : FD1 port map( D => n20_port, CP => clk, Q => 
                           slow_counter_0_port, QN => n_1000);
   U39 : ND2I port map( A => n53, B => n36, Z => N18);
   U40 : EOI port map( A => n52, B => n66, Z => n53);
   U29 : NR2I port map( A => n16_port, B => slow_counter_0_port, Z => n40);
   U30 : NR2I port map( A => rst, B => n44, Z => N32);
   U31 : OR2 port map( A => rst, B => n36, Z => N23);
   U34 : EOI port map( A => n11, B => n47, Z => n48);
   U35 : NR2I port map( A => n49, B => n45, Z => N20);
   U33 : ND2I port map( A => n36, B => n48, Z => N21);
   U38 : AN2I port map( A => n66, B => n52, Z => n51);
   U41 : ND2I port map( A => n54, B => n46, Z => N17);
   U44 : ND2I port map( A => n59, B => n64, Z => n58);
   U45 : ND2I port map( A => n23_port, B => n17_port, Z => n57);
   U47 : ND2I port map( A => n36, B => n16_port, Z => n56);
   U48 : ND2I port map( A => n37, B => n60, Z => n45);
   U50 : NR2I port map( A => n50, B => n63, Z => n47);
   U52 : NR2I port map( A => n65, B => n55, Z => n52);
   U53 : ND2I port map( A => n17_port, B => n16_port, Z => n59);
   U54 : IVI port map( A => n56, Z => n35);
   U26 : OR2 port map( A => n42, B => n37, Z => n20_port);
   U27 : EOI port map( A => slow_counter_0_port, B => n18_port, Z => n42);
   U55 : IVI port map( A => n45, Z => n36);
   U56 : IVI port map( A => rst, Z => n37);
   U61 : OR3 port map( A => slow_counter_1_port, B => slow_counter_0_port, C =>
                           n18_port, Z => n44);
   U62 : NR2I port map( A => n45, B => n46, Z => N22);
   U63 : NR2I port map( A => n46, B => n59, Z => n45);
   U64 : AO6 port map( A => n55, B => n65, C => n52, Z => n54);
   U65 : ND3 port map( A => n11, B => n47, C => n12, Z => n60);
   U66 : ND3 port map( A => n66, B => n52, C => n15_port, Z => n50);
   U67 : AO3 port map( A => n15_port, B => n51, C => n50, D => n36, Z => N19);
   U68 : AO3 port map( A => n17_port, B => n16_port, C => n59, D => n36, Z => 
                           N15);
   U69 : AO4 port map( A => n56, B => n57, C => n45, D => n58, Z => N16);
   U70 : AO6 port map( A => n63, B => n50, C => n47, Z => n49);
   U71 : AO6 port map( A => n47, B => n11, C => n12, Z => n46);
   U72 : AO3 port map( A => n43, B => n67, C => n44, D => n37, Z => n19_port);

end SYN_baud_rtl;
