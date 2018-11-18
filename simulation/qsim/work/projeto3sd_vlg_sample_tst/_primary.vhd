library verilog;
use verilog.vl_types.all;
entity projeto3sd_vlg_sample_tst is
    port(
        chave           : in     vl_logic;
        clkFPGA         : in     vl_logic;
        MOSI            : in     vl_logic;
        SCK             : in     vl_logic;
        SS              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end projeto3sd_vlg_sample_tst;
