module hash_main_round (
   input      [3:0]      s_value  //Sbox output
  ,input      [7:0][3:0] h        //hash values of previous round
  ,output reg [7:0][3:0] h_out    //hash values of current round
);

  reg [3:0] tmp; 

  always @(*) begin
    //h[0]
    tmp = h[1] ^ s_value;
    h_out[0] = tmp;
    //h[1]
    tmp = h[2] ^ s_value;
    h_out[1] = tmp;
    //h[2]
    tmp = h[3] ^ s_value;
    h_out[2] = (tmp << 1) | (tmp >> 3);
    //h[3]
    tmp = h[4] ^ s_value;
    h_out[3] = (tmp << 1) | (tmp >> 3);
    //h[4]
    tmp = h[5] ^ s_value;
    h_out[4] = (tmp << 2) | (tmp >> 2);
    //h[5]
    tmp = h[6] ^ s_value;
    h_out[5] = (tmp << 2) | (tmp >> 2);
    //h[6]
    tmp = h[7] ^ s_value;
    h_out[6] = (tmp << 3) | (tmp >> 1);
    //h[7]      
    tmp = h[0] ^ s_value;
    h_out[7] = (tmp << 3) | (tmp >> 1);
  end

endmodule

