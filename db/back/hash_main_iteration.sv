module hash_main_iteration (
   input  [7:0]      M
  ,input  [7:0][7:0] h
  ,output [7:0][7:0] h_out
);

  wire [7:0][7:0] h1_out;
  wire [7:0][7:0] h2_out;
  wire [7:0][7:0] h3_out;
  
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
    ,.h_out   (h_out)
  );
  
endmodule

