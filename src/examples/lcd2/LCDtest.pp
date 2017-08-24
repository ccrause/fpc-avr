program LCDtest;

uses
  lcd_config, lcd_pcd8544, spi, spi_config,
  delay;

const
  msg: shortstring = 'FPC-AVR';

begin
  lcd_init(60);

  lcd_printChar('#');

  repeat
  until false;
end.

