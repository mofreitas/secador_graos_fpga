library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity contador is
  port ( clk    : in STD_LOGIC;											-- reset
			clr	 : in STD_LOGIC;
         cnt_en : in STD_LOGIC;											-- clock
         q      : out STD_LOGIC_VECTOR (3 downto 0);				-- Saída contador de 4 bits
         cout   : out STD_LOGIC					-- 3 bits para selecionar a operação (5 operações)
       );
end contador;

architecture contador of contador is
signal saida : STD_LOGIC_VECTOR(3 downto 0) := "0111";
begin
	process (clk, cnt_en, clr)
	variable constante : STD_LOGIC_VECTOR(3 downto 0) := "0111";
	begin
		if(clr = '1') then
			saida <= constante;
		elsif (rising_edge(clk) and cnt_en = '1') then
			if(saida <= constante) then
				saida <= STD_LOGIC_VECTOR(unsigned(saida) + "0001");
			end if;
			
			if(saida = constante) then
				saida <= "0000"; 
			end if;
		end if;
	end process;	
	
	--Condição quando saida = 8
	cout <= not saida(3) and saida(2) and saida(1) and saida(0);
	q <= saida;
end contador;
