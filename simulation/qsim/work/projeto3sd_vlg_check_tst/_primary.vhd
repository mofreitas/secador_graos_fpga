library verilog;
use verilog.vl_types.all;
entity projeto3sd_vlg_check_tst is
    port(
        chave_out       : in     vl_logic;
        en_wr           : in     vl_logic;
        LED_ATIV        : in     vl_logic;
        MISO            : in     vl_logic;
        PWM1            : in     vl_logic;
        PWM2            : in     vl_logic;
        selData         : in     vl_logic;
        temp_out        : in     vl_logic_vector(7 downto 0);
        umid_out        : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end projeto3sd_vlg_check_tst;
