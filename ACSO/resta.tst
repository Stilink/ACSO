load resta.hdl,
output-file resta.out,
compare-to resta.cmp,
output-list ah%B1.16.1 al%B1.16.1 bh%B1.16.1 bl%B1.16.1 sh%B1.16.1 sl%B1.16.1;

set ah %B1111111111111111,
set al %B1100111011110001,
set bh %B1111111111111111,
set bl %B0101101110011010,
eval,
output;
set ah %B1111111111111111,
set al %B1001111001111011,
set bh %B1111111111111111,
set bl %B0100110110110000,
eval,
output;
set ah %B1111111111111111,
set al %B1011001110010010,
set bh %B0000000000000000,
set bl %B1010111010101001,
eval,
output;
set ah %B1111111111111111,
set al %B1011010010111111,
set bh %B1111111111111111,
set bl %B1110000011100001,
eval,
output;
set ah %B1111111111111111,
set al %B0110010111101110,
set bh %B0000000000000000,
set bl %B1011001010101110,
eval,
output;
set ah %B1111111111111111,
set al %B0100111010001011,
set bh %B0000000000000000,
set bl %B1010000111111010,
eval,
output;
set ah %B1111111111111111,
set al %B1110111100010000,
set bh %B0000000000000000,
set bl %B1100001010011001,
eval,
output;
set ah %B1111111111111111,
set al %B1100011101010100,
set bh %B1111111111111111,
set bl %B1001010100100000,
eval,
output;
set ah %B1111111111111111,
set al %B0100001000101001,
set bh %B1111111111111111,
set bl %B0111111100100111,
eval,
output;
set ah %B0000000000000000,
set al %B1010100111101111,
set bh %B1111111111111111,
set bl %B1101101110001110,
eval,
output;