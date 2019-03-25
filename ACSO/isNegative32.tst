load isNegative32.hdl,
output-file isNegative32.out,
compare-to isNegative32.cmp,
output-list in1%B1.16.1 in2%B1.16.1 out%B3.1.3;

set in1 %B1100110101110011,
set in2 %B0000000000000000,
eval,
output;


set in1 %B0001110101100010,
set in2 %B1001101010111000,
eval,
output;

set in1 %B0010000100100010,
set in2 %B1001101010111000,
eval,
output;


set in1 %B1001010100101000,
set in2 %B0000001000111101,
eval,
output;