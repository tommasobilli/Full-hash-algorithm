create_clock -name clk -period 200 [get_ports clk]
set_false_path -from [get_ports rst_n] -to [get_clocks clk]
set_input_delay -min 20 -clock [get_clocks clk] [get_ports {rst_n M_valid C_in[*] M[*]}]
set_input_delay -max 40 -clock [get_clocks clk] [get_ports {rst_n M_valid C_in[*] M[*]}]
set_output_delay -min 20 -clock [get_clocks clk] [get_ports {hash_ready digest_out[*]}]
set_output_delay -max 40 -clock [get_clocks clk] [get_ports {hash_ready digest_out[*]}]
