load complemento.hdl,
output-file complemento.out,
compare-to complemento.cmp,
output-list ah%B1.16.1 al%B1.16.1 sh%B1.16.1 sl%B1.16.1;

set ah %B0000000000000000,
set al %B0101101111101101,
eval,
output;
set ah %B0000000000000000,
set al %B1011011000110010,
eval,
output;
set ah %B0000000000000000,
set al %B0010111011110001,
eval,
output;
set ah %B1111111111111111,
set al %B1011011011010000,
eval,
output;
set ah %B0000000000000000,
set al %B0001011000010010,
eval,
output;
set ah %B0000000000000000,
set al %B0001110001011110,
eval,
output;
set ah %B1111111111111111,
set al %B0111011011001000,
eval,
output;
set ah %B1111111111111111,
set al %B1101011110111100,
eval,
output;
set ah %B0000000000000000,
set al %B1000111111100011,
eval,
output;
set ah %B1111111111111111,
set al %B0111001001011101,
eval,
output;


	
