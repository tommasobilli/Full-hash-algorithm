module hash_main_round (
   input      [7:0]      M        //input message byte
  ,input      [7:0][7:0] h        //hash values of previous round
  ,output reg [7:0][7:0] h_out    //hash values of current round
);

  reg [7:0][7:0] s_value;
  reg [7:0][7:0] idx;
  reg [3:0]      tmp;

  aes_sbox sbox1 (
     .in (idx[0])
    ,.out(s_value[0])
  );
  
  aes_sbox sbox2 (
     .in (idx[1])
    ,.out(s_value[1])
  );
  
  aes_sbox sbox3 (
     .in (idx[2])
    ,.out(s_value[2])
  );
  
  aes_sbox sbox4 (
     .in (idx[3])
    ,.out(s_value[3])
  );
  
  aes_sbox sbox5 (
     .in (idx[4])
    ,.out(s_value[4])
  );
  
  aes_sbox sbox6 (
     .in (idx[5])
    ,.out(s_value[5])
  );
  
  aes_sbox sbox7 (
     .in (idx[6])
    ,.out(s_value[6])
  );
  
  aes_sbox sbox8 (
     .in (idx[7])
    ,.out(s_value[7])
  );

  always @(*) begin
    // H[0]
    tmp = (h[1] ^ M)
    idx[0] = tmp;
    h_out[0] = s_value[0];
    // H[1]
    tmp = (h[2] ^ M)
    idx[1] = (tmp << 1) | (tmp >> 7);
    h_out[1] = s_value[1];
    // H[2]
    tmp = (h[3] ^ M)
    idx[2] = (tmp << 2) | (tmp >> 6);
    h_out[2] = s_value[2];
    // H[3]
    tmp = (h[4] ^ M)
    idx[3] = (tmp << 3) | (tmp >> 5);
    h_out[3] = s_value[4];
    // H[4]
    tmp = (h[5] ^ M)
    idx[4] = (tmp << 4) | (tmp >> 4);
    h_out[4] = s_value[4];
    // H[5]
    tmp = (h[6] ^ M)
    idx[5] = (tmp << 5) | (tmp >> 3);
    h_out[5] = s_value[5];
    // H[6]
    tmp = (h[7] ^ M)
    idx[6] = (tmp << 6) | (tmp >> 2);
    h_out[6] = s_value[6];
    // H[7] 
    tmp = (h[0] ^ M)
    idx[7] = (tmp << 7) | (tmp >> 1);
    h_out[7] = s_value[7];
  end

endmodule

