
module hash_main_iteration (
   input  [7:0]      M
  ,input  [7:0][7:0] h
  ,output [7:0][7:0] h_out
);

  wire [7:0][7:0] h1_out;
  wire [7:0][7:0] h2_out;
  wire [7:0][7:0] h3_out;
  wire [7:0][7:0] h4_out;
  wire [7:0][7:0] h5_out;
  wire [7:0][7:0] h6_out;
  wire [7:0][7:0] h7_out;
  wire [7:0][7:0] h8_out;
  wire [7:0][7:0] h9_out;
  wire [7:0][7:0] h10_out;
  wire [7:0][7:0] h11_out;
  wire [7:0][7:0] h12_out;
  wire [7:0][7:0] h13_out;
  wire [7:0][7:0] h14_out;
  wire [7:0][7:0] h15_out;
  wire [7:0][7:0] h16_out;
  wire [7:0][7:0] h17_out;
  wire [7:0][7:0] h18_out;
  wire [7:0][7:0] h19_out;
  wire [7:0][7:0] h20_out;
  wire [7:0][7:0] h21_out;
  wire [7:0][7:0] h22_out;
  wire [7:0][7:0] h23_out;
  wire [7:0][7:0] h24_out;
  wire [7:0][7:0] h25_out;
  wire [7:0][7:0] h26_out;
  wire [7:0][7:0] h27_out;
  wire [7:0][7:0] h28_out;
  wire [7:0][7:0] h29_out;
  wire [7:0][7:0] h30_out;
  wire [7:0][7:0] h31_out;
  wire [7:0][7:0] h32_out;
  wire [7:0][7:0] h33_out;
  wire [7:0][7:0] h34_out;
  wire [7:0][7:0] h35_out;
  wire [7:0][7:0] h36_out;
  wire [7:0][7:0] h37_out;
  wire [7:0][7:0] h38_out;
  wire [7:0][7:0] h39_out;
  wire [7:0][7:0] h40_out;
  wire [7:0][7:0] h41_out;
  wire [7:0][7:0] h42_out;
  wire [7:0][7:0] h43_out;
  wire [7:0][7:0] h44_out;
  wire [7:0][7:0] h45_out;
  wire [7:0][7:0] h46_out;
  wire [7:0][7:0] h47_out;
  wire [7:0][7:0] h48_out;
  wire [7:0][7:0] h49_out;
  wire [7:0][7:0] h50_out;
  wire [7:0][7:0] h51_out;
  wire [7:0][7:0] h52_out;
  wire [7:0][7:0] h53_out;
  wire [7:0][7:0] h54_out;
  wire [7:0][7:0] h55_out;
  wire [7:0][7:0] h56_out;
  wire [7:0][7:0] h57_out;
  wire [7:0][7:0] h58_out;
  wire [7:0][7:0] h59_out;
  wire [7:0][7:0] h60_out;
  wire [7:0][7:0] h61_out;
  wire [7:0][7:0] h62_out;
  wire [7:0][7:0] h63_out;
  
  hash_main_round R1 (
     .M       (M)
    ,.h       (h)
    ,.h_out   (h1_out)
  );
  
  hash_main_round R2 (
     .M       (M)
    ,.h       (h1_out)
    ,.h_out   (h2_out)
  );
  
  hash_main_round R3 (
     .M       (M)
    ,.h       (h2_out)
    ,.h_out   (h3_out)
  );

  hash_main_round R4 (
     .M       (M)
    ,.h       (h3_out)
    ,.h_out   (h4_out)
  );

  hash_main_round R5 (
     .M       (M)
    ,.h       (h4_out)
    ,.h_out   (h5_out)
  );

  hash_main_round R6 (
     .M       (M)
    ,.h       (h5_out)
    ,.h_out   (h6_out)
  );

  hash_main_round R7 (
     .M       (M)
    ,.h       (h6_out)
    ,.h_out   (h7_out)
  );

  hash_main_round R8 (
     .M       (M)
    ,.h       (h7_out)
    ,.h_out   (h8_out)
  );

  hash_main_round R9 (
     .M       (M)
    ,.h       (h8_out)
    ,.h_out   (h9_out)
  );

  hash_main_round R10 (
     .M       (M)
    ,.h       (h9_out)
    ,.h_out   (h10_out)
  );

  hash_main_round R11 (
     .M       (M)
    ,.h       (h10_out)
    ,.h_out   (h11_out)
  );

  hash_main_round R12 (
     .M       (M)
    ,.h       (h11_out)
    ,.h_out   (h12_out)
  );

  hash_main_round R13 (
     .M       (M)
    ,.h       (h12_out)
    ,.h_out   (h13_out)
  );

  hash_main_round R14 (
     .M       (M)
    ,.h       (h13_out)
    ,.h_out   (h14_out)
  );

  hash_main_round R15 (
     .M       (M)
    ,.h       (h14_out)
    ,.h_out   (h15_out)
  );

  hash_main_round R16 (
     .M       (M)
    ,.h       (h15_out)
    ,.h_out   (h16_out)
  );

  hash_main_round R17 (
     .M       (M)
    ,.h       (h16_out)
    ,.h_out   (h17_out)
  );

  hash_main_round R18 (
     .M       (M)
    ,.h       (h17_out)
    ,.h_out   (h18_out)
  );

  hash_main_round R19 (
     .M       (M)
    ,.h       (h18_out)
    ,.h_out   (h19_out)
  );

  hash_main_round R20 (
     .M       (M)
    ,.h       (h19_out)
    ,.h_out   (h20_out)
  );

  hash_main_round R21 (
     .M       (M)
    ,.h       (h20_out)
    ,.h_out   (h21_out)
  );

  hash_main_round R22 (
     .M       (M)
    ,.h       (h21_out)
    ,.h_out   (h22_out)
  );

  hash_main_round R23 (
     .M       (M)
    ,.h       (h22_out)
    ,.h_out   (h23_out)
  );

  hash_main_round R24 (
     .M       (M)
    ,.h       (h23_out)
    ,.h_out   (h24_out)
  );

  hash_main_round R25 (
     .M       (M)
    ,.h       (h24_out)
    ,.h_out   (h25_out)
  );

  hash_main_round R26 (
     .M       (M)
    ,.h       (h25_out)
    ,.h_out   (h26_out)
  );

  hash_main_round R27 (
     .M       (M)
    ,.h       (h26_out)
    ,.h_out   (h27_out)
  );

  hash_main_round R28 (
     .M       (M)
    ,.h       (h27_out)
    ,.h_out   (h28_out)
  );

  hash_main_round R29 (
     .M       (M)
    ,.h       (h28_out)
    ,.h_out   (h29_out)
  );

  hash_main_round R30 (
     .M       (M)
    ,.h       (h29_out)
    ,.h_out   (h30_out)
  );

  hash_main_round R31 (
     .M       (M)
    ,.h       (h30_out)
    ,.h_out   (h31_out)
  );

  hash_main_round R32 (
     .M       (M)
    ,.h       (h31_out)
    ,.h_out   (h32_out)
  );

  hash_main_round R33 (
     .M       (M)
    ,.h       (h32_out)
    ,.h_out   (h33_out)
  );

  hash_main_round R34 (
     .M       (M)
    ,.h       (h33_out)
    ,.h_out   (h34_out)
  );

  hash_main_round R35 (
     .M       (M)
    ,.h       (h34_out)
    ,.h_out   (h35_out)
  );

  hash_main_round R36 (
     .M       (M)
    ,.h       (h35_out)
    ,.h_out   (h36_out)
  );

  hash_main_round R37 (
     .M       (M)
    ,.h       (h36_out)
    ,.h_out   (h37_out)
  );

  hash_main_round R38 (
     .M       (M)
    ,.h       (h37_out)
    ,.h_out   (h38_out)
  );

  hash_main_round R39 (
     .M       (M)
    ,.h       (h38_out)
    ,.h_out   (h39_out)
  );

  hash_main_round R40 (
     .M       (M)
    ,.h       (h39_out)
    ,.h_out   (h40_out)
  );

  hash_main_round R41 (
     .M       (M)
    ,.h       (h40_out)
    ,.h_out   (h41_out)
  );

  hash_main_round R42 (
     .M       (M)
    ,.h       (h41_out)
    ,.h_out   (h42_out)
  );

  hash_main_round R43 (
     .M       (M)
    ,.h       (h42_out)
    ,.h_out   (h43_out)
  );

  hash_main_round R44 (
     .M       (M)
    ,.h       (h43_out)
    ,.h_out   (h44_out)
  );

  hash_main_round R45 (
     .M       (M)
    ,.h       (h44_out)
    ,.h_out   (h45_out)
  );

  hash_main_round R46 (
     .M       (M)
    ,.h       (h45_out)
    ,.h_out   (h46_out)
  );

  hash_main_round R47 (
     .M       (M)
    ,.h       (h46_out)
    ,.h_out   (h47_out)
  );

  hash_main_round R48 (
     .M       (M)
    ,.h       (h47_out)
    ,.h_out   (h48_out)
  );

  hash_main_round R49 (
     .M       (M)
    ,.h       (h48_out)
    ,.h_out   (h49_out)
  );

  hash_main_round R50 (
     .M       (M)
    ,.h       (h49_out)
    ,.h_out   (h50_out)
  );

  hash_main_round R51 (
     .M       (M)
    ,.h       (h50_out)
    ,.h_out   (h51_out)
  );

  hash_main_round R52 (
     .M       (M)
    ,.h       (h51_out)
    ,.h_out   (h52_out)
  );

  hash_main_round R53 (
     .M       (M)
    ,.h       (h52_out)
    ,.h_out   (h53_out)
  );

  hash_main_round R54 (
     .M       (M)
    ,.h       (h53_out)
    ,.h_out   (h54_out)
  );

  hash_main_round R55 (
     .M       (M)
    ,.h       (h54_out)
    ,.h_out   (h55_out)
  );

  hash_main_round R56 (
     .M       (M)
    ,.h       (h55_out)
    ,.h_out   (h56_out)
  );

  hash_main_round R57 (
     .M       (M)
    ,.h       (h56_out)
    ,.h_out   (h57_out)
  );

  hash_main_round R58 (
     .M       (M)
    ,.h       (h57_out)
    ,.h_out   (h58_out)
  );

  hash_main_round R59 (
     .M       (M)
    ,.h       (h58_out)
    ,.h_out   (h59_out)
  );

  hash_main_round R60 (
     .M       (M)
    ,.h       (h59_out)
    ,.h_out   (h60_out)
  );

  hash_main_round R61 (
     .M       (M)
    ,.h       (h60_out)
    ,.h_out   (h61_out)
  );

  hash_main_round R62 (
     .M       (M)
    ,.h       (h61_out)
    ,.h_out   (h62_out)
  );

  hash_main_round R63 (
     .M       (M)
    ,.h       (h62_out)
    ,.h_out   (h63_out)
  );

  hash_main_round R64 (
     .M       (M)
    ,.h       (h63_out)
    ,.h_out   (h_out)
  );
  
endmodule
