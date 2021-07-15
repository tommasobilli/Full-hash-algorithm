
module non_sequential_inputs_tb;

  reg clk = 1'b0;
  always #5 clk = !clk;

  reg rst_n = 1'b0;
  event reset_deassertion;

  initial begin
    #12.8 rst_n = 1'b1;
    -> reset_deassertion;
  end

  reg         M_valid;
  reg  [63:0] C_in;
  reg   [7:0] M;
  wire        hash_ready;
  wire [63:0] digest_out;

  full_hash_aes_top full_hash_aes_sbox (
     .clk              (clk)
    ,.rst_n            (rst_n)
    ,.M_valid          (M_valid)
    ,.C_in             (C_in)
    ,.M                (M)
    ,.hash_ready       (hash_ready)
    ,.digest_out       (digest_out)
  );

  string         message;
  string         char;
  string         computed_digest;
  int            j;
  int            clk_cycle_wait;
  reg [7:0][7:0] digest;

  initial begin
    @(reset_deassertion);

    @(posedge clk);
    C_in = 5;

    message = "Hello";
    $urandom(5);      // change the seed value to generate different wait sequences at each simulation

    foreach(message[i]) begin
      M = int'(message[i]);
      M_valid = int'(1);
      if (i != message.len - 1) begin
        clk_cycle_wait = $urandom_range(1, 5);
        $display("Waiting for %d clock cycles...", clk_cycle_wait);
        for (j = 0; j < clk_cycle_wait; j++) begin
          @(posedge clk);
          M_valid = int'(0);
        end
      end
    end

    while (!hash_ready) begin
      @(posedge clk);
    end

    digest = digest_out;
    M_valid = int'(0);

    foreach(digest[i]) begin
      char.hextoa(digest[i]);
      if (char.len() == 1)
        char = {"0", char};
      computed_digest = {computed_digest, char};
    end

    $display("Computed digest:      %s", computed_digest);

    $stop;

  end

endmodule
