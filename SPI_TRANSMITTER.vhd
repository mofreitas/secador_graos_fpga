library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity SPI_TRANSMITTER is
  port ( SCK    	: in STD_LOGIC;											-- reset
			MOSI	 	: in STD_LOGIC;
         MISO   	: out STD_LOGIC;	
			SS		 	: in STD_LOGIC;								-- clock
			recebido : out STD_LOGIC;
         receber  : out STD_LOGIC_VECTOR (7 downto 0);				-- Saída contador de 4 bits
         enviar   : in STD_LOGIC_VECTOR (7 downto 0)					-- 3 bits para selecionar a operação (5 operações)
       );
end SPI_TRANSMITTER;

architecture SPI_TRANSMITTER of SPI_TRANSMITTER is
signal valor_recebido : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal valor_enviado : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal pulse_cnt : STD_LOGIC_VECTOR(3 downto 0);
signal receb : STD_LOGIC;
signal p_f : STD_LOGIC;
begin
	process (SCK, SS, pulse_cnt)
	--variable constante : STD_LOGIC_VECTOR(3 downto 0) := "0111";
	begin
		if(SS = '1') then
			valor_recebido <= "00000000";
			pulse_cnt <= "0000";		
			receb <= '1';
		elsif (rising_edge(SCK) and p_f = '1') then
			valor_recebido <= std_logic_vector(shift_left(unsigned(valor_recebido), 1));
			valor_recebido(0) <= MOSI;
			
			pulse_cnt <= std_logic_vector(unsigned(pulse_cnt) + "0001");
			if(pulse_cnt(2 downto 0) = "0111") then
				receb <= '1';
			else
				receb <= '0';
			end if;
		end if;
	end process;

	process(SCK, SS)
	begin
		if(SS = '1') then
			valor_enviado <= "00000000";
		elsif (falling_edge(SCK)) then
			p_f <= '1';
			MISO <= valor_enviado(7);
			valor_enviado <= std_logic_vector(shift_left(unsigned(valor_enviado), 1));
		end if;
	end process;
	
	receber <= valor_recebido;
	recebido <= receb;
end SPI_TRANSMITTER;
