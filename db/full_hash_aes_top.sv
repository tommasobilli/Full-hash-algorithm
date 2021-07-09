  
module full_hash_aes_top (
   input             clk
  ,input             rst_n
  ,input             M_valid
  ,input      [63:0] C_in
  ,input       [7:0] M
  ,output reg        hash_ready
  ,output reg [63:0] digest_out
);

  //digest init values
  localparam h0_value = 8'h20;
  localparam h1_value = 8'hA3;
  localparam h2_value = 8'h9F;
  localparam h3_value = 8'h3E;
  localparam h4_value = 8'hCC;
  localparam h5_value = 8'h74;
  localparam h6_value = 8'hCB;
  localparam h7_value = 8'hF0;
  
  reg       [63:0] counter;     // remaining bytes to process
  reg       [63:0] C;           // store input message length
  reg              state;       // determines if the circuit waits for a new message or a new byte of the current one
  reg  [7:0]       M_r;         // store message byte to process
  wire [7:0] [7:0] H_main_w_o;  // feedback wires
  reg  [7:0] [7:0] H_main;      // contain hash chunks bits
  reg       [63:0] digest;      // contain result of hashRound_final instance
  reg              M_valid_r;   // store M_valid to know if the mainHashIteration result on M_r has to be considered valid 
  
  //control signals
  assign compute_state  = (counter > 64'd0) && (state == 1'b1);      // there are still bytes to process
  assign init_state     = (state == 1'b0  ) && M_valid;
  assign final_state    = (state == 1'b1  ) && (counter == 64'd0);   // no more bytes to process in the current message
  
  hash_main_iteration U0 (
     .M     (M_r)
    ,.h     (H_main)
    ,.h_out (H_main_w_o)
  );
  
  hash_final_round U1 (
    .C        (C)
    ,.h       (H_main)
    ,.digest  (digest)
  );
  
  //state machine 
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin //set idle state
      hash_ready <= 0;
      state <= 0;
    end else if(init_state) begin //initializing digest computation
      counter <= C_in;
      C <= C_in;
      state <= 1'b1;
      hash_ready <= 0;
      M_r <= M;
      M_valid_r <= M_valid;
      H_main[0] <= h0_value;
      H_main[1] <= h1_value;
      H_main[2] <= h2_value;
      H_main[3] <= h3_value;
      H_main[4] <= h4_value;
      H_main[5] <= h5_value;
      H_main[6] <= h6_value;
      H_main[7] <= h7_value;
    end else if(compute_state) begin 
      if(M_valid_r == 1)begin //if sampled message byte is valid then hash function chunks are updated
        counter <= counter - 64'd1; 
        H_main  <= H_main_w_o;
      end
      M_r       <= M; //keep sampling
      M_valid_r <= M_valid;
    end else if(final_state) begin //sampling hashRound_f result and set the output as ready
      hash_ready  <= 1'b1; 
      state       <= 1'b0;
      digest_out  <= digest;
    end
  end
  
endmodule
