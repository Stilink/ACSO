load Add32.hdl,
output-file Add32.out,
compare-to Add32.cmp,
output-list a1%B1.16.1 a2%B1.16.1 b1%B1.16.1 b2%B1.16.1 sum1%B1.16.1 sum2%B1.16.1;

set a1 %B0000000000000000,
set a2 %B0100001101001100,
set b1 %B0000000000000000,
set b2 %B0100100001001000,
eval,
output;
set a1 %B1111111111111111,
set a2 %B0011111010000111,
set b1 %B1111111111111111,
set b2 %B1100110101110011,
eval,
output;
set a1 %B1111111111111111,
set a2 %B1100111010111000,
set b1 %B1111111111111111,
set b2 %B1101000101010111,
eval,
output;
set a1 %B1111111111111111,
set a2 %B1001000010000110,
set b1 %B0000000000000000,
set b2 %B1011001011000011,
eval,
output;
set a1 %B1111111111111111,
set a2 %B1001101010111000,
set b1 %B0000000000000000,
set b2 %B0001110101100010,
eval,
output;
set a1 %B1111111111111111,
set a2 %B1100100100001010,
set b1 %B0000000000000000,
set b2 %B0001111010001111,
eval,
output;
set a1 %B0000000000000000,
set a2 %B0010000100100010,
set b1 %B0000000000000000,
set b2 %B0100110101100111,
eval,
output;
set a1 %B1111111111111111,
set a2 %B1001010100101000,
set b1 %B0000000000000000,
set b2 %B0000001000111101,
eval,
output;
set a1 %B1111111111111111,
set a2 %B1001011101010111,
set b1 %B1111111111111111,
set b2 %B1000000100010101,
eval,
output;
set a1 %B0000000000000000,
set a2 %B0000010110000110,
set b1 %B0000000000000000,
set b2 %B0110101111001111,
eval,
output;
