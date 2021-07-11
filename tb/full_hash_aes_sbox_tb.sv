
module full_hash_aes_sbox_tb;

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

  int            fd;
  string         char;
  string         target;
  string         computed_digest;
  int            length;
  reg [7:0][7:0] digest;

  initial begin
    @(reset_deassertion);

    @(posedge clk);
    fd = $fopen("../tb/test_files/message.txt", "r");  // open file containing the message

    $fscanf(fd, "%d\n", length);
    $display("Message length: %d", length);
    C_in = length;

    $write("Message to hash:         ");
    if (length > 0) begin                              // scan file char by char
      while ($fscanf(fd, "%c", char) == 1) begin

        M = int'(char);
        $write(char);

        #2 M_valid = int'(1);

        @(posedge clk);

      end
    end else begin                                     // if there are no bytes to scan

      #2 M_valid = int'(1);

      @(posedge clk);

    end

    $fclose(fd);

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

    $write("\n");
    $display("Computed digest:         %s", computed_digest);

    fd = $fopen("../tb/test_files/target.txt", "r");   // open file containing the target hash
    $fscanf(fd, "%s", target);
    $fclose(fd);

    if (target == computed_digest)
      $display("Success!");
    else
      $display("Target and computed hashes do not match.");
    $write("\n");

    $stop;

  end

endmodule