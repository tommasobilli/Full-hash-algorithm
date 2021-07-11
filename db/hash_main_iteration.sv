module hash_main_iteration (
   input  [7:0]      M
  ,input  [7:0][7:0] h
  ,output [7:0][7:0] h_out
);
  
  hash_main_round R1 (
     .M       (M)
    ,.h       (h)
    ,.h_out   (h_out)
  );
  
endmodule

