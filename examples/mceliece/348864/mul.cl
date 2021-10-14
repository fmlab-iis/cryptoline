proc main (
bit a00,bit a01,bit a02,bit a03,bit a04,bit a05,
bit a06,bit a07,bit a08,bit a09,bit a10,bit a11
,
bit b00,bit b01,bit b02,bit b03,bit b04,bit b05,
bit b06,bit b07,bit b08,bit b09,bit b10,bit b11
) =
{ true && true }
ghost x@bit, f@bit, g@bit : 
and [
f = a00*(x**0) + a01*(x**1) + a02*(x**2) + a03*(x**3) +
a04*(x**4) + a05*(x**5) + a06*(x**6) + a07*(x**7) +
a08*(x**8) + a09*(x**9) + a10*(x**10) + a11*(x**11) 
,
g = b00*(x**0) + b01*(x**1) + b02*(x**2) + b03*(x**3) +
b04*(x**4) + b05*(x**5) + b06*(x**6) + b07*(x**7) +
b08*(x**8) + b09*(x**9) + b10*(x**10) + b11*(x**11) 
] && true;
clear c00; clear c01; clear c02; clear c03;
clear c04; clear c05; clear c06; clear c07;
clear c08; clear c09; clear c10; clear c11;
clear c12; clear c13; clear c14; clear c15;
clear c16; clear c17; clear c18; clear c19;
clear c20; clear c21; clear c22; clear c23;
mul tmp a00 b00; adds dc c00 c00 tmp; mul tmp a00 b01; adds dc c01 c01 tmp;
mul tmp a00 b02; adds dc c02 c02 tmp; mul tmp a00 b03; adds dc c03 c03 tmp;
mul tmp a00 b04; adds dc c04 c04 tmp; mul tmp a00 b05; adds dc c05 c05 tmp;
mul tmp a00 b06; adds dc c06 c06 tmp; mul tmp a00 b07; adds dc c07 c07 tmp;
mul tmp a00 b08; adds dc c08 c08 tmp; mul tmp a00 b09; adds dc c09 c09 tmp;
mul tmp a00 b10; adds dc c10 c10 tmp; mul tmp a00 b11; adds dc c11 c11 tmp;
mul tmp a01 b00; adds dc c01 c01 tmp;
mul tmp a01 b01; adds dc c02 c02 tmp; mul tmp a01 b02; adds dc c03 c03 tmp;
mul tmp a01 b03; adds dc c04 c04 tmp; mul tmp a01 b04; adds dc c05 c05 tmp;
mul tmp a01 b05; adds dc c06 c06 tmp; mul tmp a01 b06; adds dc c07 c07 tmp;
mul tmp a01 b07; adds dc c08 c08 tmp; mul tmp a01 b08; adds dc c09 c09 tmp;
mul tmp a01 b09; adds dc c10 c10 tmp; mul tmp a01 b10; adds dc c11 c11 tmp;
mul tmp a01 b11; adds dc c12 c12 tmp;
mul tmp a02 b00; adds dc c02 c02 tmp; mul tmp a02 b01; adds dc c03 c03 tmp;
mul tmp a02 b02; adds dc c04 c04 tmp; mul tmp a02 b03; adds dc c05 c05 tmp;
mul tmp a02 b04; adds dc c06 c06 tmp; mul tmp a02 b05; adds dc c07 c07 tmp;
mul tmp a02 b06; adds dc c08 c08 tmp; mul tmp a02 b07; adds dc c09 c09 tmp;
mul tmp a02 b08; adds dc c10 c10 tmp; mul tmp a02 b09; adds dc c11 c11 tmp;
mul tmp a02 b10; adds dc c12 c12 tmp; mul tmp a02 b11; adds dc c13 c13 tmp;
mul tmp a03 b00; adds dc c03 c03 tmp;
mul tmp a03 b01; adds dc c04 c04 tmp; mul tmp a03 b02; adds dc c05 c05 tmp;
mul tmp a03 b03; adds dc c06 c06 tmp; mul tmp a03 b04; adds dc c07 c07 tmp;
mul tmp a03 b05; adds dc c08 c08 tmp; mul tmp a03 b06; adds dc c09 c09 tmp;
mul tmp a03 b07; adds dc c10 c10 tmp; mul tmp a03 b08; adds dc c11 c11 tmp;
mul tmp a03 b09; adds dc c12 c12 tmp; mul tmp a03 b10; adds dc c13 c13 tmp;
mul tmp a03 b11; adds dc c14 c14 tmp;
mul tmp a04 b00; adds dc c04 c04 tmp; mul tmp a04 b01; adds dc c05 c05 tmp;
mul tmp a04 b02; adds dc c06 c06 tmp; mul tmp a04 b03; adds dc c07 c07 tmp;
mul tmp a04 b04; adds dc c08 c08 tmp; mul tmp a04 b05; adds dc c09 c09 tmp;
mul tmp a04 b06; adds dc c10 c10 tmp; mul tmp a04 b07; adds dc c11 c11 tmp;
mul tmp a04 b08; adds dc c12 c12 tmp; mul tmp a04 b09; adds dc c13 c13 tmp;
mul tmp a04 b10; adds dc c14 c14 tmp; mul tmp a04 b11; adds dc c15 c15 tmp;
mul tmp a05 b00; adds dc c05 c05 tmp;
mul tmp a05 b01; adds dc c06 c06 tmp; mul tmp a05 b02; adds dc c07 c07 tmp;
mul tmp a05 b03; adds dc c08 c08 tmp; mul tmp a05 b04; adds dc c09 c09 tmp;
mul tmp a05 b05; adds dc c10 c10 tmp; mul tmp a05 b06; adds dc c11 c11 tmp;
mul tmp a05 b07; adds dc c12 c12 tmp; mul tmp a05 b08; adds dc c13 c13 tmp;
mul tmp a05 b09; adds dc c14 c14 tmp; mul tmp a05 b10; adds dc c15 c15 tmp;
mul tmp a05 b11; adds dc c16 c16 tmp;
mul tmp a06 b00; adds dc c06 c06 tmp; mul tmp a06 b01; adds dc c07 c07 tmp;
mul tmp a06 b02; adds dc c08 c08 tmp; mul tmp a06 b03; adds dc c09 c09 tmp;
mul tmp a06 b04; adds dc c10 c10 tmp; mul tmp a06 b05; adds dc c11 c11 tmp;
mul tmp a06 b06; adds dc c12 c12 tmp; mul tmp a06 b07; adds dc c13 c13 tmp;
mul tmp a06 b08; adds dc c14 c14 tmp; mul tmp a06 b09; adds dc c15 c15 tmp;
mul tmp a06 b10; adds dc c16 c16 tmp; mul tmp a06 b11; adds dc c17 c17 tmp;
mul tmp a07 b00; adds dc c07 c07 tmp;
mul tmp a07 b01; adds dc c08 c08 tmp; mul tmp a07 b02; adds dc c09 c09 tmp;
mul tmp a07 b03; adds dc c10 c10 tmp; mul tmp a07 b04; adds dc c11 c11 tmp;
mul tmp a07 b05; adds dc c12 c12 tmp; mul tmp a07 b06; adds dc c13 c13 tmp;
mul tmp a07 b07; adds dc c14 c14 tmp; mul tmp a07 b08; adds dc c15 c15 tmp;
mul tmp a07 b09; adds dc c16 c16 tmp; mul tmp a07 b10; adds dc c17 c17 tmp;
mul tmp a07 b11; adds dc c18 c18 tmp;
mul tmp a08 b00; adds dc c08 c08 tmp; mul tmp a08 b01; adds dc c09 c09 tmp;
mul tmp a08 b02; adds dc c10 c10 tmp; mul tmp a08 b03; adds dc c11 c11 tmp;
mul tmp a08 b04; adds dc c12 c12 tmp; mul tmp a08 b05; adds dc c13 c13 tmp;
mul tmp a08 b06; adds dc c14 c14 tmp; mul tmp a08 b07; adds dc c15 c15 tmp;
mul tmp a08 b08; adds dc c16 c16 tmp; mul tmp a08 b09; adds dc c17 c17 tmp;
mul tmp a08 b10; adds dc c18 c18 tmp; mul tmp a08 b11; adds dc c19 c19 tmp;
mul tmp a09 b00; adds dc c09 c09 tmp;
mul tmp a09 b01; adds dc c10 c10 tmp; mul tmp a09 b02; adds dc c11 c11 tmp;
mul tmp a09 b03; adds dc c12 c12 tmp; mul tmp a09 b04; adds dc c13 c13 tmp;
mul tmp a09 b05; adds dc c14 c14 tmp; mul tmp a09 b06; adds dc c15 c15 tmp;
mul tmp a09 b07; adds dc c16 c16 tmp; mul tmp a09 b08; adds dc c17 c17 tmp;
mul tmp a09 b09; adds dc c18 c18 tmp; mul tmp a09 b10; adds dc c19 c19 tmp;
mul tmp a09 b11; adds dc c20 c20 tmp;
mul tmp a10 b00; adds dc c10 c10 tmp; mul tmp a10 b01; adds dc c11 c11 tmp;
mul tmp a10 b02; adds dc c12 c12 tmp; mul tmp a10 b03; adds dc c13 c13 tmp;
mul tmp a10 b04; adds dc c14 c14 tmp; mul tmp a10 b05; adds dc c15 c15 tmp;
mul tmp a10 b06; adds dc c16 c16 tmp; mul tmp a10 b07; adds dc c17 c17 tmp;
mul tmp a10 b08; adds dc c18 c18 tmp; mul tmp a10 b09; adds dc c19 c19 tmp;
mul tmp a10 b10; adds dc c20 c20 tmp; mul tmp a10 b11; adds dc c21 c21 tmp;
mul tmp a11 b00; adds dc c11 c11 tmp;
mul tmp a11 b01; adds dc c12 c12 tmp; mul tmp a11 b02; adds dc c13 c13 tmp;
mul tmp a11 b03; adds dc c14 c14 tmp; mul tmp a11 b04; adds dc c15 c15 tmp;
mul tmp a11 b05; adds dc c16 c16 tmp; mul tmp a11 b06; adds dc c17 c17 tmp;
mul tmp a11 b07; adds dc c18 c18 tmp; mul tmp a11 b08; adds dc c19 c19 tmp;
mul tmp a11 b09; adds dc c20 c20 tmp; mul tmp a11 b10; adds dc c21 c21 tmp;
mul tmp a11 b11; adds dc c22 c22 tmp;
adds dc c14 c14 c23; adds dc c11 c11 c23; 
adds dc c13 c13 c22; adds dc c10 c10 c22; 
adds dc c12 c12 c21; adds dc c09 c09 c21; 
adds dc c11 c11 c20; adds dc c08 c08 c20; 
adds dc c10 c10 c19; adds dc c07 c07 c19; 
adds dc c09 c09 c18; adds dc c06 c06 c18; 
adds dc c08 c08 c17; adds dc c05 c05 c17; 
adds dc c07 c07 c16; adds dc c04 c04 c16; 
adds dc c06 c06 c15; adds dc c03 c03 c15;
adds dc c05 c05 c14; adds dc c02 c02 c14; 
adds dc c04 c04 c13; adds dc c01 c01 c13; 
adds dc c03 c03 c12; adds dc c00 c00 c12; 
ghost h@bit : 
h = c00*(x**0) + c01*(x**1) + c02*(x**2) + c03*(x**3) +
c04*(x**4) + c05*(x**5) + c06*(x**6) + c07*(x**7) +
c08*(x**8) + c09*(x**9) + c10*(x**10) + c11*(x**11) 
 && true;
{ eqmod h (f * g) [2, x**12 + x**3 + 1] && true }
