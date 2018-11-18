library verilog;
use verilog.vl_types.all;
entity projeto3sd is
    port(
        MISO            : out    vl_logic;
        SCK             : in     vl_logic;
        SS              : in     vl_logic;
        chave           : in     vl_logic;
        LED_ATIV        : out    vl_logic;
        clkFPGA         : in     vl_logic;
        en_wr           : out    vl_logic;
        selData         : out    vl_logic;
        umid_out        : out    vl_logic_vector(7 downto 0);
        MOSI            : in     vl_logic;
        temp_out        : out    vl_logic_vector(7 downto 0);
        PWM1            : out    vl_logic;
        PWM2            : out    vl_logic;
        chave_out       : out    vl_logic
    );
end projeto3sd;
