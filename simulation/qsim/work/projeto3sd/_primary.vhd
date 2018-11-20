library verilog;
use verilog.vl_types.all;
entity projeto3sd is
    port(
        MISO            : out    vl_logic;
        SCK             : in     vl_logic;
        SS              : in     vl_logic;
        chave           : in     vl_logic;
        temp_out        : out    vl_logic_vector(7 downto 0);
        clkFPGA         : in     vl_logic;
        selData         : out    vl_logic;
        en_wr           : out    vl_logic;
        MOSI            : in     vl_logic;
        LED_ATIV        : out    vl_logic;
        PWM1            : out    vl_logic;
        enviar          : out    vl_logic_vector(12 downto 0);
        fim             : out    vl_logic;
        resultado       : out    vl_logic_vector(12 downto 0);
        saida           : out    vl_logic_vector(11 downto 0);
        ROM_Address     : out    vl_logic_vector(6 downto 0);
        lum_out         : out    vl_logic_vector(7 downto 0);
        PWM2            : out    vl_logic;
        chave_out       : out    vl_logic
    );
end projeto3sd;
