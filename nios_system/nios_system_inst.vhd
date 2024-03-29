	component nios_system is
		port (
			audio_ADCDAT            : in    std_logic                     := 'X';             -- ADCDAT
			audio_ADCLRCK           : in    std_logic                     := 'X';             -- ADCLRCK
			audio_BCLK              : in    std_logic                     := 'X';             -- BCLK
			audio_DACDAT            : out   std_logic;                                        -- DACDAT
			audio_DACLRCK           : in    std_logic                     := 'X';             -- DACLRCK
			audio_and_video_SDAT    : inout std_logic                     := 'X';             -- SDAT
			audio_and_video_SCLK    : out   std_logic;                                        -- SCLK
			clk_clk                 : in    std_logic                     := 'X';             -- clk
			flash_conduit_end_ADDR  : out   std_logic_vector(21 downto 0);                    -- ADDR
			flash_conduit_end_CE_N  : out   std_logic;                                        -- CE_N
			flash_conduit_end_OE_N  : out   std_logic;                                        -- OE_N
			flash_conduit_end_WE_N  : out   std_logic;                                        -- WE_N
			flash_conduit_end_RST_N : out   std_logic;                                        -- RST_N
			flash_conduit_end_DQ    : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- DQ
			hex0_1_export           : out   std_logic_vector(7 downto 0);                     -- export
			hex2_3_export           : out   std_logic_vector(7 downto 0);                     -- export
			hex4_5_export           : out   std_logic_vector(7 downto 0);                     -- export
			io_acknowledge          : in    std_logic                     := 'X';             -- acknowledge
			io_irq                  : in    std_logic                     := 'X';             -- irq
			io_address              : out   std_logic_vector(15 downto 0);                    -- address
			io_bus_enable           : out   std_logic;                                        -- bus_enable
			io_byte_enable          : out   std_logic_vector(1 downto 0);                     -- byte_enable
			io_rw                   : out   std_logic;                                        -- rw
			io_write_data           : out   std_logic_vector(15 downto 0);                    -- write_data
			io_read_data            : in    std_logic_vector(15 downto 0) := (others => 'X'); -- read_data
			lcd_data_DATA           : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- DATA
			lcd_data_ON             : out   std_logic;                                        -- ON
			lcd_data_BLON           : out   std_logic;                                        -- BLON
			lcd_data_EN             : out   std_logic;                                        -- EN
			lcd_data_RS             : out   std_logic;                                        -- RS
			lcd_data_RW             : out   std_logic;                                        -- RW
			leds_export             : out   std_logic_vector(9 downto 0);                     -- export
			push_buttons_export     : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- export
			pwm_cw1_export          : out   std_logic_vector(15 downto 0);                    -- export
			pwm_cw2_export          : out   std_logic_vector(15 downto 0);                    -- export
			reset_reset_n           : in    std_logic                     := 'X';             -- reset_n
			sdram_addr              : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_ba                : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_cas_n             : out   std_logic;                                        -- cas_n
			sdram_cke               : out   std_logic;                                        -- cke
			sdram_cs_n              : out   std_logic;                                        -- cs_n
			sdram_dq                : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_dqm               : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_ras_n             : out   std_logic;                                        -- ras_n
			sdram_we_n              : out   std_logic;                                        -- we_n
			sdram_clk_clk           : out   std_logic;                                        -- clk
			switches_export         : in    std_logic_vector(9 downto 0)  := (others => 'X'); -- export
			wolfson_chip_clk        : out   std_logic;                                        -- clk
			pwm_cwfire_export       : out   std_logic_vector(15 downto 0)                     -- export
		);
	end component nios_system;

	u0 : component nios_system
		port map (
			audio_ADCDAT            => CONNECTED_TO_audio_ADCDAT,            --             audio.ADCDAT
			audio_ADCLRCK           => CONNECTED_TO_audio_ADCLRCK,           --                  .ADCLRCK
			audio_BCLK              => CONNECTED_TO_audio_BCLK,              --                  .BCLK
			audio_DACDAT            => CONNECTED_TO_audio_DACDAT,            --                  .DACDAT
			audio_DACLRCK           => CONNECTED_TO_audio_DACLRCK,           --                  .DACLRCK
			audio_and_video_SDAT    => CONNECTED_TO_audio_and_video_SDAT,    --   audio_and_video.SDAT
			audio_and_video_SCLK    => CONNECTED_TO_audio_and_video_SCLK,    --                  .SCLK
			clk_clk                 => CONNECTED_TO_clk_clk,                 --               clk.clk
			flash_conduit_end_ADDR  => CONNECTED_TO_flash_conduit_end_ADDR,  -- flash_conduit_end.ADDR
			flash_conduit_end_CE_N  => CONNECTED_TO_flash_conduit_end_CE_N,  --                  .CE_N
			flash_conduit_end_OE_N  => CONNECTED_TO_flash_conduit_end_OE_N,  --                  .OE_N
			flash_conduit_end_WE_N  => CONNECTED_TO_flash_conduit_end_WE_N,  --                  .WE_N
			flash_conduit_end_RST_N => CONNECTED_TO_flash_conduit_end_RST_N, --                  .RST_N
			flash_conduit_end_DQ    => CONNECTED_TO_flash_conduit_end_DQ,    --                  .DQ
			hex0_1_export           => CONNECTED_TO_hex0_1_export,           --            hex0_1.export
			hex2_3_export           => CONNECTED_TO_hex2_3_export,           --            hex2_3.export
			hex4_5_export           => CONNECTED_TO_hex4_5_export,           --            hex4_5.export
			io_acknowledge          => CONNECTED_TO_io_acknowledge,          --                io.acknowledge
			io_irq                  => CONNECTED_TO_io_irq,                  --                  .irq
			io_address              => CONNECTED_TO_io_address,              --                  .address
			io_bus_enable           => CONNECTED_TO_io_bus_enable,           --                  .bus_enable
			io_byte_enable          => CONNECTED_TO_io_byte_enable,          --                  .byte_enable
			io_rw                   => CONNECTED_TO_io_rw,                   --                  .rw
			io_write_data           => CONNECTED_TO_io_write_data,           --                  .write_data
			io_read_data            => CONNECTED_TO_io_read_data,            --                  .read_data
			lcd_data_DATA           => CONNECTED_TO_lcd_data_DATA,           --          lcd_data.DATA
			lcd_data_ON             => CONNECTED_TO_lcd_data_ON,             --                  .ON
			lcd_data_BLON           => CONNECTED_TO_lcd_data_BLON,           --                  .BLON
			lcd_data_EN             => CONNECTED_TO_lcd_data_EN,             --                  .EN
			lcd_data_RS             => CONNECTED_TO_lcd_data_RS,             --                  .RS
			lcd_data_RW             => CONNECTED_TO_lcd_data_RW,             --                  .RW
			leds_export             => CONNECTED_TO_leds_export,             --              leds.export
			push_buttons_export     => CONNECTED_TO_push_buttons_export,     --      push_buttons.export
			pwm_cw1_export          => CONNECTED_TO_pwm_cw1_export,          --           pwm_cw1.export
			pwm_cw2_export          => CONNECTED_TO_pwm_cw2_export,          --           pwm_cw2.export
			reset_reset_n           => CONNECTED_TO_reset_reset_n,           --             reset.reset_n
			sdram_addr              => CONNECTED_TO_sdram_addr,              --             sdram.addr
			sdram_ba                => CONNECTED_TO_sdram_ba,                --                  .ba
			sdram_cas_n             => CONNECTED_TO_sdram_cas_n,             --                  .cas_n
			sdram_cke               => CONNECTED_TO_sdram_cke,               --                  .cke
			sdram_cs_n              => CONNECTED_TO_sdram_cs_n,              --                  .cs_n
			sdram_dq                => CONNECTED_TO_sdram_dq,                --                  .dq
			sdram_dqm               => CONNECTED_TO_sdram_dqm,               --                  .dqm
			sdram_ras_n             => CONNECTED_TO_sdram_ras_n,             --                  .ras_n
			sdram_we_n              => CONNECTED_TO_sdram_we_n,              --                  .we_n
			sdram_clk_clk           => CONNECTED_TO_sdram_clk_clk,           --         sdram_clk.clk
			switches_export         => CONNECTED_TO_switches_export,         --          switches.export
			wolfson_chip_clk        => CONNECTED_TO_wolfson_chip_clk,        --      wolfson_chip.clk
			pwm_cwfire_export       => CONNECTED_TO_pwm_cwfire_export        --        pwm_cwfire.export
		);

