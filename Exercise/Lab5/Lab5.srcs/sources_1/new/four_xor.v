primitive four_xor(
a,
b,
c,
d,
e
);
output a;
input b,c,d,e;

table
    0 0 0 0 : 0;
    0 0 0 1 : 1;
    0 0 1 0 : 1;
    0 0 1 1 : 0;
    0 1 0 0 : 1;
    0 1 0 1 : 0;
    0 1 1 0 : 0;
    0 1 1 1 : 1;
    1 0 0 0 : 1;
    1 0 0 1 : 0;
    1 0 1 0 : 0;
    1 0 1 1 : 1;
    1 1 0 0 : 0;
    1 1 0 1 : 1;
    1 1 1 0 : 1;
    1 1 1 1 : 0;
endtable

endprimitive