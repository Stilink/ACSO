load Complement2.hdl,
output-file Complement2.out,
compare-to Complement2.cmp,
output-list in1%B1.16.1 in2%B1.16.1 out1%B1.16.1 out2%B1.16.1;

set in1 %B0000000000000000,
set in2 %B0101101111101101,
eval,
output;
set in1 %B0000000000000000,
set in2 %B1011011000110010,
eval,
output;
set in1 %B0000000000000000,
set in2 %B0010111011110001,
eval,
output;
set in1 %B1111111111111111,
set in2 %B1011011011010000,
eval,
output;
set in1 %B0000000000000000,
set in2 %B0001011000010010,
eval,
output;
set in1 %B0000000000000000,
set in2 %B0001110001011110,
eval,
output;
set in1 %B1111111111111111,
set in2 %B0111011011001000,
eval,
output;
set in1 %B1111111111111111,
set in2 %B1101011110111100,
eval,
output;
set in1 %B0000000000000000,
set in2 %B1000111111100011,
eval,
output;
set in1 %B1111111111111111,
set in2 %B0111001001011101,
eval,
output;


	
