proc main (
uint8 A00, uint8 A01, uint8 A02, uint8 A03, uint8 A04,
uint8 A05, uint8 A06, uint8 A07, uint8 A08, uint8 A09,
uint8 A10, uint8 A11, uint8 A12, uint8 A13, uint8 A14,
uint8 A15, uint8 A16, uint8 A17, uint8 A18, uint8 A19,
uint8 A20, uint8 A21, uint8 A22, uint8 A23, uint8 A24,
uint8 A25, uint8 A26, uint8 A27, uint8 A28, uint8 A29,
uint8 A30, uint8 A31, uint8 A32, uint8 A33, uint8 A34,
uint8 A35, uint8 A36, uint8 A37, uint8 A38, uint8 A39,
uint8 A40, uint8 A41, uint8 A42, uint8 A43, uint8 A44,
uint8 A45, uint8 A46, uint8 A47, uint8 A48, uint8 A49,
uint8 A50, uint8 A51, uint8 A52, uint8 A53, uint8 A54,
uint8 A55, uint8 A56, uint8 A57, uint8 A58, uint8 A59,
uint8 A60, uint8 A61, uint8 A62, uint8 A63
,
uint8 B00, uint8 B01, uint8 B02, uint8 B03, uint8 B04,
uint8 B05, uint8 B06, uint8 B07, uint8 B08, uint8 B09,
uint8 B10, uint8 B11, uint8 B12, uint8 B13, uint8 B14,
uint8 B15, uint8 B16, uint8 B17, uint8 B18, uint8 B19,
uint8 B20, uint8 B21, uint8 B22, uint8 B23, uint8 B24,
uint8 B25, uint8 B26, uint8 B27, uint8 B28, uint8 B29,
uint8 B30, uint8 B31, uint8 B32, uint8 B33, uint8 B34,
uint8 B35, uint8 B36, uint8 B37, uint8 B38, uint8 B39,
uint8 B40, uint8 B41, uint8 B42, uint8 B43, uint8 B44,
uint8 B45, uint8 B46, uint8 B47, uint8 B48, uint8 B49,
uint8 B50, uint8 B51, uint8 B52, uint8 B53, uint8 B54,
uint8 B55, uint8 B56, uint8 B57, uint8 B58, uint8 B59,
uint8 B60, uint8 B61, uint8 B62, uint8 B63
,
uint8 C00, uint8 C01, uint8 C02, uint8 C03, uint8 C04,
uint8 C05, uint8 C06, uint8 C07, uint8 C08, uint8 C09,
uint8 C10, uint8 C11, uint8 C12, uint8 C13, uint8 C14,
uint8 C15, uint8 C16, uint8 C17, uint8 C18, uint8 C19,
uint8 C20, uint8 C21, uint8 C22, uint8 C23, uint8 C24,
uint8 C25, uint8 C26, uint8 C27, uint8 C28, uint8 C29,
uint8 C30, uint8 C31, uint8 C32, uint8 C33, uint8 C34,
uint8 C35, uint8 C36, uint8 C37, uint8 C38, uint8 C39,
uint8 C40, uint8 C41, uint8 C42, uint8 C43, uint8 C44,
uint8 C45, uint8 C46, uint8 C47, uint8 C48, uint8 C49,
uint8 C50, uint8 C51, uint8 C52, uint8 C53, uint8 C54,
uint8 C55, uint8 C56, uint8 C57, uint8 C58, uint8 C59,
uint8 C60, uint8 C61, uint8 C62, uint8 C63
,
uint8 D00, uint8 D01, uint8 D02, uint8 D03, uint8 D04,
uint8 D05, uint8 D06, uint8 D07, uint8 D08, uint8 D09,
uint8 D10, uint8 D11, uint8 D12, uint8 D13, uint8 D14,
uint8 D15, uint8 D16, uint8 D17, uint8 D18, uint8 D19,
uint8 D20, uint8 D21, uint8 D22, uint8 D23, uint8 D24,
uint8 D25, uint8 D26, uint8 D27, uint8 D28, uint8 D29,
uint8 D30, uint8 D31, uint8 D32, uint8 D33, uint8 D34,
uint8 D35, uint8 D36, uint8 D37, uint8 D38, uint8 D39,
uint8 D40, uint8 D41, uint8 D42, uint8 D43, uint8 D44,
uint8 D45, uint8 D46, uint8 D47, uint8 D48, uint8 D49,
uint8 D50, uint8 D51, uint8 D52, uint8 D53, uint8 D54,
uint8 D55, uint8 D56, uint8 D57, uint8 D58, uint8 D59,
uint8 D60, uint8 D61, uint8 D62, uint8 D63
) =
{
  true
  &&
  true
}

(* counter = 1 *)

mov L0x7fffffffd8a8 1@uint32;

nondet rsp@uint32; 
nondet L0x7fffffffd8a0@uint32; 
nondet L0x7fffffffd8b0@uint32; nondet L0x7fffffffd8b8@uint32;
nondet L0x7fffffffd8c0@uint32; nondet L0x7fffffffd8c8@uint32;
nondet L0x7fffffffd8d0@uint32; nondet L0x7fffffffd8d8@uint32;
nondet L0x7fffffffd878@uint32; nondet L0x7fffffffd880@uint32;


mov L0x55555555d200 0x00010203@uint32; mov L0x55555555d204 0x04050607@uint32;
mov L0x55555555d208 0x08090a0b@uint32; mov L0x55555555d20c 0x0c0d0e0f@uint32;


join H A03 A02; join L A01 A00; join L0x5555555612a0 H L;
join H A07 A06; join L A05 A04; join L0x5555555612a4 H L;
join H A11 A10; join L A09 A08; join L0x5555555612a8 H L;
join H A15 A14; join L A13 A12; join L0x5555555612ac H L;
join H A19 A18; join L A17 A16; join L0x5555555612b0 H L;
join H A23 A22; join L A21 A20; join L0x5555555612b4 H L;
join H A27 A26; join L A25 A24; join L0x5555555612b8 H L;
join H A31 A30; join L A29 A28; join L0x5555555612bc H L;
join H A35 A34; join L A33 A32; join L0x5555555612c0 H L;
join H A39 A38; join L A37 A36; join L0x5555555612c4 H L;
join H A43 A42; join L A41 A40; join L0x5555555612c8 H L;
join H A47 A46; join L A45 A44; join L0x5555555612cc H L;
join H A51 A50; join L A49 A48; join L0x5555555612d0 H L;
join H A55 A54; join L A53 A52; join L0x5555555612d4 H L;
join H A59 A58; join L A57 A56; join L0x5555555612d8 H L;
join H A63 A62; join L A61 A60; join L0x5555555612dc H L;

join H B03 B02; join L B01 B00; join L0x5555555613b0 H L;
join H B07 B06; join L B05 B04; join L0x5555555613b4 H L;
join H B11 B10; join L B09 B08; join L0x5555555613b8 H L;
join H B15 B14; join L B13 B12; join L0x5555555613bc H L;
join H B19 B18; join L B17 B16; join L0x5555555613c0 H L;
join H B23 B22; join L B21 B20; join L0x5555555613c4 H L;
join H B27 B26; join L B25 B24; join L0x5555555613c8 H L;
join H B31 B30; join L B29 B28; join L0x5555555613cc H L;
join H B35 B34; join L B33 B32; join L0x5555555613d0 H L;
join H B39 B38; join L B37 B36; join L0x5555555613d4 H L;
join H B43 B42; join L B41 B40; join L0x5555555613d8 H L;
join H B47 B46; join L B45 B44; join L0x5555555613dc H L;
join H B51 B50; join L B49 B48; join L0x5555555613e0 H L;
join H B55 B54; join L B53 B52; join L0x5555555613e4 H L;
join H B59 B58; join L B57 B56; join L0x5555555613e8 H L;
join H B63 B62; join L B61 B60; join L0x5555555613ec H L;

join H C03 C02; join L C01 C00; join L0x5555555614c0 H L;
join H C07 C06; join L C05 C04; join L0x5555555614c4 H L;
join H C11 C10; join L C09 C08; join L0x5555555614c8 H L;
join H C15 C14; join L C13 C12; join L0x5555555614cc H L;
join H C19 C18; join L C17 C16; join L0x5555555614d0 H L;
join H C23 C22; join L C21 C20; join L0x5555555614d4 H L;
join H C27 C26; join L C25 C24; join L0x5555555614d8 H L;
join H C31 C30; join L C29 C28; join L0x5555555614dc H L;
join H C35 C34; join L C33 C32; join L0x5555555614e0 H L;
join H C39 C38; join L C37 C36; join L0x5555555614e4 H L;
join H C43 C42; join L C41 C40; join L0x5555555614e8 H L;
join H C47 C46; join L C45 C44; join L0x5555555614ec H L;
join H C51 C50; join L C49 C48; join L0x5555555614f0 H L;
join H C55 C54; join L C53 C52; join L0x5555555614f4 H L;
join H C59 C58; join L C57 C56; join L0x5555555614f8 H L;
join H C63 C62; join L C61 C60; join L0x5555555614fc H L;

join H D03 D02; join L D01 D00; join L0x5555555615d0 H L;
join H D07 D06; join L D05 D04; join L0x5555555615d4 H L;
join H D11 D10; join L D09 D08; join L0x5555555615d8 H L;
join H D15 D14; join L D13 D12; join L0x5555555615dc H L;
join H D19 D18; join L D17 D16; join L0x5555555615e0 H L;
join H D23 D22; join L D21 D20; join L0x5555555615e4 H L;
join H D27 D26; join L D25 D24; join L0x5555555615e8 H L;
join H D31 D30; join L D29 D28; join L0x5555555615ec H L;
join H D35 D34; join L D33 D32; join L0x5555555615f0 H L;
join H D39 D38; join L D37 D36; join L0x5555555615f4 H L;
join H D43 D42; join L D41 D40; join L0x5555555615f8 H L;
join H D47 D46; join L D45 D44; join L0x5555555615fc H L;
join H D51 D50; join L D49 D48; join L0x555555561600 H L;
join H D55 D54; join L D53 D52; join L0x555555561604 H L;
join H D59 D58; join L D57 D56; join L0x555555561608 H L;
join H D63 D62; join L D61 D60; join L0x55555556160c H L;


mov L0x7fffffffd920 0x6a09e667@uint32; mov L0x7fffffffd924 0x6a09e667@uint32;
mov L0x7fffffffd928 0x6a09e667@uint32; mov L0x7fffffffd92c 0x6a09e667@uint32;
mov L0x7fffffffd930 0x6a09e667@uint32; mov L0x7fffffffd934 0x6a09e667@uint32;
mov L0x7fffffffd938 0x6a09e667@uint32; mov L0x7fffffffd93c 0x6a09e667@uint32;
mov L0x7fffffffd940 0xbb67ae85@uint32; mov L0x7fffffffd944 0xbb67ae85@uint32;
mov L0x7fffffffd948 0xbb67ae85@uint32; mov L0x7fffffffd94c 0xbb67ae85@uint32;
mov L0x7fffffffd950 0xbb67ae85@uint32; mov L0x7fffffffd954 0xbb67ae85@uint32;
mov L0x7fffffffd958 0xbb67ae85@uint32; mov L0x7fffffffd95c 0xbb67ae85@uint32;
mov L0x7fffffffd960 0x3c6ef372@uint32; mov L0x7fffffffd964 0x3c6ef372@uint32;
mov L0x7fffffffd968 0x3c6ef372@uint32; mov L0x7fffffffd96c 0x3c6ef372@uint32;
mov L0x7fffffffd970 0x3c6ef372@uint32; mov L0x7fffffffd974 0x3c6ef372@uint32;
mov L0x7fffffffd978 0x3c6ef372@uint32; mov L0x7fffffffd97c 0x3c6ef372@uint32;
mov L0x7fffffffd980 0xa54ff53a@uint32; mov L0x7fffffffd984 0xa54ff53a@uint32;
mov L0x7fffffffd988 0xa54ff53a@uint32; mov L0x7fffffffd98c 0xa54ff53a@uint32;
mov L0x7fffffffd990 0xa54ff53a@uint32; mov L0x7fffffffd994 0xa54ff53a@uint32;
mov L0x7fffffffd998 0xa54ff53a@uint32; mov L0x7fffffffd99c 0xa54ff53a@uint32;
mov L0x7fffffffd9a0 0x510e527f@uint32; mov L0x7fffffffd9a4 0x510e527f@uint32;
mov L0x7fffffffd9a8 0x510e527f@uint32; mov L0x7fffffffd9ac 0x510e527f@uint32;
mov L0x7fffffffd9b0 0x510e527f@uint32; mov L0x7fffffffd9b4 0x510e527f@uint32;
mov L0x7fffffffd9b8 0x510e527f@uint32; mov L0x7fffffffd9bc 0x510e527f@uint32;
mov L0x7fffffffd9c0 0x9b05688c@uint32; mov L0x7fffffffd9c4 0x9b05688c@uint32;
mov L0x7fffffffd9c8 0x9b05688c@uint32; mov L0x7fffffffd9cc 0x9b05688c@uint32;
mov L0x7fffffffd9d0 0x9b05688c@uint32; mov L0x7fffffffd9d4 0x9b05688c@uint32;
mov L0x7fffffffd9d8 0x9b05688c@uint32; mov L0x7fffffffd9dc 0x9b05688c@uint32;
mov L0x7fffffffd9e0 0x1f83d9ab@uint32; mov L0x7fffffffd9e4 0x1f83d9ab@uint32;
mov L0x7fffffffd9e8 0x1f83d9ab@uint32; mov L0x7fffffffd9ec 0x1f83d9ab@uint32;
mov L0x7fffffffd9f0 0x1f83d9ab@uint32; mov L0x7fffffffd9f4 0x1f83d9ab@uint32;
mov L0x7fffffffd9f8 0x1f83d9ab@uint32; mov L0x7fffffffd9fc 0x1f83d9ab@uint32;
mov L0x7fffffffda00 0x5be0cd19@uint32; mov L0x7fffffffda04 0x5be0cd19@uint32;
mov L0x7fffffffda08 0x5be0cd19@uint32; mov L0x7fffffffda0c 0x5be0cd19@uint32;
mov L0x7fffffffda10 0x5be0cd19@uint32; mov L0x7fffffffda14 0x5be0cd19@uint32;
mov L0x7fffffffda18 0x5be0cd19@uint32; mov L0x7fffffffda1c 0x5be0cd19@uint32;


mov L0x55555555ca00 0x428a2f98@uint32; mov L0x55555555ca04 0x428a2f98@uint32;
mov L0x55555555ca08 0x428a2f98@uint32; mov L0x55555555ca0c 0x428a2f98@uint32;
mov L0x55555555ca10 0x428a2f98@uint32; mov L0x55555555ca14 0x428a2f98@uint32;
mov L0x55555555ca18 0x428a2f98@uint32; mov L0x55555555ca1c 0x428a2f98@uint32;
mov L0x55555555ca20 0x71374491@uint32; mov L0x55555555ca24 0x71374491@uint32;
mov L0x55555555ca28 0x71374491@uint32; mov L0x55555555ca2c 0x71374491@uint32;
mov L0x55555555ca30 0x71374491@uint32; mov L0x55555555ca34 0x71374491@uint32;
mov L0x55555555ca38 0x71374491@uint32; mov L0x55555555ca3c 0x71374491@uint32;
mov L0x55555555ca40 0xb5c0fbcf@uint32; mov L0x55555555ca44 0xb5c0fbcf@uint32;
mov L0x55555555ca48 0xb5c0fbcf@uint32; mov L0x55555555ca4c 0xb5c0fbcf@uint32;
mov L0x55555555ca50 0xb5c0fbcf@uint32; mov L0x55555555ca54 0xb5c0fbcf@uint32;
mov L0x55555555ca58 0xb5c0fbcf@uint32; mov L0x55555555ca5c 0xb5c0fbcf@uint32;
mov L0x55555555ca60 0xe9b5dba5@uint32; mov L0x55555555ca64 0xe9b5dba5@uint32;
mov L0x55555555ca68 0xe9b5dba5@uint32; mov L0x55555555ca6c 0xe9b5dba5@uint32;
mov L0x55555555ca70 0xe9b5dba5@uint32; mov L0x55555555ca74 0xe9b5dba5@uint32;
mov L0x55555555ca78 0xe9b5dba5@uint32; mov L0x55555555ca7c 0xe9b5dba5@uint32;
mov L0x55555555ca80 0x3956c25b@uint32; mov L0x55555555ca84 0x3956c25b@uint32;
mov L0x55555555ca88 0x3956c25b@uint32; mov L0x55555555ca8c 0x3956c25b@uint32;
mov L0x55555555ca90 0x3956c25b@uint32; mov L0x55555555ca94 0x3956c25b@uint32;
mov L0x55555555ca98 0x3956c25b@uint32; mov L0x55555555ca9c 0x3956c25b@uint32;
mov L0x55555555caa0 0x59f111f1@uint32; mov L0x55555555caa4 0x59f111f1@uint32;
mov L0x55555555caa8 0x59f111f1@uint32; mov L0x55555555caac 0x59f111f1@uint32;
mov L0x55555555cab0 0x59f111f1@uint32; mov L0x55555555cab4 0x59f111f1@uint32;
mov L0x55555555cab8 0x59f111f1@uint32; mov L0x55555555cabc 0x59f111f1@uint32;
mov L0x55555555cac0 0x923f82a4@uint32; mov L0x55555555cac4 0x923f82a4@uint32;
mov L0x55555555cac8 0x923f82a4@uint32; mov L0x55555555cacc 0x923f82a4@uint32;
mov L0x55555555cad0 0x923f82a4@uint32; mov L0x55555555cad4 0x923f82a4@uint32;
mov L0x55555555cad8 0x923f82a4@uint32; mov L0x55555555cadc 0x923f82a4@uint32;
mov L0x55555555cae0 0xab1c5ed5@uint32; mov L0x55555555cae4 0xab1c5ed5@uint32;
mov L0x55555555cae8 0xab1c5ed5@uint32; mov L0x55555555caec 0xab1c5ed5@uint32;
mov L0x55555555caf0 0xab1c5ed5@uint32; mov L0x55555555caf4 0xab1c5ed5@uint32;
mov L0x55555555caf8 0xab1c5ed5@uint32; mov L0x55555555cafc 0xab1c5ed5@uint32;
mov L0x55555555cb00 0xd807aa98@uint32; mov L0x55555555cb04 0xd807aa98@uint32;
mov L0x55555555cb08 0xd807aa98@uint32; mov L0x55555555cb0c 0xd807aa98@uint32;
mov L0x55555555cb10 0xd807aa98@uint32; mov L0x55555555cb14 0xd807aa98@uint32;
mov L0x55555555cb18 0xd807aa98@uint32; mov L0x55555555cb1c 0xd807aa98@uint32;
mov L0x55555555cb20 0x12835b01@uint32; mov L0x55555555cb24 0x12835b01@uint32;
mov L0x55555555cb28 0x12835b01@uint32; mov L0x55555555cb2c 0x12835b01@uint32;
mov L0x55555555cb30 0x12835b01@uint32; mov L0x55555555cb34 0x12835b01@uint32;
mov L0x55555555cb38 0x12835b01@uint32; mov L0x55555555cb3c 0x12835b01@uint32;
mov L0x55555555cb40 0x243185be@uint32; mov L0x55555555cb44 0x243185be@uint32;
mov L0x55555555cb48 0x243185be@uint32; mov L0x55555555cb4c 0x243185be@uint32;
mov L0x55555555cb50 0x243185be@uint32; mov L0x55555555cb54 0x243185be@uint32;
mov L0x55555555cb58 0x243185be@uint32; mov L0x55555555cb5c 0x243185be@uint32;
mov L0x55555555cb60 0x550c7dc3@uint32; mov L0x55555555cb64 0x550c7dc3@uint32;
mov L0x55555555cb68 0x550c7dc3@uint32; mov L0x55555555cb6c 0x550c7dc3@uint32;
mov L0x55555555cb70 0x550c7dc3@uint32; mov L0x55555555cb74 0x550c7dc3@uint32;
mov L0x55555555cb78 0x550c7dc3@uint32; mov L0x55555555cb7c 0x550c7dc3@uint32;
mov L0x55555555cb80 0x72be5d74@uint32; mov L0x55555555cb84 0x72be5d74@uint32;
mov L0x55555555cb88 0x72be5d74@uint32; mov L0x55555555cb8c 0x72be5d74@uint32;
mov L0x55555555cb90 0x72be5d74@uint32; mov L0x55555555cb94 0x72be5d74@uint32;
mov L0x55555555cb98 0x72be5d74@uint32; mov L0x55555555cb9c 0x72be5d74@uint32;
mov L0x55555555cba0 0x80deb1fe@uint32; mov L0x55555555cba4 0x80deb1fe@uint32;
mov L0x55555555cba8 0x80deb1fe@uint32; mov L0x55555555cbac 0x80deb1fe@uint32;
mov L0x55555555cbb0 0x80deb1fe@uint32; mov L0x55555555cbb4 0x80deb1fe@uint32;
mov L0x55555555cbb8 0x80deb1fe@uint32; mov L0x55555555cbbc 0x80deb1fe@uint32;
mov L0x55555555cbc0 0x9bdc06a7@uint32; mov L0x55555555cbc4 0x9bdc06a7@uint32;
mov L0x55555555cbc8 0x9bdc06a7@uint32; mov L0x55555555cbcc 0x9bdc06a7@uint32;
mov L0x55555555cbd0 0x9bdc06a7@uint32; mov L0x55555555cbd4 0x9bdc06a7@uint32;
mov L0x55555555cbd8 0x9bdc06a7@uint32; mov L0x55555555cbdc 0x9bdc06a7@uint32;
mov L0x55555555cbe0 0xc19bf174@uint32; mov L0x55555555cbe4 0xc19bf174@uint32;
mov L0x55555555cbe8 0xc19bf174@uint32; mov L0x55555555cbec 0xc19bf174@uint32;
mov L0x55555555cbf0 0xc19bf174@uint32; mov L0x55555555cbf4 0xc19bf174@uint32;
mov L0x55555555cbf8 0xc19bf174@uint32; mov L0x55555555cbfc 0xc19bf174@uint32;
mov L0x55555555cc00 0xe49b69c1@uint32; mov L0x55555555cc04 0xe49b69c1@uint32;
mov L0x55555555cc08 0xe49b69c1@uint32; mov L0x55555555cc0c 0xe49b69c1@uint32;
mov L0x55555555cc10 0xe49b69c1@uint32; mov L0x55555555cc14 0xe49b69c1@uint32;
mov L0x55555555cc18 0xe49b69c1@uint32; mov L0x55555555cc1c 0xe49b69c1@uint32;
mov L0x55555555cc20 0xefbe4786@uint32; mov L0x55555555cc24 0xefbe4786@uint32;
mov L0x55555555cc28 0xefbe4786@uint32; mov L0x55555555cc2c 0xefbe4786@uint32;
mov L0x55555555cc30 0xefbe4786@uint32; mov L0x55555555cc34 0xefbe4786@uint32;
mov L0x55555555cc38 0xefbe4786@uint32; mov L0x55555555cc3c 0xefbe4786@uint32;
mov L0x55555555cc40 0x0fc19dc6@uint32; mov L0x55555555cc44 0x0fc19dc6@uint32;
mov L0x55555555cc48 0x0fc19dc6@uint32; mov L0x55555555cc4c 0x0fc19dc6@uint32;
mov L0x55555555cc50 0x0fc19dc6@uint32; mov L0x55555555cc54 0x0fc19dc6@uint32;
mov L0x55555555cc58 0x0fc19dc6@uint32; mov L0x55555555cc5c 0x0fc19dc6@uint32;
mov L0x55555555cc60 0x240ca1cc@uint32; mov L0x55555555cc64 0x240ca1cc@uint32;
mov L0x55555555cc68 0x240ca1cc@uint32; mov L0x55555555cc6c 0x240ca1cc@uint32;
mov L0x55555555cc70 0x240ca1cc@uint32; mov L0x55555555cc74 0x240ca1cc@uint32;
mov L0x55555555cc78 0x240ca1cc@uint32; mov L0x55555555cc7c 0x240ca1cc@uint32;
mov L0x55555555cc80 0x2de92c6f@uint32; mov L0x55555555cc84 0x2de92c6f@uint32;
mov L0x55555555cc88 0x2de92c6f@uint32; mov L0x55555555cc8c 0x2de92c6f@uint32;
mov L0x55555555cc90 0x2de92c6f@uint32; mov L0x55555555cc94 0x2de92c6f@uint32;
mov L0x55555555cc98 0x2de92c6f@uint32; mov L0x55555555cc9c 0x2de92c6f@uint32;
mov L0x55555555cca0 0x4a7484aa@uint32; mov L0x55555555cca4 0x4a7484aa@uint32;
mov L0x55555555cca8 0x4a7484aa@uint32; mov L0x55555555ccac 0x4a7484aa@uint32;
mov L0x55555555ccb0 0x4a7484aa@uint32; mov L0x55555555ccb4 0x4a7484aa@uint32;
mov L0x55555555ccb8 0x4a7484aa@uint32; mov L0x55555555ccbc 0x4a7484aa@uint32;
mov L0x55555555ccc0 0x5cb0a9dc@uint32; mov L0x55555555ccc4 0x5cb0a9dc@uint32;
mov L0x55555555ccc8 0x5cb0a9dc@uint32; mov L0x55555555cccc 0x5cb0a9dc@uint32;
mov L0x55555555ccd0 0x5cb0a9dc@uint32; mov L0x55555555ccd4 0x5cb0a9dc@uint32;
mov L0x55555555ccd8 0x5cb0a9dc@uint32; mov L0x55555555ccdc 0x5cb0a9dc@uint32;
mov L0x55555555cce0 0x76f988da@uint32; mov L0x55555555cce4 0x76f988da@uint32;
mov L0x55555555cce8 0x76f988da@uint32; mov L0x55555555ccec 0x76f988da@uint32;
mov L0x55555555ccf0 0x76f988da@uint32; mov L0x55555555ccf4 0x76f988da@uint32;
mov L0x55555555ccf8 0x76f988da@uint32; mov L0x55555555ccfc 0x76f988da@uint32;
mov L0x55555555cd00 0x983e5152@uint32; mov L0x55555555cd04 0x983e5152@uint32;
mov L0x55555555cd08 0x983e5152@uint32; mov L0x55555555cd0c 0x983e5152@uint32;
mov L0x55555555cd10 0x983e5152@uint32; mov L0x55555555cd14 0x983e5152@uint32;
mov L0x55555555cd18 0x983e5152@uint32; mov L0x55555555cd1c 0x983e5152@uint32;
mov L0x55555555cd20 0xa831c66d@uint32; mov L0x55555555cd24 0xa831c66d@uint32;
mov L0x55555555cd28 0xa831c66d@uint32; mov L0x55555555cd2c 0xa831c66d@uint32;
mov L0x55555555cd30 0xa831c66d@uint32; mov L0x55555555cd34 0xa831c66d@uint32;
mov L0x55555555cd38 0xa831c66d@uint32; mov L0x55555555cd3c 0xa831c66d@uint32;
mov L0x55555555cd40 0xb00327c8@uint32; mov L0x55555555cd44 0xb00327c8@uint32;
mov L0x55555555cd48 0xb00327c8@uint32; mov L0x55555555cd4c 0xb00327c8@uint32;
mov L0x55555555cd50 0xb00327c8@uint32; mov L0x55555555cd54 0xb00327c8@uint32;
mov L0x55555555cd58 0xb00327c8@uint32; mov L0x55555555cd5c 0xb00327c8@uint32;
mov L0x55555555cd60 0xbf597fc7@uint32; mov L0x55555555cd64 0xbf597fc7@uint32;
mov L0x55555555cd68 0xbf597fc7@uint32; mov L0x55555555cd6c 0xbf597fc7@uint32;
mov L0x55555555cd70 0xbf597fc7@uint32; mov L0x55555555cd74 0xbf597fc7@uint32;
mov L0x55555555cd78 0xbf597fc7@uint32; mov L0x55555555cd7c 0xbf597fc7@uint32;
mov L0x55555555cd80 0xc6e00bf3@uint32; mov L0x55555555cd84 0xc6e00bf3@uint32;
mov L0x55555555cd88 0xc6e00bf3@uint32; mov L0x55555555cd8c 0xc6e00bf3@uint32;
mov L0x55555555cd90 0xc6e00bf3@uint32; mov L0x55555555cd94 0xc6e00bf3@uint32;
mov L0x55555555cd98 0xc6e00bf3@uint32; mov L0x55555555cd9c 0xc6e00bf3@uint32;
mov L0x55555555cda0 0xd5a79147@uint32; mov L0x55555555cda4 0xd5a79147@uint32;
mov L0x55555555cda8 0xd5a79147@uint32; mov L0x55555555cdac 0xd5a79147@uint32;
mov L0x55555555cdb0 0xd5a79147@uint32; mov L0x55555555cdb4 0xd5a79147@uint32;
mov L0x55555555cdb8 0xd5a79147@uint32; mov L0x55555555cdbc 0xd5a79147@uint32;
mov L0x55555555cdc0 0x06ca6351@uint32; mov L0x55555555cdc4 0x06ca6351@uint32;
mov L0x55555555cdc8 0x06ca6351@uint32; mov L0x55555555cdcc 0x06ca6351@uint32;
mov L0x55555555cdd0 0x06ca6351@uint32; mov L0x55555555cdd4 0x06ca6351@uint32;
mov L0x55555555cdd8 0x06ca6351@uint32; mov L0x55555555cddc 0x06ca6351@uint32;
mov L0x55555555cde0 0x14292967@uint32; mov L0x55555555cde4 0x14292967@uint32;
mov L0x55555555cde8 0x14292967@uint32; mov L0x55555555cdec 0x14292967@uint32;
mov L0x55555555cdf0 0x14292967@uint32; mov L0x55555555cdf4 0x14292967@uint32;
mov L0x55555555cdf8 0x14292967@uint32; mov L0x55555555cdfc 0x14292967@uint32;
mov L0x55555555ce00 0x27b70a85@uint32; mov L0x55555555ce04 0x27b70a85@uint32;
mov L0x55555555ce08 0x27b70a85@uint32; mov L0x55555555ce0c 0x27b70a85@uint32;
mov L0x55555555ce10 0x27b70a85@uint32; mov L0x55555555ce14 0x27b70a85@uint32;
mov L0x55555555ce18 0x27b70a85@uint32; mov L0x55555555ce1c 0x27b70a85@uint32;
mov L0x55555555ce20 0x2e1b2138@uint32; mov L0x55555555ce24 0x2e1b2138@uint32;
mov L0x55555555ce28 0x2e1b2138@uint32; mov L0x55555555ce2c 0x2e1b2138@uint32;
mov L0x55555555ce30 0x2e1b2138@uint32; mov L0x55555555ce34 0x2e1b2138@uint32;
mov L0x55555555ce38 0x2e1b2138@uint32; mov L0x55555555ce3c 0x2e1b2138@uint32;
mov L0x55555555ce40 0x4d2c6dfc@uint32; mov L0x55555555ce44 0x4d2c6dfc@uint32;
mov L0x55555555ce48 0x4d2c6dfc@uint32; mov L0x55555555ce4c 0x4d2c6dfc@uint32;
mov L0x55555555ce50 0x4d2c6dfc@uint32; mov L0x55555555ce54 0x4d2c6dfc@uint32;
mov L0x55555555ce58 0x4d2c6dfc@uint32; mov L0x55555555ce5c 0x4d2c6dfc@uint32;
mov L0x55555555ce60 0x53380d13@uint32; mov L0x55555555ce64 0x53380d13@uint32;
mov L0x55555555ce68 0x53380d13@uint32; mov L0x55555555ce6c 0x53380d13@uint32;
mov L0x55555555ce70 0x53380d13@uint32; mov L0x55555555ce74 0x53380d13@uint32;
mov L0x55555555ce78 0x53380d13@uint32; mov L0x55555555ce7c 0x53380d13@uint32;
mov L0x55555555ce80 0x650a7354@uint32; mov L0x55555555ce84 0x650a7354@uint32;
mov L0x55555555ce88 0x650a7354@uint32; mov L0x55555555ce8c 0x650a7354@uint32;
mov L0x55555555ce90 0x650a7354@uint32; mov L0x55555555ce94 0x650a7354@uint32;
mov L0x55555555ce98 0x650a7354@uint32; mov L0x55555555ce9c 0x650a7354@uint32;
mov L0x55555555cea0 0x766a0abb@uint32; mov L0x55555555cea4 0x766a0abb@uint32;
mov L0x55555555cea8 0x766a0abb@uint32; mov L0x55555555ceac 0x766a0abb@uint32;
mov L0x55555555ceb0 0x766a0abb@uint32; mov L0x55555555ceb4 0x766a0abb@uint32;
mov L0x55555555ceb8 0x766a0abb@uint32; mov L0x55555555cebc 0x766a0abb@uint32;
mov L0x55555555cec0 0x81c2c92e@uint32; mov L0x55555555cec4 0x81c2c92e@uint32;
mov L0x55555555cec8 0x81c2c92e@uint32; mov L0x55555555cecc 0x81c2c92e@uint32;
mov L0x55555555ced0 0x81c2c92e@uint32; mov L0x55555555ced4 0x81c2c92e@uint32;
mov L0x55555555ced8 0x81c2c92e@uint32; mov L0x55555555cedc 0x81c2c92e@uint32;
mov L0x55555555cee0 0x92722c85@uint32; mov L0x55555555cee4 0x92722c85@uint32;
mov L0x55555555cee8 0x92722c85@uint32; mov L0x55555555ceec 0x92722c85@uint32;
mov L0x55555555cef0 0x92722c85@uint32; mov L0x55555555cef4 0x92722c85@uint32;
mov L0x55555555cef8 0x92722c85@uint32; mov L0x55555555cefc 0x92722c85@uint32;
mov L0x55555555cf00 0xa2bfe8a1@uint32; mov L0x55555555cf04 0xa2bfe8a1@uint32;
mov L0x55555555cf08 0xa2bfe8a1@uint32; mov L0x55555555cf0c 0xa2bfe8a1@uint32;
mov L0x55555555cf10 0xa2bfe8a1@uint32; mov L0x55555555cf14 0xa2bfe8a1@uint32;
mov L0x55555555cf18 0xa2bfe8a1@uint32; mov L0x55555555cf1c 0xa2bfe8a1@uint32;
mov L0x55555555cf20 0xa81a664b@uint32; mov L0x55555555cf24 0xa81a664b@uint32;
mov L0x55555555cf28 0xa81a664b@uint32; mov L0x55555555cf2c 0xa81a664b@uint32;
mov L0x55555555cf30 0xa81a664b@uint32; mov L0x55555555cf34 0xa81a664b@uint32;
mov L0x55555555cf38 0xa81a664b@uint32; mov L0x55555555cf3c 0xa81a664b@uint32;
mov L0x55555555cf40 0xc24b8b70@uint32; mov L0x55555555cf44 0xc24b8b70@uint32;
mov L0x55555555cf48 0xc24b8b70@uint32; mov L0x55555555cf4c 0xc24b8b70@uint32;
mov L0x55555555cf50 0xc24b8b70@uint32; mov L0x55555555cf54 0xc24b8b70@uint32;
mov L0x55555555cf58 0xc24b8b70@uint32; mov L0x55555555cf5c 0xc24b8b70@uint32;
mov L0x55555555cf60 0xc76c51a3@uint32; mov L0x55555555cf64 0xc76c51a3@uint32;
mov L0x55555555cf68 0xc76c51a3@uint32; mov L0x55555555cf6c 0xc76c51a3@uint32;
mov L0x55555555cf70 0xc76c51a3@uint32; mov L0x55555555cf74 0xc76c51a3@uint32;
mov L0x55555555cf78 0xc76c51a3@uint32; mov L0x55555555cf7c 0xc76c51a3@uint32;
mov L0x55555555cf80 0xd192e819@uint32; mov L0x55555555cf84 0xd192e819@uint32;
mov L0x55555555cf88 0xd192e819@uint32; mov L0x55555555cf8c 0xd192e819@uint32;
mov L0x55555555cf90 0xd192e819@uint32; mov L0x55555555cf94 0xd192e819@uint32;
mov L0x55555555cf98 0xd192e819@uint32; mov L0x55555555cf9c 0xd192e819@uint32;
mov L0x55555555cfa0 0xd6990624@uint32; mov L0x55555555cfa4 0xd6990624@uint32;
mov L0x55555555cfa8 0xd6990624@uint32; mov L0x55555555cfac 0xd6990624@uint32;
mov L0x55555555cfb0 0xd6990624@uint32; mov L0x55555555cfb4 0xd6990624@uint32;
mov L0x55555555cfb8 0xd6990624@uint32; mov L0x55555555cfbc 0xd6990624@uint32;
mov L0x55555555cfc0 0xf40e3585@uint32; mov L0x55555555cfc4 0xf40e3585@uint32;
mov L0x55555555cfc8 0xf40e3585@uint32; mov L0x55555555cfcc 0xf40e3585@uint32;
mov L0x55555555cfd0 0xf40e3585@uint32; mov L0x55555555cfd4 0xf40e3585@uint32;
mov L0x55555555cfd8 0xf40e3585@uint32; mov L0x55555555cfdc 0xf40e3585@uint32;
mov L0x55555555cfe0 0x106aa070@uint32; mov L0x55555555cfe4 0x106aa070@uint32;
mov L0x55555555cfe8 0x106aa070@uint32; mov L0x55555555cfec 0x106aa070@uint32;
mov L0x55555555cff0 0x106aa070@uint32; mov L0x55555555cff4 0x106aa070@uint32;
mov L0x55555555cff8 0x106aa070@uint32; mov L0x55555555cffc 0x106aa070@uint32;
mov L0x55555555d000 0x19a4c116@uint32; mov L0x55555555d004 0x19a4c116@uint32;
mov L0x55555555d008 0x19a4c116@uint32; mov L0x55555555d00c 0x19a4c116@uint32;
mov L0x55555555d010 0x19a4c116@uint32; mov L0x55555555d014 0x19a4c116@uint32;
mov L0x55555555d018 0x19a4c116@uint32; mov L0x55555555d01c 0x19a4c116@uint32;
mov L0x55555555d020 0x1e376c08@uint32; mov L0x55555555d024 0x1e376c08@uint32;
mov L0x55555555d028 0x1e376c08@uint32; mov L0x55555555d02c 0x1e376c08@uint32;
mov L0x55555555d030 0x1e376c08@uint32; mov L0x55555555d034 0x1e376c08@uint32;
mov L0x55555555d038 0x1e376c08@uint32; mov L0x55555555d03c 0x1e376c08@uint32;
mov L0x55555555d040 0x2748774c@uint32; mov L0x55555555d044 0x2748774c@uint32;
mov L0x55555555d048 0x2748774c@uint32; mov L0x55555555d04c 0x2748774c@uint32;
mov L0x55555555d050 0x2748774c@uint32; mov L0x55555555d054 0x2748774c@uint32;
mov L0x55555555d058 0x2748774c@uint32; mov L0x55555555d05c 0x2748774c@uint32;
mov L0x55555555d060 0x34b0bcb5@uint32; mov L0x55555555d064 0x34b0bcb5@uint32;
mov L0x55555555d068 0x34b0bcb5@uint32; mov L0x55555555d06c 0x34b0bcb5@uint32;
mov L0x55555555d070 0x34b0bcb5@uint32; mov L0x55555555d074 0x34b0bcb5@uint32;
mov L0x55555555d078 0x34b0bcb5@uint32; mov L0x55555555d07c 0x34b0bcb5@uint32;
mov L0x55555555d080 0x391c0cb3@uint32; mov L0x55555555d084 0x391c0cb3@uint32;
mov L0x55555555d088 0x391c0cb3@uint32; mov L0x55555555d08c 0x391c0cb3@uint32;
mov L0x55555555d090 0x391c0cb3@uint32; mov L0x55555555d094 0x391c0cb3@uint32;
mov L0x55555555d098 0x391c0cb3@uint32; mov L0x55555555d09c 0x391c0cb3@uint32;
mov L0x55555555d0a0 0x4ed8aa4a@uint32; mov L0x55555555d0a4 0x4ed8aa4a@uint32;
mov L0x55555555d0a8 0x4ed8aa4a@uint32; mov L0x55555555d0ac 0x4ed8aa4a@uint32;
mov L0x55555555d0b0 0x4ed8aa4a@uint32; mov L0x55555555d0b4 0x4ed8aa4a@uint32;
mov L0x55555555d0b8 0x4ed8aa4a@uint32; mov L0x55555555d0bc 0x4ed8aa4a@uint32;
mov L0x55555555d0c0 0x5b9cca4f@uint32; mov L0x55555555d0c4 0x5b9cca4f@uint32;
mov L0x55555555d0c8 0x5b9cca4f@uint32; mov L0x55555555d0cc 0x5b9cca4f@uint32;
mov L0x55555555d0d0 0x5b9cca4f@uint32; mov L0x55555555d0d4 0x5b9cca4f@uint32;
mov L0x55555555d0d8 0x5b9cca4f@uint32; mov L0x55555555d0dc 0x5b9cca4f@uint32;
mov L0x55555555d0e0 0x682e6ff3@uint32; mov L0x55555555d0e4 0x682e6ff3@uint32;
mov L0x55555555d0e8 0x682e6ff3@uint32; mov L0x55555555d0ec 0x682e6ff3@uint32;
mov L0x55555555d0f0 0x682e6ff3@uint32; mov L0x55555555d0f4 0x682e6ff3@uint32;
mov L0x55555555d0f8 0x682e6ff3@uint32; mov L0x55555555d0fc 0x682e6ff3@uint32;
mov L0x55555555d100 0x748f82ee@uint32; mov L0x55555555d104 0x748f82ee@uint32;
mov L0x55555555d108 0x748f82ee@uint32; mov L0x55555555d10c 0x748f82ee@uint32;
mov L0x55555555d110 0x748f82ee@uint32; mov L0x55555555d114 0x748f82ee@uint32;
mov L0x55555555d118 0x748f82ee@uint32; mov L0x55555555d11c 0x748f82ee@uint32;
mov L0x55555555d120 0x78a5636f@uint32; mov L0x55555555d124 0x78a5636f@uint32;
mov L0x55555555d128 0x78a5636f@uint32; mov L0x55555555d12c 0x78a5636f@uint32;
mov L0x55555555d130 0x78a5636f@uint32; mov L0x55555555d134 0x78a5636f@uint32;
mov L0x55555555d138 0x78a5636f@uint32; mov L0x55555555d13c 0x78a5636f@uint32;
mov L0x55555555d140 0x84c87814@uint32; mov L0x55555555d144 0x84c87814@uint32;
mov L0x55555555d148 0x84c87814@uint32; mov L0x55555555d14c 0x84c87814@uint32;
mov L0x55555555d150 0x84c87814@uint32; mov L0x55555555d154 0x84c87814@uint32;
mov L0x55555555d158 0x84c87814@uint32; mov L0x55555555d15c 0x84c87814@uint32;
mov L0x55555555d160 0x8cc70208@uint32; mov L0x55555555d164 0x8cc70208@uint32;
mov L0x55555555d168 0x8cc70208@uint32; mov L0x55555555d16c 0x8cc70208@uint32;
mov L0x55555555d170 0x8cc70208@uint32; mov L0x55555555d174 0x8cc70208@uint32;
mov L0x55555555d178 0x8cc70208@uint32; mov L0x55555555d17c 0x8cc70208@uint32;
mov L0x55555555d180 0x90befffa@uint32; mov L0x55555555d184 0x90befffa@uint32;
mov L0x55555555d188 0x90befffa@uint32; mov L0x55555555d18c 0x90befffa@uint32;
mov L0x55555555d190 0x90befffa@uint32; mov L0x55555555d194 0x90befffa@uint32;
mov L0x55555555d198 0x90befffa@uint32; mov L0x55555555d19c 0x90befffa@uint32;
mov L0x55555555d1a0 0xa4506ceb@uint32; mov L0x55555555d1a4 0xa4506ceb@uint32;
mov L0x55555555d1a8 0xa4506ceb@uint32; mov L0x55555555d1ac 0xa4506ceb@uint32;
mov L0x55555555d1b0 0xa4506ceb@uint32; mov L0x55555555d1b4 0xa4506ceb@uint32;
mov L0x55555555d1b8 0xa4506ceb@uint32; mov L0x55555555d1bc 0xa4506ceb@uint32;
mov L0x55555555d1c0 0xbef9a3f7@uint32; mov L0x55555555d1c4 0xbef9a3f7@uint32;
mov L0x55555555d1c8 0xbef9a3f7@uint32; mov L0x55555555d1cc 0xbef9a3f7@uint32;
mov L0x55555555d1d0 0xbef9a3f7@uint32; mov L0x55555555d1d4 0xbef9a3f7@uint32;
mov L0x55555555d1d8 0xbef9a3f7@uint32; mov L0x55555555d1dc 0xbef9a3f7@uint32;
mov L0x55555555d1e0 0xc67178f2@uint32; mov L0x55555555d1e4 0xc67178f2@uint32;
mov L0x55555555d1e8 0xc67178f2@uint32; mov L0x55555555d1ec 0xc67178f2@uint32;
mov L0x55555555d1f0 0xc67178f2@uint32; mov L0x55555555d1f4 0xc67178f2@uint32;
mov L0x55555555d1f8 0xc67178f2@uint32; mov L0x55555555d1fc 0xc67178f2@uint32;

(* #! -> SP = 0x7fffffffd888 *)
#! 0x7fffffffd888 = 0x7fffffffd888;
(* shr    $0x20,%rcx                               #! PC = 0x5555555584a0 *)
(* shr 0x20, %rcx *)
nop;
(* cmp    $0x2,%edx                                #! PC = 0x5555555584a4 *)
(* cmp 0x2, edx *)
nop;
(* #jb     0x5555555584c0 <sha256_multi_block_avx+32>#! PC = 0x5555555584a7 *)
#jb     0x5555555584c0 <sha256_multi_block_avx+32>#! 0x5555555584a7 = 0x5555555584a7;
(* mov    %rsp,%rax                                #! PC = 0x5555555584c0 *)
mov rax rsp;
(* push   %rbx                                     #! EA = L0x7fffffffd880; PC = 0x5555555584c3 *)
(* push rbx *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd878; PC = 0x5555555584c4 *)
(* push rbp *)
nop;
(* sub    $0x120,%rsp                              #! PC = 0x5555555584c5 *)
(* sub 0x120, %rsp *)
nop;
(* and    $0xffffffffffffff00,%rsp                 #! PC = 0x5555555584cc *)
(* and 0xffffffffffffff00, %rsp *)
nop;
(* mov    %rax,0x110(%rsp)                         #! EA = L0x7fffffffd810; PC = 0x5555555584d3 *)
(* mov rax, 0x110(%rsp) *)
nop;
(* lea    0x459e(%rip),%rbp        # 0x55555555ca80 <K256+128>#! PC = 0x5555555584db *)
(* lea XXX, rbp *)
nop;
(* lea    0x100(%rsp),%rbx                         #! PC = 0x5555555584e2 *)
(* lea 0x100(%rsp), rbx *)
nop;
(* lea    0x80(%rdi),%rdi                          #! PC = 0x5555555584ea *)
(* lea XXX, %rdi *)
nop;
(* mov    %edx,0x118(%rsp)                         #! EA = L0x7fffffffd818; PC = 0x5555555584f1 *)
(* mov edx, 0x118(%rsp) *)
nop;
(* xor    %edx,%edx                                #! PC = 0x5555555584f8 *)
mov edx 0@uint32;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd8a0; Value = 0x00005555555612a0; PC = 0x5555555584fa *)
mov r8 L0x7fffffffd8a0;
(* mov    0x8(%rsi),%ecx                           #! EA = L0x7fffffffd8a8; Value = 0x0000000000000001; PC = 0x5555555584fd *)
mov ecx L0x7fffffffd8a8;
(* cmp    %edx,%ecx                                #! PC = 0x555555558500 *)
(* cmp edx, ecx *)
nop;
(* cmovg  %ecx,%edx                                #! PC = 0x555555558502 *)
(* cmovg ecx, edx *)
nop;
(* test   %ecx,%ecx                                #! PC = 0x555555558505 *)
(* test ecx, ecx *)
nop;
(* mov    %ecx,(%rbx)                              #! EA = L0x7fffffffd800; PC = 0x555555558507 *)
mov L0x7fffffffd800 ecx;
(* cmovle %rbp,%r8                                 #! PC = 0x555555558509 *)
(* cmovle rbp, r8 *)
nop;
(* mov    0x10(%rsi),%r9                           #! EA = L0x7fffffffd8b0; Value = 0x00005555555613b0; PC = 0x55555555850d *)
mov r9 L0x7fffffffd8b0;
(* mov    0x18(%rsi),%ecx                          #! EA = L0x7fffffffd8b8; Value = 0x0000000000000001; PC = 0x555555558511 *)
mov ecx L0x7fffffffd8b8;
(* cmp    %edx,%ecx                                #! PC = 0x555555558514 *)
(* cmp edx, ecx *)
nop;
(* cmovg  %ecx,%edx                                #! PC = 0x555555558516 *)
(* cmovg ecx, edx *)
nop;
(* test   %ecx,%ecx                                #! PC = 0x555555558519 *)
(* test ecx, ecx *)
nop;
(* mov    %ecx,0x4(%rbx)                           #! EA = L0x7fffffffd804; PC = 0x55555555851b *)
mov L0x7fffffffd804 ecx;
(* cmovle %rbp,%r9                                 #! PC = 0x55555555851e *)
(* cmovle rbp, r9 *)
nop;
(* mov    0x20(%rsi),%r10                          #! EA = L0x7fffffffd8c0; Value = 0x00005555555614c0; PC = 0x555555558522 *)
mov r10 L0x7fffffffd8c0;
(* mov    0x28(%rsi),%ecx                          #! EA = L0x7fffffffd8c8; Value = 0x0000000000000001; PC = 0x555555558526 *)
mov ecx L0x7fffffffd8c8;
(* cmp    %edx,%ecx                                #! PC = 0x555555558529 *)
(* cmp edx, ecx *)
nop;
(* cmovg  %ecx,%edx                                #! PC = 0x55555555852b *)
(* cmovg ecx, edx *)
nop;
(* test   %ecx,%ecx                                #! PC = 0x55555555852e *)
(* test ecx, ecx *)
nop;
(* mov    %ecx,0x8(%rbx)                           #! EA = L0x7fffffffd808; PC = 0x555555558530 *)
mov L0x7fffffffd808 ecx;
(* cmovle %rbp,%r10                                #! PC = 0x555555558533 *)
(* cmovle rbp, r10 *)
nop;
(* mov    0x30(%rsi),%r11                          #! EA = L0x7fffffffd8d0; Value = 0x00005555555615d0; PC = 0x555555558537 *)
mov r11 L0x7fffffffd8d0;
(* mov    0x38(%rsi),%ecx                          #! EA = L0x7fffffffd8d8; Value = 0x0000000000000001; PC = 0x55555555853b *)
mov ecx L0x7fffffffd8d8;
(* cmp    %edx,%ecx                                #! PC = 0x55555555853e *)
(* cmp edx, ecx *)
nop;
(* cmovg  %ecx,%edx                                #! PC = 0x555555558540 *)
(* cmovg ecx, edx *)
nop;
(* test   %ecx,%ecx                                #! PC = 0x555555558543 *)
(* test ecx, ecx *)
nop;
(* mov    %ecx,0xc(%rbx)                           #! EA = L0x7fffffffd80c; PC = 0x555555558545 *)
mov L0x7fffffffd80c ecx;
(* cmovle %rbp,%r11                                #! PC = 0x555555558548 *)
(* cmovle rbp, r11 *)
nop;
(* test   %edx,%edx                                #! PC = 0x55555555854c *)
(* test edx, edx *)
nop;
(* #je     0x55555555a576 <sha256_multi_block_avx+8406>#! PC = 0x55555555854e *)
#je     0x55555555a576 <sha256_multi_block_avx+8406>#! 0x55555555854e = 0x55555555854e;
(* vmovdqu -0x80(%rdi),%xmm8                       #! EA = L0x7fffffffd920; Value = 0x6a09e6676a09e667; PC = 0x555555558554 *)
mov xmm8_0 L0x7fffffffd920; mov xmm8_1 L0x7fffffffd924;
mov xmm8_2 L0x7fffffffd928; mov xmm8_3 L0x7fffffffd92c;
(* lea    0x80(%rsp),%rax                          #! PC = 0x555555558559 *)
(* lea 0x80(%rsp), rax *)
nop;
(* vmovdqu -0x60(%rdi),%xmm9                       #! EA = L0x7fffffffd940; Value = 0xbb67ae85bb67ae85; PC = 0x555555558561 *)
mov xmm9_0 L0x7fffffffd940; mov xmm9_1 L0x7fffffffd944;
mov xmm9_2 L0x7fffffffd948; mov xmm9_3 L0x7fffffffd94c;
(* vmovdqu -0x40(%rdi),%xmm10                      #! EA = L0x7fffffffd960; Value = 0x3c6ef3723c6ef372; PC = 0x555555558566 *)
mov xmm10_0 L0x7fffffffd960; mov xmm10_1 L0x7fffffffd964;
mov xmm10_2 L0x7fffffffd968; mov xmm10_3 L0x7fffffffd96c;
(* vmovdqu -0x20(%rdi),%xmm11                      #! EA = L0x7fffffffd980; Value = 0xa54ff53aa54ff53a; PC = 0x55555555856b *)
mov xmm11_0 L0x7fffffffd980; mov xmm11_1 L0x7fffffffd984;
mov xmm11_2 L0x7fffffffd988; mov xmm11_3 L0x7fffffffd98c;
(* vmovdqu (%rdi),%xmm12                           #! EA = L0x7fffffffd9a0; Value = 0x510e527f510e527f; PC = 0x555555558570 *)
mov xmm12_0 L0x7fffffffd9a0; mov xmm12_1 L0x7fffffffd9a4;
mov xmm12_2 L0x7fffffffd9a8; mov xmm12_3 L0x7fffffffd9ac;
(* vmovdqu 0x20(%rdi),%xmm13                       #! EA = L0x7fffffffd9c0; Value = 0x9b05688c9b05688c; PC = 0x555555558574 *)
mov xmm13_0 L0x7fffffffd9c0; mov xmm13_1 L0x7fffffffd9c4;
mov xmm13_2 L0x7fffffffd9c8; mov xmm13_3 L0x7fffffffd9cc;
(* vmovdqu 0x40(%rdi),%xmm14                       #! EA = L0x7fffffffd9e0; Value = 0x1f83d9ab1f83d9ab; PC = 0x555555558579 *)
mov xmm14_0 L0x7fffffffd9e0; mov xmm14_1 L0x7fffffffd9e4;
mov xmm14_2 L0x7fffffffd9e8; mov xmm14_3 L0x7fffffffd9ec;
(* vmovdqu 0x60(%rdi),%xmm15                       #! EA = L0x7fffffffda00; Value = 0x5be0cd195be0cd19; PC = 0x55555555857e *)
mov xmm15_0 L0x7fffffffda00; mov xmm15_1 L0x7fffffffda04;
mov xmm15_2 L0x7fffffffda08; mov xmm15_3 L0x7fffffffda0c;
(* vmovdqu 0x4c75(%rip),%xmm6        # 0x55555555d200 <K256+2048>#! EA = L0x55555555d200; Value = 0x0405060700010203; PC = 0x555555558583 *)
mov xmm6_0 L0x55555555d200; mov xmm6_1 L0x55555555d204;
mov xmm6_2 L0x55555555d208; mov xmm6_3 L0x55555555d20c;
(* #jmp    0x5555555585a0 <sha256_multi_block_avx+256>#! PC = 0x55555555858b *)
#jmp    0x5555555585a0 <sha256_multi_block_avx+256>#! 0x55555555858b = 0x55555555858b;
(* vpxor  %xmm9,%xmm10,%xmm4                       #! PC = 0x5555555585a0 *)
xor xmm4_0@uint32 xmm10_0 xmm9_0; xor xmm4_1@uint32 xmm10_1 xmm9_1;
xor xmm4_2@uint32 xmm10_2 xmm9_2; xor xmm4_3@uint32 xmm10_3 xmm9_3;
(* vmovd  (%r8),%xmm5                              #! EA = L0x5555555612a0; Value = 0x0706050403020100; PC = 0x5555555585a5 *)
mov xmm5_0 L0x5555555612a0; mov xmm5_1 0@uint32;
mov xmm5_2 0@uint32; mov xmm5_3 0@uint32;
(* vmovd  (%r9),%xmm0                              #! EA = L0x5555555613b0; Value = 0x0706050403020100; PC = 0x5555555585aa *)
mov xmm0_0 L0x5555555613b0; mov xmm0_1 0@uint32;
mov xmm0_2 0@uint32; mov xmm0_3 0@uint32;
(* vpinsrd $0x1,(%r10),%xmm5,%xmm5                 #! EA = L0x5555555614c0; Value = 0x0706050403020100; PC = 0x5555555585af *)
mov xmm5_0 xmm5_0; mov xmm5_1 L0x5555555614c0;
mov xmm5_2 xmm5_2; mov xmm5_3 xmm5_3;
(* vpinsrd $0x1,(%r11),%xmm0,%xmm0                 #! EA = L0x5555555615d0; Value = 0x0706050403020100; PC = 0x5555555585b5 *)
mov xmm0_0 xmm0_0; mov xmm0_1 L0x5555555615d0;
mov xmm0_2 xmm0_2; mov xmm0_3 xmm0_3;
(* vpunpckldq %xmm0,%xmm5,%xmm5                    #! PC = 0x5555555585bb *)
mov upck0 xmm5_0; mov upck1 xmm0_0; mov upck2 xmm5_1; mov upck3 xmm0_1;
mov xmm5_0 upck0; mov xmm5_1 upck1; mov xmm5_2 upck2; mov xmm5_3 upck3;
(* vpshufb %xmm6,%xmm5,%xmm5                       #! PC = 0x5555555585bf *)
assert true
   && and [xmm6_0=0x00010203@32, xmm6_1=0x04050607@32, xmm6_2=0x08090a0b@32, xmm6_3=0x0c0d0e0f@32];
spl s1 s0 xmm5_0 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_0 t1 t0;
spl s1 s0 xmm5_1 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_1 t1 t0;
spl s1 s0 xmm5_2 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_2 t1 t0;
spl s1 s0 xmm5_3 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_3 t1 t0;
(* vpsrld $0x6,%xmm12,%xmm7                        #! PC = 0x5555555585c4 *)
split xmm7_0 dc xmm12_0 0x6; split xmm7_1 dc xmm12_1 0x6;
split xmm7_2 dc xmm12_2 0x6; split xmm7_3 dc xmm12_3 0x6;
(* vpslld $0x1a,%xmm12,%xmm2                       #! PC = 0x5555555585ca *)
split dc xmm2_0 xmm12_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm12_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm12_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm12_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,-0x80(%rax)                       #! EA = L0x7fffffffd700; PC = 0x5555555585d0 *)
mov L0x7fffffffd700 xmm5_0; mov L0x7fffffffd704 xmm5_1;
mov L0x7fffffffd708 xmm5_2; mov L0x7fffffffd70c xmm5_3;
(* vpaddd %xmm15,%xmm5,%xmm5                       #! PC = 0x5555555585d5 *)
adds dc xmm5_0 xmm5_0 xmm15_0; adds dc xmm5_1 xmm5_1 xmm15_1;
adds dc xmm5_2 xmm5_2 xmm15_2; adds dc xmm5_3 xmm5_3 xmm15_3;
(* vpsrld $0xb,%xmm12,%xmm1                        #! PC = 0x5555555585da *)
split xmm1_0 dc xmm12_0 0xb; split xmm1_1 dc xmm12_1 0xb;
split xmm1_2 dc xmm12_2 0xb; split xmm1_3 dc xmm12_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555585e0 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm12,%xmm2                       #! PC = 0x5555555585e4 *)
split dc xmm2_0 xmm12_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm12_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm12_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm12_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x80(%rbp),%xmm5,%xmm5                  #! EA = L0x55555555ca00; Value = 0x428a2f98428a2f98; PC = 0x5555555585ea *)
adds dc xmm5_0 xmm5_0 L0x55555555ca00; adds dc xmm5_1 xmm5_1 L0x55555555ca04;
adds dc xmm5_2 xmm5_2 L0x55555555ca08; adds dc xmm5_3 xmm5_3 L0x55555555ca0c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555585ef *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm12,%xmm1                       #! PC = 0x5555555585f3 *)
split xmm1_0 dc xmm12_0 0x19; split xmm1_1 dc xmm12_1 0x19;
split xmm1_2 dc xmm12_2 0x19; split xmm1_3 dc xmm12_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555585f9 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm12,%xmm2                        #! PC = 0x5555555585fd *)
split dc xmm2_0 xmm12_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm12_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm12_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm12_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm14,%xmm12,%xmm0                      #! PC = 0x555555558603 *)
not xmm12_0n@uint32 xmm12_0; and xmm0_0@uint32 xmm12_0n xmm14_0;
not xmm12_1n@uint32 xmm12_1; and xmm0_1@uint32 xmm12_1n xmm14_1;
not xmm12_2n@uint32 xmm12_2; and xmm0_2@uint32 xmm12_2n xmm14_2;
not xmm12_3n@uint32 xmm12_3; and xmm0_3@uint32 xmm12_3n xmm14_3;
(* vpand  %xmm13,%xmm12,%xmm3                      #! PC = 0x555555558608 *)
and xmm3_0@uint32 xmm12_0 xmm13_0; and xmm3_1@uint32 xmm12_1 xmm13_1;
and xmm3_2@uint32 xmm12_2 xmm13_2; and xmm3_3@uint32 xmm12_3 xmm13_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555860d *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm8,%xmm15                        #! PC = 0x555555558611 *)
split xmm15_0 dc xmm8_0 0x2; split xmm15_1 dc xmm8_1 0x2;
split xmm15_2 dc xmm8_2 0x2; split xmm15_3 dc xmm8_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558617 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm8,%xmm1                        #! PC = 0x55555555861b *)
split dc xmm1_0 xmm8_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm8_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm8_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm8_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x555555558621 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm8,%xmm9,%xmm3                        #! PC = 0x555555558625 *)
xor xmm3_0@uint32 xmm9_0 xmm8_0; xor xmm3_1@uint32 xmm9_1 xmm8_1;
xor xmm3_2@uint32 xmm9_2 xmm8_2; xor xmm3_3@uint32 xmm9_3 xmm8_3;
(* vpxor  %xmm1,%xmm15,%xmm15                      #! PC = 0x55555555862a *)
xor xmm15_0@uint32 xmm15_0 xmm1_0; xor xmm15_1@uint32 xmm15_1 xmm1_1;
xor xmm15_2@uint32 xmm15_2 xmm1_2; xor xmm15_3@uint32 xmm15_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555862e *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm8,%xmm1                         #! PC = 0x555555558632 *)
split xmm1_0 dc xmm8_0 0xd; split xmm1_1 dc xmm8_1 0xd;
split xmm1_2 dc xmm8_2 0xd; split xmm1_3 dc xmm8_3 0xd;
(* vpslld $0x13,%xmm8,%xmm2                        #! PC = 0x555555558638 *)
split dc xmm2_0 xmm8_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm8_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm8_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm8_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x55555555863e *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555558642 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm15,%xmm7                       #! PC = 0x555555558646 *)
xor xmm7_0@uint32 xmm15_0 xmm1_0; xor xmm7_1@uint32 xmm15_1 xmm1_1;
xor xmm7_2@uint32 xmm15_2 xmm1_2; xor xmm7_3@uint32 xmm15_3 xmm1_3;
(* vpsrld $0x16,%xmm8,%xmm1                        #! PC = 0x55555555864a *)
split xmm1_0 dc xmm8_0 0x16; split xmm1_1 dc xmm8_1 0x16;
split xmm1_2 dc xmm8_2 0x16; split xmm1_3 dc xmm8_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558650 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm8,%xmm2                         #! PC = 0x555555558654 *)
split dc xmm2_0 xmm8_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm8_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm8_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm8_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm9,%xmm15                       #! PC = 0x55555555865a *)
xor xmm15_0@uint32 xmm9_0 xmm4_0; xor xmm15_1@uint32 xmm9_1 xmm4_1;
xor xmm15_2@uint32 xmm9_2 xmm4_2; xor xmm15_3@uint32 xmm9_3 xmm4_3;
(* vpaddd %xmm5,%xmm11,%xmm11                      #! PC = 0x55555555865e *)
adds dc xmm11_0 xmm11_0 xmm5_0; adds dc xmm11_1 xmm11_1 xmm5_1;
adds dc xmm11_2 xmm11_2 xmm5_2; adds dc xmm11_3 xmm11_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558662 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558666 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm15,%xmm15                      #! PC = 0x55555555866a *)
adds dc xmm15_0 xmm15_0 xmm5_0; adds dc xmm15_1 xmm15_1 xmm5_1;
adds dc xmm15_2 xmm15_2 xmm5_2; adds dc xmm15_3 xmm15_3 xmm5_3;
(* vpaddd %xmm7,%xmm15,%xmm15                      #! PC = 0x55555555866e *)
adds dc xmm15_0 xmm15_0 xmm7_0; adds dc xmm15_1 xmm15_1 xmm7_1;
adds dc xmm15_2 xmm15_2 xmm7_2; adds dc xmm15_3 xmm15_3 xmm7_3;

(* end of Round_00_15_avx: 0 *)

(* vmovd  0x4(%r8),%xmm5                           #! EA = L0x5555555612a4; Value = 0x0b0a090807060504; PC = 0x555555558672 *)
mov xmm5_0 L0x5555555612a4; mov xmm5_1 0@uint32;
mov xmm5_2 0@uint32; mov xmm5_3 0@uint32;
(* vmovd  0x4(%r9),%xmm0                           #! EA = L0x5555555613b4; Value = 0x0b0a090807060504; PC = 0x555555558678 *)
mov xmm0_0 L0x5555555613b4; mov xmm0_1 0@uint32;
mov xmm0_2 0@uint32; mov xmm0_3 0@uint32;
(* vpinsrd $0x1,0x4(%r10),%xmm5,%xmm5              #! EA = L0x5555555614c4; Value = 0x0b0a090807060504; PC = 0x55555555867e *)
mov xmm5_0 xmm5_0; mov xmm5_1 L0x5555555614c4;
mov xmm5_2 xmm5_2; mov xmm5_3 xmm5_3;
(* vpinsrd $0x1,0x4(%r11),%xmm0,%xmm0              #! EA = L0x5555555615d4; Value = 0x0b0a090807060504; PC = 0x555555558685 *)
mov xmm0_0 xmm0_0; mov xmm0_1 L0x5555555615d4;
mov xmm0_2 xmm0_2; mov xmm0_3 xmm0_3;
(* vpunpckldq %xmm0,%xmm5,%xmm5                    #! PC = 0x55555555868c *)
mov upck0 xmm5_0; mov upck1 xmm0_0; mov upck2 xmm5_1; mov upck3 xmm0_1;
mov xmm5_0 upck0; mov xmm5_1 upck1; mov xmm5_2 upck2; mov xmm5_3 upck3;
(* vpshufb %xmm6,%xmm5,%xmm5                       #! PC = 0x555555558690 *)
assert true
   && and [xmm6_0=0x00010203@32, xmm6_1=0x04050607@32, xmm6_2=0x08090a0b@32, xmm6_3=0x0c0d0e0f@32];
spl s1 s0 xmm5_0 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_0 t1 t0;
spl s1 s0 xmm5_1 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_1 t1 t0;
spl s1 s0 xmm5_2 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_2 t1 t0;
spl s1 s0 xmm5_3 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_3 t1 t0;
(* vpsrld $0x6,%xmm11,%xmm7                        #! PC = 0x555555558695 *)
split xmm7_0 dc xmm11_0 0x6; split xmm7_1 dc xmm11_1 0x6;
split xmm7_2 dc xmm11_2 0x6; split xmm7_3 dc xmm11_3 0x6;
(* vpslld $0x1a,%xmm11,%xmm2                       #! PC = 0x55555555869b *)
split dc xmm2_0 xmm11_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm11_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm11_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm11_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,-0x70(%rax)                       #! EA = L0x7fffffffd710; PC = 0x5555555586a1 *)
mov L0x7fffffffd710 xmm5_0; mov L0x7fffffffd714 xmm5_1;
mov L0x7fffffffd718 xmm5_2; mov L0x7fffffffd71c xmm5_3;
(* vpaddd %xmm14,%xmm5,%xmm5                       #! PC = 0x5555555586a6 *)
adds dc xmm5_0 xmm5_0 xmm14_0; adds dc xmm5_1 xmm5_1 xmm14_1;
adds dc xmm5_2 xmm5_2 xmm14_2; adds dc xmm5_3 xmm5_3 xmm14_3;
(* vpsrld $0xb,%xmm11,%xmm1                        #! PC = 0x5555555586ab *)
split xmm1_0 dc xmm11_0 0xb; split xmm1_1 dc xmm11_1 0xb;
split xmm1_2 dc xmm11_2 0xb; split xmm1_3 dc xmm11_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555586b1 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm11,%xmm2                       #! PC = 0x5555555586b5 *)
split dc xmm2_0 xmm11_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm11_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm11_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm11_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x60(%rbp),%xmm5,%xmm5                  #! EA = L0x55555555ca20; Value = 0x7137449171374491; PC = 0x5555555586bb *)
adds dc xmm5_0 xmm5_0 L0x55555555ca20; adds dc xmm5_1 xmm5_1 L0x55555555ca24;
adds dc xmm5_2 xmm5_2 L0x55555555ca28; adds dc xmm5_3 xmm5_3 L0x55555555ca2c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555586c0 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm11,%xmm1                       #! PC = 0x5555555586c4 *)
split xmm1_0 dc xmm11_0 0x19; split xmm1_1 dc xmm11_1 0x19;
split xmm1_2 dc xmm11_2 0x19; split xmm1_3 dc xmm11_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555586ca *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm11,%xmm2                        #! PC = 0x5555555586ce *)
split dc xmm2_0 xmm11_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm11_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm11_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm11_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm13,%xmm11,%xmm0                      #! PC = 0x5555555586d4 *)
not xmm11_0n@uint32 xmm11_0; and xmm0_0@uint32 xmm11_0n xmm13_0;
not xmm11_1n@uint32 xmm11_1; and xmm0_1@uint32 xmm11_1n xmm13_1;
not xmm11_2n@uint32 xmm11_2; and xmm0_2@uint32 xmm11_2n xmm13_2;
not xmm11_3n@uint32 xmm11_3; and xmm0_3@uint32 xmm11_3n xmm13_3;
(* vpand  %xmm12,%xmm11,%xmm4                      #! PC = 0x5555555586d9 *)
and xmm4_0@uint32 xmm11_0 xmm12_0; and xmm4_1@uint32 xmm11_1 xmm12_1;
and xmm4_2@uint32 xmm11_2 xmm12_2; and xmm4_3@uint32 xmm11_3 xmm12_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555586de *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm15,%xmm14                       #! PC = 0x5555555586e2 *)
split xmm14_0 dc xmm15_0 0x2; split xmm14_1 dc xmm15_1 0x2;
split xmm14_2 dc xmm15_2 0x2; split xmm14_3 dc xmm15_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555586e8 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm15,%xmm1                       #! PC = 0x5555555586ec *)
split dc xmm1_0 xmm15_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm15_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm15_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm15_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x5555555586f2 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm15,%xmm8,%xmm4                       #! PC = 0x5555555586f6 *)
xor xmm4_0@uint32 xmm8_0 xmm15_0; xor xmm4_1@uint32 xmm8_1 xmm15_1;
xor xmm4_2@uint32 xmm8_2 xmm15_2; xor xmm4_3@uint32 xmm8_3 xmm15_3;
(* vpxor  %xmm1,%xmm14,%xmm14                      #! PC = 0x5555555586fb *)
xor xmm14_0@uint32 xmm14_0 xmm1_0; xor xmm14_1@uint32 xmm14_1 xmm1_1;
xor xmm14_2@uint32 xmm14_2 xmm1_2; xor xmm14_3@uint32 xmm14_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x5555555586ff *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm15,%xmm1                        #! PC = 0x555555558703 *)
split xmm1_0 dc xmm15_0 0xd; split xmm1_1 dc xmm15_1 0xd;
split xmm1_2 dc xmm15_2 0xd; split xmm1_3 dc xmm15_3 0xd;
(* vpslld $0x13,%xmm15,%xmm2                       #! PC = 0x555555558709 *)
split dc xmm2_0 xmm15_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm15_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm15_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm15_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x55555555870f *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x555555558713 *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm14,%xmm7                       #! PC = 0x555555558717 *)
xor xmm7_0@uint32 xmm14_0 xmm1_0; xor xmm7_1@uint32 xmm14_1 xmm1_1;
xor xmm7_2@uint32 xmm14_2 xmm1_2; xor xmm7_3@uint32 xmm14_3 xmm1_3;
(* vpsrld $0x16,%xmm15,%xmm1                       #! PC = 0x55555555871b *)
split xmm1_0 dc xmm15_0 0x16; split xmm1_1 dc xmm15_1 0x16;
split xmm1_2 dc xmm15_2 0x16; split xmm1_3 dc xmm15_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558721 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm15,%xmm2                        #! PC = 0x555555558725 *)
split dc xmm2_0 xmm15_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm15_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm15_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm15_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm8,%xmm14                       #! PC = 0x55555555872b *)
xor xmm14_0@uint32 xmm8_0 xmm3_0; xor xmm14_1@uint32 xmm8_1 xmm3_1;
xor xmm14_2@uint32 xmm8_2 xmm3_2; xor xmm14_3@uint32 xmm8_3 xmm3_3;
(* vpaddd %xmm5,%xmm10,%xmm10                      #! PC = 0x55555555872f *)
adds dc xmm10_0 xmm10_0 xmm5_0; adds dc xmm10_1 xmm10_1 xmm5_1;
adds dc xmm10_2 xmm10_2 xmm5_2; adds dc xmm10_3 xmm10_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558733 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558737 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm14,%xmm14                      #! PC = 0x55555555873b *)
adds dc xmm14_0 xmm14_0 xmm5_0; adds dc xmm14_1 xmm14_1 xmm5_1;
adds dc xmm14_2 xmm14_2 xmm5_2; adds dc xmm14_3 xmm14_3 xmm5_3;
(* vpaddd %xmm7,%xmm14,%xmm14                      #! PC = 0x55555555873f *)
adds dc xmm14_0 xmm14_0 xmm7_0; adds dc xmm14_1 xmm14_1 xmm7_1;
adds dc xmm14_2 xmm14_2 xmm7_2; adds dc xmm14_3 xmm14_3 xmm7_3;

(* end of Round_00_15_avx: 1 *)

(* vmovd  0x8(%r8),%xmm5                           #! EA = L0x5555555612a8; Value = 0x0f0e0d0c0b0a0908; PC = 0x555555558743 *)
mov xmm5_0 L0x5555555612a8; mov xmm5_1 0@uint32;
mov xmm5_2 0@uint32; mov xmm5_3 0@uint32;
(* vmovd  0x8(%r9),%xmm0                           #! EA = L0x5555555613b8; Value = 0x0f0e0d0c0b0a0908; PC = 0x555555558749 *)
mov xmm0_0 L0x5555555613b8; mov xmm0_1 0@uint32;
mov xmm0_2 0@uint32; mov xmm0_3 0@uint32;
(* vpinsrd $0x1,0x8(%r10),%xmm5,%xmm5              #! EA = L0x5555555614c8; Value = 0x0f0e0d0c0b0a0908; PC = 0x55555555874f *)
mov xmm5_0 xmm5_0; mov xmm5_1 L0x5555555614c8;
mov xmm5_2 xmm5_2; mov xmm5_3 xmm5_3;
(* vpinsrd $0x1,0x8(%r11),%xmm0,%xmm0              #! EA = L0x5555555615d8; Value = 0x0f0e0d0c0b0a0908; PC = 0x555555558756 *)
mov xmm0_0 xmm0_0; mov xmm0_1 L0x5555555615d8;
mov xmm0_2 xmm0_2; mov xmm0_3 xmm0_3;
(* vpunpckldq %xmm0,%xmm5,%xmm5                    #! PC = 0x55555555875d *)
mov upck0 xmm5_0; mov upck1 xmm0_0; mov upck2 xmm5_1; mov upck3 xmm0_1;
mov xmm5_0 upck0; mov xmm5_1 upck1; mov xmm5_2 upck2; mov xmm5_3 upck3;
(* vpshufb %xmm6,%xmm5,%xmm5                       #! PC = 0x555555558761 *)
assert true
   && and [xmm6_0=0x00010203@32, xmm6_1=0x04050607@32, xmm6_2=0x08090a0b@32, xmm6_3=0x0c0d0e0f@32];
spl s1 s0 xmm5_0 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_0 t1 t0;
spl s1 s0 xmm5_1 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_1 t1 t0;
spl s1 s0 xmm5_2 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_2 t1 t0;
spl s1 s0 xmm5_3 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_3 t1 t0;
(* vpsrld $0x6,%xmm10,%xmm7                        #! PC = 0x555555558766 *)
split xmm7_0 dc xmm10_0 0x6; split xmm7_1 dc xmm10_1 0x6;
split xmm7_2 dc xmm10_2 0x6; split xmm7_3 dc xmm10_3 0x6;
(* vpslld $0x1a,%xmm10,%xmm2                       #! PC = 0x55555555876c *)
split dc xmm2_0 xmm10_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm10_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm10_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm10_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,-0x60(%rax)                       #! EA = L0x7fffffffd720; PC = 0x555555558772 *)
mov L0x7fffffffd720 xmm5_0; mov L0x7fffffffd724 xmm5_1;
mov L0x7fffffffd728 xmm5_2; mov L0x7fffffffd72c xmm5_3;
(* vpaddd %xmm13,%xmm5,%xmm5                       #! PC = 0x555555558777 *)
adds dc xmm5_0 xmm5_0 xmm13_0; adds dc xmm5_1 xmm5_1 xmm13_1;
adds dc xmm5_2 xmm5_2 xmm13_2; adds dc xmm5_3 xmm5_3 xmm13_3;
(* vpsrld $0xb,%xmm10,%xmm1                        #! PC = 0x55555555877c *)
split xmm1_0 dc xmm10_0 0xb; split xmm1_1 dc xmm10_1 0xb;
split xmm1_2 dc xmm10_2 0xb; split xmm1_3 dc xmm10_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558782 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm10,%xmm2                       #! PC = 0x555555558786 *)
split dc xmm2_0 xmm10_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm10_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm10_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm10_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x40(%rbp),%xmm5,%xmm5                  #! EA = L0x55555555ca40; Value = 0xb5c0fbcfb5c0fbcf; PC = 0x55555555878c *)
adds dc xmm5_0 xmm5_0 L0x55555555ca40; adds dc xmm5_1 xmm5_1 L0x55555555ca44;
adds dc xmm5_2 xmm5_2 L0x55555555ca48; adds dc xmm5_3 xmm5_3 L0x55555555ca4c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558791 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm10,%xmm1                       #! PC = 0x555555558795 *)
split xmm1_0 dc xmm10_0 0x19; split xmm1_1 dc xmm10_1 0x19;
split xmm1_2 dc xmm10_2 0x19; split xmm1_3 dc xmm10_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555879b *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm10,%xmm2                        #! PC = 0x55555555879f *)
split dc xmm2_0 xmm10_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm10_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm10_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm10_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm12,%xmm10,%xmm0                      #! PC = 0x5555555587a5 *)
not xmm10_0n@uint32 xmm10_0; and xmm0_0@uint32 xmm10_0n xmm12_0;
not xmm10_1n@uint32 xmm10_1; and xmm0_1@uint32 xmm10_1n xmm12_1;
not xmm10_2n@uint32 xmm10_2; and xmm0_2@uint32 xmm10_2n xmm12_2;
not xmm10_3n@uint32 xmm10_3; and xmm0_3@uint32 xmm10_3n xmm12_3;
(* vpand  %xmm11,%xmm10,%xmm3                      #! PC = 0x5555555587aa *)
and xmm3_0@uint32 xmm10_0 xmm11_0; and xmm3_1@uint32 xmm10_1 xmm11_1;
and xmm3_2@uint32 xmm10_2 xmm11_2; and xmm3_3@uint32 xmm10_3 xmm11_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555587af *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm14,%xmm13                       #! PC = 0x5555555587b3 *)
split xmm13_0 dc xmm14_0 0x2; split xmm13_1 dc xmm14_1 0x2;
split xmm13_2 dc xmm14_2 0x2; split xmm13_3 dc xmm14_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555587b9 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm14,%xmm1                       #! PC = 0x5555555587bd *)
split dc xmm1_0 xmm14_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm14_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm14_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm14_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x5555555587c3 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm14,%xmm15,%xmm3                      #! PC = 0x5555555587c7 *)
xor xmm3_0@uint32 xmm15_0 xmm14_0; xor xmm3_1@uint32 xmm15_1 xmm14_1;
xor xmm3_2@uint32 xmm15_2 xmm14_2; xor xmm3_3@uint32 xmm15_3 xmm14_3;
(* vpxor  %xmm1,%xmm13,%xmm13                      #! PC = 0x5555555587cc *)
xor xmm13_0@uint32 xmm13_0 xmm1_0; xor xmm13_1@uint32 xmm13_1 xmm1_1;
xor xmm13_2@uint32 xmm13_2 xmm1_2; xor xmm13_3@uint32 xmm13_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x5555555587d0 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm14,%xmm1                        #! PC = 0x5555555587d4 *)
split xmm1_0 dc xmm14_0 0xd; split xmm1_1 dc xmm14_1 0xd;
split xmm1_2 dc xmm14_2 0xd; split xmm1_3 dc xmm14_3 0xd;
(* vpslld $0x13,%xmm14,%xmm2                       #! PC = 0x5555555587da *)
split dc xmm2_0 xmm14_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm14_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm14_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm14_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x5555555587e0 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x5555555587e4 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm13,%xmm7                       #! PC = 0x5555555587e8 *)
xor xmm7_0@uint32 xmm13_0 xmm1_0; xor xmm7_1@uint32 xmm13_1 xmm1_1;
xor xmm7_2@uint32 xmm13_2 xmm1_2; xor xmm7_3@uint32 xmm13_3 xmm1_3;
(* vpsrld $0x16,%xmm14,%xmm1                       #! PC = 0x5555555587ec *)
split xmm1_0 dc xmm14_0 0x16; split xmm1_1 dc xmm14_1 0x16;
split xmm1_2 dc xmm14_2 0x16; split xmm1_3 dc xmm14_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555587f2 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm14,%xmm2                        #! PC = 0x5555555587f6 *)
split dc xmm2_0 xmm14_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm14_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm14_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm14_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm15,%xmm13                      #! PC = 0x5555555587fc *)
xor xmm13_0@uint32 xmm15_0 xmm4_0; xor xmm13_1@uint32 xmm15_1 xmm4_1;
xor xmm13_2@uint32 xmm15_2 xmm4_2; xor xmm13_3@uint32 xmm15_3 xmm4_3;
(* vpaddd %xmm5,%xmm9,%xmm9                        #! PC = 0x555555558800 *)
adds dc xmm9_0 xmm9_0 xmm5_0; adds dc xmm9_1 xmm9_1 xmm5_1;
adds dc xmm9_2 xmm9_2 xmm5_2; adds dc xmm9_3 xmm9_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558804 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558808 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm13,%xmm13                      #! PC = 0x55555555880c *)
adds dc xmm13_0 xmm13_0 xmm5_0; adds dc xmm13_1 xmm13_1 xmm5_1;
adds dc xmm13_2 xmm13_2 xmm5_2; adds dc xmm13_3 xmm13_3 xmm5_3;
(* vpaddd %xmm7,%xmm13,%xmm13                      #! PC = 0x555555558810 *)
adds dc xmm13_0 xmm13_0 xmm7_0; adds dc xmm13_1 xmm13_1 xmm7_1;
adds dc xmm13_2 xmm13_2 xmm7_2; adds dc xmm13_3 xmm13_3 xmm7_3;
(* vmovd  0xc(%r8),%xmm5                           #! EA = L0x5555555612ac; Value = 0x131211100f0e0d0c; PC = 0x555555558814 *)
mov xmm5_0 L0x5555555612ac; mov xmm5_1 0@uint32;
mov xmm5_2 0@uint32; mov xmm5_3 0@uint32;
(* vmovd  0xc(%r9),%xmm0                           #! EA = L0x5555555613bc; Value = 0x131211100f0e0d0c; PC = 0x55555555881a *)
mov xmm0_0 L0x5555555613bc; mov xmm0_1 0@uint32;
mov xmm0_2 0@uint32; mov xmm0_3 0@uint32;
(* vpinsrd $0x1,0xc(%r10),%xmm5,%xmm5              #! EA = L0x5555555614cc; Value = 0x131211100f0e0d0c; PC = 0x555555558820 *)
mov xmm5_0 xmm5_0; mov xmm5_1 L0x5555555614cc;
mov xmm5_2 xmm5_2; mov xmm5_3 xmm5_3;
(* vpinsrd $0x1,0xc(%r11),%xmm0,%xmm0              #! EA = L0x5555555615dc; Value = 0x131211100f0e0d0c; PC = 0x555555558827 *)
mov xmm0_0 xmm0_0; mov xmm0_1 L0x5555555615dc;
mov xmm0_2 xmm0_2; mov xmm0_3 xmm0_3;
(* vpunpckldq %xmm0,%xmm5,%xmm5                    #! PC = 0x55555555882e *)
mov upck0 xmm5_0; mov upck1 xmm0_0; mov upck2 xmm5_1; mov upck3 xmm0_1;
mov xmm5_0 upck0; mov xmm5_1 upck1; mov xmm5_2 upck2; mov xmm5_3 upck3;
(* vpshufb %xmm6,%xmm5,%xmm5                       #! PC = 0x555555558832 *)
assert true
   && and [xmm6_0=0x00010203@32, xmm6_1=0x04050607@32, xmm6_2=0x08090a0b@32, xmm6_3=0x0c0d0e0f@32];
spl s1 s0 xmm5_0 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_0 t1 t0;
spl s1 s0 xmm5_1 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_1 t1 t0;
spl s1 s0 xmm5_2 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_2 t1 t0;
spl s1 s0 xmm5_3 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_3 t1 t0;
(* vpsrld $0x6,%xmm9,%xmm7                         #! PC = 0x555555558837 *)
split xmm7_0 dc xmm9_0 0x6; split xmm7_1 dc xmm9_1 0x6;
split xmm7_2 dc xmm9_2 0x6; split xmm7_3 dc xmm9_3 0x6;
(* vpslld $0x1a,%xmm9,%xmm2                        #! PC = 0x55555555883d *)
split dc xmm2_0 xmm9_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm9_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm9_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm9_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,-0x50(%rax)                       #! EA = L0x7fffffffd730; PC = 0x555555558843 *)
mov L0x7fffffffd730 xmm5_0; mov L0x7fffffffd734 xmm5_1;
mov L0x7fffffffd738 xmm5_2; mov L0x7fffffffd73c xmm5_3;
(* vpaddd %xmm12,%xmm5,%xmm5                       #! PC = 0x555555558848 *)
adds dc xmm5_0 xmm5_0 xmm12_0; adds dc xmm5_1 xmm5_1 xmm12_1;
adds dc xmm5_2 xmm5_2 xmm12_2; adds dc xmm5_3 xmm5_3 xmm12_3;
(* vpsrld $0xb,%xmm9,%xmm1                         #! PC = 0x55555555884d *)
split xmm1_0 dc xmm9_0 0xb; split xmm1_1 dc xmm9_1 0xb;
split xmm1_2 dc xmm9_2 0xb; split xmm1_3 dc xmm9_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558853 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm9,%xmm2                        #! PC = 0x555555558857 *)
split dc xmm2_0 xmm9_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm9_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm9_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm9_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x20(%rbp),%xmm5,%xmm5                  #! EA = L0x55555555ca60; Value = 0xe9b5dba5e9b5dba5; PC = 0x55555555885d *)
adds dc xmm5_0 xmm5_0 L0x55555555ca60; adds dc xmm5_1 xmm5_1 L0x55555555ca64;
adds dc xmm5_2 xmm5_2 L0x55555555ca68; adds dc xmm5_3 xmm5_3 L0x55555555ca6c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558862 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm9,%xmm1                        #! PC = 0x555555558866 *)
split xmm1_0 dc xmm9_0 0x19; split xmm1_1 dc xmm9_1 0x19;
split xmm1_2 dc xmm9_2 0x19; split xmm1_3 dc xmm9_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555886c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm9,%xmm2                         #! PC = 0x555555558870 *)
split dc xmm2_0 xmm9_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm9_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm9_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm9_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm11,%xmm9,%xmm0                       #! PC = 0x555555558876 *)
not xmm9_0n@uint32 xmm9_0; and xmm0_0@uint32 xmm9_0n xmm11_0;
not xmm9_1n@uint32 xmm9_1; and xmm0_1@uint32 xmm9_1n xmm11_1;
not xmm9_2n@uint32 xmm9_2; and xmm0_2@uint32 xmm9_2n xmm11_2;
not xmm9_3n@uint32 xmm9_3; and xmm0_3@uint32 xmm9_3n xmm11_3;
(* vpand  %xmm10,%xmm9,%xmm4                       #! PC = 0x55555555887b *)
and xmm4_0@uint32 xmm9_0 xmm10_0; and xmm4_1@uint32 xmm9_1 xmm10_1;
and xmm4_2@uint32 xmm9_2 xmm10_2; and xmm4_3@uint32 xmm9_3 xmm10_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558880 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm13,%xmm12                       #! PC = 0x555555558884 *)
split xmm12_0 dc xmm13_0 0x2; split xmm12_1 dc xmm13_1 0x2;
split xmm12_2 dc xmm13_2 0x2; split xmm12_3 dc xmm13_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555888a *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm13,%xmm1                       #! PC = 0x55555555888e *)
split dc xmm1_0 xmm13_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm13_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm13_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm13_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x555555558894 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm13,%xmm14,%xmm4                      #! PC = 0x555555558898 *)
xor xmm4_0@uint32 xmm14_0 xmm13_0; xor xmm4_1@uint32 xmm14_1 xmm13_1;
xor xmm4_2@uint32 xmm14_2 xmm13_2; xor xmm4_3@uint32 xmm14_3 xmm13_3;
(* vpxor  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555555889d *)
xor xmm12_0@uint32 xmm12_0 xmm1_0; xor xmm12_1@uint32 xmm12_1 xmm1_1;
xor xmm12_2@uint32 xmm12_2 xmm1_2; xor xmm12_3@uint32 xmm12_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x5555555588a1 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm13,%xmm1                        #! PC = 0x5555555588a5 *)
split xmm1_0 dc xmm13_0 0xd; split xmm1_1 dc xmm13_1 0xd;
split xmm1_2 dc xmm13_2 0xd; split xmm1_3 dc xmm13_3 0xd;
(* vpslld $0x13,%xmm13,%xmm2                       #! PC = 0x5555555588ab *)
split dc xmm2_0 xmm13_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm13_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm13_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm13_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x5555555588b1 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x5555555588b5 *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm12,%xmm7                       #! PC = 0x5555555588b9 *)
xor xmm7_0@uint32 xmm12_0 xmm1_0; xor xmm7_1@uint32 xmm12_1 xmm1_1;
xor xmm7_2@uint32 xmm12_2 xmm1_2; xor xmm7_3@uint32 xmm12_3 xmm1_3;
(* vpsrld $0x16,%xmm13,%xmm1                       #! PC = 0x5555555588bd *)
split xmm1_0 dc xmm13_0 0x16; split xmm1_1 dc xmm13_1 0x16;
split xmm1_2 dc xmm13_2 0x16; split xmm1_3 dc xmm13_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555588c3 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm13,%xmm2                        #! PC = 0x5555555588c7 *)
split dc xmm2_0 xmm13_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm13_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm13_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm13_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm14,%xmm12                      #! PC = 0x5555555588cd *)
xor xmm12_0@uint32 xmm14_0 xmm3_0; xor xmm12_1@uint32 xmm14_1 xmm3_1;
xor xmm12_2@uint32 xmm14_2 xmm3_2; xor xmm12_3@uint32 xmm14_3 xmm3_3;
(* vpaddd %xmm5,%xmm8,%xmm8                        #! PC = 0x5555555588d1 *)
adds dc xmm8_0 xmm8_0 xmm5_0; adds dc xmm8_1 xmm8_1 xmm5_1;
adds dc xmm8_2 xmm8_2 xmm5_2; adds dc xmm8_3 xmm8_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555588d5 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555588d9 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm12,%xmm12                      #! PC = 0x5555555588dd *)
adds dc xmm12_0 xmm12_0 xmm5_0; adds dc xmm12_1 xmm12_1 xmm5_1;
adds dc xmm12_2 xmm12_2 xmm5_2; adds dc xmm12_3 xmm12_3 xmm5_3;
(* vpaddd %xmm7,%xmm12,%xmm12                      #! PC = 0x5555555588e1 *)
adds dc xmm12_0 xmm12_0 xmm7_0; adds dc xmm12_1 xmm12_1 xmm7_1;
adds dc xmm12_2 xmm12_2 xmm7_2; adds dc xmm12_3 xmm12_3 xmm7_3;
(* vmovd  0x10(%r8),%xmm5                          #! EA = L0x5555555612b0; Value = 0x1716151413121110; PC = 0x5555555588e5 *)
mov xmm5_0 L0x5555555612b0; mov xmm5_1 0@uint32;
mov xmm5_2 0@uint32; mov xmm5_3 0@uint32;
(* vmovd  0x10(%r9),%xmm0                          #! EA = L0x5555555613c0; Value = 0x1716151413121110; PC = 0x5555555588eb *)
mov xmm0_0 L0x5555555613c0; mov xmm0_1 0@uint32;
mov xmm0_2 0@uint32; mov xmm0_3 0@uint32;
(* vpinsrd $0x1,0x10(%r10),%xmm5,%xmm5             #! EA = L0x5555555614d0; Value = 0x1716151413121110; PC = 0x5555555588f1 *)
mov xmm5_0 xmm5_0; mov xmm5_1 L0x5555555614d0;
mov xmm5_2 xmm5_2; mov xmm5_3 xmm5_3;
(* vpinsrd $0x1,0x10(%r11),%xmm0,%xmm0             #! EA = L0x5555555615e0; Value = 0x1716151413121110; PC = 0x5555555588f8 *)
mov xmm0_0 xmm0_0; mov xmm0_1 L0x5555555615e0;
mov xmm0_2 xmm0_2; mov xmm0_3 xmm0_3;
(* vpunpckldq %xmm0,%xmm5,%xmm5                    #! PC = 0x5555555588ff *)
mov upck0 xmm5_0; mov upck1 xmm0_0; mov upck2 xmm5_1; mov upck3 xmm0_1;
mov xmm5_0 upck0; mov xmm5_1 upck1; mov xmm5_2 upck2; mov xmm5_3 upck3;
(* vpshufb %xmm6,%xmm5,%xmm5                       #! PC = 0x555555558903 *)
assert true
   && and [xmm6_0=0x00010203@32, xmm6_1=0x04050607@32, xmm6_2=0x08090a0b@32, xmm6_3=0x0c0d0e0f@32];
spl s1 s0 xmm5_0 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_0 t1 t0;
spl s1 s0 xmm5_1 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_1 t1 t0;
spl s1 s0 xmm5_2 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_2 t1 t0;
spl s1 s0 xmm5_3 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_3 t1 t0;
(* vpsrld $0x6,%xmm8,%xmm7                         #! PC = 0x555555558908 *)
split xmm7_0 dc xmm8_0 0x6; split xmm7_1 dc xmm8_1 0x6;
split xmm7_2 dc xmm8_2 0x6; split xmm7_3 dc xmm8_3 0x6;
(* vpslld $0x1a,%xmm8,%xmm2                        #! PC = 0x55555555890e *)
split dc xmm2_0 xmm8_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm8_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm8_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm8_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,-0x40(%rax)                       #! EA = L0x7fffffffd740; PC = 0x555555558914 *)
mov L0x7fffffffd740 xmm5_0; mov L0x7fffffffd744 xmm5_1;
mov L0x7fffffffd748 xmm5_2; mov L0x7fffffffd74c xmm5_3;
(* vpaddd %xmm11,%xmm5,%xmm5                       #! PC = 0x555555558919 *)
adds dc xmm5_0 xmm5_0 xmm11_0; adds dc xmm5_1 xmm5_1 xmm11_1;
adds dc xmm5_2 xmm5_2 xmm11_2; adds dc xmm5_3 xmm5_3 xmm11_3;
(* vpsrld $0xb,%xmm8,%xmm1                         #! PC = 0x55555555891e *)
split xmm1_0 dc xmm8_0 0xb; split xmm1_1 dc xmm8_1 0xb;
split xmm1_2 dc xmm8_2 0xb; split xmm1_3 dc xmm8_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558924 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm8,%xmm2                        #! PC = 0x555555558928 *)
split dc xmm2_0 xmm8_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm8_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm8_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm8_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x0(%rbp),%xmm5,%xmm5                    #! EA = L0x55555555ca80; Value = 0x3956c25b3956c25b; PC = 0x55555555892e *)
adds dc xmm5_0 xmm5_0 L0x55555555ca80; adds dc xmm5_1 xmm5_1 L0x55555555ca84;
adds dc xmm5_2 xmm5_2 L0x55555555ca88; adds dc xmm5_3 xmm5_3 L0x55555555ca8c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558933 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm8,%xmm1                        #! PC = 0x555555558937 *)
split xmm1_0 dc xmm8_0 0x19; split xmm1_1 dc xmm8_1 0x19;
split xmm1_2 dc xmm8_2 0x19; split xmm1_3 dc xmm8_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555893d *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm8,%xmm2                         #! PC = 0x555555558941 *)
split dc xmm2_0 xmm8_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm8_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm8_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm8_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm10,%xmm8,%xmm0                       #! PC = 0x555555558947 *)
not xmm8_0n@uint32 xmm8_0; and xmm0_0@uint32 xmm8_0n xmm10_0;
not xmm8_1n@uint32 xmm8_1; and xmm0_1@uint32 xmm8_1n xmm10_1;
not xmm8_2n@uint32 xmm8_2; and xmm0_2@uint32 xmm8_2n xmm10_2;
not xmm8_3n@uint32 xmm8_3; and xmm0_3@uint32 xmm8_3n xmm10_3;
(* vpand  %xmm9,%xmm8,%xmm3                        #! PC = 0x55555555894c *)
and xmm3_0@uint32 xmm8_0 xmm9_0; and xmm3_1@uint32 xmm8_1 xmm9_1;
and xmm3_2@uint32 xmm8_2 xmm9_2; and xmm3_3@uint32 xmm8_3 xmm9_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558951 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm12,%xmm11                       #! PC = 0x555555558955 *)
split xmm11_0 dc xmm12_0 0x2; split xmm11_1 dc xmm12_1 0x2;
split xmm11_2 dc xmm12_2 0x2; split xmm11_3 dc xmm12_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555895b *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm12,%xmm1                       #! PC = 0x55555555895f *)
split dc xmm1_0 xmm12_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm12_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm12_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm12_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x555555558965 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm12,%xmm13,%xmm3                      #! PC = 0x555555558969 *)
xor xmm3_0@uint32 xmm13_0 xmm12_0; xor xmm3_1@uint32 xmm13_1 xmm12_1;
xor xmm3_2@uint32 xmm13_2 xmm12_2; xor xmm3_3@uint32 xmm13_3 xmm12_3;
(* vpxor  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555555896e *)
xor xmm11_0@uint32 xmm11_0 xmm1_0; xor xmm11_1@uint32 xmm11_1 xmm1_1;
xor xmm11_2@uint32 xmm11_2 xmm1_2; xor xmm11_3@uint32 xmm11_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555558972 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm12,%xmm1                        #! PC = 0x555555558976 *)
split xmm1_0 dc xmm12_0 0xd; split xmm1_1 dc xmm12_1 0xd;
split xmm1_2 dc xmm12_2 0xd; split xmm1_3 dc xmm12_3 0xd;
(* vpslld $0x13,%xmm12,%xmm2                       #! PC = 0x55555555897c *)
split dc xmm2_0 xmm12_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm12_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm12_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm12_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555558982 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555558986 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm11,%xmm7                       #! PC = 0x55555555898a *)
xor xmm7_0@uint32 xmm11_0 xmm1_0; xor xmm7_1@uint32 xmm11_1 xmm1_1;
xor xmm7_2@uint32 xmm11_2 xmm1_2; xor xmm7_3@uint32 xmm11_3 xmm1_3;
(* vpsrld $0x16,%xmm12,%xmm1                       #! PC = 0x55555555898e *)
split xmm1_0 dc xmm12_0 0x16; split xmm1_1 dc xmm12_1 0x16;
split xmm1_2 dc xmm12_2 0x16; split xmm1_3 dc xmm12_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558994 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm12,%xmm2                        #! PC = 0x555555558998 *)
split dc xmm2_0 xmm12_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm12_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm12_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm12_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm13,%xmm11                      #! PC = 0x55555555899e *)
xor xmm11_0@uint32 xmm13_0 xmm4_0; xor xmm11_1@uint32 xmm13_1 xmm4_1;
xor xmm11_2@uint32 xmm13_2 xmm4_2; xor xmm11_3@uint32 xmm13_3 xmm4_3;
(* vpaddd %xmm5,%xmm15,%xmm15                      #! PC = 0x5555555589a2 *)
adds dc xmm15_0 xmm15_0 xmm5_0; adds dc xmm15_1 xmm15_1 xmm5_1;
adds dc xmm15_2 xmm15_2 xmm5_2; adds dc xmm15_3 xmm15_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555589a6 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555589aa *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm11,%xmm11                      #! PC = 0x5555555589ae *)
adds dc xmm11_0 xmm11_0 xmm5_0; adds dc xmm11_1 xmm11_1 xmm5_1;
adds dc xmm11_2 xmm11_2 xmm5_2; adds dc xmm11_3 xmm11_3 xmm5_3;
(* vpaddd %xmm7,%xmm11,%xmm11                      #! PC = 0x5555555589b2 *)
adds dc xmm11_0 xmm11_0 xmm7_0; adds dc xmm11_1 xmm11_1 xmm7_1;
adds dc xmm11_2 xmm11_2 xmm7_2; adds dc xmm11_3 xmm11_3 xmm7_3;
(* vmovd  0x14(%r8),%xmm5                          #! EA = L0x5555555612b4; Value = 0x1b1a191817161514; PC = 0x5555555589b6 *)
mov xmm5_0 L0x5555555612b4; mov xmm5_1 0@uint32;
mov xmm5_2 0@uint32; mov xmm5_3 0@uint32;
(* vmovd  0x14(%r9),%xmm0                          #! EA = L0x5555555613c4; Value = 0x1b1a191817161514; PC = 0x5555555589bc *)
mov xmm0_0 L0x5555555613c4; mov xmm0_1 0@uint32;
mov xmm0_2 0@uint32; mov xmm0_3 0@uint32;
(* vpinsrd $0x1,0x14(%r10),%xmm5,%xmm5             #! EA = L0x5555555614d4; Value = 0x1b1a191817161514; PC = 0x5555555589c2 *)
mov xmm5_0 xmm5_0; mov xmm5_1 L0x5555555614d4;
mov xmm5_2 xmm5_2; mov xmm5_3 xmm5_3;
(* vpinsrd $0x1,0x14(%r11),%xmm0,%xmm0             #! EA = L0x5555555615e4; Value = 0x1b1a191817161514; PC = 0x5555555589c9 *)
mov xmm0_0 xmm0_0; mov xmm0_1 L0x5555555615e4;
mov xmm0_2 xmm0_2; mov xmm0_3 xmm0_3;
(* vpunpckldq %xmm0,%xmm5,%xmm5                    #! PC = 0x5555555589d0 *)
mov upck0 xmm5_0; mov upck1 xmm0_0; mov upck2 xmm5_1; mov upck3 xmm0_1;
mov xmm5_0 upck0; mov xmm5_1 upck1; mov xmm5_2 upck2; mov xmm5_3 upck3;
(* vpshufb %xmm6,%xmm5,%xmm5                       #! PC = 0x5555555589d4 *)
assert true
   && and [xmm6_0=0x00010203@32, xmm6_1=0x04050607@32, xmm6_2=0x08090a0b@32, xmm6_3=0x0c0d0e0f@32];
spl s1 s0 xmm5_0 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_0 t1 t0;
spl s1 s0 xmm5_1 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_1 t1 t0;
spl s1 s0 xmm5_2 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_2 t1 t0;
spl s1 s0 xmm5_3 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_3 t1 t0;
(* vpsrld $0x6,%xmm15,%xmm7                        #! PC = 0x5555555589d9 *)
split xmm7_0 dc xmm15_0 0x6; split xmm7_1 dc xmm15_1 0x6;
split xmm7_2 dc xmm15_2 0x6; split xmm7_3 dc xmm15_3 0x6;
(* vpslld $0x1a,%xmm15,%xmm2                       #! PC = 0x5555555589df *)
split dc xmm2_0 xmm15_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm15_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm15_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm15_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,-0x30(%rax)                       #! EA = L0x7fffffffd750; PC = 0x5555555589e5 *)
mov L0x7fffffffd750 xmm5_0; mov L0x7fffffffd754 xmm5_1;
mov L0x7fffffffd758 xmm5_2; mov L0x7fffffffd75c xmm5_3;
(* vpaddd %xmm10,%xmm5,%xmm5                       #! PC = 0x5555555589ea *)
adds dc xmm5_0 xmm5_0 xmm10_0; adds dc xmm5_1 xmm5_1 xmm10_1;
adds dc xmm5_2 xmm5_2 xmm10_2; adds dc xmm5_3 xmm5_3 xmm10_3;
(* vpsrld $0xb,%xmm15,%xmm1                        #! PC = 0x5555555589ef *)
split xmm1_0 dc xmm15_0 0xb; split xmm1_1 dc xmm15_1 0xb;
split xmm1_2 dc xmm15_2 0xb; split xmm1_3 dc xmm15_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555589f5 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm15,%xmm2                       #! PC = 0x5555555589f9 *)
split dc xmm2_0 xmm15_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm15_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm15_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm15_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x20(%rbp),%xmm5,%xmm5                   #! EA = L0x55555555caa0; Value = 0x59f111f159f111f1; PC = 0x5555555589ff *)
adds dc xmm5_0 xmm5_0 L0x55555555caa0; adds dc xmm5_1 xmm5_1 L0x55555555caa4;
adds dc xmm5_2 xmm5_2 L0x55555555caa8; adds dc xmm5_3 xmm5_3 L0x55555555caac;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558a04 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm15,%xmm1                       #! PC = 0x555555558a08 *)
split xmm1_0 dc xmm15_0 0x19; split xmm1_1 dc xmm15_1 0x19;
split xmm1_2 dc xmm15_2 0x19; split xmm1_3 dc xmm15_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558a0e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm15,%xmm2                        #! PC = 0x555555558a12 *)
split dc xmm2_0 xmm15_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm15_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm15_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm15_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm9,%xmm15,%xmm0                       #! PC = 0x555555558a18 *)
not xmm15_0n@uint32 xmm15_0; and xmm0_0@uint32 xmm15_0n xmm9_0;
not xmm15_1n@uint32 xmm15_1; and xmm0_1@uint32 xmm15_1n xmm9_1;
not xmm15_2n@uint32 xmm15_2; and xmm0_2@uint32 xmm15_2n xmm9_2;
not xmm15_3n@uint32 xmm15_3; and xmm0_3@uint32 xmm15_3n xmm9_3;
(* vpand  %xmm8,%xmm15,%xmm4                       #! PC = 0x555555558a1d *)
and xmm4_0@uint32 xmm15_0 xmm8_0; and xmm4_1@uint32 xmm15_1 xmm8_1;
and xmm4_2@uint32 xmm15_2 xmm8_2; and xmm4_3@uint32 xmm15_3 xmm8_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558a22 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm11,%xmm10                       #! PC = 0x555555558a26 *)
split xmm10_0 dc xmm11_0 0x2; split xmm10_1 dc xmm11_1 0x2;
split xmm10_2 dc xmm11_2 0x2; split xmm10_3 dc xmm11_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558a2c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm11,%xmm1                       #! PC = 0x555555558a30 *)
split dc xmm1_0 xmm11_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm11_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm11_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm11_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x555555558a36 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm11,%xmm12,%xmm4                      #! PC = 0x555555558a3a *)
xor xmm4_0@uint32 xmm12_0 xmm11_0; xor xmm4_1@uint32 xmm12_1 xmm11_1;
xor xmm4_2@uint32 xmm12_2 xmm11_2; xor xmm4_3@uint32 xmm12_3 xmm11_3;
(* vpxor  %xmm1,%xmm10,%xmm10                      #! PC = 0x555555558a3f *)
xor xmm10_0@uint32 xmm10_0 xmm1_0; xor xmm10_1@uint32 xmm10_1 xmm1_1;
xor xmm10_2@uint32 xmm10_2 xmm1_2; xor xmm10_3@uint32 xmm10_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555558a43 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm11,%xmm1                        #! PC = 0x555555558a47 *)
split xmm1_0 dc xmm11_0 0xd; split xmm1_1 dc xmm11_1 0xd;
split xmm1_2 dc xmm11_2 0xd; split xmm1_3 dc xmm11_3 0xd;
(* vpslld $0x13,%xmm11,%xmm2                       #! PC = 0x555555558a4d *)
split dc xmm2_0 xmm11_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm11_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm11_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm11_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555558a53 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x555555558a57 *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm10,%xmm7                       #! PC = 0x555555558a5b *)
xor xmm7_0@uint32 xmm10_0 xmm1_0; xor xmm7_1@uint32 xmm10_1 xmm1_1;
xor xmm7_2@uint32 xmm10_2 xmm1_2; xor xmm7_3@uint32 xmm10_3 xmm1_3;
(* vpsrld $0x16,%xmm11,%xmm1                       #! PC = 0x555555558a5f *)
split xmm1_0 dc xmm11_0 0x16; split xmm1_1 dc xmm11_1 0x16;
split xmm1_2 dc xmm11_2 0x16; split xmm1_3 dc xmm11_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558a65 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm11,%xmm2                        #! PC = 0x555555558a69 *)
split dc xmm2_0 xmm11_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm11_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm11_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm11_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm12,%xmm10                      #! PC = 0x555555558a6f *)
xor xmm10_0@uint32 xmm12_0 xmm3_0; xor xmm10_1@uint32 xmm12_1 xmm3_1;
xor xmm10_2@uint32 xmm12_2 xmm3_2; xor xmm10_3@uint32 xmm12_3 xmm3_3;
(* vpaddd %xmm5,%xmm14,%xmm14                      #! PC = 0x555555558a73 *)
adds dc xmm14_0 xmm14_0 xmm5_0; adds dc xmm14_1 xmm14_1 xmm5_1;
adds dc xmm14_2 xmm14_2 xmm5_2; adds dc xmm14_3 xmm14_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558a77 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558a7b *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm10,%xmm10                      #! PC = 0x555555558a7f *)
adds dc xmm10_0 xmm10_0 xmm5_0; adds dc xmm10_1 xmm10_1 xmm5_1;
adds dc xmm10_2 xmm10_2 xmm5_2; adds dc xmm10_3 xmm10_3 xmm5_3;
(* vpaddd %xmm7,%xmm10,%xmm10                      #! PC = 0x555555558a83 *)
adds dc xmm10_0 xmm10_0 xmm7_0; adds dc xmm10_1 xmm10_1 xmm7_1;
adds dc xmm10_2 xmm10_2 xmm7_2; adds dc xmm10_3 xmm10_3 xmm7_3;
(* vmovd  0x18(%r8),%xmm5                          #! EA = L0x5555555612b8; Value = 0x1f1e1d1c1b1a1918; PC = 0x555555558a87 *)
mov xmm5_0 L0x5555555612b8; mov xmm5_1 0@uint32;
mov xmm5_2 0@uint32; mov xmm5_3 0@uint32;
(* vmovd  0x18(%r9),%xmm0                          #! EA = L0x5555555613c8; Value = 0x1f1e1d1c1b1a1918; PC = 0x555555558a8d *)
mov xmm0_0 L0x5555555613c8; mov xmm0_1 0@uint32;
mov xmm0_2 0@uint32; mov xmm0_3 0@uint32;
(* vpinsrd $0x1,0x18(%r10),%xmm5,%xmm5             #! EA = L0x5555555614d8; Value = 0x1f1e1d1c1b1a1918; PC = 0x555555558a93 *)
mov xmm5_0 xmm5_0; mov xmm5_1 L0x5555555614d8;
mov xmm5_2 xmm5_2; mov xmm5_3 xmm5_3;
(* vpinsrd $0x1,0x18(%r11),%xmm0,%xmm0             #! EA = L0x5555555615e8; Value = 0x1f1e1d1c1b1a1918; PC = 0x555555558a9a *)
mov xmm0_0 xmm0_0; mov xmm0_1 L0x5555555615e8;
mov xmm0_2 xmm0_2; mov xmm0_3 xmm0_3;
(* vpunpckldq %xmm0,%xmm5,%xmm5                    #! PC = 0x555555558aa1 *)
mov upck0 xmm5_0; mov upck1 xmm0_0; mov upck2 xmm5_1; mov upck3 xmm0_1;
mov xmm5_0 upck0; mov xmm5_1 upck1; mov xmm5_2 upck2; mov xmm5_3 upck3;
(* vpshufb %xmm6,%xmm5,%xmm5                       #! PC = 0x555555558aa5 *)
assert true
   && and [xmm6_0=0x00010203@32, xmm6_1=0x04050607@32, xmm6_2=0x08090a0b@32, xmm6_3=0x0c0d0e0f@32];
spl s1 s0 xmm5_0 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_0 t1 t0;
spl s1 s0 xmm5_1 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_1 t1 t0;
spl s1 s0 xmm5_2 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_2 t1 t0;
spl s1 s0 xmm5_3 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_3 t1 t0;
(* vpsrld $0x6,%xmm14,%xmm7                        #! PC = 0x555555558aaa *)
split xmm7_0 dc xmm14_0 0x6; split xmm7_1 dc xmm14_1 0x6;
split xmm7_2 dc xmm14_2 0x6; split xmm7_3 dc xmm14_3 0x6;
(* vpslld $0x1a,%xmm14,%xmm2                       #! PC = 0x555555558ab0 *)
split dc xmm2_0 xmm14_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm14_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm14_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm14_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,-0x20(%rax)                       #! EA = L0x7fffffffd760; PC = 0x555555558ab6 *)
mov L0x7fffffffd760 xmm5_0; mov L0x7fffffffd764 xmm5_1;
mov L0x7fffffffd768 xmm5_2; mov L0x7fffffffd76c xmm5_3;
(* vpaddd %xmm9,%xmm5,%xmm5                        #! PC = 0x555555558abb *)
adds dc xmm5_0 xmm5_0 xmm9_0; adds dc xmm5_1 xmm5_1 xmm9_1;
adds dc xmm5_2 xmm5_2 xmm9_2; adds dc xmm5_3 xmm5_3 xmm9_3;
(* vpsrld $0xb,%xmm14,%xmm1                        #! PC = 0x555555558ac0 *)
split xmm1_0 dc xmm14_0 0xb; split xmm1_1 dc xmm14_1 0xb;
split xmm1_2 dc xmm14_2 0xb; split xmm1_3 dc xmm14_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558ac6 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm14,%xmm2                       #! PC = 0x555555558aca *)
split dc xmm2_0 xmm14_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm14_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm14_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm14_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x40(%rbp),%xmm5,%xmm5                   #! EA = L0x55555555cac0; Value = 0x923f82a4923f82a4; PC = 0x555555558ad0 *)
adds dc xmm5_0 xmm5_0 L0x55555555cac0; adds dc xmm5_1 xmm5_1 L0x55555555cac4;
adds dc xmm5_2 xmm5_2 L0x55555555cac8; adds dc xmm5_3 xmm5_3 L0x55555555cacc;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558ad5 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm14,%xmm1                       #! PC = 0x555555558ad9 *)
split xmm1_0 dc xmm14_0 0x19; split xmm1_1 dc xmm14_1 0x19;
split xmm1_2 dc xmm14_2 0x19; split xmm1_3 dc xmm14_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558adf *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm14,%xmm2                        #! PC = 0x555555558ae3 *)
split dc xmm2_0 xmm14_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm14_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm14_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm14_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm8,%xmm14,%xmm0                       #! PC = 0x555555558ae9 *)
not xmm14_0n@uint32 xmm14_0; and xmm0_0@uint32 xmm14_0n xmm8_0;
not xmm14_1n@uint32 xmm14_1; and xmm0_1@uint32 xmm14_1n xmm8_1;
not xmm14_2n@uint32 xmm14_2; and xmm0_2@uint32 xmm14_2n xmm8_2;
not xmm14_3n@uint32 xmm14_3; and xmm0_3@uint32 xmm14_3n xmm8_3;
(* vpand  %xmm15,%xmm14,%xmm3                      #! PC = 0x555555558aee *)
and xmm3_0@uint32 xmm14_0 xmm15_0; and xmm3_1@uint32 xmm14_1 xmm15_1;
and xmm3_2@uint32 xmm14_2 xmm15_2; and xmm3_3@uint32 xmm14_3 xmm15_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558af3 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm10,%xmm9                        #! PC = 0x555555558af7 *)
split xmm9_0 dc xmm10_0 0x2; split xmm9_1 dc xmm10_1 0x2;
split xmm9_2 dc xmm10_2 0x2; split xmm9_3 dc xmm10_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558afd *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm10,%xmm1                       #! PC = 0x555555558b01 *)
split dc xmm1_0 xmm10_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm10_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm10_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm10_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x555555558b07 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm10,%xmm11,%xmm3                      #! PC = 0x555555558b0b *)
xor xmm3_0@uint32 xmm11_0 xmm10_0; xor xmm3_1@uint32 xmm11_1 xmm10_1;
xor xmm3_2@uint32 xmm11_2 xmm10_2; xor xmm3_3@uint32 xmm11_3 xmm10_3;
(* vpxor  %xmm1,%xmm9,%xmm9                        #! PC = 0x555555558b10 *)
xor xmm9_0@uint32 xmm9_0 xmm1_0; xor xmm9_1@uint32 xmm9_1 xmm1_1;
xor xmm9_2@uint32 xmm9_2 xmm1_2; xor xmm9_3@uint32 xmm9_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555558b14 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm10,%xmm1                        #! PC = 0x555555558b18 *)
split xmm1_0 dc xmm10_0 0xd; split xmm1_1 dc xmm10_1 0xd;
split xmm1_2 dc xmm10_2 0xd; split xmm1_3 dc xmm10_3 0xd;
(* vpslld $0x13,%xmm10,%xmm2                       #! PC = 0x555555558b1e *)
split dc xmm2_0 xmm10_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm10_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm10_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm10_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555558b24 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555558b28 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm9,%xmm7                        #! PC = 0x555555558b2c *)
xor xmm7_0@uint32 xmm9_0 xmm1_0; xor xmm7_1@uint32 xmm9_1 xmm1_1;
xor xmm7_2@uint32 xmm9_2 xmm1_2; xor xmm7_3@uint32 xmm9_3 xmm1_3;
(* vpsrld $0x16,%xmm10,%xmm1                       #! PC = 0x555555558b30 *)
split xmm1_0 dc xmm10_0 0x16; split xmm1_1 dc xmm10_1 0x16;
split xmm1_2 dc xmm10_2 0x16; split xmm1_3 dc xmm10_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558b36 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm10,%xmm2                        #! PC = 0x555555558b3a *)
split dc xmm2_0 xmm10_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm10_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm10_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm10_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm11,%xmm9                       #! PC = 0x555555558b40 *)
xor xmm9_0@uint32 xmm11_0 xmm4_0; xor xmm9_1@uint32 xmm11_1 xmm4_1;
xor xmm9_2@uint32 xmm11_2 xmm4_2; xor xmm9_3@uint32 xmm11_3 xmm4_3;
(* vpaddd %xmm5,%xmm13,%xmm13                      #! PC = 0x555555558b44 *)
adds dc xmm13_0 xmm13_0 xmm5_0; adds dc xmm13_1 xmm13_1 xmm5_1;
adds dc xmm13_2 xmm13_2 xmm5_2; adds dc xmm13_3 xmm13_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558b48 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558b4c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm9,%xmm9                        #! PC = 0x555555558b50 *)
adds dc xmm9_0 xmm9_0 xmm5_0; adds dc xmm9_1 xmm9_1 xmm5_1;
adds dc xmm9_2 xmm9_2 xmm5_2; adds dc xmm9_3 xmm9_3 xmm5_3;
(* vpaddd %xmm7,%xmm9,%xmm9                        #! PC = 0x555555558b54 *)
adds dc xmm9_0 xmm9_0 xmm7_0; adds dc xmm9_1 xmm9_1 xmm7_1;
adds dc xmm9_2 xmm9_2 xmm7_2; adds dc xmm9_3 xmm9_3 xmm7_3;
(* vmovd  0x1c(%r8),%xmm5                          #! EA = L0x5555555612bc; Value = 0x232221201f1e1d1c; PC = 0x555555558b58 *)
mov xmm5_0 L0x5555555612bc; mov xmm5_1 0@uint32;
mov xmm5_2 0@uint32; mov xmm5_3 0@uint32;
(* vmovd  0x1c(%r9),%xmm0                          #! EA = L0x5555555613cc; Value = 0x232221201f1e1d1c; PC = 0x555555558b5e *)
mov xmm0_0 L0x5555555613cc; mov xmm0_1 0@uint32;
mov xmm0_2 0@uint32; mov xmm0_3 0@uint32;
(* vpinsrd $0x1,0x1c(%r10),%xmm5,%xmm5             #! EA = L0x5555555614dc; Value = 0x232221201f1e1d1c; PC = 0x555555558b64 *)
mov xmm5_0 xmm5_0; mov xmm5_1 L0x5555555614dc;
mov xmm5_2 xmm5_2; mov xmm5_3 xmm5_3;
(* vpinsrd $0x1,0x1c(%r11),%xmm0,%xmm0             #! EA = L0x5555555615ec; Value = 0x232221201f1e1d1c; PC = 0x555555558b6b *)
mov xmm0_0 xmm0_0; mov xmm0_1 L0x5555555615ec;
mov xmm0_2 xmm0_2; mov xmm0_3 xmm0_3;
(* vpunpckldq %xmm0,%xmm5,%xmm5                    #! PC = 0x555555558b72 *)
mov upck0 xmm5_0; mov upck1 xmm0_0; mov upck2 xmm5_1; mov upck3 xmm0_1;
mov xmm5_0 upck0; mov xmm5_1 upck1; mov xmm5_2 upck2; mov xmm5_3 upck3;
(* vpshufb %xmm6,%xmm5,%xmm5                       #! PC = 0x555555558b76 *)
assert true
   && and [xmm6_0=0x00010203@32, xmm6_1=0x04050607@32, xmm6_2=0x08090a0b@32, xmm6_3=0x0c0d0e0f@32];
spl s1 s0 xmm5_0 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_0 t1 t0;
spl s1 s0 xmm5_1 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_1 t1 t0;
spl s1 s0 xmm5_2 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_2 t1 t0;
spl s1 s0 xmm5_3 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_3 t1 t0;
(* vpsrld $0x6,%xmm13,%xmm7                        #! PC = 0x555555558b7b *)
split xmm7_0 dc xmm13_0 0x6; split xmm7_1 dc xmm13_1 0x6;
split xmm7_2 dc xmm13_2 0x6; split xmm7_3 dc xmm13_3 0x6;
(* vpslld $0x1a,%xmm13,%xmm2                       #! PC = 0x555555558b81 *)
split dc xmm2_0 xmm13_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm13_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm13_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm13_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,-0x10(%rax)                       #! EA = L0x7fffffffd770; PC = 0x555555558b87 *)
mov L0x7fffffffd770 xmm5_0; mov L0x7fffffffd774 xmm5_1;
mov L0x7fffffffd778 xmm5_2; mov L0x7fffffffd77c xmm5_3;
(* vpaddd %xmm8,%xmm5,%xmm5                        #! PC = 0x555555558b8c *)
adds dc xmm5_0 xmm5_0 xmm8_0; adds dc xmm5_1 xmm5_1 xmm8_1;
adds dc xmm5_2 xmm5_2 xmm8_2; adds dc xmm5_3 xmm5_3 xmm8_3;
(* vpsrld $0xb,%xmm13,%xmm1                        #! PC = 0x555555558b91 *)
split xmm1_0 dc xmm13_0 0xb; split xmm1_1 dc xmm13_1 0xb;
split xmm1_2 dc xmm13_2 0xb; split xmm1_3 dc xmm13_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558b97 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm13,%xmm2                       #! PC = 0x555555558b9b *)
split dc xmm2_0 xmm13_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm13_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm13_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm13_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x60(%rbp),%xmm5,%xmm5                   #! EA = L0x55555555cae0; Value = 0xab1c5ed5ab1c5ed5; PC = 0x555555558ba1 *)
adds dc xmm5_0 xmm5_0 L0x55555555cae0; adds dc xmm5_1 xmm5_1 L0x55555555cae4;
adds dc xmm5_2 xmm5_2 L0x55555555cae8; adds dc xmm5_3 xmm5_3 L0x55555555caec;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558ba6 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm13,%xmm1                       #! PC = 0x555555558baa *)
split xmm1_0 dc xmm13_0 0x19; split xmm1_1 dc xmm13_1 0x19;
split xmm1_2 dc xmm13_2 0x19; split xmm1_3 dc xmm13_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558bb0 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm13,%xmm2                        #! PC = 0x555555558bb4 *)
split dc xmm2_0 xmm13_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm13_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm13_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm13_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm15,%xmm13,%xmm0                      #! PC = 0x555555558bba *)
not xmm13_0n@uint32 xmm13_0; and xmm0_0@uint32 xmm13_0n xmm15_0;
not xmm13_1n@uint32 xmm13_1; and xmm0_1@uint32 xmm13_1n xmm15_1;
not xmm13_2n@uint32 xmm13_2; and xmm0_2@uint32 xmm13_2n xmm15_2;
not xmm13_3n@uint32 xmm13_3; and xmm0_3@uint32 xmm13_3n xmm15_3;
(* vpand  %xmm14,%xmm13,%xmm4                      #! PC = 0x555555558bbf *)
and xmm4_0@uint32 xmm13_0 xmm14_0; and xmm4_1@uint32 xmm13_1 xmm14_1;
and xmm4_2@uint32 xmm13_2 xmm14_2; and xmm4_3@uint32 xmm13_3 xmm14_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558bc4 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm9,%xmm8                         #! PC = 0x555555558bc8 *)
split xmm8_0 dc xmm9_0 0x2; split xmm8_1 dc xmm9_1 0x2;
split xmm8_2 dc xmm9_2 0x2; split xmm8_3 dc xmm9_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558bce *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm9,%xmm1                        #! PC = 0x555555558bd2 *)
split dc xmm1_0 xmm9_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm9_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm9_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm9_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x555555558bd8 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm9,%xmm10,%xmm4                       #! PC = 0x555555558bdc *)
xor xmm4_0@uint32 xmm10_0 xmm9_0; xor xmm4_1@uint32 xmm10_1 xmm9_1;
xor xmm4_2@uint32 xmm10_2 xmm9_2; xor xmm4_3@uint32 xmm10_3 xmm9_3;
(* vpxor  %xmm1,%xmm8,%xmm8                        #! PC = 0x555555558be1 *)
xor xmm8_0@uint32 xmm8_0 xmm1_0; xor xmm8_1@uint32 xmm8_1 xmm1_1;
xor xmm8_2@uint32 xmm8_2 xmm1_2; xor xmm8_3@uint32 xmm8_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555558be5 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm9,%xmm1                         #! PC = 0x555555558be9 *)
split xmm1_0 dc xmm9_0 0xd; split xmm1_1 dc xmm9_1 0xd;
split xmm1_2 dc xmm9_2 0xd; split xmm1_3 dc xmm9_3 0xd;
(* vpslld $0x13,%xmm9,%xmm2                        #! PC = 0x555555558bef *)
split dc xmm2_0 xmm9_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm9_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm9_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm9_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555558bf5 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x555555558bf9 *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm8,%xmm7                        #! PC = 0x555555558bfd *)
xor xmm7_0@uint32 xmm8_0 xmm1_0; xor xmm7_1@uint32 xmm8_1 xmm1_1;
xor xmm7_2@uint32 xmm8_2 xmm1_2; xor xmm7_3@uint32 xmm8_3 xmm1_3;
(* vpsrld $0x16,%xmm9,%xmm1                        #! PC = 0x555555558c01 *)
split xmm1_0 dc xmm9_0 0x16; split xmm1_1 dc xmm9_1 0x16;
split xmm1_2 dc xmm9_2 0x16; split xmm1_3 dc xmm9_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558c07 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm9,%xmm2                         #! PC = 0x555555558c0b *)
split dc xmm2_0 xmm9_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm9_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm9_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm9_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm10,%xmm8                       #! PC = 0x555555558c11 *)
xor xmm8_0@uint32 xmm10_0 xmm3_0; xor xmm8_1@uint32 xmm10_1 xmm3_1;
xor xmm8_2@uint32 xmm10_2 xmm3_2; xor xmm8_3@uint32 xmm10_3 xmm3_3;
(* vpaddd %xmm5,%xmm12,%xmm12                      #! PC = 0x555555558c15 *)
adds dc xmm12_0 xmm12_0 xmm5_0; adds dc xmm12_1 xmm12_1 xmm5_1;
adds dc xmm12_2 xmm12_2 xmm5_2; adds dc xmm12_3 xmm12_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558c19 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558c1d *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm8,%xmm8                        #! PC = 0x555555558c21 *)
adds dc xmm8_0 xmm8_0 xmm5_0; adds dc xmm8_1 xmm8_1 xmm5_1;
adds dc xmm8_2 xmm8_2 xmm5_2; adds dc xmm8_3 xmm8_3 xmm5_3;
(* vpaddd %xmm7,%xmm8,%xmm8                        #! PC = 0x555555558c25 *)
adds dc xmm8_0 xmm8_0 xmm7_0; adds dc xmm8_1 xmm8_1 xmm7_1;
adds dc xmm8_2 xmm8_2 xmm7_2; adds dc xmm8_3 xmm8_3 xmm7_3;
(* add    $0x100,%rbp                              #! PC = 0x555555558c29 *)
(* add 0x100, rbp *)
nop;
(* vmovd  0x20(%r8),%xmm5                          #! EA = L0x5555555612c0; Value = 0x2726252423222120; PC = 0x555555558c30 *)
mov xmm5_0 L0x5555555612c0; mov xmm5_1 0@uint32;
mov xmm5_2 0@uint32; mov xmm5_3 0@uint32;
(* vmovd  0x20(%r9),%xmm0                          #! EA = L0x5555555613d0; Value = 0x2726252423222120; PC = 0x555555558c36 *)
mov xmm0_0 L0x5555555613d0; mov xmm0_1 0@uint32;
mov xmm0_2 0@uint32; mov xmm0_3 0@uint32;
(* vpinsrd $0x1,0x20(%r10),%xmm5,%xmm5             #! EA = L0x5555555614e0; Value = 0x2726252423222120; PC = 0x555555558c3c *)
mov xmm5_0 xmm5_0; mov xmm5_1 L0x5555555614e0;
mov xmm5_2 xmm5_2; mov xmm5_3 xmm5_3;
(* vpinsrd $0x1,0x20(%r11),%xmm0,%xmm0             #! EA = L0x5555555615f0; Value = 0x2726252423222120; PC = 0x555555558c43 *)
mov xmm0_0 xmm0_0; mov xmm0_1 L0x5555555615f0;
mov xmm0_2 xmm0_2; mov xmm0_3 xmm0_3;
(* vpunpckldq %xmm0,%xmm5,%xmm5                    #! PC = 0x555555558c4a *)
mov upck0 xmm5_0; mov upck1 xmm0_0; mov upck2 xmm5_1; mov upck3 xmm0_1;
mov xmm5_0 upck0; mov xmm5_1 upck1; mov xmm5_2 upck2; mov xmm5_3 upck3;
(* vpshufb %xmm6,%xmm5,%xmm5                       #! PC = 0x555555558c4e *)
assert true
   && and [xmm6_0=0x00010203@32, xmm6_1=0x04050607@32, xmm6_2=0x08090a0b@32, xmm6_3=0x0c0d0e0f@32];
spl s1 s0 xmm5_0 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_0 t1 t0;
spl s1 s0 xmm5_1 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_1 t1 t0;
spl s1 s0 xmm5_2 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_2 t1 t0;
spl s1 s0 xmm5_3 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_3 t1 t0;
(* vpsrld $0x6,%xmm12,%xmm7                        #! PC = 0x555555558c53 *)
split xmm7_0 dc xmm12_0 0x6; split xmm7_1 dc xmm12_1 0x6;
split xmm7_2 dc xmm12_2 0x6; split xmm7_3 dc xmm12_3 0x6;
(* vpslld $0x1a,%xmm12,%xmm2                       #! PC = 0x555555558c59 *)
split dc xmm2_0 xmm12_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm12_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm12_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm12_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,(%rax)                            #! EA = L0x7fffffffd780; PC = 0x555555558c5f *)
mov L0x7fffffffd780 xmm5_0; mov L0x7fffffffd784 xmm5_1;
mov L0x7fffffffd788 xmm5_2; mov L0x7fffffffd78c xmm5_3;
(* vpaddd %xmm15,%xmm5,%xmm5                       #! PC = 0x555555558c63 *)
adds dc xmm5_0 xmm5_0 xmm15_0; adds dc xmm5_1 xmm5_1 xmm15_1;
adds dc xmm5_2 xmm5_2 xmm15_2; adds dc xmm5_3 xmm5_3 xmm15_3;
(* vpsrld $0xb,%xmm12,%xmm1                        #! PC = 0x555555558c68 *)
split xmm1_0 dc xmm12_0 0xb; split xmm1_1 dc xmm12_1 0xb;
split xmm1_2 dc xmm12_2 0xb; split xmm1_3 dc xmm12_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558c6e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm12,%xmm2                       #! PC = 0x555555558c72 *)
split dc xmm2_0 xmm12_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm12_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm12_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm12_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x80(%rbp),%xmm5,%xmm5                  #! EA = L0x55555555cb00; Value = 0xd807aa98d807aa98; PC = 0x555555558c78 *)
adds dc xmm5_0 xmm5_0 L0x55555555cb00; adds dc xmm5_1 xmm5_1 L0x55555555cb04;
adds dc xmm5_2 xmm5_2 L0x55555555cb08; adds dc xmm5_3 xmm5_3 L0x55555555cb0c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558c7d *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm12,%xmm1                       #! PC = 0x555555558c81 *)
split xmm1_0 dc xmm12_0 0x19; split xmm1_1 dc xmm12_1 0x19;
split xmm1_2 dc xmm12_2 0x19; split xmm1_3 dc xmm12_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558c87 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm12,%xmm2                        #! PC = 0x555555558c8b *)
split dc xmm2_0 xmm12_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm12_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm12_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm12_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm14,%xmm12,%xmm0                      #! PC = 0x555555558c91 *)
not xmm12_0n@uint32 xmm12_0; and xmm0_0@uint32 xmm12_0n xmm14_0;
not xmm12_1n@uint32 xmm12_1; and xmm0_1@uint32 xmm12_1n xmm14_1;
not xmm12_2n@uint32 xmm12_2; and xmm0_2@uint32 xmm12_2n xmm14_2;
not xmm12_3n@uint32 xmm12_3; and xmm0_3@uint32 xmm12_3n xmm14_3;
(* vpand  %xmm13,%xmm12,%xmm3                      #! PC = 0x555555558c96 *)
and xmm3_0@uint32 xmm12_0 xmm13_0; and xmm3_1@uint32 xmm12_1 xmm13_1;
and xmm3_2@uint32 xmm12_2 xmm13_2; and xmm3_3@uint32 xmm12_3 xmm13_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558c9b *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm8,%xmm15                        #! PC = 0x555555558c9f *)
split xmm15_0 dc xmm8_0 0x2; split xmm15_1 dc xmm8_1 0x2;
split xmm15_2 dc xmm8_2 0x2; split xmm15_3 dc xmm8_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558ca5 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm8,%xmm1                        #! PC = 0x555555558ca9 *)
split dc xmm1_0 xmm8_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm8_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm8_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm8_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x555555558caf *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm8,%xmm9,%xmm3                        #! PC = 0x555555558cb3 *)
xor xmm3_0@uint32 xmm9_0 xmm8_0; xor xmm3_1@uint32 xmm9_1 xmm8_1;
xor xmm3_2@uint32 xmm9_2 xmm8_2; xor xmm3_3@uint32 xmm9_3 xmm8_3;
(* vpxor  %xmm1,%xmm15,%xmm15                      #! PC = 0x555555558cb8 *)
xor xmm15_0@uint32 xmm15_0 xmm1_0; xor xmm15_1@uint32 xmm15_1 xmm1_1;
xor xmm15_2@uint32 xmm15_2 xmm1_2; xor xmm15_3@uint32 xmm15_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555558cbc *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm8,%xmm1                         #! PC = 0x555555558cc0 *)
split xmm1_0 dc xmm8_0 0xd; split xmm1_1 dc xmm8_1 0xd;
split xmm1_2 dc xmm8_2 0xd; split xmm1_3 dc xmm8_3 0xd;
(* vpslld $0x13,%xmm8,%xmm2                        #! PC = 0x555555558cc6 *)
split dc xmm2_0 xmm8_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm8_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm8_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm8_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555558ccc *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555558cd0 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm15,%xmm7                       #! PC = 0x555555558cd4 *)
xor xmm7_0@uint32 xmm15_0 xmm1_0; xor xmm7_1@uint32 xmm15_1 xmm1_1;
xor xmm7_2@uint32 xmm15_2 xmm1_2; xor xmm7_3@uint32 xmm15_3 xmm1_3;
(* vpsrld $0x16,%xmm8,%xmm1                        #! PC = 0x555555558cd8 *)
split xmm1_0 dc xmm8_0 0x16; split xmm1_1 dc xmm8_1 0x16;
split xmm1_2 dc xmm8_2 0x16; split xmm1_3 dc xmm8_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558cde *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm8,%xmm2                         #! PC = 0x555555558ce2 *)
split dc xmm2_0 xmm8_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm8_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm8_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm8_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm9,%xmm15                       #! PC = 0x555555558ce8 *)
xor xmm15_0@uint32 xmm9_0 xmm4_0; xor xmm15_1@uint32 xmm9_1 xmm4_1;
xor xmm15_2@uint32 xmm9_2 xmm4_2; xor xmm15_3@uint32 xmm9_3 xmm4_3;
(* vpaddd %xmm5,%xmm11,%xmm11                      #! PC = 0x555555558cec *)
adds dc xmm11_0 xmm11_0 xmm5_0; adds dc xmm11_1 xmm11_1 xmm5_1;
adds dc xmm11_2 xmm11_2 xmm5_2; adds dc xmm11_3 xmm11_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558cf0 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558cf4 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm15,%xmm15                      #! PC = 0x555555558cf8 *)
adds dc xmm15_0 xmm15_0 xmm5_0; adds dc xmm15_1 xmm15_1 xmm5_1;
adds dc xmm15_2 xmm15_2 xmm5_2; adds dc xmm15_3 xmm15_3 xmm5_3;
(* vpaddd %xmm7,%xmm15,%xmm15                      #! PC = 0x555555558cfc *)
adds dc xmm15_0 xmm15_0 xmm7_0; adds dc xmm15_1 xmm15_1 xmm7_1;
adds dc xmm15_2 xmm15_2 xmm7_2; adds dc xmm15_3 xmm15_3 xmm7_3;
(* vmovd  0x24(%r8),%xmm5                          #! EA = L0x5555555612c4; Value = 0x2b2a292827262524; PC = 0x555555558d00 *)
mov xmm5_0 L0x5555555612c4; mov xmm5_1 0@uint32;
mov xmm5_2 0@uint32; mov xmm5_3 0@uint32;
(* vmovd  0x24(%r9),%xmm0                          #! EA = L0x5555555613d4; Value = 0x2b2a292827262524; PC = 0x555555558d06 *)
mov xmm0_0 L0x5555555613d4; mov xmm0_1 0@uint32;
mov xmm0_2 0@uint32; mov xmm0_3 0@uint32;
(* vpinsrd $0x1,0x24(%r10),%xmm5,%xmm5             #! EA = L0x5555555614e4; Value = 0x2b2a292827262524; PC = 0x555555558d0c *)
mov xmm5_0 xmm5_0; mov xmm5_1 L0x5555555614e4;
mov xmm5_2 xmm5_2; mov xmm5_3 xmm5_3;
(* vpinsrd $0x1,0x24(%r11),%xmm0,%xmm0             #! EA = L0x5555555615f4; Value = 0x2b2a292827262524; PC = 0x555555558d13 *)
mov xmm0_0 xmm0_0; mov xmm0_1 L0x5555555615f4;
mov xmm0_2 xmm0_2; mov xmm0_3 xmm0_3;
(* vpunpckldq %xmm0,%xmm5,%xmm5                    #! PC = 0x555555558d1a *)
mov upck0 xmm5_0; mov upck1 xmm0_0; mov upck2 xmm5_1; mov upck3 xmm0_1;
mov xmm5_0 upck0; mov xmm5_1 upck1; mov xmm5_2 upck2; mov xmm5_3 upck3;
(* vpshufb %xmm6,%xmm5,%xmm5                       #! PC = 0x555555558d1e *)
assert true
   && and [xmm6_0=0x00010203@32, xmm6_1=0x04050607@32, xmm6_2=0x08090a0b@32, xmm6_3=0x0c0d0e0f@32];
spl s1 s0 xmm5_0 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_0 t1 t0;
spl s1 s0 xmm5_1 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_1 t1 t0;
spl s1 s0 xmm5_2 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_2 t1 t0;
spl s1 s0 xmm5_3 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_3 t1 t0;
(* vpsrld $0x6,%xmm11,%xmm7                        #! PC = 0x555555558d23 *)
split xmm7_0 dc xmm11_0 0x6; split xmm7_1 dc xmm11_1 0x6;
split xmm7_2 dc xmm11_2 0x6; split xmm7_3 dc xmm11_3 0x6;
(* vpslld $0x1a,%xmm11,%xmm2                       #! PC = 0x555555558d29 *)
split dc xmm2_0 xmm11_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm11_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm11_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm11_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,0x10(%rax)                        #! EA = L0x7fffffffd790; PC = 0x555555558d2f *)
mov L0x7fffffffd790 xmm5_0; mov L0x7fffffffd794 xmm5_1;
mov L0x7fffffffd798 xmm5_2; mov L0x7fffffffd79c xmm5_3;
(* vpaddd %xmm14,%xmm5,%xmm5                       #! PC = 0x555555558d34 *)
adds dc xmm5_0 xmm5_0 xmm14_0; adds dc xmm5_1 xmm5_1 xmm14_1;
adds dc xmm5_2 xmm5_2 xmm14_2; adds dc xmm5_3 xmm5_3 xmm14_3;
(* vpsrld $0xb,%xmm11,%xmm1                        #! PC = 0x555555558d39 *)
split xmm1_0 dc xmm11_0 0xb; split xmm1_1 dc xmm11_1 0xb;
split xmm1_2 dc xmm11_2 0xb; split xmm1_3 dc xmm11_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558d3f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm11,%xmm2                       #! PC = 0x555555558d43 *)
split dc xmm2_0 xmm11_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm11_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm11_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm11_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x60(%rbp),%xmm5,%xmm5                  #! EA = L0x55555555cb20; Value = 0x12835b0112835b01; PC = 0x555555558d49 *)
adds dc xmm5_0 xmm5_0 L0x55555555cb20; adds dc xmm5_1 xmm5_1 L0x55555555cb24;
adds dc xmm5_2 xmm5_2 L0x55555555cb28; adds dc xmm5_3 xmm5_3 L0x55555555cb2c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558d4e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm11,%xmm1                       #! PC = 0x555555558d52 *)
split xmm1_0 dc xmm11_0 0x19; split xmm1_1 dc xmm11_1 0x19;
split xmm1_2 dc xmm11_2 0x19; split xmm1_3 dc xmm11_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558d58 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm11,%xmm2                        #! PC = 0x555555558d5c *)
split dc xmm2_0 xmm11_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm11_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm11_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm11_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm13,%xmm11,%xmm0                      #! PC = 0x555555558d62 *)
not xmm11_0n@uint32 xmm11_0; and xmm0_0@uint32 xmm11_0n xmm13_0;
not xmm11_1n@uint32 xmm11_1; and xmm0_1@uint32 xmm11_1n xmm13_1;
not xmm11_2n@uint32 xmm11_2; and xmm0_2@uint32 xmm11_2n xmm13_2;
not xmm11_3n@uint32 xmm11_3; and xmm0_3@uint32 xmm11_3n xmm13_3;
(* vpand  %xmm12,%xmm11,%xmm4                      #! PC = 0x555555558d67 *)
and xmm4_0@uint32 xmm11_0 xmm12_0; and xmm4_1@uint32 xmm11_1 xmm12_1;
and xmm4_2@uint32 xmm11_2 xmm12_2; and xmm4_3@uint32 xmm11_3 xmm12_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558d6c *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm15,%xmm14                       #! PC = 0x555555558d70 *)
split xmm14_0 dc xmm15_0 0x2; split xmm14_1 dc xmm15_1 0x2;
split xmm14_2 dc xmm15_2 0x2; split xmm14_3 dc xmm15_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558d76 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm15,%xmm1                       #! PC = 0x555555558d7a *)
split dc xmm1_0 xmm15_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm15_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm15_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm15_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x555555558d80 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm15,%xmm8,%xmm4                       #! PC = 0x555555558d84 *)
xor xmm4_0@uint32 xmm8_0 xmm15_0; xor xmm4_1@uint32 xmm8_1 xmm15_1;
xor xmm4_2@uint32 xmm8_2 xmm15_2; xor xmm4_3@uint32 xmm8_3 xmm15_3;
(* vpxor  %xmm1,%xmm14,%xmm14                      #! PC = 0x555555558d89 *)
xor xmm14_0@uint32 xmm14_0 xmm1_0; xor xmm14_1@uint32 xmm14_1 xmm1_1;
xor xmm14_2@uint32 xmm14_2 xmm1_2; xor xmm14_3@uint32 xmm14_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555558d8d *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm15,%xmm1                        #! PC = 0x555555558d91 *)
split xmm1_0 dc xmm15_0 0xd; split xmm1_1 dc xmm15_1 0xd;
split xmm1_2 dc xmm15_2 0xd; split xmm1_3 dc xmm15_3 0xd;
(* vpslld $0x13,%xmm15,%xmm2                       #! PC = 0x555555558d97 *)
split dc xmm2_0 xmm15_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm15_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm15_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm15_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555558d9d *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x555555558da1 *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm14,%xmm7                       #! PC = 0x555555558da5 *)
xor xmm7_0@uint32 xmm14_0 xmm1_0; xor xmm7_1@uint32 xmm14_1 xmm1_1;
xor xmm7_2@uint32 xmm14_2 xmm1_2; xor xmm7_3@uint32 xmm14_3 xmm1_3;
(* vpsrld $0x16,%xmm15,%xmm1                       #! PC = 0x555555558da9 *)
split xmm1_0 dc xmm15_0 0x16; split xmm1_1 dc xmm15_1 0x16;
split xmm1_2 dc xmm15_2 0x16; split xmm1_3 dc xmm15_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558daf *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm15,%xmm2                        #! PC = 0x555555558db3 *)
split dc xmm2_0 xmm15_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm15_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm15_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm15_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm8,%xmm14                       #! PC = 0x555555558db9 *)
xor xmm14_0@uint32 xmm8_0 xmm3_0; xor xmm14_1@uint32 xmm8_1 xmm3_1;
xor xmm14_2@uint32 xmm8_2 xmm3_2; xor xmm14_3@uint32 xmm8_3 xmm3_3;
(* vpaddd %xmm5,%xmm10,%xmm10                      #! PC = 0x555555558dbd *)
adds dc xmm10_0 xmm10_0 xmm5_0; adds dc xmm10_1 xmm10_1 xmm5_1;
adds dc xmm10_2 xmm10_2 xmm5_2; adds dc xmm10_3 xmm10_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558dc1 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558dc5 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm14,%xmm14                      #! PC = 0x555555558dc9 *)
adds dc xmm14_0 xmm14_0 xmm5_0; adds dc xmm14_1 xmm14_1 xmm5_1;
adds dc xmm14_2 xmm14_2 xmm5_2; adds dc xmm14_3 xmm14_3 xmm5_3;
(* vpaddd %xmm7,%xmm14,%xmm14                      #! PC = 0x555555558dcd *)
adds dc xmm14_0 xmm14_0 xmm7_0; adds dc xmm14_1 xmm14_1 xmm7_1;
adds dc xmm14_2 xmm14_2 xmm7_2; adds dc xmm14_3 xmm14_3 xmm7_3;
(* vmovd  0x28(%r8),%xmm5                          #! EA = L0x5555555612c8; Value = 0x2f2e2d2c2b2a2928; PC = 0x555555558dd1 *)
mov xmm5_0 L0x5555555612c8; mov xmm5_1 0@uint32;
mov xmm5_2 0@uint32; mov xmm5_3 0@uint32;
(* vmovd  0x28(%r9),%xmm0                          #! EA = L0x5555555613d8; Value = 0x2f2e2d2c2b2a2928; PC = 0x555555558dd7 *)
mov xmm0_0 L0x5555555613d8; mov xmm0_1 0@uint32;
mov xmm0_2 0@uint32; mov xmm0_3 0@uint32;
(* vpinsrd $0x1,0x28(%r10),%xmm5,%xmm5             #! EA = L0x5555555614e8; Value = 0x2f2e2d2c2b2a2928; PC = 0x555555558ddd *)
mov xmm5_0 xmm5_0; mov xmm5_1 L0x5555555614e8;
mov xmm5_2 xmm5_2; mov xmm5_3 xmm5_3;
(* vpinsrd $0x1,0x28(%r11),%xmm0,%xmm0             #! EA = L0x5555555615f8; Value = 0x2f2e2d2c2b2a2928; PC = 0x555555558de4 *)
mov xmm0_0 xmm0_0; mov xmm0_1 L0x5555555615f8;
mov xmm0_2 xmm0_2; mov xmm0_3 xmm0_3;
(* vpunpckldq %xmm0,%xmm5,%xmm5                    #! PC = 0x555555558deb *)
mov upck0 xmm5_0; mov upck1 xmm0_0; mov upck2 xmm5_1; mov upck3 xmm0_1;
mov xmm5_0 upck0; mov xmm5_1 upck1; mov xmm5_2 upck2; mov xmm5_3 upck3;
(* vpshufb %xmm6,%xmm5,%xmm5                       #! PC = 0x555555558def *)
assert true
   && and [xmm6_0=0x00010203@32, xmm6_1=0x04050607@32, xmm6_2=0x08090a0b@32, xmm6_3=0x0c0d0e0f@32];
spl s1 s0 xmm5_0 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_0 t1 t0;
spl s1 s0 xmm5_1 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_1 t1 t0;
spl s1 s0 xmm5_2 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_2 t1 t0;
spl s1 s0 xmm5_3 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_3 t1 t0;
(* vpsrld $0x6,%xmm10,%xmm7                        #! PC = 0x555555558df4 *)
split xmm7_0 dc xmm10_0 0x6; split xmm7_1 dc xmm10_1 0x6;
split xmm7_2 dc xmm10_2 0x6; split xmm7_3 dc xmm10_3 0x6;
(* vpslld $0x1a,%xmm10,%xmm2                       #! PC = 0x555555558dfa *)
split dc xmm2_0 xmm10_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm10_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm10_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm10_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,0x20(%rax)                        #! EA = L0x7fffffffd7a0; PC = 0x555555558e00 *)
mov L0x7fffffffd7a0 xmm5_0; mov L0x7fffffffd7a4 xmm5_1;
mov L0x7fffffffd7a8 xmm5_2; mov L0x7fffffffd7ac xmm5_3;
(* vpaddd %xmm13,%xmm5,%xmm5                       #! PC = 0x555555558e05 *)
adds dc xmm5_0 xmm5_0 xmm13_0; adds dc xmm5_1 xmm5_1 xmm13_1;
adds dc xmm5_2 xmm5_2 xmm13_2; adds dc xmm5_3 xmm5_3 xmm13_3;
(* vpsrld $0xb,%xmm10,%xmm1                        #! PC = 0x555555558e0a *)
split xmm1_0 dc xmm10_0 0xb; split xmm1_1 dc xmm10_1 0xb;
split xmm1_2 dc xmm10_2 0xb; split xmm1_3 dc xmm10_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558e10 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm10,%xmm2                       #! PC = 0x555555558e14 *)
split dc xmm2_0 xmm10_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm10_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm10_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm10_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x40(%rbp),%xmm5,%xmm5                  #! EA = L0x55555555cb40; Value = 0x243185be243185be; PC = 0x555555558e1a *)
adds dc xmm5_0 xmm5_0 L0x55555555cb40; adds dc xmm5_1 xmm5_1 L0x55555555cb44;
adds dc xmm5_2 xmm5_2 L0x55555555cb48; adds dc xmm5_3 xmm5_3 L0x55555555cb4c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558e1f *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm10,%xmm1                       #! PC = 0x555555558e23 *)
split xmm1_0 dc xmm10_0 0x19; split xmm1_1 dc xmm10_1 0x19;
split xmm1_2 dc xmm10_2 0x19; split xmm1_3 dc xmm10_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558e29 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm10,%xmm2                        #! PC = 0x555555558e2d *)
split dc xmm2_0 xmm10_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm10_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm10_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm10_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm12,%xmm10,%xmm0                      #! PC = 0x555555558e33 *)
not xmm10_0n@uint32 xmm10_0; and xmm0_0@uint32 xmm10_0n xmm12_0;
not xmm10_1n@uint32 xmm10_1; and xmm0_1@uint32 xmm10_1n xmm12_1;
not xmm10_2n@uint32 xmm10_2; and xmm0_2@uint32 xmm10_2n xmm12_2;
not xmm10_3n@uint32 xmm10_3; and xmm0_3@uint32 xmm10_3n xmm12_3;
(* vpand  %xmm11,%xmm10,%xmm3                      #! PC = 0x555555558e38 *)
and xmm3_0@uint32 xmm10_0 xmm11_0; and xmm3_1@uint32 xmm10_1 xmm11_1;
and xmm3_2@uint32 xmm10_2 xmm11_2; and xmm3_3@uint32 xmm10_3 xmm11_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558e3d *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm14,%xmm13                       #! PC = 0x555555558e41 *)
split xmm13_0 dc xmm14_0 0x2; split xmm13_1 dc xmm14_1 0x2;
split xmm13_2 dc xmm14_2 0x2; split xmm13_3 dc xmm14_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558e47 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm14,%xmm1                       #! PC = 0x555555558e4b *)
split dc xmm1_0 xmm14_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm14_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm14_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm14_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x555555558e51 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm14,%xmm15,%xmm3                      #! PC = 0x555555558e55 *)
xor xmm3_0@uint32 xmm15_0 xmm14_0; xor xmm3_1@uint32 xmm15_1 xmm14_1;
xor xmm3_2@uint32 xmm15_2 xmm14_2; xor xmm3_3@uint32 xmm15_3 xmm14_3;
(* vpxor  %xmm1,%xmm13,%xmm13                      #! PC = 0x555555558e5a *)
xor xmm13_0@uint32 xmm13_0 xmm1_0; xor xmm13_1@uint32 xmm13_1 xmm1_1;
xor xmm13_2@uint32 xmm13_2 xmm1_2; xor xmm13_3@uint32 xmm13_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555558e5e *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm14,%xmm1                        #! PC = 0x555555558e62 *)
split xmm1_0 dc xmm14_0 0xd; split xmm1_1 dc xmm14_1 0xd;
split xmm1_2 dc xmm14_2 0xd; split xmm1_3 dc xmm14_3 0xd;
(* vpslld $0x13,%xmm14,%xmm2                       #! PC = 0x555555558e68 *)
split dc xmm2_0 xmm14_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm14_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm14_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm14_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555558e6e *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555558e72 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm13,%xmm7                       #! PC = 0x555555558e76 *)
xor xmm7_0@uint32 xmm13_0 xmm1_0; xor xmm7_1@uint32 xmm13_1 xmm1_1;
xor xmm7_2@uint32 xmm13_2 xmm1_2; xor xmm7_3@uint32 xmm13_3 xmm1_3;
(* vpsrld $0x16,%xmm14,%xmm1                       #! PC = 0x555555558e7a *)
split xmm1_0 dc xmm14_0 0x16; split xmm1_1 dc xmm14_1 0x16;
split xmm1_2 dc xmm14_2 0x16; split xmm1_3 dc xmm14_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558e80 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm14,%xmm2                        #! PC = 0x555555558e84 *)
split dc xmm2_0 xmm14_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm14_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm14_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm14_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm15,%xmm13                      #! PC = 0x555555558e8a *)
xor xmm13_0@uint32 xmm15_0 xmm4_0; xor xmm13_1@uint32 xmm15_1 xmm4_1;
xor xmm13_2@uint32 xmm15_2 xmm4_2; xor xmm13_3@uint32 xmm15_3 xmm4_3;
(* vpaddd %xmm5,%xmm9,%xmm9                        #! PC = 0x555555558e8e *)
adds dc xmm9_0 xmm9_0 xmm5_0; adds dc xmm9_1 xmm9_1 xmm5_1;
adds dc xmm9_2 xmm9_2 xmm5_2; adds dc xmm9_3 xmm9_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558e92 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558e96 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm13,%xmm13                      #! PC = 0x555555558e9a *)
adds dc xmm13_0 xmm13_0 xmm5_0; adds dc xmm13_1 xmm13_1 xmm5_1;
adds dc xmm13_2 xmm13_2 xmm5_2; adds dc xmm13_3 xmm13_3 xmm5_3;
(* vpaddd %xmm7,%xmm13,%xmm13                      #! PC = 0x555555558e9e *)
adds dc xmm13_0 xmm13_0 xmm7_0; adds dc xmm13_1 xmm13_1 xmm7_1;
adds dc xmm13_2 xmm13_2 xmm7_2; adds dc xmm13_3 xmm13_3 xmm7_3;
(* vmovd  0x2c(%r8),%xmm5                          #! EA = L0x5555555612cc; Value = 0x333231302f2e2d2c; PC = 0x555555558ea2 *)
mov xmm5_0 L0x5555555612cc; mov xmm5_1 0@uint32;
mov xmm5_2 0@uint32; mov xmm5_3 0@uint32;
(* vmovd  0x2c(%r9),%xmm0                          #! EA = L0x5555555613dc; Value = 0x333231302f2e2d2c; PC = 0x555555558ea8 *)
mov xmm0_0 L0x5555555613dc; mov xmm0_1 0@uint32;
mov xmm0_2 0@uint32; mov xmm0_3 0@uint32;
(* vpinsrd $0x1,0x2c(%r10),%xmm5,%xmm5             #! EA = L0x5555555614ec; Value = 0x333231302f2e2d2c; PC = 0x555555558eae *)
mov xmm5_0 xmm5_0; mov xmm5_1 L0x5555555614ec;
mov xmm5_2 xmm5_2; mov xmm5_3 xmm5_3;
(* vpinsrd $0x1,0x2c(%r11),%xmm0,%xmm0             #! EA = L0x5555555615fc; Value = 0x333231302f2e2d2c; PC = 0x555555558eb5 *)
mov xmm0_0 xmm0_0; mov xmm0_1 L0x5555555615fc;
mov xmm0_2 xmm0_2; mov xmm0_3 xmm0_3;
(* vpunpckldq %xmm0,%xmm5,%xmm5                    #! PC = 0x555555558ebc *)
mov upck0 xmm5_0; mov upck1 xmm0_0; mov upck2 xmm5_1; mov upck3 xmm0_1;
mov xmm5_0 upck0; mov xmm5_1 upck1; mov xmm5_2 upck2; mov xmm5_3 upck3;
(* vpshufb %xmm6,%xmm5,%xmm5                       #! PC = 0x555555558ec0 *)
assert true
   && and [xmm6_0=0x00010203@32, xmm6_1=0x04050607@32, xmm6_2=0x08090a0b@32, xmm6_3=0x0c0d0e0f@32];
spl s1 s0 xmm5_0 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_0 t1 t0;
spl s1 s0 xmm5_1 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_1 t1 t0;
spl s1 s0 xmm5_2 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_2 t1 t0;
spl s1 s0 xmm5_3 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_3 t1 t0;
(* vpsrld $0x6,%xmm9,%xmm7                         #! PC = 0x555555558ec5 *)
split xmm7_0 dc xmm9_0 0x6; split xmm7_1 dc xmm9_1 0x6;
split xmm7_2 dc xmm9_2 0x6; split xmm7_3 dc xmm9_3 0x6;
(* vpslld $0x1a,%xmm9,%xmm2                        #! PC = 0x555555558ecb *)
split dc xmm2_0 xmm9_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm9_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm9_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm9_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,0x30(%rax)                        #! EA = L0x7fffffffd7b0; PC = 0x555555558ed1 *)
mov L0x7fffffffd7b0 xmm5_0; mov L0x7fffffffd7b4 xmm5_1;
mov L0x7fffffffd7b8 xmm5_2; mov L0x7fffffffd7bc xmm5_3;
(* vpaddd %xmm12,%xmm5,%xmm5                       #! PC = 0x555555558ed6 *)
adds dc xmm5_0 xmm5_0 xmm12_0; adds dc xmm5_1 xmm5_1 xmm12_1;
adds dc xmm5_2 xmm5_2 xmm12_2; adds dc xmm5_3 xmm5_3 xmm12_3;
(* vpsrld $0xb,%xmm9,%xmm1                         #! PC = 0x555555558edb *)
split xmm1_0 dc xmm9_0 0xb; split xmm1_1 dc xmm9_1 0xb;
split xmm1_2 dc xmm9_2 0xb; split xmm1_3 dc xmm9_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558ee1 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm9,%xmm2                        #! PC = 0x555555558ee5 *)
split dc xmm2_0 xmm9_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm9_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm9_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm9_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x20(%rbp),%xmm5,%xmm5                  #! EA = L0x55555555cb60; Value = 0x550c7dc3550c7dc3; PC = 0x555555558eeb *)
adds dc xmm5_0 xmm5_0 L0x55555555cb60; adds dc xmm5_1 xmm5_1 L0x55555555cb64;
adds dc xmm5_2 xmm5_2 L0x55555555cb68; adds dc xmm5_3 xmm5_3 L0x55555555cb6c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558ef0 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm9,%xmm1                        #! PC = 0x555555558ef4 *)
split xmm1_0 dc xmm9_0 0x19; split xmm1_1 dc xmm9_1 0x19;
split xmm1_2 dc xmm9_2 0x19; split xmm1_3 dc xmm9_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558efa *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm9,%xmm2                         #! PC = 0x555555558efe *)
split dc xmm2_0 xmm9_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm9_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm9_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm9_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm11,%xmm9,%xmm0                       #! PC = 0x555555558f04 *)
not xmm9_0n@uint32 xmm9_0; and xmm0_0@uint32 xmm9_0n xmm11_0;
not xmm9_1n@uint32 xmm9_1; and xmm0_1@uint32 xmm9_1n xmm11_1;
not xmm9_2n@uint32 xmm9_2; and xmm0_2@uint32 xmm9_2n xmm11_2;
not xmm9_3n@uint32 xmm9_3; and xmm0_3@uint32 xmm9_3n xmm11_3;
(* vpand  %xmm10,%xmm9,%xmm4                       #! PC = 0x555555558f09 *)
and xmm4_0@uint32 xmm9_0 xmm10_0; and xmm4_1@uint32 xmm9_1 xmm10_1;
and xmm4_2@uint32 xmm9_2 xmm10_2; and xmm4_3@uint32 xmm9_3 xmm10_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558f0e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm13,%xmm12                       #! PC = 0x555555558f12 *)
split xmm12_0 dc xmm13_0 0x2; split xmm12_1 dc xmm13_1 0x2;
split xmm12_2 dc xmm13_2 0x2; split xmm12_3 dc xmm13_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558f18 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm13,%xmm1                       #! PC = 0x555555558f1c *)
split dc xmm1_0 xmm13_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm13_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm13_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm13_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x555555558f22 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm13,%xmm14,%xmm4                      #! PC = 0x555555558f26 *)
xor xmm4_0@uint32 xmm14_0 xmm13_0; xor xmm4_1@uint32 xmm14_1 xmm13_1;
xor xmm4_2@uint32 xmm14_2 xmm13_2; xor xmm4_3@uint32 xmm14_3 xmm13_3;
(* vpxor  %xmm1,%xmm12,%xmm12                      #! PC = 0x555555558f2b *)
xor xmm12_0@uint32 xmm12_0 xmm1_0; xor xmm12_1@uint32 xmm12_1 xmm1_1;
xor xmm12_2@uint32 xmm12_2 xmm1_2; xor xmm12_3@uint32 xmm12_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555558f2f *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm13,%xmm1                        #! PC = 0x555555558f33 *)
split xmm1_0 dc xmm13_0 0xd; split xmm1_1 dc xmm13_1 0xd;
split xmm1_2 dc xmm13_2 0xd; split xmm1_3 dc xmm13_3 0xd;
(* vpslld $0x13,%xmm13,%xmm2                       #! PC = 0x555555558f39 *)
split dc xmm2_0 xmm13_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm13_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm13_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm13_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555558f3f *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x555555558f43 *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm12,%xmm7                       #! PC = 0x555555558f47 *)
xor xmm7_0@uint32 xmm12_0 xmm1_0; xor xmm7_1@uint32 xmm12_1 xmm1_1;
xor xmm7_2@uint32 xmm12_2 xmm1_2; xor xmm7_3@uint32 xmm12_3 xmm1_3;
(* vpsrld $0x16,%xmm13,%xmm1                       #! PC = 0x555555558f4b *)
split xmm1_0 dc xmm13_0 0x16; split xmm1_1 dc xmm13_1 0x16;
split xmm1_2 dc xmm13_2 0x16; split xmm1_3 dc xmm13_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558f51 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm13,%xmm2                        #! PC = 0x555555558f55 *)
split dc xmm2_0 xmm13_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm13_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm13_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm13_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm14,%xmm12                      #! PC = 0x555555558f5b *)
xor xmm12_0@uint32 xmm14_0 xmm3_0; xor xmm12_1@uint32 xmm14_1 xmm3_1;
xor xmm12_2@uint32 xmm14_2 xmm3_2; xor xmm12_3@uint32 xmm14_3 xmm3_3;
(* vpaddd %xmm5,%xmm8,%xmm8                        #! PC = 0x555555558f5f *)
adds dc xmm8_0 xmm8_0 xmm5_0; adds dc xmm8_1 xmm8_1 xmm5_1;
adds dc xmm8_2 xmm8_2 xmm5_2; adds dc xmm8_3 xmm8_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558f63 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558f67 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm12,%xmm12                      #! PC = 0x555555558f6b *)
adds dc xmm12_0 xmm12_0 xmm5_0; adds dc xmm12_1 xmm12_1 xmm5_1;
adds dc xmm12_2 xmm12_2 xmm5_2; adds dc xmm12_3 xmm12_3 xmm5_3;
(* vpaddd %xmm7,%xmm12,%xmm12                      #! PC = 0x555555558f6f *)
adds dc xmm12_0 xmm12_0 xmm7_0; adds dc xmm12_1 xmm12_1 xmm7_1;
adds dc xmm12_2 xmm12_2 xmm7_2; adds dc xmm12_3 xmm12_3 xmm7_3;
(* vmovd  0x30(%r8),%xmm5                          #! EA = L0x5555555612d0; Value = 0x3736353433323130; PC = 0x555555558f73 *)
mov xmm5_0 L0x5555555612d0; mov xmm5_1 0@uint32;
mov xmm5_2 0@uint32; mov xmm5_3 0@uint32;
(* vmovd  0x30(%r9),%xmm0                          #! EA = L0x5555555613e0; Value = 0x3736353433323130; PC = 0x555555558f79 *)
mov xmm0_0 L0x5555555613e0; mov xmm0_1 0@uint32;
mov xmm0_2 0@uint32; mov xmm0_3 0@uint32;
(* vpinsrd $0x1,0x30(%r10),%xmm5,%xmm5             #! EA = L0x5555555614f0; Value = 0x3736353433323130; PC = 0x555555558f7f *)
mov xmm5_0 xmm5_0; mov xmm5_1 L0x5555555614f0;
mov xmm5_2 xmm5_2; mov xmm5_3 xmm5_3;
(* vpinsrd $0x1,0x30(%r11),%xmm0,%xmm0             #! EA = L0x555555561600; Value = 0x3736353433323130; PC = 0x555555558f86 *)
mov xmm0_0 xmm0_0; mov xmm0_1 L0x555555561600;
mov xmm0_2 xmm0_2; mov xmm0_3 xmm0_3;
(* vpunpckldq %xmm0,%xmm5,%xmm5                    #! PC = 0x555555558f8d *)
mov upck0 xmm5_0; mov upck1 xmm0_0; mov upck2 xmm5_1; mov upck3 xmm0_1;
mov xmm5_0 upck0; mov xmm5_1 upck1; mov xmm5_2 upck2; mov xmm5_3 upck3;
(* vpshufb %xmm6,%xmm5,%xmm5                       #! PC = 0x555555558f91 *)
assert true
   && and [xmm6_0=0x00010203@32, xmm6_1=0x04050607@32, xmm6_2=0x08090a0b@32, xmm6_3=0x0c0d0e0f@32];
spl s1 s0 xmm5_0 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_0 t1 t0;
spl s1 s0 xmm5_1 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_1 t1 t0;
spl s1 s0 xmm5_2 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_2 t1 t0;
spl s1 s0 xmm5_3 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_3 t1 t0;
(* vpsrld $0x6,%xmm8,%xmm7                         #! PC = 0x555555558f96 *)
split xmm7_0 dc xmm8_0 0x6; split xmm7_1 dc xmm8_1 0x6;
split xmm7_2 dc xmm8_2 0x6; split xmm7_3 dc xmm8_3 0x6;
(* vpslld $0x1a,%xmm8,%xmm2                        #! PC = 0x555555558f9c *)
split dc xmm2_0 xmm8_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm8_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm8_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm8_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,0x40(%rax)                        #! EA = L0x7fffffffd7c0; PC = 0x555555558fa2 *)
mov L0x7fffffffd7c0 xmm5_0; mov L0x7fffffffd7c4 xmm5_1;
mov L0x7fffffffd7c8 xmm5_2; mov L0x7fffffffd7cc xmm5_3;
(* vpaddd %xmm11,%xmm5,%xmm5                       #! PC = 0x555555558fa7 *)
adds dc xmm5_0 xmm5_0 xmm11_0; adds dc xmm5_1 xmm5_1 xmm11_1;
adds dc xmm5_2 xmm5_2 xmm11_2; adds dc xmm5_3 xmm5_3 xmm11_3;
(* vpsrld $0xb,%xmm8,%xmm1                         #! PC = 0x555555558fac *)
split xmm1_0 dc xmm8_0 0xb; split xmm1_1 dc xmm8_1 0xb;
split xmm1_2 dc xmm8_2 0xb; split xmm1_3 dc xmm8_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558fb2 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm8,%xmm2                        #! PC = 0x555555558fb6 *)
split dc xmm2_0 xmm8_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm8_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm8_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm8_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x0(%rbp),%xmm5,%xmm5                    #! EA = L0x55555555cb80; Value = 0x72be5d7472be5d74; PC = 0x555555558fbc *)
adds dc xmm5_0 xmm5_0 L0x55555555cb80; adds dc xmm5_1 xmm5_1 L0x55555555cb84;
adds dc xmm5_2 xmm5_2 L0x55555555cb88; adds dc xmm5_3 xmm5_3 L0x55555555cb8c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558fc1 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm8,%xmm1                        #! PC = 0x555555558fc5 *)
split xmm1_0 dc xmm8_0 0x19; split xmm1_1 dc xmm8_1 0x19;
split xmm1_2 dc xmm8_2 0x19; split xmm1_3 dc xmm8_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558fcb *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm8,%xmm2                         #! PC = 0x555555558fcf *)
split dc xmm2_0 xmm8_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm8_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm8_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm8_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm10,%xmm8,%xmm0                       #! PC = 0x555555558fd5 *)
not xmm8_0n@uint32 xmm8_0; and xmm0_0@uint32 xmm8_0n xmm10_0;
not xmm8_1n@uint32 xmm8_1; and xmm0_1@uint32 xmm8_1n xmm10_1;
not xmm8_2n@uint32 xmm8_2; and xmm0_2@uint32 xmm8_2n xmm10_2;
not xmm8_3n@uint32 xmm8_3; and xmm0_3@uint32 xmm8_3n xmm10_3;
(* vpand  %xmm9,%xmm8,%xmm3                        #! PC = 0x555555558fda *)
and xmm3_0@uint32 xmm8_0 xmm9_0; and xmm3_1@uint32 xmm8_1 xmm9_1;
and xmm3_2@uint32 xmm8_2 xmm9_2; and xmm3_3@uint32 xmm8_3 xmm9_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555558fdf *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm12,%xmm11                       #! PC = 0x555555558fe3 *)
split xmm11_0 dc xmm12_0 0x2; split xmm11_1 dc xmm12_1 0x2;
split xmm11_2 dc xmm12_2 0x2; split xmm11_3 dc xmm12_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555558fe9 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm12,%xmm1                       #! PC = 0x555555558fed *)
split dc xmm1_0 xmm12_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm12_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm12_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm12_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x555555558ff3 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm12,%xmm13,%xmm3                      #! PC = 0x555555558ff7 *)
xor xmm3_0@uint32 xmm13_0 xmm12_0; xor xmm3_1@uint32 xmm13_1 xmm12_1;
xor xmm3_2@uint32 xmm13_2 xmm12_2; xor xmm3_3@uint32 xmm13_3 xmm12_3;
(* vpxor  %xmm1,%xmm11,%xmm11                      #! PC = 0x555555558ffc *)
xor xmm11_0@uint32 xmm11_0 xmm1_0; xor xmm11_1@uint32 xmm11_1 xmm1_1;
xor xmm11_2@uint32 xmm11_2 xmm1_2; xor xmm11_3@uint32 xmm11_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559000 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm12,%xmm1                        #! PC = 0x555555559004 *)
split xmm1_0 dc xmm12_0 0xd; split xmm1_1 dc xmm12_1 0xd;
split xmm1_2 dc xmm12_2 0xd; split xmm1_3 dc xmm12_3 0xd;
(* vpslld $0x13,%xmm12,%xmm2                       #! PC = 0x55555555900a *)
split dc xmm2_0 xmm12_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm12_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm12_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm12_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555559010 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555559014 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm11,%xmm7                       #! PC = 0x555555559018 *)
xor xmm7_0@uint32 xmm11_0 xmm1_0; xor xmm7_1@uint32 xmm11_1 xmm1_1;
xor xmm7_2@uint32 xmm11_2 xmm1_2; xor xmm7_3@uint32 xmm11_3 xmm1_3;
(* vpsrld $0x16,%xmm12,%xmm1                       #! PC = 0x55555555901c *)
split xmm1_0 dc xmm12_0 0x16; split xmm1_1 dc xmm12_1 0x16;
split xmm1_2 dc xmm12_2 0x16; split xmm1_3 dc xmm12_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559022 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm12,%xmm2                        #! PC = 0x555555559026 *)
split dc xmm2_0 xmm12_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm12_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm12_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm12_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm13,%xmm11                      #! PC = 0x55555555902c *)
xor xmm11_0@uint32 xmm13_0 xmm4_0; xor xmm11_1@uint32 xmm13_1 xmm4_1;
xor xmm11_2@uint32 xmm13_2 xmm4_2; xor xmm11_3@uint32 xmm13_3 xmm4_3;
(* vpaddd %xmm5,%xmm15,%xmm15                      #! PC = 0x555555559030 *)
adds dc xmm15_0 xmm15_0 xmm5_0; adds dc xmm15_1 xmm15_1 xmm5_1;
adds dc xmm15_2 xmm15_2 xmm5_2; adds dc xmm15_3 xmm15_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559034 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559038 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm11,%xmm11                      #! PC = 0x55555555903c *)
adds dc xmm11_0 xmm11_0 xmm5_0; adds dc xmm11_1 xmm11_1 xmm5_1;
adds dc xmm11_2 xmm11_2 xmm5_2; adds dc xmm11_3 xmm11_3 xmm5_3;
(* vpaddd %xmm7,%xmm11,%xmm11                      #! PC = 0x555555559040 *)
adds dc xmm11_0 xmm11_0 xmm7_0; adds dc xmm11_1 xmm11_1 xmm7_1;
adds dc xmm11_2 xmm11_2 xmm7_2; adds dc xmm11_3 xmm11_3 xmm7_3;
(* vmovd  0x34(%r8),%xmm5                          #! EA = L0x5555555612d4; Value = 0x3b3a393837363534; PC = 0x555555559044 *)
mov xmm5_0 L0x5555555612d4; mov xmm5_1 0@uint32;
mov xmm5_2 0@uint32; mov xmm5_3 0@uint32;
(* vmovd  0x34(%r9),%xmm0                          #! EA = L0x5555555613e4; Value = 0x3b3a393837363534; PC = 0x55555555904a *)
mov xmm0_0 L0x5555555613e4; mov xmm0_1 0@uint32;
mov xmm0_2 0@uint32; mov xmm0_3 0@uint32;
(* vpinsrd $0x1,0x34(%r10),%xmm5,%xmm5             #! EA = L0x5555555614f4; Value = 0x3b3a393837363534; PC = 0x555555559050 *)
mov xmm5_0 xmm5_0; mov xmm5_1 L0x5555555614f4;
mov xmm5_2 xmm5_2; mov xmm5_3 xmm5_3;
(* vpinsrd $0x1,0x34(%r11),%xmm0,%xmm0             #! EA = L0x555555561604; Value = 0x3b3a393837363534; PC = 0x555555559057 *)
mov xmm0_0 xmm0_0; mov xmm0_1 L0x555555561604;
mov xmm0_2 xmm0_2; mov xmm0_3 xmm0_3;
(* vpunpckldq %xmm0,%xmm5,%xmm5                    #! PC = 0x55555555905e *)
mov upck0 xmm5_0; mov upck1 xmm0_0; mov upck2 xmm5_1; mov upck3 xmm0_1;
mov xmm5_0 upck0; mov xmm5_1 upck1; mov xmm5_2 upck2; mov xmm5_3 upck3;
(* vpshufb %xmm6,%xmm5,%xmm5                       #! PC = 0x555555559062 *)
assert true
   && and [xmm6_0=0x00010203@32, xmm6_1=0x04050607@32, xmm6_2=0x08090a0b@32, xmm6_3=0x0c0d0e0f@32];
spl s1 s0 xmm5_0 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_0 t1 t0;
spl s1 s0 xmm5_1 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_1 t1 t0;
spl s1 s0 xmm5_2 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_2 t1 t0;
spl s1 s0 xmm5_3 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_3 t1 t0;
(* vpsrld $0x6,%xmm15,%xmm7                        #! PC = 0x555555559067 *)
split xmm7_0 dc xmm15_0 0x6; split xmm7_1 dc xmm15_1 0x6;
split xmm7_2 dc xmm15_2 0x6; split xmm7_3 dc xmm15_3 0x6;
(* vpslld $0x1a,%xmm15,%xmm2                       #! PC = 0x55555555906d *)
split dc xmm2_0 xmm15_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm15_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm15_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm15_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,0x50(%rax)                        #! EA = L0x7fffffffd7d0; PC = 0x555555559073 *)
mov L0x7fffffffd7d0 xmm5_0; mov L0x7fffffffd7d4 xmm5_1;
mov L0x7fffffffd7d8 xmm5_2; mov L0x7fffffffd7dc xmm5_3;
(* vpaddd %xmm10,%xmm5,%xmm5                       #! PC = 0x555555559078 *)
adds dc xmm5_0 xmm5_0 xmm10_0; adds dc xmm5_1 xmm5_1 xmm10_1;
adds dc xmm5_2 xmm5_2 xmm10_2; adds dc xmm5_3 xmm5_3 xmm10_3;
(* vpsrld $0xb,%xmm15,%xmm1                        #! PC = 0x55555555907d *)
split xmm1_0 dc xmm15_0 0xb; split xmm1_1 dc xmm15_1 0xb;
split xmm1_2 dc xmm15_2 0xb; split xmm1_3 dc xmm15_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559083 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm15,%xmm2                       #! PC = 0x555555559087 *)
split dc xmm2_0 xmm15_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm15_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm15_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm15_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x20(%rbp),%xmm5,%xmm5                   #! EA = L0x55555555cba0; Value = 0x80deb1fe80deb1fe; PC = 0x55555555908d *)
adds dc xmm5_0 xmm5_0 L0x55555555cba0; adds dc xmm5_1 xmm5_1 L0x55555555cba4;
adds dc xmm5_2 xmm5_2 L0x55555555cba8; adds dc xmm5_3 xmm5_3 L0x55555555cbac;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559092 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm15,%xmm1                       #! PC = 0x555555559096 *)
split xmm1_0 dc xmm15_0 0x19; split xmm1_1 dc xmm15_1 0x19;
split xmm1_2 dc xmm15_2 0x19; split xmm1_3 dc xmm15_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555909c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm15,%xmm2                        #! PC = 0x5555555590a0 *)
split dc xmm2_0 xmm15_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm15_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm15_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm15_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm9,%xmm15,%xmm0                       #! PC = 0x5555555590a6 *)
not xmm15_0n@uint32 xmm15_0; and xmm0_0@uint32 xmm15_0n xmm9_0;
not xmm15_1n@uint32 xmm15_1; and xmm0_1@uint32 xmm15_1n xmm9_1;
not xmm15_2n@uint32 xmm15_2; and xmm0_2@uint32 xmm15_2n xmm9_2;
not xmm15_3n@uint32 xmm15_3; and xmm0_3@uint32 xmm15_3n xmm9_3;
(* vpand  %xmm8,%xmm15,%xmm4                       #! PC = 0x5555555590ab *)
and xmm4_0@uint32 xmm15_0 xmm8_0; and xmm4_1@uint32 xmm15_1 xmm8_1;
and xmm4_2@uint32 xmm15_2 xmm8_2; and xmm4_3@uint32 xmm15_3 xmm8_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555590b0 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm11,%xmm10                       #! PC = 0x5555555590b4 *)
split xmm10_0 dc xmm11_0 0x2; split xmm10_1 dc xmm11_1 0x2;
split xmm10_2 dc xmm11_2 0x2; split xmm10_3 dc xmm11_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555590ba *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm11,%xmm1                       #! PC = 0x5555555590be *)
split dc xmm1_0 xmm11_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm11_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm11_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm11_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x5555555590c4 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm11,%xmm12,%xmm4                      #! PC = 0x5555555590c8 *)
xor xmm4_0@uint32 xmm12_0 xmm11_0; xor xmm4_1@uint32 xmm12_1 xmm11_1;
xor xmm4_2@uint32 xmm12_2 xmm11_2; xor xmm4_3@uint32 xmm12_3 xmm11_3;
(* vpxor  %xmm1,%xmm10,%xmm10                      #! PC = 0x5555555590cd *)
xor xmm10_0@uint32 xmm10_0 xmm1_0; xor xmm10_1@uint32 xmm10_1 xmm1_1;
xor xmm10_2@uint32 xmm10_2 xmm1_2; xor xmm10_3@uint32 xmm10_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x5555555590d1 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm11,%xmm1                        #! PC = 0x5555555590d5 *)
split xmm1_0 dc xmm11_0 0xd; split xmm1_1 dc xmm11_1 0xd;
split xmm1_2 dc xmm11_2 0xd; split xmm1_3 dc xmm11_3 0xd;
(* vpslld $0x13,%xmm11,%xmm2                       #! PC = 0x5555555590db *)
split dc xmm2_0 xmm11_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm11_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm11_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm11_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x5555555590e1 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x5555555590e5 *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm10,%xmm7                       #! PC = 0x5555555590e9 *)
xor xmm7_0@uint32 xmm10_0 xmm1_0; xor xmm7_1@uint32 xmm10_1 xmm1_1;
xor xmm7_2@uint32 xmm10_2 xmm1_2; xor xmm7_3@uint32 xmm10_3 xmm1_3;
(* vpsrld $0x16,%xmm11,%xmm1                       #! PC = 0x5555555590ed *)
split xmm1_0 dc xmm11_0 0x16; split xmm1_1 dc xmm11_1 0x16;
split xmm1_2 dc xmm11_2 0x16; split xmm1_3 dc xmm11_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555590f3 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm11,%xmm2                        #! PC = 0x5555555590f7 *)
split dc xmm2_0 xmm11_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm11_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm11_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm11_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm12,%xmm10                      #! PC = 0x5555555590fd *)
xor xmm10_0@uint32 xmm12_0 xmm3_0; xor xmm10_1@uint32 xmm12_1 xmm3_1;
xor xmm10_2@uint32 xmm12_2 xmm3_2; xor xmm10_3@uint32 xmm12_3 xmm3_3;
(* vpaddd %xmm5,%xmm14,%xmm14                      #! PC = 0x555555559101 *)
adds dc xmm14_0 xmm14_0 xmm5_0; adds dc xmm14_1 xmm14_1 xmm5_1;
adds dc xmm14_2 xmm14_2 xmm5_2; adds dc xmm14_3 xmm14_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559105 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559109 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm10,%xmm10                      #! PC = 0x55555555910d *)
adds dc xmm10_0 xmm10_0 xmm5_0; adds dc xmm10_1 xmm10_1 xmm5_1;
adds dc xmm10_2 xmm10_2 xmm5_2; adds dc xmm10_3 xmm10_3 xmm5_3;
(* vpaddd %xmm7,%xmm10,%xmm10                      #! PC = 0x555555559111 *)
adds dc xmm10_0 xmm10_0 xmm7_0; adds dc xmm10_1 xmm10_1 xmm7_1;
adds dc xmm10_2 xmm10_2 xmm7_2; adds dc xmm10_3 xmm10_3 xmm7_3;
(* vmovd  0x38(%r8),%xmm5                          #! EA = L0x5555555612d8; Value = 0x3f3e3d3c3b3a3938; PC = 0x555555559115 *)
mov xmm5_0 L0x5555555612d8; mov xmm5_1 0@uint32;
mov xmm5_2 0@uint32; mov xmm5_3 0@uint32;
(* vmovd  0x38(%r9),%xmm0                          #! EA = L0x5555555613e8; Value = 0x3f3e3d3c3b3a3938; PC = 0x55555555911b *)
mov xmm0_0 L0x5555555613e8; mov xmm0_1 0@uint32;
mov xmm0_2 0@uint32; mov xmm0_3 0@uint32;
(* vpinsrd $0x1,0x38(%r10),%xmm5,%xmm5             #! EA = L0x5555555614f8; Value = 0x3f3e3d3c3b3a3938; PC = 0x555555559121 *)
mov xmm5_0 xmm5_0; mov xmm5_1 L0x5555555614f8;
mov xmm5_2 xmm5_2; mov xmm5_3 xmm5_3;
(* vpinsrd $0x1,0x38(%r11),%xmm0,%xmm0             #! EA = L0x555555561608; Value = 0x3f3e3d3c3b3a3938; PC = 0x555555559128 *)
mov xmm0_0 xmm0_0; mov xmm0_1 L0x555555561608;
mov xmm0_2 xmm0_2; mov xmm0_3 xmm0_3;
(* vpunpckldq %xmm0,%xmm5,%xmm5                    #! PC = 0x55555555912f *)
mov upck0 xmm5_0; mov upck1 xmm0_0; mov upck2 xmm5_1; mov upck3 xmm0_1;
mov xmm5_0 upck0; mov xmm5_1 upck1; mov xmm5_2 upck2; mov xmm5_3 upck3;
(* vpshufb %xmm6,%xmm5,%xmm5                       #! PC = 0x555555559133 *)
assert true
   && and [xmm6_0=0x00010203@32, xmm6_1=0x04050607@32, xmm6_2=0x08090a0b@32, xmm6_3=0x0c0d0e0f@32];
spl s1 s0 xmm5_0 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_0 t1 t0;
spl s1 s0 xmm5_1 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_1 t1 t0;
spl s1 s0 xmm5_2 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_2 t1 t0;
spl s1 s0 xmm5_3 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_3 t1 t0;
(* vpsrld $0x6,%xmm14,%xmm7                        #! PC = 0x555555559138 *)
split xmm7_0 dc xmm14_0 0x6; split xmm7_1 dc xmm14_1 0x6;
split xmm7_2 dc xmm14_2 0x6; split xmm7_3 dc xmm14_3 0x6;
(* vpslld $0x1a,%xmm14,%xmm2                       #! PC = 0x55555555913e *)
split dc xmm2_0 xmm14_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm14_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm14_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm14_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,0x60(%rax)                        #! EA = L0x7fffffffd7e0; PC = 0x555555559144 *)
mov L0x7fffffffd7e0 xmm5_0; mov L0x7fffffffd7e4 xmm5_1;
mov L0x7fffffffd7e8 xmm5_2; mov L0x7fffffffd7ec xmm5_3;
(* vpaddd %xmm9,%xmm5,%xmm5                        #! PC = 0x555555559149 *)
adds dc xmm5_0 xmm5_0 xmm9_0; adds dc xmm5_1 xmm5_1 xmm9_1;
adds dc xmm5_2 xmm5_2 xmm9_2; adds dc xmm5_3 xmm5_3 xmm9_3;
(* vpsrld $0xb,%xmm14,%xmm1                        #! PC = 0x55555555914e *)
split xmm1_0 dc xmm14_0 0xb; split xmm1_1 dc xmm14_1 0xb;
split xmm1_2 dc xmm14_2 0xb; split xmm1_3 dc xmm14_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559154 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm14,%xmm2                       #! PC = 0x555555559158 *)
split dc xmm2_0 xmm14_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm14_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm14_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm14_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x40(%rbp),%xmm5,%xmm5                   #! EA = L0x55555555cbc0; Value = 0x9bdc06a79bdc06a7; PC = 0x55555555915e *)
adds dc xmm5_0 xmm5_0 L0x55555555cbc0; adds dc xmm5_1 xmm5_1 L0x55555555cbc4;
adds dc xmm5_2 xmm5_2 L0x55555555cbc8; adds dc xmm5_3 xmm5_3 L0x55555555cbcc;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559163 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm14,%xmm1                       #! PC = 0x555555559167 *)
split xmm1_0 dc xmm14_0 0x19; split xmm1_1 dc xmm14_1 0x19;
split xmm1_2 dc xmm14_2 0x19; split xmm1_3 dc xmm14_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555916d *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm14,%xmm2                        #! PC = 0x555555559171 *)
split dc xmm2_0 xmm14_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm14_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm14_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm14_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm8,%xmm14,%xmm0                       #! PC = 0x555555559177 *)
not xmm14_0n@uint32 xmm14_0; and xmm0_0@uint32 xmm14_0n xmm8_0;
not xmm14_1n@uint32 xmm14_1; and xmm0_1@uint32 xmm14_1n xmm8_1;
not xmm14_2n@uint32 xmm14_2; and xmm0_2@uint32 xmm14_2n xmm8_2;
not xmm14_3n@uint32 xmm14_3; and xmm0_3@uint32 xmm14_3n xmm8_3;
(* vpand  %xmm15,%xmm14,%xmm3                      #! PC = 0x55555555917c *)
and xmm3_0@uint32 xmm14_0 xmm15_0; and xmm3_1@uint32 xmm14_1 xmm15_1;
and xmm3_2@uint32 xmm14_2 xmm15_2; and xmm3_3@uint32 xmm14_3 xmm15_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559181 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm10,%xmm9                        #! PC = 0x555555559185 *)
split xmm9_0 dc xmm10_0 0x2; split xmm9_1 dc xmm10_1 0x2;
split xmm9_2 dc xmm10_2 0x2; split xmm9_3 dc xmm10_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555918b *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm10,%xmm1                       #! PC = 0x55555555918f *)
split dc xmm1_0 xmm10_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm10_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm10_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm10_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x555555559195 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm10,%xmm11,%xmm3                      #! PC = 0x555555559199 *)
xor xmm3_0@uint32 xmm11_0 xmm10_0; xor xmm3_1@uint32 xmm11_1 xmm10_1;
xor xmm3_2@uint32 xmm11_2 xmm10_2; xor xmm3_3@uint32 xmm11_3 xmm10_3;
(* vpxor  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555555919e *)
xor xmm9_0@uint32 xmm9_0 xmm1_0; xor xmm9_1@uint32 xmm9_1 xmm1_1;
xor xmm9_2@uint32 xmm9_2 xmm1_2; xor xmm9_3@uint32 xmm9_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x5555555591a2 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm10,%xmm1                        #! PC = 0x5555555591a6 *)
split xmm1_0 dc xmm10_0 0xd; split xmm1_1 dc xmm10_1 0xd;
split xmm1_2 dc xmm10_2 0xd; split xmm1_3 dc xmm10_3 0xd;
(* vpslld $0x13,%xmm10,%xmm2                       #! PC = 0x5555555591ac *)
split dc xmm2_0 xmm10_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm10_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm10_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm10_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x5555555591b2 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x5555555591b6 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm9,%xmm7                        #! PC = 0x5555555591ba *)
xor xmm7_0@uint32 xmm9_0 xmm1_0; xor xmm7_1@uint32 xmm9_1 xmm1_1;
xor xmm7_2@uint32 xmm9_2 xmm1_2; xor xmm7_3@uint32 xmm9_3 xmm1_3;
(* vpsrld $0x16,%xmm10,%xmm1                       #! PC = 0x5555555591be *)
split xmm1_0 dc xmm10_0 0x16; split xmm1_1 dc xmm10_1 0x16;
split xmm1_2 dc xmm10_2 0x16; split xmm1_3 dc xmm10_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555591c4 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm10,%xmm2                        #! PC = 0x5555555591c8 *)
split dc xmm2_0 xmm10_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm10_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm10_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm10_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm11,%xmm9                       #! PC = 0x5555555591ce *)
xor xmm9_0@uint32 xmm11_0 xmm4_0; xor xmm9_1@uint32 xmm11_1 xmm4_1;
xor xmm9_2@uint32 xmm11_2 xmm4_2; xor xmm9_3@uint32 xmm11_3 xmm4_3;
(* vpaddd %xmm5,%xmm13,%xmm13                      #! PC = 0x5555555591d2 *)
adds dc xmm13_0 xmm13_0 xmm5_0; adds dc xmm13_1 xmm13_1 xmm5_1;
adds dc xmm13_2 xmm13_2 xmm5_2; adds dc xmm13_3 xmm13_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555591d6 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555591da *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm9,%xmm9                        #! PC = 0x5555555591de *)
adds dc xmm9_0 xmm9_0 xmm5_0; adds dc xmm9_1 xmm9_1 xmm5_1;
adds dc xmm9_2 xmm9_2 xmm5_2; adds dc xmm9_3 xmm9_3 xmm5_3;
(* vpaddd %xmm7,%xmm9,%xmm9                        #! PC = 0x5555555591e2 *)
adds dc xmm9_0 xmm9_0 xmm7_0; adds dc xmm9_1 xmm9_1 xmm7_1;
adds dc xmm9_2 xmm9_2 xmm7_2; adds dc xmm9_3 xmm9_3 xmm7_3;
(* vmovd  0x3c(%r8),%xmm5                          #! EA = L0x5555555612dc; Value = 0x434241403f3e3d3c; PC = 0x5555555591e6 *)
mov xmm5_0 L0x5555555612dc; mov xmm5_1 0@uint32;
mov xmm5_2 0@uint32; mov xmm5_3 0@uint32;
(* lea    0x40(%r8),%r8                            #! PC = 0x5555555591ec *)
(* lea XXX, r8 *)
nop;
(* vmovd  0x3c(%r9),%xmm0                          #! EA = L0x5555555613ec; Value = 0x434241403f3e3d3c; PC = 0x5555555591f0 *)
mov xmm0_0 L0x5555555613ec; mov xmm0_1 0@uint32;
mov xmm0_2 0@uint32; mov xmm0_3 0@uint32;
(* lea    0x40(%r9),%r9                            #! PC = 0x5555555591f6 *)
(* lea XXX, r9 *)
nop;
(* vpinsrd $0x1,0x3c(%r10),%xmm5,%xmm5             #! EA = L0x5555555614fc; Value = 0x434241403f3e3d3c; PC = 0x5555555591fa *)
mov xmm5_0 xmm5_0; mov xmm5_1 L0x5555555614fc;
mov xmm5_2 xmm5_2; mov xmm5_3 xmm5_3;
(* lea    0x40(%r10),%r10                          #! PC = 0x555555559201 *)
(* lea XXX, r10 *)
nop;
(* vpinsrd $0x1,0x3c(%r11),%xmm0,%xmm0             #! EA = L0x55555556160c; Value = 0x434241403f3e3d3c; PC = 0x555555559205 *)
mov xmm0_0 xmm0_0; mov xmm0_1 L0x55555556160c;
mov xmm0_2 xmm0_2; mov xmm0_3 xmm0_3;
(* lea    0x40(%r11),%r11                          #! PC = 0x55555555920c *)
(* lea XXX, r11 *)
nop;
(* vpunpckldq %xmm0,%xmm5,%xmm5                    #! PC = 0x555555559210 *)
mov upck0 xmm5_0; mov upck1 xmm0_0; mov upck2 xmm5_1; mov upck3 xmm0_1;
mov xmm5_0 upck0; mov xmm5_1 upck1; mov xmm5_2 upck2; mov xmm5_3 upck3;
(* vpshufb %xmm6,%xmm5,%xmm5                       #! PC = 0x555555559214 *)
assert true
   && and [xmm6_0=0x00010203@32, xmm6_1=0x04050607@32, xmm6_2=0x08090a0b@32, xmm6_3=0x0c0d0e0f@32];
spl s1 s0 xmm5_0 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_0 t1 t0;
spl s1 s0 xmm5_1 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_1 t1 t0;
spl s1 s0 xmm5_2 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_2 t1 t0;
spl s1 s0 xmm5_3 16; spl s01 s00 s0 8; spl s11 s10 s1 8;
join t1 s00 s01; join t0 s10 s11; join xmm5_3 t1 t0;
(* vpsrld $0x6,%xmm13,%xmm7                        #! PC = 0x555555559219 *)
split xmm7_0 dc xmm13_0 0x6; split xmm7_1 dc xmm13_1 0x6;
split xmm7_2 dc xmm13_2 0x6; split xmm7_3 dc xmm13_3 0x6;
(* vpslld $0x1a,%xmm13,%xmm2                       #! PC = 0x55555555921f *)
split dc xmm2_0 xmm13_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm13_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm13_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm13_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,0x70(%rax)                        #! EA = L0x7fffffffd7f0; PC = 0x555555559225 *)
mov L0x7fffffffd7f0 xmm5_0; mov L0x7fffffffd7f4 xmm5_1;
mov L0x7fffffffd7f8 xmm5_2; mov L0x7fffffffd7fc xmm5_3;
(* vpaddd %xmm8,%xmm5,%xmm5                        #! PC = 0x55555555922a *)
adds dc xmm5_0 xmm5_0 xmm8_0; adds dc xmm5_1 xmm5_1 xmm8_1;
adds dc xmm5_2 xmm5_2 xmm8_2; adds dc xmm5_3 xmm5_3 xmm8_3;
(* vpsrld $0xb,%xmm13,%xmm1                        #! PC = 0x55555555922f *)
split xmm1_0 dc xmm13_0 0xb; split xmm1_1 dc xmm13_1 0xb;
split xmm1_2 dc xmm13_2 0xb; split xmm1_3 dc xmm13_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559235 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm13,%xmm2                       #! PC = 0x555555559239 *)
split dc xmm2_0 xmm13_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm13_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm13_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm13_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x60(%rbp),%xmm5,%xmm5                   #! EA = L0x55555555cbe0; Value = 0xc19bf174c19bf174; PC = 0x55555555923f *)
adds dc xmm5_0 xmm5_0 L0x55555555cbe0; adds dc xmm5_1 xmm5_1 L0x55555555cbe4;
adds dc xmm5_2 xmm5_2 L0x55555555cbe8; adds dc xmm5_3 xmm5_3 L0x55555555cbec;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559244 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm13,%xmm1                       #! PC = 0x555555559248 *)
split xmm1_0 dc xmm13_0 0x19; split xmm1_1 dc xmm13_1 0x19;
split xmm1_2 dc xmm13_2 0x19; split xmm1_3 dc xmm13_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555924e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* prefetcht0 0x3f(%r8)                            #! EA = L0x55555556131f; PC = 0x555555559252 *)
(* prefetcht0 L0x55555556131f *)
nop;
(* vpslld $0x7,%xmm13,%xmm2                        #! PC = 0x555555559257 *)
split dc xmm2_0 xmm13_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm13_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm13_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm13_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm15,%xmm13,%xmm0                      #! PC = 0x55555555925d *)
not xmm13_0n@uint32 xmm13_0; and xmm0_0@uint32 xmm13_0n xmm15_0;
not xmm13_1n@uint32 xmm13_1; and xmm0_1@uint32 xmm13_1n xmm15_1;
not xmm13_2n@uint32 xmm13_2; and xmm0_2@uint32 xmm13_2n xmm15_2;
not xmm13_3n@uint32 xmm13_3; and xmm0_3@uint32 xmm13_3n xmm15_3;
(* vpand  %xmm14,%xmm13,%xmm4                      #! PC = 0x555555559262 *)
and xmm4_0@uint32 xmm13_0 xmm14_0; and xmm4_1@uint32 xmm13_1 xmm14_1;
and xmm4_2@uint32 xmm13_2 xmm14_2; and xmm4_3@uint32 xmm13_3 xmm14_3;
(* prefetcht0 0x3f(%r9)                            #! EA = L0x55555556142f; PC = 0x555555559267 *)
(* prefetcht0 L0x55555556142f *)
nop;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555926c *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm9,%xmm8                         #! PC = 0x555555559270 *)
split xmm8_0 dc xmm9_0 0x2; split xmm8_1 dc xmm9_1 0x2;
split xmm8_2 dc xmm9_2 0x2; split xmm8_3 dc xmm9_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559276 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* prefetcht0 0x3f(%r10)                           #! EA = L0x55555556153f; PC = 0x55555555927a *)
(* prefetcht0 L0x55555556153f *)
nop;
(* vpslld $0x1e,%xmm9,%xmm1                        #! PC = 0x55555555927f *)
split dc xmm1_0 xmm9_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm9_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm9_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm9_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x555555559285 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm9,%xmm10,%xmm4                       #! PC = 0x555555559289 *)
xor xmm4_0@uint32 xmm10_0 xmm9_0; xor xmm4_1@uint32 xmm10_1 xmm9_1;
xor xmm4_2@uint32 xmm10_2 xmm9_2; xor xmm4_3@uint32 xmm10_3 xmm9_3;
(* prefetcht0 0x3f(%r11)                           #! EA = L0x55555556164f; PC = 0x55555555928e *)
(* prefetcht0 L0x55555556164f *)
nop;
(* vpxor  %xmm1,%xmm8,%xmm8                        #! PC = 0x555555559293 *)
xor xmm8_0@uint32 xmm8_0 xmm1_0; xor xmm8_1@uint32 xmm8_1 xmm1_1;
xor xmm8_2@uint32 xmm8_2 xmm1_2; xor xmm8_3@uint32 xmm8_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559297 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm9,%xmm1                         #! PC = 0x55555555929b *)
split xmm1_0 dc xmm9_0 0xd; split xmm1_1 dc xmm9_1 0xd;
split xmm1_2 dc xmm9_2 0xd; split xmm1_3 dc xmm9_3 0xd;
(* vpslld $0x13,%xmm9,%xmm2                        #! PC = 0x5555555592a1 *)
split dc xmm2_0 xmm9_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm9_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm9_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm9_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x5555555592a7 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x5555555592ab *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm8,%xmm7                        #! PC = 0x5555555592af *)
xor xmm7_0@uint32 xmm8_0 xmm1_0; xor xmm7_1@uint32 xmm8_1 xmm1_1;
xor xmm7_2@uint32 xmm8_2 xmm1_2; xor xmm7_3@uint32 xmm8_3 xmm1_3;
(* vpsrld $0x16,%xmm9,%xmm1                        #! PC = 0x5555555592b3 *)
split xmm1_0 dc xmm9_0 0x16; split xmm1_1 dc xmm9_1 0x16;
split xmm1_2 dc xmm9_2 0x16; split xmm1_3 dc xmm9_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555592b9 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm9,%xmm2                         #! PC = 0x5555555592bd *)
split dc xmm2_0 xmm9_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm9_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm9_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm9_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm10,%xmm8                       #! PC = 0x5555555592c3 *)
xor xmm8_0@uint32 xmm10_0 xmm3_0; xor xmm8_1@uint32 xmm10_1 xmm3_1;
xor xmm8_2@uint32 xmm10_2 xmm3_2; xor xmm8_3@uint32 xmm10_3 xmm3_3;
(* vpaddd %xmm5,%xmm12,%xmm12                      #! PC = 0x5555555592c7 *)
adds dc xmm12_0 xmm12_0 xmm5_0; adds dc xmm12_1 xmm12_1 xmm5_1;
adds dc xmm12_2 xmm12_2 xmm5_2; adds dc xmm12_3 xmm12_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555592cb *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555592cf *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm8,%xmm8                        #! PC = 0x5555555592d3 *)
adds dc xmm8_0 xmm8_0 xmm5_0; adds dc xmm8_1 xmm8_1 xmm5_1;
adds dc xmm8_2 xmm8_2 xmm5_2; adds dc xmm8_3 xmm8_3 xmm5_3;
(* vpaddd %xmm7,%xmm8,%xmm8                        #! PC = 0x5555555592d7 *)
adds dc xmm8_0 xmm8_0 xmm7_0; adds dc xmm8_1 xmm8_1 xmm7_1;
adds dc xmm8_2 xmm8_2 xmm7_2; adds dc xmm8_3 xmm8_3 xmm7_3;
(* add    $0x100,%rbp                              #! PC = 0x5555555592db *)
(* add 0x100, rbp *)
nop;
(* vmovdqu -0x80(%rax),%xmm5                       #! EA = L0x7fffffffd700; Value = 0x0001020300010203; PC = 0x5555555592e2 *)
mov xmm5_0 L0x7fffffffd700; mov xmm5_1 L0x7fffffffd704;
mov xmm5_2 L0x7fffffffd708; mov xmm5_3 L0x7fffffffd70c;
(* mov    $0x3,%ecx                                #! PC = 0x5555555592e7 *)
mov ecx 0x3@uint32;
(* #jmp    0x555555559300 <sha256_multi_block_avx+3680>#! PC = 0x5555555592ec *)
#jmp    0x555555559300 <sha256_multi_block_avx+3680>#! 0x5555555592ec = 0x5555555592ec;
(* vmovdqu -0x70(%rax),%xmm6                       #! EA = L0x7fffffffd710; Value = 0x0405060704050607; PC = 0x555555559300 *)
mov xmm6_0 L0x7fffffffd710; mov xmm6_1 L0x7fffffffd714;
mov xmm6_2 L0x7fffffffd718; mov xmm6_3 L0x7fffffffd71c;
(* vpaddd 0x10(%rax),%xmm5,%xmm5                   #! EA = L0x7fffffffd790; Value = 0x2425262724252627; PC = 0x555555559305 *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd790; adds dc xmm5_1 xmm5_1 L0x7fffffffd794;
adds dc xmm5_2 xmm5_2 L0x7fffffffd798; adds dc xmm5_3 xmm5_3 L0x7fffffffd79c;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x55555555930a *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x55555555930f *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x555555559314 *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559319 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x55555555931d *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559322 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x555555559326 *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x60(%rax),%xmm0                        #! EA = L0x7fffffffd7e0; Value = 0x38393a3b38393a3b; PC = 0x55555555932b *)
mov xmm0_0 L0x7fffffffd7e0; mov xmm0_1 L0x7fffffffd7e4;
mov xmm0_2 L0x7fffffffd7e8; mov xmm0_3 L0x7fffffffd7ec;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x555555559330 *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559335 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559339 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555933e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559342 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559347 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x55555555934b *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x55555555934f *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559354 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559358 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555935d *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559361 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559365 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm12,%xmm7                        #! PC = 0x555555559369 *)
split xmm7_0 dc xmm12_0 0x6; split xmm7_1 dc xmm12_1 0x6;
split xmm7_2 dc xmm12_2 0x6; split xmm7_3 dc xmm12_3 0x6;
(* vpslld $0x1a,%xmm12,%xmm2                       #! PC = 0x55555555936f *)
split dc xmm2_0 xmm12_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm12_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm12_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm12_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,-0x80(%rax)                       #! EA = L0x7fffffffd700; PC = 0x555555559375 *)
mov L0x7fffffffd700 xmm5_0; mov L0x7fffffffd704 xmm5_1;
mov L0x7fffffffd708 xmm5_2; mov L0x7fffffffd70c xmm5_3;
(* vpaddd %xmm15,%xmm5,%xmm5                       #! PC = 0x55555555937a *)
adds dc xmm5_0 xmm5_0 xmm15_0; adds dc xmm5_1 xmm5_1 xmm15_1;
adds dc xmm5_2 xmm5_2 xmm15_2; adds dc xmm5_3 xmm5_3 xmm15_3;
(* vpsrld $0xb,%xmm12,%xmm1                        #! PC = 0x55555555937f *)
split xmm1_0 dc xmm12_0 0xb; split xmm1_1 dc xmm12_1 0xb;
split xmm1_2 dc xmm12_2 0xb; split xmm1_3 dc xmm12_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559385 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm12,%xmm2                       #! PC = 0x555555559389 *)
split dc xmm2_0 xmm12_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm12_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm12_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm12_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x80(%rbp),%xmm5,%xmm5                  #! EA = L0x55555555cc00; Value = 0xe49b69c1e49b69c1; PC = 0x55555555938f *)
adds dc xmm5_0 xmm5_0 L0x55555555cc00; adds dc xmm5_1 xmm5_1 L0x55555555cc04;
adds dc xmm5_2 xmm5_2 L0x55555555cc08; adds dc xmm5_3 xmm5_3 L0x55555555cc0c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559394 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm12,%xmm1                       #! PC = 0x555555559398 *)
split xmm1_0 dc xmm12_0 0x19; split xmm1_1 dc xmm12_1 0x19;
split xmm1_2 dc xmm12_2 0x19; split xmm1_3 dc xmm12_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555939e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm12,%xmm2                        #! PC = 0x5555555593a2 *)
split dc xmm2_0 xmm12_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm12_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm12_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm12_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm14,%xmm12,%xmm0                      #! PC = 0x5555555593a8 *)
not xmm12_0n@uint32 xmm12_0; and xmm0_0@uint32 xmm12_0n xmm14_0;
not xmm12_1n@uint32 xmm12_1; and xmm0_1@uint32 xmm12_1n xmm14_1;
not xmm12_2n@uint32 xmm12_2; and xmm0_2@uint32 xmm12_2n xmm14_2;
not xmm12_3n@uint32 xmm12_3; and xmm0_3@uint32 xmm12_3n xmm14_3;
(* vpand  %xmm13,%xmm12,%xmm3                      #! PC = 0x5555555593ad *)
and xmm3_0@uint32 xmm12_0 xmm13_0; and xmm3_1@uint32 xmm12_1 xmm13_1;
and xmm3_2@uint32 xmm12_2 xmm13_2; and xmm3_3@uint32 xmm12_3 xmm13_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555593b2 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm8,%xmm15                        #! PC = 0x5555555593b6 *)
split xmm15_0 dc xmm8_0 0x2; split xmm15_1 dc xmm8_1 0x2;
split xmm15_2 dc xmm8_2 0x2; split xmm15_3 dc xmm8_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555593bc *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm8,%xmm1                        #! PC = 0x5555555593c0 *)
split dc xmm1_0 xmm8_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm8_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm8_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm8_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x5555555593c6 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm8,%xmm9,%xmm3                        #! PC = 0x5555555593ca *)
xor xmm3_0@uint32 xmm9_0 xmm8_0; xor xmm3_1@uint32 xmm9_1 xmm8_1;
xor xmm3_2@uint32 xmm9_2 xmm8_2; xor xmm3_3@uint32 xmm9_3 xmm8_3;
(* vpxor  %xmm1,%xmm15,%xmm15                      #! PC = 0x5555555593cf *)
xor xmm15_0@uint32 xmm15_0 xmm1_0; xor xmm15_1@uint32 xmm15_1 xmm1_1;
xor xmm15_2@uint32 xmm15_2 xmm1_2; xor xmm15_3@uint32 xmm15_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x5555555593d3 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm8,%xmm1                         #! PC = 0x5555555593d7 *)
split xmm1_0 dc xmm8_0 0xd; split xmm1_1 dc xmm8_1 0xd;
split xmm1_2 dc xmm8_2 0xd; split xmm1_3 dc xmm8_3 0xd;
(* vpslld $0x13,%xmm8,%xmm2                        #! PC = 0x5555555593dd *)
split dc xmm2_0 xmm8_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm8_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm8_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm8_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x5555555593e3 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x5555555593e7 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm15,%xmm7                       #! PC = 0x5555555593eb *)
xor xmm7_0@uint32 xmm15_0 xmm1_0; xor xmm7_1@uint32 xmm15_1 xmm1_1;
xor xmm7_2@uint32 xmm15_2 xmm1_2; xor xmm7_3@uint32 xmm15_3 xmm1_3;
(* vpsrld $0x16,%xmm8,%xmm1                        #! PC = 0x5555555593ef *)
split xmm1_0 dc xmm8_0 0x16; split xmm1_1 dc xmm8_1 0x16;
split xmm1_2 dc xmm8_2 0x16; split xmm1_3 dc xmm8_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555593f5 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm8,%xmm2                         #! PC = 0x5555555593f9 *)
split dc xmm2_0 xmm8_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm8_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm8_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm8_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm9,%xmm15                       #! PC = 0x5555555593ff *)
xor xmm15_0@uint32 xmm9_0 xmm4_0; xor xmm15_1@uint32 xmm9_1 xmm4_1;
xor xmm15_2@uint32 xmm9_2 xmm4_2; xor xmm15_3@uint32 xmm9_3 xmm4_3;
(* vpaddd %xmm5,%xmm11,%xmm11                      #! PC = 0x555555559403 *)
adds dc xmm11_0 xmm11_0 xmm5_0; adds dc xmm11_1 xmm11_1 xmm5_1;
adds dc xmm11_2 xmm11_2 xmm5_2; adds dc xmm11_3 xmm11_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559407 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555940b *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm15,%xmm15                      #! PC = 0x55555555940f *)
adds dc xmm15_0 xmm15_0 xmm5_0; adds dc xmm15_1 xmm15_1 xmm5_1;
adds dc xmm15_2 xmm15_2 xmm5_2; adds dc xmm15_3 xmm15_3 xmm5_3;
(* vpaddd %xmm7,%xmm15,%xmm15                      #! PC = 0x555555559413 *)
adds dc xmm15_0 xmm15_0 xmm7_0; adds dc xmm15_1 xmm15_1 xmm7_1;
adds dc xmm15_2 xmm15_2 xmm7_2; adds dc xmm15_3 xmm15_3 xmm7_3;
(* vmovdqu -0x60(%rax),%xmm5                       #! EA = L0x7fffffffd720; Value = 0x08090a0b08090a0b; PC = 0x555555559417 *)
mov xmm5_0 L0x7fffffffd720; mov xmm5_1 L0x7fffffffd724;
mov xmm5_2 L0x7fffffffd728; mov xmm5_3 L0x7fffffffd72c;
(* vpaddd 0x20(%rax),%xmm6,%xmm6                   #! EA = L0x7fffffffd7a0; Value = 0x28292a2b28292a2b; PC = 0x55555555941c *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd7a0; adds dc xmm6_1 xmm6_1 L0x7fffffffd7a4;
adds dc xmm6_2 xmm6_2 L0x7fffffffd7a8; adds dc xmm6_3 xmm6_3 L0x7fffffffd7ac;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x555555559421 *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x555555559426 *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x55555555942b *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559430 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x555555559434 *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559439 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x55555555943d *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x70(%rax),%xmm0                        #! EA = L0x7fffffffd7f0; Value = 0x3c3d3e3f3c3d3e3f; PC = 0x555555559442 *)
mov xmm0_0 L0x7fffffffd7f0; mov xmm0_1 L0x7fffffffd7f4;
mov xmm0_2 L0x7fffffffd7f8; mov xmm0_3 L0x7fffffffd7fc;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x555555559447 *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555944c *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559450 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559455 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559459 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555945e *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x555555559462 *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559466 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555946b *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x55555555946f *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559474 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559478 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555947c *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm11,%xmm7                        #! PC = 0x555555559480 *)
split xmm7_0 dc xmm11_0 0x6; split xmm7_1 dc xmm11_1 0x6;
split xmm7_2 dc xmm11_2 0x6; split xmm7_3 dc xmm11_3 0x6;
(* vpslld $0x1a,%xmm11,%xmm2                       #! PC = 0x555555559486 *)
split dc xmm2_0 xmm11_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm11_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm11_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm11_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,-0x70(%rax)                       #! EA = L0x7fffffffd710; PC = 0x55555555948c *)
mov L0x7fffffffd710 xmm6_0; mov L0x7fffffffd714 xmm6_1;
mov L0x7fffffffd718 xmm6_2; mov L0x7fffffffd71c xmm6_3;
(* vpaddd %xmm14,%xmm6,%xmm6                       #! PC = 0x555555559491 *)
adds dc xmm6_0 xmm6_0 xmm14_0; adds dc xmm6_1 xmm6_1 xmm14_1;
adds dc xmm6_2 xmm6_2 xmm14_2; adds dc xmm6_3 xmm6_3 xmm14_3;
(* vpsrld $0xb,%xmm11,%xmm1                        #! PC = 0x555555559496 *)
split xmm1_0 dc xmm11_0 0xb; split xmm1_1 dc xmm11_1 0xb;
split xmm1_2 dc xmm11_2 0xb; split xmm1_3 dc xmm11_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555949c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm11,%xmm2                       #! PC = 0x5555555594a0 *)
split dc xmm2_0 xmm11_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm11_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm11_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm11_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x60(%rbp),%xmm6,%xmm6                  #! EA = L0x55555555cc20; Value = 0xefbe4786efbe4786; PC = 0x5555555594a6 *)
adds dc xmm6_0 xmm6_0 L0x55555555cc20; adds dc xmm6_1 xmm6_1 L0x55555555cc24;
adds dc xmm6_2 xmm6_2 L0x55555555cc28; adds dc xmm6_3 xmm6_3 L0x55555555cc2c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555594ab *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm11,%xmm1                       #! PC = 0x5555555594af *)
split xmm1_0 dc xmm11_0 0x19; split xmm1_1 dc xmm11_1 0x19;
split xmm1_2 dc xmm11_2 0x19; split xmm1_3 dc xmm11_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555594b5 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm11,%xmm2                        #! PC = 0x5555555594b9 *)
split dc xmm2_0 xmm11_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm11_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm11_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm11_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm13,%xmm11,%xmm0                      #! PC = 0x5555555594bf *)
not xmm11_0n@uint32 xmm11_0; and xmm0_0@uint32 xmm11_0n xmm13_0;
not xmm11_1n@uint32 xmm11_1; and xmm0_1@uint32 xmm11_1n xmm13_1;
not xmm11_2n@uint32 xmm11_2; and xmm0_2@uint32 xmm11_2n xmm13_2;
not xmm11_3n@uint32 xmm11_3; and xmm0_3@uint32 xmm11_3n xmm13_3;
(* vpand  %xmm12,%xmm11,%xmm4                      #! PC = 0x5555555594c4 *)
and xmm4_0@uint32 xmm11_0 xmm12_0; and xmm4_1@uint32 xmm11_1 xmm12_1;
and xmm4_2@uint32 xmm11_2 xmm12_2; and xmm4_3@uint32 xmm11_3 xmm12_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555594c9 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm15,%xmm14                       #! PC = 0x5555555594cd *)
split xmm14_0 dc xmm15_0 0x2; split xmm14_1 dc xmm15_1 0x2;
split xmm14_2 dc xmm15_2 0x2; split xmm14_3 dc xmm15_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555594d3 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm15,%xmm1                       #! PC = 0x5555555594d7 *)
split dc xmm1_0 xmm15_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm15_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm15_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm15_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x5555555594dd *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm15,%xmm8,%xmm4                       #! PC = 0x5555555594e1 *)
xor xmm4_0@uint32 xmm8_0 xmm15_0; xor xmm4_1@uint32 xmm8_1 xmm15_1;
xor xmm4_2@uint32 xmm8_2 xmm15_2; xor xmm4_3@uint32 xmm8_3 xmm15_3;
(* vpxor  %xmm1,%xmm14,%xmm14                      #! PC = 0x5555555594e6 *)
xor xmm14_0@uint32 xmm14_0 xmm1_0; xor xmm14_1@uint32 xmm14_1 xmm1_1;
xor xmm14_2@uint32 xmm14_2 xmm1_2; xor xmm14_3@uint32 xmm14_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x5555555594ea *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm15,%xmm1                        #! PC = 0x5555555594ee *)
split xmm1_0 dc xmm15_0 0xd; split xmm1_1 dc xmm15_1 0xd;
split xmm1_2 dc xmm15_2 0xd; split xmm1_3 dc xmm15_3 0xd;
(* vpslld $0x13,%xmm15,%xmm2                       #! PC = 0x5555555594f4 *)
split dc xmm2_0 xmm15_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm15_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm15_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm15_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x5555555594fa *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x5555555594fe *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm14,%xmm7                       #! PC = 0x555555559502 *)
xor xmm7_0@uint32 xmm14_0 xmm1_0; xor xmm7_1@uint32 xmm14_1 xmm1_1;
xor xmm7_2@uint32 xmm14_2 xmm1_2; xor xmm7_3@uint32 xmm14_3 xmm1_3;
(* vpsrld $0x16,%xmm15,%xmm1                       #! PC = 0x555555559506 *)
split xmm1_0 dc xmm15_0 0x16; split xmm1_1 dc xmm15_1 0x16;
split xmm1_2 dc xmm15_2 0x16; split xmm1_3 dc xmm15_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555950c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm15,%xmm2                        #! PC = 0x555555559510 *)
split dc xmm2_0 xmm15_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm15_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm15_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm15_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm8,%xmm14                       #! PC = 0x555555559516 *)
xor xmm14_0@uint32 xmm8_0 xmm3_0; xor xmm14_1@uint32 xmm8_1 xmm3_1;
xor xmm14_2@uint32 xmm8_2 xmm3_2; xor xmm14_3@uint32 xmm8_3 xmm3_3;
(* vpaddd %xmm6,%xmm10,%xmm10                      #! PC = 0x55555555951a *)
adds dc xmm10_0 xmm10_0 xmm6_0; adds dc xmm10_1 xmm10_1 xmm6_1;
adds dc xmm10_2 xmm10_2 xmm6_2; adds dc xmm10_3 xmm10_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555951e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559522 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm14,%xmm14                      #! PC = 0x555555559526 *)
adds dc xmm14_0 xmm14_0 xmm6_0; adds dc xmm14_1 xmm14_1 xmm6_1;
adds dc xmm14_2 xmm14_2 xmm6_2; adds dc xmm14_3 xmm14_3 xmm6_3;
(* vpaddd %xmm7,%xmm14,%xmm14                      #! PC = 0x55555555952a *)
adds dc xmm14_0 xmm14_0 xmm7_0; adds dc xmm14_1 xmm14_1 xmm7_1;
adds dc xmm14_2 xmm14_2 xmm7_2; adds dc xmm14_3 xmm14_3 xmm7_3;
(* vmovdqu -0x50(%rax),%xmm6                       #! EA = L0x7fffffffd730; Value = 0x0c0d0e0f0c0d0e0f; PC = 0x55555555952e *)
mov xmm6_0 L0x7fffffffd730; mov xmm6_1 L0x7fffffffd734;
mov xmm6_2 L0x7fffffffd738; mov xmm6_3 L0x7fffffffd73c;
(* vpaddd 0x30(%rax),%xmm5,%xmm5                   #! EA = L0x7fffffffd7b0; Value = 0x2c2d2e2f2c2d2e2f; PC = 0x555555559533 *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd7b0; adds dc xmm5_1 xmm5_1 L0x7fffffffd7b4;
adds dc xmm5_2 xmm5_2 L0x7fffffffd7b8; adds dc xmm5_3 xmm5_3 L0x7fffffffd7bc;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x555555559538 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x55555555953d *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x555555559542 *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559547 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x55555555954b *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559550 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x555555559554 *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x80(%rax),%xmm0                       #! EA = L0x7fffffffd700; Value = 0x2d84894c2d84894c; PC = 0x555555559559 *)
mov xmm0_0 L0x7fffffffd700; mov xmm0_1 L0x7fffffffd704;
mov xmm0_2 L0x7fffffffd708; mov xmm0_3 L0x7fffffffd70c;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x55555555955e *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559563 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559567 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555956c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559570 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559575 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x555555559579 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x55555555957d *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559582 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559586 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555958b *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555958f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559593 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm10,%xmm7                        #! PC = 0x555555559597 *)
split xmm7_0 dc xmm10_0 0x6; split xmm7_1 dc xmm10_1 0x6;
split xmm7_2 dc xmm10_2 0x6; split xmm7_3 dc xmm10_3 0x6;
(* vpslld $0x1a,%xmm10,%xmm2                       #! PC = 0x55555555959d *)
split dc xmm2_0 xmm10_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm10_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm10_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm10_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,-0x60(%rax)                       #! EA = L0x7fffffffd720; PC = 0x5555555595a3 *)
mov L0x7fffffffd720 xmm5_0; mov L0x7fffffffd724 xmm5_1;
mov L0x7fffffffd728 xmm5_2; mov L0x7fffffffd72c xmm5_3;
(* vpaddd %xmm13,%xmm5,%xmm5                       #! PC = 0x5555555595a8 *)
adds dc xmm5_0 xmm5_0 xmm13_0; adds dc xmm5_1 xmm5_1 xmm13_1;
adds dc xmm5_2 xmm5_2 xmm13_2; adds dc xmm5_3 xmm5_3 xmm13_3;
(* vpsrld $0xb,%xmm10,%xmm1                        #! PC = 0x5555555595ad *)
split xmm1_0 dc xmm10_0 0xb; split xmm1_1 dc xmm10_1 0xb;
split xmm1_2 dc xmm10_2 0xb; split xmm1_3 dc xmm10_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555595b3 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm10,%xmm2                       #! PC = 0x5555555595b7 *)
split dc xmm2_0 xmm10_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm10_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm10_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm10_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x40(%rbp),%xmm5,%xmm5                  #! EA = L0x55555555cc40; Value = 0x0fc19dc60fc19dc6; PC = 0x5555555595bd *)
adds dc xmm5_0 xmm5_0 L0x55555555cc40; adds dc xmm5_1 xmm5_1 L0x55555555cc44;
adds dc xmm5_2 xmm5_2 L0x55555555cc48; adds dc xmm5_3 xmm5_3 L0x55555555cc4c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555595c2 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm10,%xmm1                       #! PC = 0x5555555595c6 *)
split xmm1_0 dc xmm10_0 0x19; split xmm1_1 dc xmm10_1 0x19;
split xmm1_2 dc xmm10_2 0x19; split xmm1_3 dc xmm10_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555595cc *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm10,%xmm2                        #! PC = 0x5555555595d0 *)
split dc xmm2_0 xmm10_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm10_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm10_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm10_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm12,%xmm10,%xmm0                      #! PC = 0x5555555595d6 *)
not xmm10_0n@uint32 xmm10_0; and xmm0_0@uint32 xmm10_0n xmm12_0;
not xmm10_1n@uint32 xmm10_1; and xmm0_1@uint32 xmm10_1n xmm12_1;
not xmm10_2n@uint32 xmm10_2; and xmm0_2@uint32 xmm10_2n xmm12_2;
not xmm10_3n@uint32 xmm10_3; and xmm0_3@uint32 xmm10_3n xmm12_3;
(* vpand  %xmm11,%xmm10,%xmm3                      #! PC = 0x5555555595db *)
and xmm3_0@uint32 xmm10_0 xmm11_0; and xmm3_1@uint32 xmm10_1 xmm11_1;
and xmm3_2@uint32 xmm10_2 xmm11_2; and xmm3_3@uint32 xmm10_3 xmm11_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555595e0 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm14,%xmm13                       #! PC = 0x5555555595e4 *)
split xmm13_0 dc xmm14_0 0x2; split xmm13_1 dc xmm14_1 0x2;
split xmm13_2 dc xmm14_2 0x2; split xmm13_3 dc xmm14_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555595ea *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm14,%xmm1                       #! PC = 0x5555555595ee *)
split dc xmm1_0 xmm14_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm14_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm14_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm14_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x5555555595f4 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm14,%xmm15,%xmm3                      #! PC = 0x5555555595f8 *)
xor xmm3_0@uint32 xmm15_0 xmm14_0; xor xmm3_1@uint32 xmm15_1 xmm14_1;
xor xmm3_2@uint32 xmm15_2 xmm14_2; xor xmm3_3@uint32 xmm15_3 xmm14_3;
(* vpxor  %xmm1,%xmm13,%xmm13                      #! PC = 0x5555555595fd *)
xor xmm13_0@uint32 xmm13_0 xmm1_0; xor xmm13_1@uint32 xmm13_1 xmm1_1;
xor xmm13_2@uint32 xmm13_2 xmm1_2; xor xmm13_3@uint32 xmm13_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559601 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm14,%xmm1                        #! PC = 0x555555559605 *)
split xmm1_0 dc xmm14_0 0xd; split xmm1_1 dc xmm14_1 0xd;
split xmm1_2 dc xmm14_2 0xd; split xmm1_3 dc xmm14_3 0xd;
(* vpslld $0x13,%xmm14,%xmm2                       #! PC = 0x55555555960b *)
split dc xmm2_0 xmm14_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm14_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm14_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm14_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555559611 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555559615 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm13,%xmm7                       #! PC = 0x555555559619 *)
xor xmm7_0@uint32 xmm13_0 xmm1_0; xor xmm7_1@uint32 xmm13_1 xmm1_1;
xor xmm7_2@uint32 xmm13_2 xmm1_2; xor xmm7_3@uint32 xmm13_3 xmm1_3;
(* vpsrld $0x16,%xmm14,%xmm1                       #! PC = 0x55555555961d *)
split xmm1_0 dc xmm14_0 0x16; split xmm1_1 dc xmm14_1 0x16;
split xmm1_2 dc xmm14_2 0x16; split xmm1_3 dc xmm14_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559623 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm14,%xmm2                        #! PC = 0x555555559627 *)
split dc xmm2_0 xmm14_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm14_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm14_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm14_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm15,%xmm13                      #! PC = 0x55555555962d *)
xor xmm13_0@uint32 xmm15_0 xmm4_0; xor xmm13_1@uint32 xmm15_1 xmm4_1;
xor xmm13_2@uint32 xmm15_2 xmm4_2; xor xmm13_3@uint32 xmm15_3 xmm4_3;
(* vpaddd %xmm5,%xmm9,%xmm9                        #! PC = 0x555555559631 *)
adds dc xmm9_0 xmm9_0 xmm5_0; adds dc xmm9_1 xmm9_1 xmm5_1;
adds dc xmm9_2 xmm9_2 xmm5_2; adds dc xmm9_3 xmm9_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559635 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559639 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm13,%xmm13                      #! PC = 0x55555555963d *)
adds dc xmm13_0 xmm13_0 xmm5_0; adds dc xmm13_1 xmm13_1 xmm5_1;
adds dc xmm13_2 xmm13_2 xmm5_2; adds dc xmm13_3 xmm13_3 xmm5_3;
(* vpaddd %xmm7,%xmm13,%xmm13                      #! PC = 0x555555559641 *)
adds dc xmm13_0 xmm13_0 xmm7_0; adds dc xmm13_1 xmm13_1 xmm7_1;
adds dc xmm13_2 xmm13_2 xmm7_2; adds dc xmm13_3 xmm13_3 xmm7_3;
(* vmovdqu -0x40(%rax),%xmm5                       #! EA = L0x7fffffffd740; Value = 0x1011121310111213; PC = 0x555555559645 *)
mov xmm5_0 L0x7fffffffd740; mov xmm5_1 L0x7fffffffd744;
mov xmm5_2 L0x7fffffffd748; mov xmm5_3 L0x7fffffffd74c;
(* vpaddd 0x40(%rax),%xmm6,%xmm6                   #! EA = L0x7fffffffd7c0; Value = 0x3031323330313233; PC = 0x55555555964a *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd7c0; adds dc xmm6_1 xmm6_1 L0x7fffffffd7c4;
adds dc xmm6_2 xmm6_2 L0x7fffffffd7c8; adds dc xmm6_3 xmm6_3 L0x7fffffffd7cc;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x55555555964f *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x555555559654 *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x555555559659 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555965e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x555555559662 *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559667 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x55555555966b *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x70(%rax),%xmm0                       #! EA = L0x7fffffffd710; Value = 0xba99985fba99985f; PC = 0x555555559670 *)
mov xmm0_0 L0x7fffffffd710; mov xmm0_1 L0x7fffffffd714;
mov xmm0_2 L0x7fffffffd718; mov xmm0_3 L0x7fffffffd71c;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x555555559675 *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555967a *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x55555555967e *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559683 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559687 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555968c *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x555555559690 *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559694 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559699 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x55555555969d *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555596a2 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555596a6 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x5555555596aa *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm9,%xmm7                         #! PC = 0x5555555596ae *)
split xmm7_0 dc xmm9_0 0x6; split xmm7_1 dc xmm9_1 0x6;
split xmm7_2 dc xmm9_2 0x6; split xmm7_3 dc xmm9_3 0x6;
(* vpslld $0x1a,%xmm9,%xmm2                        #! PC = 0x5555555596b4 *)
split dc xmm2_0 xmm9_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm9_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm9_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm9_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,-0x50(%rax)                       #! EA = L0x7fffffffd730; PC = 0x5555555596ba *)
mov L0x7fffffffd730 xmm6_0; mov L0x7fffffffd734 xmm6_1;
mov L0x7fffffffd738 xmm6_2; mov L0x7fffffffd73c xmm6_3;
(* vpaddd %xmm12,%xmm6,%xmm6                       #! PC = 0x5555555596bf *)
adds dc xmm6_0 xmm6_0 xmm12_0; adds dc xmm6_1 xmm6_1 xmm12_1;
adds dc xmm6_2 xmm6_2 xmm12_2; adds dc xmm6_3 xmm6_3 xmm12_3;
(* vpsrld $0xb,%xmm9,%xmm1                         #! PC = 0x5555555596c4 *)
split xmm1_0 dc xmm9_0 0xb; split xmm1_1 dc xmm9_1 0xb;
split xmm1_2 dc xmm9_2 0xb; split xmm1_3 dc xmm9_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555596ca *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm9,%xmm2                        #! PC = 0x5555555596ce *)
split dc xmm2_0 xmm9_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm9_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm9_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm9_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x20(%rbp),%xmm6,%xmm6                  #! EA = L0x55555555cc60; Value = 0x240ca1cc240ca1cc; PC = 0x5555555596d4 *)
adds dc xmm6_0 xmm6_0 L0x55555555cc60; adds dc xmm6_1 xmm6_1 L0x55555555cc64;
adds dc xmm6_2 xmm6_2 L0x55555555cc68; adds dc xmm6_3 xmm6_3 L0x55555555cc6c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555596d9 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm9,%xmm1                        #! PC = 0x5555555596dd *)
split xmm1_0 dc xmm9_0 0x19; split xmm1_1 dc xmm9_1 0x19;
split xmm1_2 dc xmm9_2 0x19; split xmm1_3 dc xmm9_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555596e3 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm9,%xmm2                         #! PC = 0x5555555596e7 *)
split dc xmm2_0 xmm9_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm9_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm9_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm9_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm11,%xmm9,%xmm0                       #! PC = 0x5555555596ed *)
not xmm9_0n@uint32 xmm9_0; and xmm0_0@uint32 xmm9_0n xmm11_0;
not xmm9_1n@uint32 xmm9_1; and xmm0_1@uint32 xmm9_1n xmm11_1;
not xmm9_2n@uint32 xmm9_2; and xmm0_2@uint32 xmm9_2n xmm11_2;
not xmm9_3n@uint32 xmm9_3; and xmm0_3@uint32 xmm9_3n xmm11_3;
(* vpand  %xmm10,%xmm9,%xmm4                       #! PC = 0x5555555596f2 *)
and xmm4_0@uint32 xmm9_0 xmm10_0; and xmm4_1@uint32 xmm9_1 xmm10_1;
and xmm4_2@uint32 xmm9_2 xmm10_2; and xmm4_3@uint32 xmm9_3 xmm10_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555596f7 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm13,%xmm12                       #! PC = 0x5555555596fb *)
split xmm12_0 dc xmm13_0 0x2; split xmm12_1 dc xmm13_1 0x2;
split xmm12_2 dc xmm13_2 0x2; split xmm12_3 dc xmm13_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559701 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm13,%xmm1                       #! PC = 0x555555559705 *)
split dc xmm1_0 xmm13_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm13_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm13_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm13_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x55555555970b *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm13,%xmm14,%xmm4                      #! PC = 0x55555555970f *)
xor xmm4_0@uint32 xmm14_0 xmm13_0; xor xmm4_1@uint32 xmm14_1 xmm13_1;
xor xmm4_2@uint32 xmm14_2 xmm13_2; xor xmm4_3@uint32 xmm14_3 xmm13_3;
(* vpxor  %xmm1,%xmm12,%xmm12                      #! PC = 0x555555559714 *)
xor xmm12_0@uint32 xmm12_0 xmm1_0; xor xmm12_1@uint32 xmm12_1 xmm1_1;
xor xmm12_2@uint32 xmm12_2 xmm1_2; xor xmm12_3@uint32 xmm12_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559718 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm13,%xmm1                        #! PC = 0x55555555971c *)
split xmm1_0 dc xmm13_0 0xd; split xmm1_1 dc xmm13_1 0xd;
split xmm1_2 dc xmm13_2 0xd; split xmm1_3 dc xmm13_3 0xd;
(* vpslld $0x13,%xmm13,%xmm2                       #! PC = 0x555555559722 *)
split dc xmm2_0 xmm13_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm13_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm13_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm13_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x555555559728 *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x55555555972c *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm12,%xmm7                       #! PC = 0x555555559730 *)
xor xmm7_0@uint32 xmm12_0 xmm1_0; xor xmm7_1@uint32 xmm12_1 xmm1_1;
xor xmm7_2@uint32 xmm12_2 xmm1_2; xor xmm7_3@uint32 xmm12_3 xmm1_3;
(* vpsrld $0x16,%xmm13,%xmm1                       #! PC = 0x555555559734 *)
split xmm1_0 dc xmm13_0 0x16; split xmm1_1 dc xmm13_1 0x16;
split xmm1_2 dc xmm13_2 0x16; split xmm1_3 dc xmm13_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555973a *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm13,%xmm2                        #! PC = 0x55555555973e *)
split dc xmm2_0 xmm13_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm13_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm13_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm13_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm14,%xmm12                      #! PC = 0x555555559744 *)
xor xmm12_0@uint32 xmm14_0 xmm3_0; xor xmm12_1@uint32 xmm14_1 xmm3_1;
xor xmm12_2@uint32 xmm14_2 xmm3_2; xor xmm12_3@uint32 xmm14_3 xmm3_3;
(* vpaddd %xmm6,%xmm8,%xmm8                        #! PC = 0x555555559748 *)
adds dc xmm8_0 xmm8_0 xmm6_0; adds dc xmm8_1 xmm8_1 xmm6_1;
adds dc xmm8_2 xmm8_2 xmm6_2; adds dc xmm8_3 xmm8_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555974c *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559750 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm12,%xmm12                      #! PC = 0x555555559754 *)
adds dc xmm12_0 xmm12_0 xmm6_0; adds dc xmm12_1 xmm12_1 xmm6_1;
adds dc xmm12_2 xmm12_2 xmm6_2; adds dc xmm12_3 xmm12_3 xmm6_3;
(* vpaddd %xmm7,%xmm12,%xmm12                      #! PC = 0x555555559758 *)
adds dc xmm12_0 xmm12_0 xmm7_0; adds dc xmm12_1 xmm12_1 xmm7_1;
adds dc xmm12_2 xmm12_2 xmm7_2; adds dc xmm12_3 xmm12_3 xmm7_3;
(* vmovdqu -0x30(%rax),%xmm6                       #! EA = L0x7fffffffd750; Value = 0x1415161714151617; PC = 0x55555555975c *)
mov xmm6_0 L0x7fffffffd750; mov xmm6_1 L0x7fffffffd754;
mov xmm6_2 L0x7fffffffd758; mov xmm6_3 L0x7fffffffd75c;
(* vpaddd 0x50(%rax),%xmm5,%xmm5                   #! EA = L0x7fffffffd7d0; Value = 0x3435363734353637; PC = 0x555555559761 *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd7d0; adds dc xmm5_1 xmm5_1 L0x7fffffffd7d4;
adds dc xmm5_2 xmm5_2 L0x7fffffffd7d8; adds dc xmm5_3 xmm5_3 L0x7fffffffd7dc;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x555555559766 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x55555555976b *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x555555559770 *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559775 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x555555559779 *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555977e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x555555559782 *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x60(%rax),%xmm0                       #! EA = L0x7fffffffd720; Value = 0x65d5a36865d5a368; PC = 0x555555559787 *)
mov xmm0_0 L0x7fffffffd720; mov xmm0_1 L0x7fffffffd724;
mov xmm0_2 L0x7fffffffd728; mov xmm0_3 L0x7fffffffd72c;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x55555555978c *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559791 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559795 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555979a *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x55555555979e *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x5555555597a3 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x5555555597a7 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x5555555597ab *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555597b0 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x5555555597b4 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555597b9 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555597bd *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x5555555597c1 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm8,%xmm7                         #! PC = 0x5555555597c5 *)
split xmm7_0 dc xmm8_0 0x6; split xmm7_1 dc xmm8_1 0x6;
split xmm7_2 dc xmm8_2 0x6; split xmm7_3 dc xmm8_3 0x6;
(* vpslld $0x1a,%xmm8,%xmm2                        #! PC = 0x5555555597cb *)
split dc xmm2_0 xmm8_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm8_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm8_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm8_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,-0x40(%rax)                       #! EA = L0x7fffffffd740; PC = 0x5555555597d1 *)
mov L0x7fffffffd740 xmm5_0; mov L0x7fffffffd744 xmm5_1;
mov L0x7fffffffd748 xmm5_2; mov L0x7fffffffd74c xmm5_3;
(* vpaddd %xmm11,%xmm5,%xmm5                       #! PC = 0x5555555597d6 *)
adds dc xmm5_0 xmm5_0 xmm11_0; adds dc xmm5_1 xmm5_1 xmm11_1;
adds dc xmm5_2 xmm5_2 xmm11_2; adds dc xmm5_3 xmm5_3 xmm11_3;
(* vpsrld $0xb,%xmm8,%xmm1                         #! PC = 0x5555555597db *)
split xmm1_0 dc xmm8_0 0xb; split xmm1_1 dc xmm8_1 0xb;
split xmm1_2 dc xmm8_2 0xb; split xmm1_3 dc xmm8_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555597e1 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm8,%xmm2                        #! PC = 0x5555555597e5 *)
split dc xmm2_0 xmm8_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm8_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm8_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm8_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x0(%rbp),%xmm5,%xmm5                    #! EA = L0x55555555cc80; Value = 0x2de92c6f2de92c6f; PC = 0x5555555597eb *)
adds dc xmm5_0 xmm5_0 L0x55555555cc80; adds dc xmm5_1 xmm5_1 L0x55555555cc84;
adds dc xmm5_2 xmm5_2 L0x55555555cc88; adds dc xmm5_3 xmm5_3 L0x55555555cc8c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555597f0 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm8,%xmm1                        #! PC = 0x5555555597f4 *)
split xmm1_0 dc xmm8_0 0x19; split xmm1_1 dc xmm8_1 0x19;
split xmm1_2 dc xmm8_2 0x19; split xmm1_3 dc xmm8_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555597fa *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm8,%xmm2                         #! PC = 0x5555555597fe *)
split dc xmm2_0 xmm8_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm8_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm8_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm8_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm10,%xmm8,%xmm0                       #! PC = 0x555555559804 *)
not xmm8_0n@uint32 xmm8_0; and xmm0_0@uint32 xmm8_0n xmm10_0;
not xmm8_1n@uint32 xmm8_1; and xmm0_1@uint32 xmm8_1n xmm10_1;
not xmm8_2n@uint32 xmm8_2; and xmm0_2@uint32 xmm8_2n xmm10_2;
not xmm8_3n@uint32 xmm8_3; and xmm0_3@uint32 xmm8_3n xmm10_3;
(* vpand  %xmm9,%xmm8,%xmm3                        #! PC = 0x555555559809 *)
and xmm3_0@uint32 xmm8_0 xmm9_0; and xmm3_1@uint32 xmm8_1 xmm9_1;
and xmm3_2@uint32 xmm8_2 xmm9_2; and xmm3_3@uint32 xmm8_3 xmm9_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555980e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm12,%xmm11                       #! PC = 0x555555559812 *)
split xmm11_0 dc xmm12_0 0x2; split xmm11_1 dc xmm12_1 0x2;
split xmm11_2 dc xmm12_2 0x2; split xmm11_3 dc xmm12_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559818 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm12,%xmm1                       #! PC = 0x55555555981c *)
split dc xmm1_0 xmm12_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm12_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm12_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm12_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x555555559822 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm12,%xmm13,%xmm3                      #! PC = 0x555555559826 *)
xor xmm3_0@uint32 xmm13_0 xmm12_0; xor xmm3_1@uint32 xmm13_1 xmm12_1;
xor xmm3_2@uint32 xmm13_2 xmm12_2; xor xmm3_3@uint32 xmm13_3 xmm12_3;
(* vpxor  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555555982b *)
xor xmm11_0@uint32 xmm11_0 xmm1_0; xor xmm11_1@uint32 xmm11_1 xmm1_1;
xor xmm11_2@uint32 xmm11_2 xmm1_2; xor xmm11_3@uint32 xmm11_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555982f *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm12,%xmm1                        #! PC = 0x555555559833 *)
split xmm1_0 dc xmm12_0 0xd; split xmm1_1 dc xmm12_1 0xd;
split xmm1_2 dc xmm12_2 0xd; split xmm1_3 dc xmm12_3 0xd;
(* vpslld $0x13,%xmm12,%xmm2                       #! PC = 0x555555559839 *)
split dc xmm2_0 xmm12_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm12_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm12_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm12_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x55555555983f *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555559843 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm11,%xmm7                       #! PC = 0x555555559847 *)
xor xmm7_0@uint32 xmm11_0 xmm1_0; xor xmm7_1@uint32 xmm11_1 xmm1_1;
xor xmm7_2@uint32 xmm11_2 xmm1_2; xor xmm7_3@uint32 xmm11_3 xmm1_3;
(* vpsrld $0x16,%xmm12,%xmm1                       #! PC = 0x55555555984b *)
split xmm1_0 dc xmm12_0 0x16; split xmm1_1 dc xmm12_1 0x16;
split xmm1_2 dc xmm12_2 0x16; split xmm1_3 dc xmm12_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559851 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm12,%xmm2                        #! PC = 0x555555559855 *)
split dc xmm2_0 xmm12_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm12_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm12_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm12_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm13,%xmm11                      #! PC = 0x55555555985b *)
xor xmm11_0@uint32 xmm13_0 xmm4_0; xor xmm11_1@uint32 xmm13_1 xmm4_1;
xor xmm11_2@uint32 xmm13_2 xmm4_2; xor xmm11_3@uint32 xmm13_3 xmm4_3;
(* vpaddd %xmm5,%xmm15,%xmm15                      #! PC = 0x55555555985f *)
adds dc xmm15_0 xmm15_0 xmm5_0; adds dc xmm15_1 xmm15_1 xmm5_1;
adds dc xmm15_2 xmm15_2 xmm5_2; adds dc xmm15_3 xmm15_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559863 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559867 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm11,%xmm11                      #! PC = 0x55555555986b *)
adds dc xmm11_0 xmm11_0 xmm5_0; adds dc xmm11_1 xmm11_1 xmm5_1;
adds dc xmm11_2 xmm11_2 xmm5_2; adds dc xmm11_3 xmm11_3 xmm5_3;
(* vpaddd %xmm7,%xmm11,%xmm11                      #! PC = 0x55555555986f *)
adds dc xmm11_0 xmm11_0 xmm7_0; adds dc xmm11_1 xmm11_1 xmm7_1;
adds dc xmm11_2 xmm11_2 xmm7_2; adds dc xmm11_3 xmm11_3 xmm7_3;
(* vmovdqu -0x20(%rax),%xmm5                       #! EA = L0x7fffffffd760; Value = 0x18191a1b18191a1b; PC = 0x555555559873 *)
mov xmm5_0 L0x7fffffffd760; mov xmm5_1 L0x7fffffffd764;
mov xmm5_2 L0x7fffffffd768; mov xmm5_3 L0x7fffffffd76c;
(* vpaddd 0x60(%rax),%xmm6,%xmm6                   #! EA = L0x7fffffffd7e0; Value = 0x38393a3b38393a3b; PC = 0x555555559878 *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd7e0; adds dc xmm6_1 xmm6_1 L0x7fffffffd7e4;
adds dc xmm6_2 xmm6_2 L0x7fffffffd7e8; adds dc xmm6_3 xmm6_3 L0x7fffffffd7ec;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x55555555987d *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x555555559882 *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x555555559887 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555988c *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x555555559890 *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559895 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x555555559899 *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x50(%rax),%xmm0                       #! EA = L0x7fffffffd730; Value = 0x9bef911d9bef911d; PC = 0x55555555989e *)
mov xmm0_0 L0x7fffffffd730; mov xmm0_1 L0x7fffffffd734;
mov xmm0_2 L0x7fffffffd738; mov xmm0_3 L0x7fffffffd73c;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x5555555598a3 *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555598a8 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x5555555598ac *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555598b1 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x5555555598b5 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x5555555598ba *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x5555555598be *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x5555555598c2 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555598c7 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x5555555598cb *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555598d0 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555598d4 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x5555555598d8 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm15,%xmm7                        #! PC = 0x5555555598dc *)
split xmm7_0 dc xmm15_0 0x6; split xmm7_1 dc xmm15_1 0x6;
split xmm7_2 dc xmm15_2 0x6; split xmm7_3 dc xmm15_3 0x6;
(* vpslld $0x1a,%xmm15,%xmm2                       #! PC = 0x5555555598e2 *)
split dc xmm2_0 xmm15_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm15_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm15_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm15_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,-0x30(%rax)                       #! EA = L0x7fffffffd750; PC = 0x5555555598e8 *)
mov L0x7fffffffd750 xmm6_0; mov L0x7fffffffd754 xmm6_1;
mov L0x7fffffffd758 xmm6_2; mov L0x7fffffffd75c xmm6_3;
(* vpaddd %xmm10,%xmm6,%xmm6                       #! PC = 0x5555555598ed *)
adds dc xmm6_0 xmm6_0 xmm10_0; adds dc xmm6_1 xmm6_1 xmm10_1;
adds dc xmm6_2 xmm6_2 xmm10_2; adds dc xmm6_3 xmm6_3 xmm10_3;
(* vpsrld $0xb,%xmm15,%xmm1                        #! PC = 0x5555555598f2 *)
split xmm1_0 dc xmm15_0 0xb; split xmm1_1 dc xmm15_1 0xb;
split xmm1_2 dc xmm15_2 0xb; split xmm1_3 dc xmm15_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555598f8 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm15,%xmm2                       #! PC = 0x5555555598fc *)
split dc xmm2_0 xmm15_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm15_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm15_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm15_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x20(%rbp),%xmm6,%xmm6                   #! EA = L0x55555555cca0; Value = 0x4a7484aa4a7484aa; PC = 0x555555559902 *)
adds dc xmm6_0 xmm6_0 L0x55555555cca0; adds dc xmm6_1 xmm6_1 L0x55555555cca4;
adds dc xmm6_2 xmm6_2 L0x55555555cca8; adds dc xmm6_3 xmm6_3 L0x55555555ccac;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559907 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm15,%xmm1                       #! PC = 0x55555555990b *)
split xmm1_0 dc xmm15_0 0x19; split xmm1_1 dc xmm15_1 0x19;
split xmm1_2 dc xmm15_2 0x19; split xmm1_3 dc xmm15_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559911 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm15,%xmm2                        #! PC = 0x555555559915 *)
split dc xmm2_0 xmm15_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm15_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm15_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm15_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm9,%xmm15,%xmm0                       #! PC = 0x55555555991b *)
not xmm15_0n@uint32 xmm15_0; and xmm0_0@uint32 xmm15_0n xmm9_0;
not xmm15_1n@uint32 xmm15_1; and xmm0_1@uint32 xmm15_1n xmm9_1;
not xmm15_2n@uint32 xmm15_2; and xmm0_2@uint32 xmm15_2n xmm9_2;
not xmm15_3n@uint32 xmm15_3; and xmm0_3@uint32 xmm15_3n xmm9_3;
(* vpand  %xmm8,%xmm15,%xmm4                       #! PC = 0x555555559920 *)
and xmm4_0@uint32 xmm15_0 xmm8_0; and xmm4_1@uint32 xmm15_1 xmm8_1;
and xmm4_2@uint32 xmm15_2 xmm8_2; and xmm4_3@uint32 xmm15_3 xmm8_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559925 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm11,%xmm10                       #! PC = 0x555555559929 *)
split xmm10_0 dc xmm11_0 0x2; split xmm10_1 dc xmm11_1 0x2;
split xmm10_2 dc xmm11_2 0x2; split xmm10_3 dc xmm11_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555992f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm11,%xmm1                       #! PC = 0x555555559933 *)
split dc xmm1_0 xmm11_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm11_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm11_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm11_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x555555559939 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm11,%xmm12,%xmm4                      #! PC = 0x55555555993d *)
xor xmm4_0@uint32 xmm12_0 xmm11_0; xor xmm4_1@uint32 xmm12_1 xmm11_1;
xor xmm4_2@uint32 xmm12_2 xmm11_2; xor xmm4_3@uint32 xmm12_3 xmm11_3;
(* vpxor  %xmm1,%xmm10,%xmm10                      #! PC = 0x555555559942 *)
xor xmm10_0@uint32 xmm10_0 xmm1_0; xor xmm10_1@uint32 xmm10_1 xmm1_1;
xor xmm10_2@uint32 xmm10_2 xmm1_2; xor xmm10_3@uint32 xmm10_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559946 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm11,%xmm1                        #! PC = 0x55555555994a *)
split xmm1_0 dc xmm11_0 0xd; split xmm1_1 dc xmm11_1 0xd;
split xmm1_2 dc xmm11_2 0xd; split xmm1_3 dc xmm11_3 0xd;
(* vpslld $0x13,%xmm11,%xmm2                       #! PC = 0x555555559950 *)
split dc xmm2_0 xmm11_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm11_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm11_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm11_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x555555559956 *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x55555555995a *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm10,%xmm7                       #! PC = 0x55555555995e *)
xor xmm7_0@uint32 xmm10_0 xmm1_0; xor xmm7_1@uint32 xmm10_1 xmm1_1;
xor xmm7_2@uint32 xmm10_2 xmm1_2; xor xmm7_3@uint32 xmm10_3 xmm1_3;
(* vpsrld $0x16,%xmm11,%xmm1                       #! PC = 0x555555559962 *)
split xmm1_0 dc xmm11_0 0x16; split xmm1_1 dc xmm11_1 0x16;
split xmm1_2 dc xmm11_2 0x16; split xmm1_3 dc xmm11_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559968 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm11,%xmm2                        #! PC = 0x55555555996c *)
split dc xmm2_0 xmm11_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm11_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm11_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm11_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm12,%xmm10                      #! PC = 0x555555559972 *)
xor xmm10_0@uint32 xmm12_0 xmm3_0; xor xmm10_1@uint32 xmm12_1 xmm3_1;
xor xmm10_2@uint32 xmm12_2 xmm3_2; xor xmm10_3@uint32 xmm12_3 xmm3_3;
(* vpaddd %xmm6,%xmm14,%xmm14                      #! PC = 0x555555559976 *)
adds dc xmm14_0 xmm14_0 xmm6_0; adds dc xmm14_1 xmm14_1 xmm6_1;
adds dc xmm14_2 xmm14_2 xmm6_2; adds dc xmm14_3 xmm14_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555997a *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555997e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm10,%xmm10                      #! PC = 0x555555559982 *)
adds dc xmm10_0 xmm10_0 xmm6_0; adds dc xmm10_1 xmm10_1 xmm6_1;
adds dc xmm10_2 xmm10_2 xmm6_2; adds dc xmm10_3 xmm10_3 xmm6_3;
(* vpaddd %xmm7,%xmm10,%xmm10                      #! PC = 0x555555559986 *)
adds dc xmm10_0 xmm10_0 xmm7_0; adds dc xmm10_1 xmm10_1 xmm7_1;
adds dc xmm10_2 xmm10_2 xmm7_2; adds dc xmm10_3 xmm10_3 xmm7_3;
(* vmovdqu -0x10(%rax),%xmm6                       #! EA = L0x7fffffffd770; Value = 0x1c1d1e1f1c1d1e1f; PC = 0x55555555998a *)
mov xmm6_0 L0x7fffffffd770; mov xmm6_1 L0x7fffffffd774;
mov xmm6_2 L0x7fffffffd778; mov xmm6_3 L0x7fffffffd77c;
(* vpaddd 0x70(%rax),%xmm5,%xmm5                   #! EA = L0x7fffffffd7f0; Value = 0x3c3d3e3f3c3d3e3f; PC = 0x55555555998f *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd7f0; adds dc xmm5_1 xmm5_1 L0x7fffffffd7f4;
adds dc xmm5_2 xmm5_2 L0x7fffffffd7f8; adds dc xmm5_3 xmm5_3 L0x7fffffffd7fc;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x555555559994 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x555555559999 *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x55555555999e *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555599a3 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x5555555599a7 *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555599ac *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x5555555599b0 *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x40(%rax),%xmm0                       #! EA = L0x7fffffffd740; Value = 0x1335e16d1335e16d; PC = 0x5555555599b5 *)
mov xmm0_0 L0x7fffffffd740; mov xmm0_1 L0x7fffffffd744;
mov xmm0_2 L0x7fffffffd748; mov xmm0_3 L0x7fffffffd74c;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x5555555599ba *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555599bf *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x5555555599c3 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555599c8 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x5555555599cc *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x5555555599d1 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x5555555599d5 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x5555555599d9 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555599de *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x5555555599e2 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555599e7 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555599eb *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x5555555599ef *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm14,%xmm7                        #! PC = 0x5555555599f3 *)
split xmm7_0 dc xmm14_0 0x6; split xmm7_1 dc xmm14_1 0x6;
split xmm7_2 dc xmm14_2 0x6; split xmm7_3 dc xmm14_3 0x6;
(* vpslld $0x1a,%xmm14,%xmm2                       #! PC = 0x5555555599f9 *)
split dc xmm2_0 xmm14_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm14_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm14_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm14_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,-0x20(%rax)                       #! EA = L0x7fffffffd760; PC = 0x5555555599ff *)
mov L0x7fffffffd760 xmm5_0; mov L0x7fffffffd764 xmm5_1;
mov L0x7fffffffd768 xmm5_2; mov L0x7fffffffd76c xmm5_3;
(* vpaddd %xmm9,%xmm5,%xmm5                        #! PC = 0x555555559a04 *)
adds dc xmm5_0 xmm5_0 xmm9_0; adds dc xmm5_1 xmm5_1 xmm9_1;
adds dc xmm5_2 xmm5_2 xmm9_2; adds dc xmm5_3 xmm5_3 xmm9_3;
(* vpsrld $0xb,%xmm14,%xmm1                        #! PC = 0x555555559a09 *)
split xmm1_0 dc xmm14_0 0xb; split xmm1_1 dc xmm14_1 0xb;
split xmm1_2 dc xmm14_2 0xb; split xmm1_3 dc xmm14_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559a0f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm14,%xmm2                       #! PC = 0x555555559a13 *)
split dc xmm2_0 xmm14_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm14_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm14_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm14_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x40(%rbp),%xmm5,%xmm5                   #! EA = L0x55555555ccc0; Value = 0x5cb0a9dc5cb0a9dc; PC = 0x555555559a19 *)
adds dc xmm5_0 xmm5_0 L0x55555555ccc0; adds dc xmm5_1 xmm5_1 L0x55555555ccc4;
adds dc xmm5_2 xmm5_2 L0x55555555ccc8; adds dc xmm5_3 xmm5_3 L0x55555555cccc;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559a1e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm14,%xmm1                       #! PC = 0x555555559a22 *)
split xmm1_0 dc xmm14_0 0x19; split xmm1_1 dc xmm14_1 0x19;
split xmm1_2 dc xmm14_2 0x19; split xmm1_3 dc xmm14_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559a28 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm14,%xmm2                        #! PC = 0x555555559a2c *)
split dc xmm2_0 xmm14_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm14_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm14_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm14_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm8,%xmm14,%xmm0                       #! PC = 0x555555559a32 *)
not xmm14_0n@uint32 xmm14_0; and xmm0_0@uint32 xmm14_0n xmm8_0;
not xmm14_1n@uint32 xmm14_1; and xmm0_1@uint32 xmm14_1n xmm8_1;
not xmm14_2n@uint32 xmm14_2; and xmm0_2@uint32 xmm14_2n xmm8_2;
not xmm14_3n@uint32 xmm14_3; and xmm0_3@uint32 xmm14_3n xmm8_3;
(* vpand  %xmm15,%xmm14,%xmm3                      #! PC = 0x555555559a37 *)
and xmm3_0@uint32 xmm14_0 xmm15_0; and xmm3_1@uint32 xmm14_1 xmm15_1;
and xmm3_2@uint32 xmm14_2 xmm15_2; and xmm3_3@uint32 xmm14_3 xmm15_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559a3c *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm10,%xmm9                        #! PC = 0x555555559a40 *)
split xmm9_0 dc xmm10_0 0x2; split xmm9_1 dc xmm10_1 0x2;
split xmm9_2 dc xmm10_2 0x2; split xmm9_3 dc xmm10_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559a46 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm10,%xmm1                       #! PC = 0x555555559a4a *)
split dc xmm1_0 xmm10_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm10_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm10_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm10_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x555555559a50 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm10,%xmm11,%xmm3                      #! PC = 0x555555559a54 *)
xor xmm3_0@uint32 xmm11_0 xmm10_0; xor xmm3_1@uint32 xmm11_1 xmm10_1;
xor xmm3_2@uint32 xmm11_2 xmm10_2; xor xmm3_3@uint32 xmm11_3 xmm10_3;
(* vpxor  %xmm1,%xmm9,%xmm9                        #! PC = 0x555555559a59 *)
xor xmm9_0@uint32 xmm9_0 xmm1_0; xor xmm9_1@uint32 xmm9_1 xmm1_1;
xor xmm9_2@uint32 xmm9_2 xmm1_2; xor xmm9_3@uint32 xmm9_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559a5d *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm10,%xmm1                        #! PC = 0x555555559a61 *)
split xmm1_0 dc xmm10_0 0xd; split xmm1_1 dc xmm10_1 0xd;
split xmm1_2 dc xmm10_2 0xd; split xmm1_3 dc xmm10_3 0xd;
(* vpslld $0x13,%xmm10,%xmm2                       #! PC = 0x555555559a67 *)
split dc xmm2_0 xmm10_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm10_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm10_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm10_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555559a6d *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555559a71 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm9,%xmm7                        #! PC = 0x555555559a75 *)
xor xmm7_0@uint32 xmm9_0 xmm1_0; xor xmm7_1@uint32 xmm9_1 xmm1_1;
xor xmm7_2@uint32 xmm9_2 xmm1_2; xor xmm7_3@uint32 xmm9_3 xmm1_3;
(* vpsrld $0x16,%xmm10,%xmm1                       #! PC = 0x555555559a79 *)
split xmm1_0 dc xmm10_0 0x16; split xmm1_1 dc xmm10_1 0x16;
split xmm1_2 dc xmm10_2 0x16; split xmm1_3 dc xmm10_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559a7f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm10,%xmm2                        #! PC = 0x555555559a83 *)
split dc xmm2_0 xmm10_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm10_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm10_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm10_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm11,%xmm9                       #! PC = 0x555555559a89 *)
xor xmm9_0@uint32 xmm11_0 xmm4_0; xor xmm9_1@uint32 xmm11_1 xmm4_1;
xor xmm9_2@uint32 xmm11_2 xmm4_2; xor xmm9_3@uint32 xmm11_3 xmm4_3;
(* vpaddd %xmm5,%xmm13,%xmm13                      #! PC = 0x555555559a8d *)
adds dc xmm13_0 xmm13_0 xmm5_0; adds dc xmm13_1 xmm13_1 xmm5_1;
adds dc xmm13_2 xmm13_2 xmm5_2; adds dc xmm13_3 xmm13_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559a91 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559a95 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm9,%xmm9                        #! PC = 0x555555559a99 *)
adds dc xmm9_0 xmm9_0 xmm5_0; adds dc xmm9_1 xmm9_1 xmm5_1;
adds dc xmm9_2 xmm9_2 xmm5_2; adds dc xmm9_3 xmm9_3 xmm5_3;
(* vpaddd %xmm7,%xmm9,%xmm9                        #! PC = 0x555555559a9d *)
adds dc xmm9_0 xmm9_0 xmm7_0; adds dc xmm9_1 xmm9_1 xmm7_1;
adds dc xmm9_2 xmm9_2 xmm7_2; adds dc xmm9_3 xmm9_3 xmm7_3;
(* vmovdqu (%rax),%xmm5                            #! EA = L0x7fffffffd780; Value = 0x2021222320212223; PC = 0x555555559aa1 *)
mov xmm5_0 L0x7fffffffd780; mov xmm5_1 L0x7fffffffd784;
mov xmm5_2 L0x7fffffffd788; mov xmm5_3 L0x7fffffffd78c;
(* vpaddd -0x80(%rax),%xmm6,%xmm6                  #! EA = L0x7fffffffd700; Value = 0x2d84894c2d84894c; PC = 0x555555559aa5 *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd700; adds dc xmm6_1 xmm6_1 L0x7fffffffd704;
adds dc xmm6_2 xmm6_2 L0x7fffffffd708; adds dc xmm6_3 xmm6_3 L0x7fffffffd70c;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x555555559aaa *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x555555559aaf *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x555555559ab4 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559ab9 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x555555559abd *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559ac2 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x555555559ac6 *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x30(%rax),%xmm0                       #! EA = L0x7fffffffd750; Value = 0xfa8fad31fa8fad31; PC = 0x555555559acb *)
mov xmm0_0 L0x7fffffffd750; mov xmm0_1 L0x7fffffffd754;
mov xmm0_2 L0x7fffffffd758; mov xmm0_3 L0x7fffffffd75c;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x555555559ad0 *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559ad5 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559ad9 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559ade *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559ae2 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559ae7 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x555555559aeb *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559aef *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559af4 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559af8 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559afd *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559b01 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559b05 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm13,%xmm7                        #! PC = 0x555555559b09 *)
split xmm7_0 dc xmm13_0 0x6; split xmm7_1 dc xmm13_1 0x6;
split xmm7_2 dc xmm13_2 0x6; split xmm7_3 dc xmm13_3 0x6;
(* vpslld $0x1a,%xmm13,%xmm2                       #! PC = 0x555555559b0f *)
split dc xmm2_0 xmm13_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm13_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm13_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm13_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,-0x10(%rax)                       #! EA = L0x7fffffffd770; PC = 0x555555559b15 *)
mov L0x7fffffffd770 xmm6_0; mov L0x7fffffffd774 xmm6_1;
mov L0x7fffffffd778 xmm6_2; mov L0x7fffffffd77c xmm6_3;
(* vpaddd %xmm8,%xmm6,%xmm6                        #! PC = 0x555555559b1a *)
adds dc xmm6_0 xmm6_0 xmm8_0; adds dc xmm6_1 xmm6_1 xmm8_1;
adds dc xmm6_2 xmm6_2 xmm8_2; adds dc xmm6_3 xmm6_3 xmm8_3;
(* vpsrld $0xb,%xmm13,%xmm1                        #! PC = 0x555555559b1f *)
split xmm1_0 dc xmm13_0 0xb; split xmm1_1 dc xmm13_1 0xb;
split xmm1_2 dc xmm13_2 0xb; split xmm1_3 dc xmm13_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559b25 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm13,%xmm2                       #! PC = 0x555555559b29 *)
split dc xmm2_0 xmm13_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm13_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm13_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm13_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x60(%rbp),%xmm6,%xmm6                   #! EA = L0x55555555cce0; Value = 0x76f988da76f988da; PC = 0x555555559b2f *)
adds dc xmm6_0 xmm6_0 L0x55555555cce0; adds dc xmm6_1 xmm6_1 L0x55555555cce4;
adds dc xmm6_2 xmm6_2 L0x55555555cce8; adds dc xmm6_3 xmm6_3 L0x55555555ccec;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559b34 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm13,%xmm1                       #! PC = 0x555555559b38 *)
split xmm1_0 dc xmm13_0 0x19; split xmm1_1 dc xmm13_1 0x19;
split xmm1_2 dc xmm13_2 0x19; split xmm1_3 dc xmm13_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559b3e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm13,%xmm2                        #! PC = 0x555555559b42 *)
split dc xmm2_0 xmm13_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm13_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm13_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm13_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm15,%xmm13,%xmm0                      #! PC = 0x555555559b48 *)
not xmm13_0n@uint32 xmm13_0; and xmm0_0@uint32 xmm13_0n xmm15_0;
not xmm13_1n@uint32 xmm13_1; and xmm0_1@uint32 xmm13_1n xmm15_1;
not xmm13_2n@uint32 xmm13_2; and xmm0_2@uint32 xmm13_2n xmm15_2;
not xmm13_3n@uint32 xmm13_3; and xmm0_3@uint32 xmm13_3n xmm15_3;
(* vpand  %xmm14,%xmm13,%xmm4                      #! PC = 0x555555559b4d *)
and xmm4_0@uint32 xmm13_0 xmm14_0; and xmm4_1@uint32 xmm13_1 xmm14_1;
and xmm4_2@uint32 xmm13_2 xmm14_2; and xmm4_3@uint32 xmm13_3 xmm14_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559b52 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm9,%xmm8                         #! PC = 0x555555559b56 *)
split xmm8_0 dc xmm9_0 0x2; split xmm8_1 dc xmm9_1 0x2;
split xmm8_2 dc xmm9_2 0x2; split xmm8_3 dc xmm9_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559b5c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm9,%xmm1                        #! PC = 0x555555559b60 *)
split dc xmm1_0 xmm9_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm9_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm9_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm9_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x555555559b66 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm9,%xmm10,%xmm4                       #! PC = 0x555555559b6a *)
xor xmm4_0@uint32 xmm10_0 xmm9_0; xor xmm4_1@uint32 xmm10_1 xmm9_1;
xor xmm4_2@uint32 xmm10_2 xmm9_2; xor xmm4_3@uint32 xmm10_3 xmm9_3;
(* vpxor  %xmm1,%xmm8,%xmm8                        #! PC = 0x555555559b6f *)
xor xmm8_0@uint32 xmm8_0 xmm1_0; xor xmm8_1@uint32 xmm8_1 xmm1_1;
xor xmm8_2@uint32 xmm8_2 xmm1_2; xor xmm8_3@uint32 xmm8_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559b73 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm9,%xmm1                         #! PC = 0x555555559b77 *)
split xmm1_0 dc xmm9_0 0xd; split xmm1_1 dc xmm9_1 0xd;
split xmm1_2 dc xmm9_2 0xd; split xmm1_3 dc xmm9_3 0xd;
(* vpslld $0x13,%xmm9,%xmm2                        #! PC = 0x555555559b7d *)
split dc xmm2_0 xmm9_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm9_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm9_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm9_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x555555559b83 *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x555555559b87 *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm8,%xmm7                        #! PC = 0x555555559b8b *)
xor xmm7_0@uint32 xmm8_0 xmm1_0; xor xmm7_1@uint32 xmm8_1 xmm1_1;
xor xmm7_2@uint32 xmm8_2 xmm1_2; xor xmm7_3@uint32 xmm8_3 xmm1_3;
(* vpsrld $0x16,%xmm9,%xmm1                        #! PC = 0x555555559b8f *)
split xmm1_0 dc xmm9_0 0x16; split xmm1_1 dc xmm9_1 0x16;
split xmm1_2 dc xmm9_2 0x16; split xmm1_3 dc xmm9_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559b95 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm9,%xmm2                         #! PC = 0x555555559b99 *)
split dc xmm2_0 xmm9_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm9_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm9_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm9_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm10,%xmm8                       #! PC = 0x555555559b9f *)
xor xmm8_0@uint32 xmm10_0 xmm3_0; xor xmm8_1@uint32 xmm10_1 xmm3_1;
xor xmm8_2@uint32 xmm10_2 xmm3_2; xor xmm8_3@uint32 xmm10_3 xmm3_3;
(* vpaddd %xmm6,%xmm12,%xmm12                      #! PC = 0x555555559ba3 *)
adds dc xmm12_0 xmm12_0 xmm6_0; adds dc xmm12_1 xmm12_1 xmm6_1;
adds dc xmm12_2 xmm12_2 xmm6_2; adds dc xmm12_3 xmm12_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559ba7 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559bab *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm8,%xmm8                        #! PC = 0x555555559baf *)
adds dc xmm8_0 xmm8_0 xmm6_0; adds dc xmm8_1 xmm8_1 xmm6_1;
adds dc xmm8_2 xmm8_2 xmm6_2; adds dc xmm8_3 xmm8_3 xmm6_3;
(* vpaddd %xmm7,%xmm8,%xmm8                        #! PC = 0x555555559bb3 *)
adds dc xmm8_0 xmm8_0 xmm7_0; adds dc xmm8_1 xmm8_1 xmm7_1;
adds dc xmm8_2 xmm8_2 xmm7_2; adds dc xmm8_3 xmm8_3 xmm7_3;
(* add    $0x100,%rbp                              #! PC = 0x555555559bb7 *)
(* add 0x100, rbp *)
nop;
(* vmovdqu 0x10(%rax),%xmm6                        #! EA = L0x7fffffffd790; Value = 0x2425262724252627; PC = 0x555555559bbe *)
mov xmm6_0 L0x7fffffffd790; mov xmm6_1 L0x7fffffffd794;
mov xmm6_2 L0x7fffffffd798; mov xmm6_3 L0x7fffffffd79c;
(* vpaddd -0x70(%rax),%xmm5,%xmm5                  #! EA = L0x7fffffffd710; Value = 0xba99985fba99985f; PC = 0x555555559bc3 *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd710; adds dc xmm5_1 xmm5_1 L0x7fffffffd714;
adds dc xmm5_2 xmm5_2 L0x7fffffffd718; adds dc xmm5_3 xmm5_3 L0x7fffffffd71c;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x555555559bc8 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x555555559bcd *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x555555559bd2 *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559bd7 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x555555559bdb *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559be0 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x555555559be4 *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x20(%rax),%xmm0                       #! EA = L0x7fffffffd760; Value = 0x1b329dd61b329dd6; PC = 0x555555559be9 *)
mov xmm0_0 L0x7fffffffd760; mov xmm0_1 L0x7fffffffd764;
mov xmm0_2 L0x7fffffffd768; mov xmm0_3 L0x7fffffffd76c;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x555555559bee *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559bf3 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559bf7 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559bfc *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559c00 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559c05 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x555555559c09 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559c0d *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559c12 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559c16 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559c1b *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559c1f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559c23 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm12,%xmm7                        #! PC = 0x555555559c27 *)
split xmm7_0 dc xmm12_0 0x6; split xmm7_1 dc xmm12_1 0x6;
split xmm7_2 dc xmm12_2 0x6; split xmm7_3 dc xmm12_3 0x6;
(* vpslld $0x1a,%xmm12,%xmm2                       #! PC = 0x555555559c2d *)
split dc xmm2_0 xmm12_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm12_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm12_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm12_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,(%rax)                            #! EA = L0x7fffffffd780; PC = 0x555555559c33 *)
mov L0x7fffffffd780 xmm5_0; mov L0x7fffffffd784 xmm5_1;
mov L0x7fffffffd788 xmm5_2; mov L0x7fffffffd78c xmm5_3;
(* vpaddd %xmm15,%xmm5,%xmm5                       #! PC = 0x555555559c37 *)
adds dc xmm5_0 xmm5_0 xmm15_0; adds dc xmm5_1 xmm5_1 xmm15_1;
adds dc xmm5_2 xmm5_2 xmm15_2; adds dc xmm5_3 xmm5_3 xmm15_3;
(* vpsrld $0xb,%xmm12,%xmm1                        #! PC = 0x555555559c3c *)
split xmm1_0 dc xmm12_0 0xb; split xmm1_1 dc xmm12_1 0xb;
split xmm1_2 dc xmm12_2 0xb; split xmm1_3 dc xmm12_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559c42 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm12,%xmm2                       #! PC = 0x555555559c46 *)
split dc xmm2_0 xmm12_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm12_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm12_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm12_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x80(%rbp),%xmm5,%xmm5                  #! EA = L0x55555555cd00; Value = 0x983e5152983e5152; PC = 0x555555559c4c *)
adds dc xmm5_0 xmm5_0 L0x55555555cd00; adds dc xmm5_1 xmm5_1 L0x55555555cd04;
adds dc xmm5_2 xmm5_2 L0x55555555cd08; adds dc xmm5_3 xmm5_3 L0x55555555cd0c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559c51 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm12,%xmm1                       #! PC = 0x555555559c55 *)
split xmm1_0 dc xmm12_0 0x19; split xmm1_1 dc xmm12_1 0x19;
split xmm1_2 dc xmm12_2 0x19; split xmm1_3 dc xmm12_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559c5b *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm12,%xmm2                        #! PC = 0x555555559c5f *)
split dc xmm2_0 xmm12_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm12_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm12_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm12_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm14,%xmm12,%xmm0                      #! PC = 0x555555559c65 *)
not xmm12_0n@uint32 xmm12_0; and xmm0_0@uint32 xmm12_0n xmm14_0;
not xmm12_1n@uint32 xmm12_1; and xmm0_1@uint32 xmm12_1n xmm14_1;
not xmm12_2n@uint32 xmm12_2; and xmm0_2@uint32 xmm12_2n xmm14_2;
not xmm12_3n@uint32 xmm12_3; and xmm0_3@uint32 xmm12_3n xmm14_3;
(* vpand  %xmm13,%xmm12,%xmm3                      #! PC = 0x555555559c6a *)
and xmm3_0@uint32 xmm12_0 xmm13_0; and xmm3_1@uint32 xmm12_1 xmm13_1;
and xmm3_2@uint32 xmm12_2 xmm13_2; and xmm3_3@uint32 xmm12_3 xmm13_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559c6f *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm8,%xmm15                        #! PC = 0x555555559c73 *)
split xmm15_0 dc xmm8_0 0x2; split xmm15_1 dc xmm8_1 0x2;
split xmm15_2 dc xmm8_2 0x2; split xmm15_3 dc xmm8_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559c79 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm8,%xmm1                        #! PC = 0x555555559c7d *)
split dc xmm1_0 xmm8_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm8_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm8_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm8_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x555555559c83 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm8,%xmm9,%xmm3                        #! PC = 0x555555559c87 *)
xor xmm3_0@uint32 xmm9_0 xmm8_0; xor xmm3_1@uint32 xmm9_1 xmm8_1;
xor xmm3_2@uint32 xmm9_2 xmm8_2; xor xmm3_3@uint32 xmm9_3 xmm8_3;
(* vpxor  %xmm1,%xmm15,%xmm15                      #! PC = 0x555555559c8c *)
xor xmm15_0@uint32 xmm15_0 xmm1_0; xor xmm15_1@uint32 xmm15_1 xmm1_1;
xor xmm15_2@uint32 xmm15_2 xmm1_2; xor xmm15_3@uint32 xmm15_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559c90 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm8,%xmm1                         #! PC = 0x555555559c94 *)
split xmm1_0 dc xmm8_0 0xd; split xmm1_1 dc xmm8_1 0xd;
split xmm1_2 dc xmm8_2 0xd; split xmm1_3 dc xmm8_3 0xd;
(* vpslld $0x13,%xmm8,%xmm2                        #! PC = 0x555555559c9a *)
split dc xmm2_0 xmm8_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm8_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm8_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm8_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555559ca0 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555559ca4 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm15,%xmm7                       #! PC = 0x555555559ca8 *)
xor xmm7_0@uint32 xmm15_0 xmm1_0; xor xmm7_1@uint32 xmm15_1 xmm1_1;
xor xmm7_2@uint32 xmm15_2 xmm1_2; xor xmm7_3@uint32 xmm15_3 xmm1_3;
(* vpsrld $0x16,%xmm8,%xmm1                        #! PC = 0x555555559cac *)
split xmm1_0 dc xmm8_0 0x16; split xmm1_1 dc xmm8_1 0x16;
split xmm1_2 dc xmm8_2 0x16; split xmm1_3 dc xmm8_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559cb2 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm8,%xmm2                         #! PC = 0x555555559cb6 *)
split dc xmm2_0 xmm8_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm8_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm8_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm8_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm9,%xmm15                       #! PC = 0x555555559cbc *)
xor xmm15_0@uint32 xmm9_0 xmm4_0; xor xmm15_1@uint32 xmm9_1 xmm4_1;
xor xmm15_2@uint32 xmm9_2 xmm4_2; xor xmm15_3@uint32 xmm9_3 xmm4_3;
(* vpaddd %xmm5,%xmm11,%xmm11                      #! PC = 0x555555559cc0 *)
adds dc xmm11_0 xmm11_0 xmm5_0; adds dc xmm11_1 xmm11_1 xmm5_1;
adds dc xmm11_2 xmm11_2 xmm5_2; adds dc xmm11_3 xmm11_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559cc4 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559cc8 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm15,%xmm15                      #! PC = 0x555555559ccc *)
adds dc xmm15_0 xmm15_0 xmm5_0; adds dc xmm15_1 xmm15_1 xmm5_1;
adds dc xmm15_2 xmm15_2 xmm5_2; adds dc xmm15_3 xmm15_3 xmm5_3;
(* vpaddd %xmm7,%xmm15,%xmm15                      #! PC = 0x555555559cd0 *)
adds dc xmm15_0 xmm15_0 xmm7_0; adds dc xmm15_1 xmm15_1 xmm7_1;
adds dc xmm15_2 xmm15_2 xmm7_2; adds dc xmm15_3 xmm15_3 xmm7_3;
(* vmovdqu 0x20(%rax),%xmm5                        #! EA = L0x7fffffffd7a0; Value = 0x28292a2b28292a2b; PC = 0x555555559cd4 *)
mov xmm5_0 L0x7fffffffd7a0; mov xmm5_1 L0x7fffffffd7a4;
mov xmm5_2 L0x7fffffffd7a8; mov xmm5_3 L0x7fffffffd7ac;
(* vpaddd -0x60(%rax),%xmm6,%xmm6                  #! EA = L0x7fffffffd720; Value = 0x65d5a36865d5a368; PC = 0x555555559cd9 *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd720; adds dc xmm6_1 xmm6_1 L0x7fffffffd724;
adds dc xmm6_2 xmm6_2 L0x7fffffffd728; adds dc xmm6_3 xmm6_3 L0x7fffffffd72c;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x555555559cde *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x555555559ce3 *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x555555559ce8 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559ced *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x555555559cf1 *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559cf6 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x555555559cfa *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x10(%rax),%xmm0                       #! EA = L0x7fffffffd770; Value = 0x776eb770776eb770; PC = 0x555555559cff *)
mov xmm0_0 L0x7fffffffd770; mov xmm0_1 L0x7fffffffd774;
mov xmm0_2 L0x7fffffffd778; mov xmm0_3 L0x7fffffffd77c;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x555555559d04 *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559d09 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559d0d *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559d12 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559d16 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559d1b *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x555555559d1f *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559d23 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559d28 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559d2c *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559d31 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559d35 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559d39 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm11,%xmm7                        #! PC = 0x555555559d3d *)
split xmm7_0 dc xmm11_0 0x6; split xmm7_1 dc xmm11_1 0x6;
split xmm7_2 dc xmm11_2 0x6; split xmm7_3 dc xmm11_3 0x6;
(* vpslld $0x1a,%xmm11,%xmm2                       #! PC = 0x555555559d43 *)
split dc xmm2_0 xmm11_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm11_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm11_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm11_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,0x10(%rax)                        #! EA = L0x7fffffffd790; PC = 0x555555559d49 *)
mov L0x7fffffffd790 xmm6_0; mov L0x7fffffffd794 xmm6_1;
mov L0x7fffffffd798 xmm6_2; mov L0x7fffffffd79c xmm6_3;
(* vpaddd %xmm14,%xmm6,%xmm6                       #! PC = 0x555555559d4e *)
adds dc xmm6_0 xmm6_0 xmm14_0; adds dc xmm6_1 xmm6_1 xmm14_1;
adds dc xmm6_2 xmm6_2 xmm14_2; adds dc xmm6_3 xmm6_3 xmm14_3;
(* vpsrld $0xb,%xmm11,%xmm1                        #! PC = 0x555555559d53 *)
split xmm1_0 dc xmm11_0 0xb; split xmm1_1 dc xmm11_1 0xb;
split xmm1_2 dc xmm11_2 0xb; split xmm1_3 dc xmm11_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559d59 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm11,%xmm2                       #! PC = 0x555555559d5d *)
split dc xmm2_0 xmm11_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm11_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm11_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm11_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x60(%rbp),%xmm6,%xmm6                  #! EA = L0x55555555cd20; Value = 0xa831c66da831c66d; PC = 0x555555559d63 *)
adds dc xmm6_0 xmm6_0 L0x55555555cd20; adds dc xmm6_1 xmm6_1 L0x55555555cd24;
adds dc xmm6_2 xmm6_2 L0x55555555cd28; adds dc xmm6_3 xmm6_3 L0x55555555cd2c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559d68 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm11,%xmm1                       #! PC = 0x555555559d6c *)
split xmm1_0 dc xmm11_0 0x19; split xmm1_1 dc xmm11_1 0x19;
split xmm1_2 dc xmm11_2 0x19; split xmm1_3 dc xmm11_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559d72 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm11,%xmm2                        #! PC = 0x555555559d76 *)
split dc xmm2_0 xmm11_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm11_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm11_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm11_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm13,%xmm11,%xmm0                      #! PC = 0x555555559d7c *)
not xmm11_0n@uint32 xmm11_0; and xmm0_0@uint32 xmm11_0n xmm13_0;
not xmm11_1n@uint32 xmm11_1; and xmm0_1@uint32 xmm11_1n xmm13_1;
not xmm11_2n@uint32 xmm11_2; and xmm0_2@uint32 xmm11_2n xmm13_2;
not xmm11_3n@uint32 xmm11_3; and xmm0_3@uint32 xmm11_3n xmm13_3;
(* vpand  %xmm12,%xmm11,%xmm4                      #! PC = 0x555555559d81 *)
and xmm4_0@uint32 xmm11_0 xmm12_0; and xmm4_1@uint32 xmm11_1 xmm12_1;
and xmm4_2@uint32 xmm11_2 xmm12_2; and xmm4_3@uint32 xmm11_3 xmm12_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559d86 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm15,%xmm14                       #! PC = 0x555555559d8a *)
split xmm14_0 dc xmm15_0 0x2; split xmm14_1 dc xmm15_1 0x2;
split xmm14_2 dc xmm15_2 0x2; split xmm14_3 dc xmm15_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559d90 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm15,%xmm1                       #! PC = 0x555555559d94 *)
split dc xmm1_0 xmm15_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm15_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm15_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm15_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x555555559d9a *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm15,%xmm8,%xmm4                       #! PC = 0x555555559d9e *)
xor xmm4_0@uint32 xmm8_0 xmm15_0; xor xmm4_1@uint32 xmm8_1 xmm15_1;
xor xmm4_2@uint32 xmm8_2 xmm15_2; xor xmm4_3@uint32 xmm8_3 xmm15_3;
(* vpxor  %xmm1,%xmm14,%xmm14                      #! PC = 0x555555559da3 *)
xor xmm14_0@uint32 xmm14_0 xmm1_0; xor xmm14_1@uint32 xmm14_1 xmm1_1;
xor xmm14_2@uint32 xmm14_2 xmm1_2; xor xmm14_3@uint32 xmm14_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559da7 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm15,%xmm1                        #! PC = 0x555555559dab *)
split xmm1_0 dc xmm15_0 0xd; split xmm1_1 dc xmm15_1 0xd;
split xmm1_2 dc xmm15_2 0xd; split xmm1_3 dc xmm15_3 0xd;
(* vpslld $0x13,%xmm15,%xmm2                       #! PC = 0x555555559db1 *)
split dc xmm2_0 xmm15_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm15_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm15_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm15_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x555555559db7 *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x555555559dbb *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm14,%xmm7                       #! PC = 0x555555559dbf *)
xor xmm7_0@uint32 xmm14_0 xmm1_0; xor xmm7_1@uint32 xmm14_1 xmm1_1;
xor xmm7_2@uint32 xmm14_2 xmm1_2; xor xmm7_3@uint32 xmm14_3 xmm1_3;
(* vpsrld $0x16,%xmm15,%xmm1                       #! PC = 0x555555559dc3 *)
split xmm1_0 dc xmm15_0 0x16; split xmm1_1 dc xmm15_1 0x16;
split xmm1_2 dc xmm15_2 0x16; split xmm1_3 dc xmm15_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559dc9 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm15,%xmm2                        #! PC = 0x555555559dcd *)
split dc xmm2_0 xmm15_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm15_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm15_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm15_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm8,%xmm14                       #! PC = 0x555555559dd3 *)
xor xmm14_0@uint32 xmm8_0 xmm3_0; xor xmm14_1@uint32 xmm8_1 xmm3_1;
xor xmm14_2@uint32 xmm8_2 xmm3_2; xor xmm14_3@uint32 xmm8_3 xmm3_3;
(* vpaddd %xmm6,%xmm10,%xmm10                      #! PC = 0x555555559dd7 *)
adds dc xmm10_0 xmm10_0 xmm6_0; adds dc xmm10_1 xmm10_1 xmm6_1;
adds dc xmm10_2 xmm10_2 xmm6_2; adds dc xmm10_3 xmm10_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559ddb *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559ddf *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm14,%xmm14                      #! PC = 0x555555559de3 *)
adds dc xmm14_0 xmm14_0 xmm6_0; adds dc xmm14_1 xmm14_1 xmm6_1;
adds dc xmm14_2 xmm14_2 xmm6_2; adds dc xmm14_3 xmm14_3 xmm6_3;
(* vpaddd %xmm7,%xmm14,%xmm14                      #! PC = 0x555555559de7 *)
adds dc xmm14_0 xmm14_0 xmm7_0; adds dc xmm14_1 xmm14_1 xmm7_1;
adds dc xmm14_2 xmm14_2 xmm7_2; adds dc xmm14_3 xmm14_3 xmm7_3;
(* vmovdqu 0x30(%rax),%xmm6                        #! EA = L0x7fffffffd7b0; Value = 0x2c2d2e2f2c2d2e2f; PC = 0x555555559deb *)
mov xmm6_0 L0x7fffffffd7b0; mov xmm6_1 L0x7fffffffd7b4;
mov xmm6_2 L0x7fffffffd7b8; mov xmm6_3 L0x7fffffffd7bc;
(* vpaddd -0x50(%rax),%xmm5,%xmm5                  #! EA = L0x7fffffffd730; Value = 0x9bef911d9bef911d; PC = 0x555555559df0 *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd730; adds dc xmm5_1 xmm5_1 L0x7fffffffd734;
adds dc xmm5_2 xmm5_2 L0x7fffffffd738; adds dc xmm5_3 xmm5_3 L0x7fffffffd73c;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x555555559df5 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x555555559dfa *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x555555559dff *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559e04 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x555555559e08 *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559e0d *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x555555559e11 *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu (%rax),%xmm0                            #! EA = L0x7fffffffd780; Value = 0xfb56e45bfb56e45b; PC = 0x555555559e16 *)
mov xmm0_0 L0x7fffffffd780; mov xmm0_1 L0x7fffffffd784;
mov xmm0_2 L0x7fffffffd788; mov xmm0_3 L0x7fffffffd78c;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x555555559e1a *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559e1f *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559e23 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559e28 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559e2c *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559e31 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x555555559e35 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559e39 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559e3e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559e42 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559e47 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559e4b *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559e4f *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm10,%xmm7                        #! PC = 0x555555559e53 *)
split xmm7_0 dc xmm10_0 0x6; split xmm7_1 dc xmm10_1 0x6;
split xmm7_2 dc xmm10_2 0x6; split xmm7_3 dc xmm10_3 0x6;
(* vpslld $0x1a,%xmm10,%xmm2                       #! PC = 0x555555559e59 *)
split dc xmm2_0 xmm10_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm10_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm10_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm10_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,0x20(%rax)                        #! EA = L0x7fffffffd7a0; PC = 0x555555559e5f *)
mov L0x7fffffffd7a0 xmm5_0; mov L0x7fffffffd7a4 xmm5_1;
mov L0x7fffffffd7a8 xmm5_2; mov L0x7fffffffd7ac xmm5_3;
(* vpaddd %xmm13,%xmm5,%xmm5                       #! PC = 0x555555559e64 *)
adds dc xmm5_0 xmm5_0 xmm13_0; adds dc xmm5_1 xmm5_1 xmm13_1;
adds dc xmm5_2 xmm5_2 xmm13_2; adds dc xmm5_3 xmm5_3 xmm13_3;
(* vpsrld $0xb,%xmm10,%xmm1                        #! PC = 0x555555559e69 *)
split xmm1_0 dc xmm10_0 0xb; split xmm1_1 dc xmm10_1 0xb;
split xmm1_2 dc xmm10_2 0xb; split xmm1_3 dc xmm10_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559e6f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm10,%xmm2                       #! PC = 0x555555559e73 *)
split dc xmm2_0 xmm10_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm10_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm10_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm10_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x40(%rbp),%xmm5,%xmm5                  #! EA = L0x55555555cd40; Value = 0xb00327c8b00327c8; PC = 0x555555559e79 *)
adds dc xmm5_0 xmm5_0 L0x55555555cd40; adds dc xmm5_1 xmm5_1 L0x55555555cd44;
adds dc xmm5_2 xmm5_2 L0x55555555cd48; adds dc xmm5_3 xmm5_3 L0x55555555cd4c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559e7e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm10,%xmm1                       #! PC = 0x555555559e82 *)
split xmm1_0 dc xmm10_0 0x19; split xmm1_1 dc xmm10_1 0x19;
split xmm1_2 dc xmm10_2 0x19; split xmm1_3 dc xmm10_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559e88 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm10,%xmm2                        #! PC = 0x555555559e8c *)
split dc xmm2_0 xmm10_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm10_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm10_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm10_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm12,%xmm10,%xmm0                      #! PC = 0x555555559e92 *)
not xmm10_0n@uint32 xmm10_0; and xmm0_0@uint32 xmm10_0n xmm12_0;
not xmm10_1n@uint32 xmm10_1; and xmm0_1@uint32 xmm10_1n xmm12_1;
not xmm10_2n@uint32 xmm10_2; and xmm0_2@uint32 xmm10_2n xmm12_2;
not xmm10_3n@uint32 xmm10_3; and xmm0_3@uint32 xmm10_3n xmm12_3;
(* vpand  %xmm11,%xmm10,%xmm3                      #! PC = 0x555555559e97 *)
and xmm3_0@uint32 xmm10_0 xmm11_0; and xmm3_1@uint32 xmm10_1 xmm11_1;
and xmm3_2@uint32 xmm10_2 xmm11_2; and xmm3_3@uint32 xmm10_3 xmm11_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559e9c *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm14,%xmm13                       #! PC = 0x555555559ea0 *)
split xmm13_0 dc xmm14_0 0x2; split xmm13_1 dc xmm14_1 0x2;
split xmm13_2 dc xmm14_2 0x2; split xmm13_3 dc xmm14_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559ea6 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm14,%xmm1                       #! PC = 0x555555559eaa *)
split dc xmm1_0 xmm14_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm14_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm14_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm14_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x555555559eb0 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm14,%xmm15,%xmm3                      #! PC = 0x555555559eb4 *)
xor xmm3_0@uint32 xmm15_0 xmm14_0; xor xmm3_1@uint32 xmm15_1 xmm14_1;
xor xmm3_2@uint32 xmm15_2 xmm14_2; xor xmm3_3@uint32 xmm15_3 xmm14_3;
(* vpxor  %xmm1,%xmm13,%xmm13                      #! PC = 0x555555559eb9 *)
xor xmm13_0@uint32 xmm13_0 xmm1_0; xor xmm13_1@uint32 xmm13_1 xmm1_1;
xor xmm13_2@uint32 xmm13_2 xmm1_2; xor xmm13_3@uint32 xmm13_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559ebd *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm14,%xmm1                        #! PC = 0x555555559ec1 *)
split xmm1_0 dc xmm14_0 0xd; split xmm1_1 dc xmm14_1 0xd;
split xmm1_2 dc xmm14_2 0xd; split xmm1_3 dc xmm14_3 0xd;
(* vpslld $0x13,%xmm14,%xmm2                       #! PC = 0x555555559ec7 *)
split dc xmm2_0 xmm14_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm14_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm14_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm14_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555559ecd *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555559ed1 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm13,%xmm7                       #! PC = 0x555555559ed5 *)
xor xmm7_0@uint32 xmm13_0 xmm1_0; xor xmm7_1@uint32 xmm13_1 xmm1_1;
xor xmm7_2@uint32 xmm13_2 xmm1_2; xor xmm7_3@uint32 xmm13_3 xmm1_3;
(* vpsrld $0x16,%xmm14,%xmm1                       #! PC = 0x555555559ed9 *)
split xmm1_0 dc xmm14_0 0x16; split xmm1_1 dc xmm14_1 0x16;
split xmm1_2 dc xmm14_2 0x16; split xmm1_3 dc xmm14_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559edf *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm14,%xmm2                        #! PC = 0x555555559ee3 *)
split dc xmm2_0 xmm14_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm14_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm14_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm14_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm15,%xmm13                      #! PC = 0x555555559ee9 *)
xor xmm13_0@uint32 xmm15_0 xmm4_0; xor xmm13_1@uint32 xmm15_1 xmm4_1;
xor xmm13_2@uint32 xmm15_2 xmm4_2; xor xmm13_3@uint32 xmm15_3 xmm4_3;
(* vpaddd %xmm5,%xmm9,%xmm9                        #! PC = 0x555555559eed *)
adds dc xmm9_0 xmm9_0 xmm5_0; adds dc xmm9_1 xmm9_1 xmm5_1;
adds dc xmm9_2 xmm9_2 xmm5_2; adds dc xmm9_3 xmm9_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559ef1 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559ef5 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm13,%xmm13                      #! PC = 0x555555559ef9 *)
adds dc xmm13_0 xmm13_0 xmm5_0; adds dc xmm13_1 xmm13_1 xmm5_1;
adds dc xmm13_2 xmm13_2 xmm5_2; adds dc xmm13_3 xmm13_3 xmm5_3;
(* vpaddd %xmm7,%xmm13,%xmm13                      #! PC = 0x555555559efd *)
adds dc xmm13_0 xmm13_0 xmm7_0; adds dc xmm13_1 xmm13_1 xmm7_1;
adds dc xmm13_2 xmm13_2 xmm7_2; adds dc xmm13_3 xmm13_3 xmm7_3;
(* vmovdqu 0x40(%rax),%xmm5                        #! EA = L0x7fffffffd7c0; Value = 0x3031323330313233; PC = 0x555555559f01 *)
mov xmm5_0 L0x7fffffffd7c0; mov xmm5_1 L0x7fffffffd7c4;
mov xmm5_2 L0x7fffffffd7c8; mov xmm5_3 L0x7fffffffd7cc;
(* vpaddd -0x40(%rax),%xmm6,%xmm6                  #! EA = L0x7fffffffd740; Value = 0x1335e16d1335e16d; PC = 0x555555559f06 *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd740; adds dc xmm6_1 xmm6_1 L0x7fffffffd744;
adds dc xmm6_2 xmm6_2 L0x7fffffffd748; adds dc xmm6_3 xmm6_3 L0x7fffffffd74c;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x555555559f0b *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x555555559f10 *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x555555559f15 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559f1a *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x555555559f1e *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559f23 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x555555559f27 *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x10(%rax),%xmm0                        #! EA = L0x7fffffffd790; Value = 0x312675a1312675a1; PC = 0x555555559f2c *)
mov xmm0_0 L0x7fffffffd790; mov xmm0_1 L0x7fffffffd794;
mov xmm0_2 L0x7fffffffd798; mov xmm0_3 L0x7fffffffd79c;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x555555559f31 *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559f36 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559f3a *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559f3f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559f43 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559f48 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x555555559f4c *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559f50 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559f55 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559f59 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559f5e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559f62 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559f66 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm9,%xmm7                         #! PC = 0x555555559f6a *)
split xmm7_0 dc xmm9_0 0x6; split xmm7_1 dc xmm9_1 0x6;
split xmm7_2 dc xmm9_2 0x6; split xmm7_3 dc xmm9_3 0x6;
(* vpslld $0x1a,%xmm9,%xmm2                        #! PC = 0x555555559f70 *)
split dc xmm2_0 xmm9_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm9_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm9_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm9_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,0x30(%rax)                        #! EA = L0x7fffffffd7b0; PC = 0x555555559f76 *)
mov L0x7fffffffd7b0 xmm6_0; mov L0x7fffffffd7b4 xmm6_1;
mov L0x7fffffffd7b8 xmm6_2; mov L0x7fffffffd7bc xmm6_3;
(* vpaddd %xmm12,%xmm6,%xmm6                       #! PC = 0x555555559f7b *)
adds dc xmm6_0 xmm6_0 xmm12_0; adds dc xmm6_1 xmm6_1 xmm12_1;
adds dc xmm6_2 xmm6_2 xmm12_2; adds dc xmm6_3 xmm6_3 xmm12_3;
(* vpsrld $0xb,%xmm9,%xmm1                         #! PC = 0x555555559f80 *)
split xmm1_0 dc xmm9_0 0xb; split xmm1_1 dc xmm9_1 0xb;
split xmm1_2 dc xmm9_2 0xb; split xmm1_3 dc xmm9_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559f86 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm9,%xmm2                        #! PC = 0x555555559f8a *)
split dc xmm2_0 xmm9_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm9_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm9_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm9_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x20(%rbp),%xmm6,%xmm6                  #! EA = L0x55555555cd60; Value = 0xbf597fc7bf597fc7; PC = 0x555555559f90 *)
adds dc xmm6_0 xmm6_0 L0x55555555cd60; adds dc xmm6_1 xmm6_1 L0x55555555cd64;
adds dc xmm6_2 xmm6_2 L0x55555555cd68; adds dc xmm6_3 xmm6_3 L0x55555555cd6c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559f95 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm9,%xmm1                        #! PC = 0x555555559f99 *)
split xmm1_0 dc xmm9_0 0x19; split xmm1_1 dc xmm9_1 0x19;
split xmm1_2 dc xmm9_2 0x19; split xmm1_3 dc xmm9_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559f9f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm9,%xmm2                         #! PC = 0x555555559fa3 *)
split dc xmm2_0 xmm9_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm9_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm9_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm9_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm11,%xmm9,%xmm0                       #! PC = 0x555555559fa9 *)
not xmm9_0n@uint32 xmm9_0; and xmm0_0@uint32 xmm9_0n xmm11_0;
not xmm9_1n@uint32 xmm9_1; and xmm0_1@uint32 xmm9_1n xmm11_1;
not xmm9_2n@uint32 xmm9_2; and xmm0_2@uint32 xmm9_2n xmm11_2;
not xmm9_3n@uint32 xmm9_3; and xmm0_3@uint32 xmm9_3n xmm11_3;
(* vpand  %xmm10,%xmm9,%xmm4                       #! PC = 0x555555559fae *)
and xmm4_0@uint32 xmm9_0 xmm10_0; and xmm4_1@uint32 xmm9_1 xmm10_1;
and xmm4_2@uint32 xmm9_2 xmm10_2; and xmm4_3@uint32 xmm9_3 xmm10_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559fb3 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm13,%xmm12                       #! PC = 0x555555559fb7 *)
split xmm12_0 dc xmm13_0 0x2; split xmm12_1 dc xmm13_1 0x2;
split xmm12_2 dc xmm13_2 0x2; split xmm12_3 dc xmm13_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559fbd *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm13,%xmm1                       #! PC = 0x555555559fc1 *)
split dc xmm1_0 xmm13_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm13_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm13_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm13_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x555555559fc7 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm13,%xmm14,%xmm4                      #! PC = 0x555555559fcb *)
xor xmm4_0@uint32 xmm14_0 xmm13_0; xor xmm4_1@uint32 xmm14_1 xmm13_1;
xor xmm4_2@uint32 xmm14_2 xmm13_2; xor xmm4_3@uint32 xmm14_3 xmm13_3;
(* vpxor  %xmm1,%xmm12,%xmm12                      #! PC = 0x555555559fd0 *)
xor xmm12_0@uint32 xmm12_0 xmm1_0; xor xmm12_1@uint32 xmm12_1 xmm1_1;
xor xmm12_2@uint32 xmm12_2 xmm1_2; xor xmm12_3@uint32 xmm12_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559fd4 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm13,%xmm1                        #! PC = 0x555555559fd8 *)
split xmm1_0 dc xmm13_0 0xd; split xmm1_1 dc xmm13_1 0xd;
split xmm1_2 dc xmm13_2 0xd; split xmm1_3 dc xmm13_3 0xd;
(* vpslld $0x13,%xmm13,%xmm2                       #! PC = 0x555555559fde *)
split dc xmm2_0 xmm13_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm13_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm13_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm13_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x555555559fe4 *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x555555559fe8 *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm12,%xmm7                       #! PC = 0x555555559fec *)
xor xmm7_0@uint32 xmm12_0 xmm1_0; xor xmm7_1@uint32 xmm12_1 xmm1_1;
xor xmm7_2@uint32 xmm12_2 xmm1_2; xor xmm7_3@uint32 xmm12_3 xmm1_3;
(* vpsrld $0x16,%xmm13,%xmm1                       #! PC = 0x555555559ff0 *)
split xmm1_0 dc xmm13_0 0x16; split xmm1_1 dc xmm13_1 0x16;
split xmm1_2 dc xmm13_2 0x16; split xmm1_3 dc xmm13_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559ff6 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm13,%xmm2                        #! PC = 0x555555559ffa *)
split dc xmm2_0 xmm13_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm13_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm13_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm13_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm14,%xmm12                      #! PC = 0x55555555a000 *)
xor xmm12_0@uint32 xmm14_0 xmm3_0; xor xmm12_1@uint32 xmm14_1 xmm3_1;
xor xmm12_2@uint32 xmm14_2 xmm3_2; xor xmm12_3@uint32 xmm14_3 xmm3_3;
(* vpaddd %xmm6,%xmm8,%xmm8                        #! PC = 0x55555555a004 *)
adds dc xmm8_0 xmm8_0 xmm6_0; adds dc xmm8_1 xmm8_1 xmm6_1;
adds dc xmm8_2 xmm8_2 xmm6_2; adds dc xmm8_3 xmm8_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a008 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a00c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm12,%xmm12                      #! PC = 0x55555555a010 *)
adds dc xmm12_0 xmm12_0 xmm6_0; adds dc xmm12_1 xmm12_1 xmm6_1;
adds dc xmm12_2 xmm12_2 xmm6_2; adds dc xmm12_3 xmm12_3 xmm6_3;
(* vpaddd %xmm7,%xmm12,%xmm12                      #! PC = 0x55555555a014 *)
adds dc xmm12_0 xmm12_0 xmm7_0; adds dc xmm12_1 xmm12_1 xmm7_1;
adds dc xmm12_2 xmm12_2 xmm7_2; adds dc xmm12_3 xmm12_3 xmm7_3;
(* vmovdqu 0x50(%rax),%xmm6                        #! EA = L0x7fffffffd7d0; Value = 0x3435363734353637; PC = 0x55555555a018 *)
mov xmm6_0 L0x7fffffffd7d0; mov xmm6_1 L0x7fffffffd7d4;
mov xmm6_2 L0x7fffffffd7d8; mov xmm6_3 L0x7fffffffd7dc;
(* vpaddd -0x30(%rax),%xmm5,%xmm5                  #! EA = L0x7fffffffd750; Value = 0xfa8fad31fa8fad31; PC = 0x55555555a01d *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd750; adds dc xmm5_1 xmm5_1 L0x7fffffffd754;
adds dc xmm5_2 xmm5_2 L0x7fffffffd758; adds dc xmm5_3 xmm5_3 L0x7fffffffd75c;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x55555555a022 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x55555555a027 *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x55555555a02c *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a031 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x55555555a035 *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a03a *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x55555555a03e *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x20(%rax),%xmm0                        #! EA = L0x7fffffffd7a0; Value = 0x8307475283074752; PC = 0x55555555a043 *)
mov xmm0_0 L0x7fffffffd7a0; mov xmm0_1 L0x7fffffffd7a4;
mov xmm0_2 L0x7fffffffd7a8; mov xmm0_3 L0x7fffffffd7ac;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x55555555a048 *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a04d *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x55555555a051 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a056 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x55555555a05a *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555a05f *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x55555555a063 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x55555555a067 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a06c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x55555555a070 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a075 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a079 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555a07d *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm8,%xmm7                         #! PC = 0x55555555a081 *)
split xmm7_0 dc xmm8_0 0x6; split xmm7_1 dc xmm8_1 0x6;
split xmm7_2 dc xmm8_2 0x6; split xmm7_3 dc xmm8_3 0x6;
(* vpslld $0x1a,%xmm8,%xmm2                        #! PC = 0x55555555a087 *)
split dc xmm2_0 xmm8_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm8_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm8_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm8_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,0x40(%rax)                        #! EA = L0x7fffffffd7c0; PC = 0x55555555a08d *)
mov L0x7fffffffd7c0 xmm5_0; mov L0x7fffffffd7c4 xmm5_1;
mov L0x7fffffffd7c8 xmm5_2; mov L0x7fffffffd7cc xmm5_3;
(* vpaddd %xmm11,%xmm5,%xmm5                       #! PC = 0x55555555a092 *)
adds dc xmm5_0 xmm5_0 xmm11_0; adds dc xmm5_1 xmm5_1 xmm11_1;
adds dc xmm5_2 xmm5_2 xmm11_2; adds dc xmm5_3 xmm5_3 xmm11_3;
(* vpsrld $0xb,%xmm8,%xmm1                         #! PC = 0x55555555a097 *)
split xmm1_0 dc xmm8_0 0xb; split xmm1_1 dc xmm8_1 0xb;
split xmm1_2 dc xmm8_2 0xb; split xmm1_3 dc xmm8_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a09d *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm8,%xmm2                        #! PC = 0x55555555a0a1 *)
split dc xmm2_0 xmm8_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm8_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm8_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm8_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x0(%rbp),%xmm5,%xmm5                    #! EA = L0x55555555cd80; Value = 0xc6e00bf3c6e00bf3; PC = 0x55555555a0a7 *)
adds dc xmm5_0 xmm5_0 L0x55555555cd80; adds dc xmm5_1 xmm5_1 L0x55555555cd84;
adds dc xmm5_2 xmm5_2 L0x55555555cd88; adds dc xmm5_3 xmm5_3 L0x55555555cd8c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a0ac *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm8,%xmm1                        #! PC = 0x55555555a0b0 *)
split xmm1_0 dc xmm8_0 0x19; split xmm1_1 dc xmm8_1 0x19;
split xmm1_2 dc xmm8_2 0x19; split xmm1_3 dc xmm8_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a0b6 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm8,%xmm2                         #! PC = 0x55555555a0ba *)
split dc xmm2_0 xmm8_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm8_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm8_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm8_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm10,%xmm8,%xmm0                       #! PC = 0x55555555a0c0 *)
not xmm8_0n@uint32 xmm8_0; and xmm0_0@uint32 xmm8_0n xmm10_0;
not xmm8_1n@uint32 xmm8_1; and xmm0_1@uint32 xmm8_1n xmm10_1;
not xmm8_2n@uint32 xmm8_2; and xmm0_2@uint32 xmm8_2n xmm10_2;
not xmm8_3n@uint32 xmm8_3; and xmm0_3@uint32 xmm8_3n xmm10_3;
(* vpand  %xmm9,%xmm8,%xmm3                        #! PC = 0x55555555a0c5 *)
and xmm3_0@uint32 xmm8_0 xmm9_0; and xmm3_1@uint32 xmm8_1 xmm9_1;
and xmm3_2@uint32 xmm8_2 xmm9_2; and xmm3_3@uint32 xmm8_3 xmm9_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a0ca *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm12,%xmm11                       #! PC = 0x55555555a0ce *)
split xmm11_0 dc xmm12_0 0x2; split xmm11_1 dc xmm12_1 0x2;
split xmm11_2 dc xmm12_2 0x2; split xmm11_3 dc xmm12_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a0d4 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm12,%xmm1                       #! PC = 0x55555555a0d8 *)
split dc xmm1_0 xmm12_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm12_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm12_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm12_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x55555555a0de *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm12,%xmm13,%xmm3                      #! PC = 0x55555555a0e2 *)
xor xmm3_0@uint32 xmm13_0 xmm12_0; xor xmm3_1@uint32 xmm13_1 xmm12_1;
xor xmm3_2@uint32 xmm13_2 xmm12_2; xor xmm3_3@uint32 xmm13_3 xmm12_3;
(* vpxor  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555555a0e7 *)
xor xmm11_0@uint32 xmm11_0 xmm1_0; xor xmm11_1@uint32 xmm11_1 xmm1_1;
xor xmm11_2@uint32 xmm11_2 xmm1_2; xor xmm11_3@uint32 xmm11_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555a0eb *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm12,%xmm1                        #! PC = 0x55555555a0ef *)
split xmm1_0 dc xmm12_0 0xd; split xmm1_1 dc xmm12_1 0xd;
split xmm1_2 dc xmm12_2 0xd; split xmm1_3 dc xmm12_3 0xd;
(* vpslld $0x13,%xmm12,%xmm2                       #! PC = 0x55555555a0f5 *)
split dc xmm2_0 xmm12_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm12_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm12_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm12_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x55555555a0fb *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x55555555a0ff *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm11,%xmm7                       #! PC = 0x55555555a103 *)
xor xmm7_0@uint32 xmm11_0 xmm1_0; xor xmm7_1@uint32 xmm11_1 xmm1_1;
xor xmm7_2@uint32 xmm11_2 xmm1_2; xor xmm7_3@uint32 xmm11_3 xmm1_3;
(* vpsrld $0x16,%xmm12,%xmm1                       #! PC = 0x55555555a107 *)
split xmm1_0 dc xmm12_0 0x16; split xmm1_1 dc xmm12_1 0x16;
split xmm1_2 dc xmm12_2 0x16; split xmm1_3 dc xmm12_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a10d *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm12,%xmm2                        #! PC = 0x55555555a111 *)
split dc xmm2_0 xmm12_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm12_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm12_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm12_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm13,%xmm11                      #! PC = 0x55555555a117 *)
xor xmm11_0@uint32 xmm13_0 xmm4_0; xor xmm11_1@uint32 xmm13_1 xmm4_1;
xor xmm11_2@uint32 xmm13_2 xmm4_2; xor xmm11_3@uint32 xmm13_3 xmm4_3;
(* vpaddd %xmm5,%xmm15,%xmm15                      #! PC = 0x55555555a11b *)
adds dc xmm15_0 xmm15_0 xmm5_0; adds dc xmm15_1 xmm15_1 xmm5_1;
adds dc xmm15_2 xmm15_2 xmm5_2; adds dc xmm15_3 xmm15_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a11f *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a123 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm11,%xmm11                      #! PC = 0x55555555a127 *)
adds dc xmm11_0 xmm11_0 xmm5_0; adds dc xmm11_1 xmm11_1 xmm5_1;
adds dc xmm11_2 xmm11_2 xmm5_2; adds dc xmm11_3 xmm11_3 xmm5_3;
(* vpaddd %xmm7,%xmm11,%xmm11                      #! PC = 0x55555555a12b *)
adds dc xmm11_0 xmm11_0 xmm7_0; adds dc xmm11_1 xmm11_1 xmm7_1;
adds dc xmm11_2 xmm11_2 xmm7_2; adds dc xmm11_3 xmm11_3 xmm7_3;
(* vmovdqu 0x60(%rax),%xmm5                        #! EA = L0x7fffffffd7e0; Value = 0x38393a3b38393a3b; PC = 0x55555555a12f *)
mov xmm5_0 L0x7fffffffd7e0; mov xmm5_1 L0x7fffffffd7e4;
mov xmm5_2 L0x7fffffffd7e8; mov xmm5_3 L0x7fffffffd7ec;
(* vpaddd -0x20(%rax),%xmm6,%xmm6                  #! EA = L0x7fffffffd760; Value = 0x1b329dd61b329dd6; PC = 0x55555555a134 *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd760; adds dc xmm6_1 xmm6_1 L0x7fffffffd764;
adds dc xmm6_2 xmm6_2 L0x7fffffffd768; adds dc xmm6_3 xmm6_3 L0x7fffffffd76c;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x55555555a139 *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x55555555a13e *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x55555555a143 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a148 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x55555555a14c *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a151 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x55555555a155 *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x30(%rax),%xmm0                        #! EA = L0x7fffffffd7b0; Value = 0x60b68ef460b68ef4; PC = 0x55555555a15a *)
mov xmm0_0 L0x7fffffffd7b0; mov xmm0_1 L0x7fffffffd7b4;
mov xmm0_2 L0x7fffffffd7b8; mov xmm0_3 L0x7fffffffd7bc;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x55555555a15f *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a164 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x55555555a168 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a16d *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x55555555a171 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555a176 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x55555555a17a *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x55555555a17e *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a183 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x55555555a187 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a18c *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a190 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555a194 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm15,%xmm7                        #! PC = 0x55555555a198 *)
split xmm7_0 dc xmm15_0 0x6; split xmm7_1 dc xmm15_1 0x6;
split xmm7_2 dc xmm15_2 0x6; split xmm7_3 dc xmm15_3 0x6;
(* vpslld $0x1a,%xmm15,%xmm2                       #! PC = 0x55555555a19e *)
split dc xmm2_0 xmm15_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm15_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm15_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm15_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,0x50(%rax)                        #! EA = L0x7fffffffd7d0; PC = 0x55555555a1a4 *)
mov L0x7fffffffd7d0 xmm6_0; mov L0x7fffffffd7d4 xmm6_1;
mov L0x7fffffffd7d8 xmm6_2; mov L0x7fffffffd7dc xmm6_3;
(* vpaddd %xmm10,%xmm6,%xmm6                       #! PC = 0x55555555a1a9 *)
adds dc xmm6_0 xmm6_0 xmm10_0; adds dc xmm6_1 xmm6_1 xmm10_1;
adds dc xmm6_2 xmm6_2 xmm10_2; adds dc xmm6_3 xmm6_3 xmm10_3;
(* vpsrld $0xb,%xmm15,%xmm1                        #! PC = 0x55555555a1ae *)
split xmm1_0 dc xmm15_0 0xb; split xmm1_1 dc xmm15_1 0xb;
split xmm1_2 dc xmm15_2 0xb; split xmm1_3 dc xmm15_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a1b4 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm15,%xmm2                       #! PC = 0x55555555a1b8 *)
split dc xmm2_0 xmm15_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm15_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm15_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm15_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x20(%rbp),%xmm6,%xmm6                   #! EA = L0x55555555cda0; Value = 0xd5a79147d5a79147; PC = 0x55555555a1be *)
adds dc xmm6_0 xmm6_0 L0x55555555cda0; adds dc xmm6_1 xmm6_1 L0x55555555cda4;
adds dc xmm6_2 xmm6_2 L0x55555555cda8; adds dc xmm6_3 xmm6_3 L0x55555555cdac;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a1c3 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm15,%xmm1                       #! PC = 0x55555555a1c7 *)
split xmm1_0 dc xmm15_0 0x19; split xmm1_1 dc xmm15_1 0x19;
split xmm1_2 dc xmm15_2 0x19; split xmm1_3 dc xmm15_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a1cd *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm15,%xmm2                        #! PC = 0x55555555a1d1 *)
split dc xmm2_0 xmm15_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm15_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm15_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm15_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm9,%xmm15,%xmm0                       #! PC = 0x55555555a1d7 *)
not xmm15_0n@uint32 xmm15_0; and xmm0_0@uint32 xmm15_0n xmm9_0;
not xmm15_1n@uint32 xmm15_1; and xmm0_1@uint32 xmm15_1n xmm9_1;
not xmm15_2n@uint32 xmm15_2; and xmm0_2@uint32 xmm15_2n xmm9_2;
not xmm15_3n@uint32 xmm15_3; and xmm0_3@uint32 xmm15_3n xmm9_3;
(* vpand  %xmm8,%xmm15,%xmm4                       #! PC = 0x55555555a1dc *)
and xmm4_0@uint32 xmm15_0 xmm8_0; and xmm4_1@uint32 xmm15_1 xmm8_1;
and xmm4_2@uint32 xmm15_2 xmm8_2; and xmm4_3@uint32 xmm15_3 xmm8_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a1e1 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm11,%xmm10                       #! PC = 0x55555555a1e5 *)
split xmm10_0 dc xmm11_0 0x2; split xmm10_1 dc xmm11_1 0x2;
split xmm10_2 dc xmm11_2 0x2; split xmm10_3 dc xmm11_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a1eb *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm11,%xmm1                       #! PC = 0x55555555a1ef *)
split dc xmm1_0 xmm11_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm11_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm11_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm11_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x55555555a1f5 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm11,%xmm12,%xmm4                      #! PC = 0x55555555a1f9 *)
xor xmm4_0@uint32 xmm12_0 xmm11_0; xor xmm4_1@uint32 xmm12_1 xmm11_1;
xor xmm4_2@uint32 xmm12_2 xmm11_2; xor xmm4_3@uint32 xmm12_3 xmm11_3;
(* vpxor  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555555a1fe *)
xor xmm10_0@uint32 xmm10_0 xmm1_0; xor xmm10_1@uint32 xmm10_1 xmm1_1;
xor xmm10_2@uint32 xmm10_2 xmm1_2; xor xmm10_3@uint32 xmm10_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555a202 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm11,%xmm1                        #! PC = 0x55555555a206 *)
split xmm1_0 dc xmm11_0 0xd; split xmm1_1 dc xmm11_1 0xd;
split xmm1_2 dc xmm11_2 0xd; split xmm1_3 dc xmm11_3 0xd;
(* vpslld $0x13,%xmm11,%xmm2                       #! PC = 0x55555555a20c *)
split dc xmm2_0 xmm11_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm11_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm11_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm11_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x55555555a212 *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x55555555a216 *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm10,%xmm7                       #! PC = 0x55555555a21a *)
xor xmm7_0@uint32 xmm10_0 xmm1_0; xor xmm7_1@uint32 xmm10_1 xmm1_1;
xor xmm7_2@uint32 xmm10_2 xmm1_2; xor xmm7_3@uint32 xmm10_3 xmm1_3;
(* vpsrld $0x16,%xmm11,%xmm1                       #! PC = 0x55555555a21e *)
split xmm1_0 dc xmm11_0 0x16; split xmm1_1 dc xmm11_1 0x16;
split xmm1_2 dc xmm11_2 0x16; split xmm1_3 dc xmm11_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a224 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm11,%xmm2                        #! PC = 0x55555555a228 *)
split dc xmm2_0 xmm11_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm11_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm11_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm11_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm12,%xmm10                      #! PC = 0x55555555a22e *)
xor xmm10_0@uint32 xmm12_0 xmm3_0; xor xmm10_1@uint32 xmm12_1 xmm3_1;
xor xmm10_2@uint32 xmm12_2 xmm3_2; xor xmm10_3@uint32 xmm12_3 xmm3_3;
(* vpaddd %xmm6,%xmm14,%xmm14                      #! PC = 0x55555555a232 *)
adds dc xmm14_0 xmm14_0 xmm6_0; adds dc xmm14_1 xmm14_1 xmm6_1;
adds dc xmm14_2 xmm14_2 xmm6_2; adds dc xmm14_3 xmm14_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a236 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a23a *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm10,%xmm10                      #! PC = 0x55555555a23e *)
adds dc xmm10_0 xmm10_0 xmm6_0; adds dc xmm10_1 xmm10_1 xmm6_1;
adds dc xmm10_2 xmm10_2 xmm6_2; adds dc xmm10_3 xmm10_3 xmm6_3;
(* vpaddd %xmm7,%xmm10,%xmm10                      #! PC = 0x55555555a242 *)
adds dc xmm10_0 xmm10_0 xmm7_0; adds dc xmm10_1 xmm10_1 xmm7_1;
adds dc xmm10_2 xmm10_2 xmm7_2; adds dc xmm10_3 xmm10_3 xmm7_3;
(* vmovdqu 0x70(%rax),%xmm6                        #! EA = L0x7fffffffd7f0; Value = 0x3c3d3e3f3c3d3e3f; PC = 0x55555555a246 *)
mov xmm6_0 L0x7fffffffd7f0; mov xmm6_1 L0x7fffffffd7f4;
mov xmm6_2 L0x7fffffffd7f8; mov xmm6_3 L0x7fffffffd7fc;
(* vpaddd -0x10(%rax),%xmm5,%xmm5                  #! EA = L0x7fffffffd770; Value = 0x776eb770776eb770; PC = 0x55555555a24b *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd770; adds dc xmm5_1 xmm5_1 L0x7fffffffd774;
adds dc xmm5_2 xmm5_2 L0x7fffffffd778; adds dc xmm5_3 xmm5_3 L0x7fffffffd77c;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x55555555a250 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x55555555a255 *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x55555555a25a *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a25f *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x55555555a263 *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a268 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x55555555a26c *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x40(%rax),%xmm0                        #! EA = L0x7fffffffd7c0; Value = 0x9b87b13d9b87b13d; PC = 0x55555555a271 *)
mov xmm0_0 L0x7fffffffd7c0; mov xmm0_1 L0x7fffffffd7c4;
mov xmm0_2 L0x7fffffffd7c8; mov xmm0_3 L0x7fffffffd7cc;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x55555555a276 *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a27b *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x55555555a27f *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a284 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x55555555a288 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555a28d *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x55555555a291 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x55555555a295 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a29a *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x55555555a29e *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a2a3 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a2a7 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555a2ab *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm14,%xmm7                        #! PC = 0x55555555a2af *)
split xmm7_0 dc xmm14_0 0x6; split xmm7_1 dc xmm14_1 0x6;
split xmm7_2 dc xmm14_2 0x6; split xmm7_3 dc xmm14_3 0x6;
(* vpslld $0x1a,%xmm14,%xmm2                       #! PC = 0x55555555a2b5 *)
split dc xmm2_0 xmm14_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm14_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm14_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm14_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,0x60(%rax)                        #! EA = L0x7fffffffd7e0; PC = 0x55555555a2bb *)
mov L0x7fffffffd7e0 xmm5_0; mov L0x7fffffffd7e4 xmm5_1;
mov L0x7fffffffd7e8 xmm5_2; mov L0x7fffffffd7ec xmm5_3;
(* vpaddd %xmm9,%xmm5,%xmm5                        #! PC = 0x55555555a2c0 *)
adds dc xmm5_0 xmm5_0 xmm9_0; adds dc xmm5_1 xmm5_1 xmm9_1;
adds dc xmm5_2 xmm5_2 xmm9_2; adds dc xmm5_3 xmm5_3 xmm9_3;
(* vpsrld $0xb,%xmm14,%xmm1                        #! PC = 0x55555555a2c5 *)
split xmm1_0 dc xmm14_0 0xb; split xmm1_1 dc xmm14_1 0xb;
split xmm1_2 dc xmm14_2 0xb; split xmm1_3 dc xmm14_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a2cb *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm14,%xmm2                       #! PC = 0x55555555a2cf *)
split dc xmm2_0 xmm14_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm14_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm14_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm14_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x40(%rbp),%xmm5,%xmm5                   #! EA = L0x55555555cdc0; Value = 0x06ca635106ca6351; PC = 0x55555555a2d5 *)
adds dc xmm5_0 xmm5_0 L0x55555555cdc0; adds dc xmm5_1 xmm5_1 L0x55555555cdc4;
adds dc xmm5_2 xmm5_2 L0x55555555cdc8; adds dc xmm5_3 xmm5_3 L0x55555555cdcc;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a2da *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm14,%xmm1                       #! PC = 0x55555555a2de *)
split xmm1_0 dc xmm14_0 0x19; split xmm1_1 dc xmm14_1 0x19;
split xmm1_2 dc xmm14_2 0x19; split xmm1_3 dc xmm14_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a2e4 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm14,%xmm2                        #! PC = 0x55555555a2e8 *)
split dc xmm2_0 xmm14_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm14_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm14_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm14_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm8,%xmm14,%xmm0                       #! PC = 0x55555555a2ee *)
not xmm14_0n@uint32 xmm14_0; and xmm0_0@uint32 xmm14_0n xmm8_0;
not xmm14_1n@uint32 xmm14_1; and xmm0_1@uint32 xmm14_1n xmm8_1;
not xmm14_2n@uint32 xmm14_2; and xmm0_2@uint32 xmm14_2n xmm8_2;
not xmm14_3n@uint32 xmm14_3; and xmm0_3@uint32 xmm14_3n xmm8_3;
(* vpand  %xmm15,%xmm14,%xmm3                      #! PC = 0x55555555a2f3 *)
and xmm3_0@uint32 xmm14_0 xmm15_0; and xmm3_1@uint32 xmm14_1 xmm15_1;
and xmm3_2@uint32 xmm14_2 xmm15_2; and xmm3_3@uint32 xmm14_3 xmm15_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a2f8 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm10,%xmm9                        #! PC = 0x55555555a2fc *)
split xmm9_0 dc xmm10_0 0x2; split xmm9_1 dc xmm10_1 0x2;
split xmm9_2 dc xmm10_2 0x2; split xmm9_3 dc xmm10_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a302 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm10,%xmm1                       #! PC = 0x55555555a306 *)
split dc xmm1_0 xmm10_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm10_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm10_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm10_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x55555555a30c *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm10,%xmm11,%xmm3                      #! PC = 0x55555555a310 *)
xor xmm3_0@uint32 xmm11_0 xmm10_0; xor xmm3_1@uint32 xmm11_1 xmm10_1;
xor xmm3_2@uint32 xmm11_2 xmm10_2; xor xmm3_3@uint32 xmm11_3 xmm10_3;
(* vpxor  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555555a315 *)
xor xmm9_0@uint32 xmm9_0 xmm1_0; xor xmm9_1@uint32 xmm9_1 xmm1_1;
xor xmm9_2@uint32 xmm9_2 xmm1_2; xor xmm9_3@uint32 xmm9_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555a319 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm10,%xmm1                        #! PC = 0x55555555a31d *)
split xmm1_0 dc xmm10_0 0xd; split xmm1_1 dc xmm10_1 0xd;
split xmm1_2 dc xmm10_2 0xd; split xmm1_3 dc xmm10_3 0xd;
(* vpslld $0x13,%xmm10,%xmm2                       #! PC = 0x55555555a323 *)
split dc xmm2_0 xmm10_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm10_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm10_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm10_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x55555555a329 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x55555555a32d *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm9,%xmm7                        #! PC = 0x55555555a331 *)
xor xmm7_0@uint32 xmm9_0 xmm1_0; xor xmm7_1@uint32 xmm9_1 xmm1_1;
xor xmm7_2@uint32 xmm9_2 xmm1_2; xor xmm7_3@uint32 xmm9_3 xmm1_3;
(* vpsrld $0x16,%xmm10,%xmm1                       #! PC = 0x55555555a335 *)
split xmm1_0 dc xmm10_0 0x16; split xmm1_1 dc xmm10_1 0x16;
split xmm1_2 dc xmm10_2 0x16; split xmm1_3 dc xmm10_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a33b *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm10,%xmm2                        #! PC = 0x55555555a33f *)
split dc xmm2_0 xmm10_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm10_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm10_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm10_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm11,%xmm9                       #! PC = 0x55555555a345 *)
xor xmm9_0@uint32 xmm11_0 xmm4_0; xor xmm9_1@uint32 xmm11_1 xmm4_1;
xor xmm9_2@uint32 xmm11_2 xmm4_2; xor xmm9_3@uint32 xmm11_3 xmm4_3;
(* vpaddd %xmm5,%xmm13,%xmm13                      #! PC = 0x55555555a349 *)
adds dc xmm13_0 xmm13_0 xmm5_0; adds dc xmm13_1 xmm13_1 xmm5_1;
adds dc xmm13_2 xmm13_2 xmm5_2; adds dc xmm13_3 xmm13_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a34d *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a351 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm9,%xmm9                        #! PC = 0x55555555a355 *)
adds dc xmm9_0 xmm9_0 xmm5_0; adds dc xmm9_1 xmm9_1 xmm5_1;
adds dc xmm9_2 xmm9_2 xmm5_2; adds dc xmm9_3 xmm9_3 xmm5_3;
(* vpaddd %xmm7,%xmm9,%xmm9                        #! PC = 0x55555555a359 *)
adds dc xmm9_0 xmm9_0 xmm7_0; adds dc xmm9_1 xmm9_1 xmm7_1;
adds dc xmm9_2 xmm9_2 xmm7_2; adds dc xmm9_3 xmm9_3 xmm7_3;
(* vmovdqu -0x80(%rax),%xmm5                       #! EA = L0x7fffffffd700; Value = 0x2d84894c2d84894c; PC = 0x55555555a35d *)
mov xmm5_0 L0x7fffffffd700; mov xmm5_1 L0x7fffffffd704;
mov xmm5_2 L0x7fffffffd708; mov xmm5_3 L0x7fffffffd70c;
(* vpaddd (%rax),%xmm6,%xmm6                       #! EA = L0x7fffffffd780; Value = 0xfb56e45bfb56e45b; PC = 0x55555555a362 *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd780; adds dc xmm6_1 xmm6_1 L0x7fffffffd784;
adds dc xmm6_2 xmm6_2 L0x7fffffffd788; adds dc xmm6_3 xmm6_3 L0x7fffffffd78c;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x55555555a366 *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x55555555a36b *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x55555555a370 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a375 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x55555555a379 *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a37e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x55555555a382 *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x50(%rax),%xmm0                        #! EA = L0x7fffffffd7d0; Value = 0x261e0138261e0138; PC = 0x55555555a387 *)
mov xmm0_0 L0x7fffffffd7d0; mov xmm0_1 L0x7fffffffd7d4;
mov xmm0_2 L0x7fffffffd7d8; mov xmm0_3 L0x7fffffffd7dc;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x55555555a38c *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a391 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x55555555a395 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a39a *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x55555555a39e *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555a3a3 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x55555555a3a7 *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x55555555a3ab *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a3b0 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x55555555a3b4 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a3b9 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a3bd *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555a3c1 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm13,%xmm7                        #! PC = 0x55555555a3c5 *)
split xmm7_0 dc xmm13_0 0x6; split xmm7_1 dc xmm13_1 0x6;
split xmm7_2 dc xmm13_2 0x6; split xmm7_3 dc xmm13_3 0x6;
(* vpslld $0x1a,%xmm13,%xmm2                       #! PC = 0x55555555a3cb *)
split dc xmm2_0 xmm13_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm13_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm13_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm13_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,0x70(%rax)                        #! EA = L0x7fffffffd7f0; PC = 0x55555555a3d1 *)
mov L0x7fffffffd7f0 xmm6_0; mov L0x7fffffffd7f4 xmm6_1;
mov L0x7fffffffd7f8 xmm6_2; mov L0x7fffffffd7fc xmm6_3;
(* vpaddd %xmm8,%xmm6,%xmm6                        #! PC = 0x55555555a3d6 *)
adds dc xmm6_0 xmm6_0 xmm8_0; adds dc xmm6_1 xmm6_1 xmm8_1;
adds dc xmm6_2 xmm6_2 xmm8_2; adds dc xmm6_3 xmm6_3 xmm8_3;
(* vpsrld $0xb,%xmm13,%xmm1                        #! PC = 0x55555555a3db *)
split xmm1_0 dc xmm13_0 0xb; split xmm1_1 dc xmm13_1 0xb;
split xmm1_2 dc xmm13_2 0xb; split xmm1_3 dc xmm13_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a3e1 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm13,%xmm2                       #! PC = 0x55555555a3e5 *)
split dc xmm2_0 xmm13_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm13_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm13_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm13_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x60(%rbp),%xmm6,%xmm6                   #! EA = L0x55555555cde0; Value = 0x1429296714292967; PC = 0x55555555a3eb *)
adds dc xmm6_0 xmm6_0 L0x55555555cde0; adds dc xmm6_1 xmm6_1 L0x55555555cde4;
adds dc xmm6_2 xmm6_2 L0x55555555cde8; adds dc xmm6_3 xmm6_3 L0x55555555cdec;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a3f0 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm13,%xmm1                       #! PC = 0x55555555a3f4 *)
split xmm1_0 dc xmm13_0 0x19; split xmm1_1 dc xmm13_1 0x19;
split xmm1_2 dc xmm13_2 0x19; split xmm1_3 dc xmm13_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a3fa *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm13,%xmm2                        #! PC = 0x55555555a3fe *)
split dc xmm2_0 xmm13_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm13_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm13_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm13_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm15,%xmm13,%xmm0                      #! PC = 0x55555555a404 *)
not xmm13_0n@uint32 xmm13_0; and xmm0_0@uint32 xmm13_0n xmm15_0;
not xmm13_1n@uint32 xmm13_1; and xmm0_1@uint32 xmm13_1n xmm15_1;
not xmm13_2n@uint32 xmm13_2; and xmm0_2@uint32 xmm13_2n xmm15_2;
not xmm13_3n@uint32 xmm13_3; and xmm0_3@uint32 xmm13_3n xmm15_3;
(* vpand  %xmm14,%xmm13,%xmm4                      #! PC = 0x55555555a409 *)
and xmm4_0@uint32 xmm13_0 xmm14_0; and xmm4_1@uint32 xmm13_1 xmm14_1;
and xmm4_2@uint32 xmm13_2 xmm14_2; and xmm4_3@uint32 xmm13_3 xmm14_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a40e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm9,%xmm8                         #! PC = 0x55555555a412 *)
split xmm8_0 dc xmm9_0 0x2; split xmm8_1 dc xmm9_1 0x2;
split xmm8_2 dc xmm9_2 0x2; split xmm8_3 dc xmm9_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a418 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm9,%xmm1                        #! PC = 0x55555555a41c *)
split dc xmm1_0 xmm9_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm9_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm9_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm9_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x55555555a422 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm9,%xmm10,%xmm4                       #! PC = 0x55555555a426 *)
xor xmm4_0@uint32 xmm10_0 xmm9_0; xor xmm4_1@uint32 xmm10_1 xmm9_1;
xor xmm4_2@uint32 xmm10_2 xmm9_2; xor xmm4_3@uint32 xmm10_3 xmm9_3;
(* vpxor  %xmm1,%xmm8,%xmm8                        #! PC = 0x55555555a42b *)
xor xmm8_0@uint32 xmm8_0 xmm1_0; xor xmm8_1@uint32 xmm8_1 xmm1_1;
xor xmm8_2@uint32 xmm8_2 xmm1_2; xor xmm8_3@uint32 xmm8_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555a42f *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm9,%xmm1                         #! PC = 0x55555555a433 *)
split xmm1_0 dc xmm9_0 0xd; split xmm1_1 dc xmm9_1 0xd;
split xmm1_2 dc xmm9_2 0xd; split xmm1_3 dc xmm9_3 0xd;
(* vpslld $0x13,%xmm9,%xmm2                        #! PC = 0x55555555a439 *)
split dc xmm2_0 xmm9_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm9_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm9_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm9_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x55555555a43f *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x55555555a443 *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm8,%xmm7                        #! PC = 0x55555555a447 *)
xor xmm7_0@uint32 xmm8_0 xmm1_0; xor xmm7_1@uint32 xmm8_1 xmm1_1;
xor xmm7_2@uint32 xmm8_2 xmm1_2; xor xmm7_3@uint32 xmm8_3 xmm1_3;
(* vpsrld $0x16,%xmm9,%xmm1                        #! PC = 0x55555555a44b *)
split xmm1_0 dc xmm9_0 0x16; split xmm1_1 dc xmm9_1 0x16;
split xmm1_2 dc xmm9_2 0x16; split xmm1_3 dc xmm9_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a451 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm9,%xmm2                         #! PC = 0x55555555a455 *)
split dc xmm2_0 xmm9_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm9_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm9_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm9_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm10,%xmm8                       #! PC = 0x55555555a45b *)
xor xmm8_0@uint32 xmm10_0 xmm3_0; xor xmm8_1@uint32 xmm10_1 xmm3_1;
xor xmm8_2@uint32 xmm10_2 xmm3_2; xor xmm8_3@uint32 xmm10_3 xmm3_3;
(* vpaddd %xmm6,%xmm12,%xmm12                      #! PC = 0x55555555a45f *)
adds dc xmm12_0 xmm12_0 xmm6_0; adds dc xmm12_1 xmm12_1 xmm6_1;
adds dc xmm12_2 xmm12_2 xmm6_2; adds dc xmm12_3 xmm12_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a463 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a467 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm8,%xmm8                        #! PC = 0x55555555a46b *)
adds dc xmm8_0 xmm8_0 xmm6_0; adds dc xmm8_1 xmm8_1 xmm6_1;
adds dc xmm8_2 xmm8_2 xmm6_2; adds dc xmm8_3 xmm8_3 xmm6_3;
(* vpaddd %xmm7,%xmm8,%xmm8                        #! PC = 0x55555555a46f *)
adds dc xmm8_0 xmm8_0 xmm7_0; adds dc xmm8_1 xmm8_1 xmm7_1;
adds dc xmm8_2 xmm8_2 xmm7_2; adds dc xmm8_3 xmm8_3 xmm7_3;
(* add    $0x100,%rbp                              #! PC = 0x55555555a473 *)
(* add 0x100, rbp *)
nop;
(* dec    %ecx                                     #! PC = 0x55555555a47a *)
(* dec ecx *)
nop;
(* #jne    0x555555559300 <sha256_multi_block_avx+3680>#! PC = 0x55555555a47c *)
#jne    0x555555559300 <sha256_multi_block_avx+3680>#! 0x55555555a47c = 0x55555555a47c;
(* vmovdqu -0x70(%rax),%xmm6                       #! EA = L0x7fffffffd710; Value = 0xba99985fba99985f; PC = 0x555555559300 *)
mov xmm6_0 L0x7fffffffd710; mov xmm6_1 L0x7fffffffd714;
mov xmm6_2 L0x7fffffffd718; mov xmm6_3 L0x7fffffffd71c;
(* vpaddd 0x10(%rax),%xmm5,%xmm5                   #! EA = L0x7fffffffd790; Value = 0x312675a1312675a1; PC = 0x555555559305 *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd790; adds dc xmm5_1 xmm5_1 L0x7fffffffd794;
adds dc xmm5_2 xmm5_2 L0x7fffffffd798; adds dc xmm5_3 xmm5_3 L0x7fffffffd79c;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x55555555930a *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x55555555930f *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x555555559314 *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559319 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x55555555931d *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559322 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x555555559326 *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x60(%rax),%xmm0                        #! EA = L0x7fffffffd7e0; Value = 0x14b7a3be14b7a3be; PC = 0x55555555932b *)
mov xmm0_0 L0x7fffffffd7e0; mov xmm0_1 L0x7fffffffd7e4;
mov xmm0_2 L0x7fffffffd7e8; mov xmm0_3 L0x7fffffffd7ec;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x555555559330 *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559335 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559339 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555933e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559342 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559347 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x55555555934b *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x55555555934f *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559354 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559358 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555935d *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559361 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559365 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm12,%xmm7                        #! PC = 0x555555559369 *)
split xmm7_0 dc xmm12_0 0x6; split xmm7_1 dc xmm12_1 0x6;
split xmm7_2 dc xmm12_2 0x6; split xmm7_3 dc xmm12_3 0x6;
(* vpslld $0x1a,%xmm12,%xmm2                       #! PC = 0x55555555936f *)
split dc xmm2_0 xmm12_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm12_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm12_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm12_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,-0x80(%rax)                       #! EA = L0x7fffffffd700; PC = 0x555555559375 *)
mov L0x7fffffffd700 xmm5_0; mov L0x7fffffffd704 xmm5_1;
mov L0x7fffffffd708 xmm5_2; mov L0x7fffffffd70c xmm5_3;
(* vpaddd %xmm15,%xmm5,%xmm5                       #! PC = 0x55555555937a *)
adds dc xmm5_0 xmm5_0 xmm15_0; adds dc xmm5_1 xmm5_1 xmm15_1;
adds dc xmm5_2 xmm5_2 xmm15_2; adds dc xmm5_3 xmm5_3 xmm15_3;
(* vpsrld $0xb,%xmm12,%xmm1                        #! PC = 0x55555555937f *)
split xmm1_0 dc xmm12_0 0xb; split xmm1_1 dc xmm12_1 0xb;
split xmm1_2 dc xmm12_2 0xb; split xmm1_3 dc xmm12_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559385 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm12,%xmm2                       #! PC = 0x555555559389 *)
split dc xmm2_0 xmm12_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm12_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm12_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm12_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x80(%rbp),%xmm5,%xmm5                  #! EA = L0x55555555ce00; Value = 0x27b70a8527b70a85; PC = 0x55555555938f *)
adds dc xmm5_0 xmm5_0 L0x55555555ce00; adds dc xmm5_1 xmm5_1 L0x55555555ce04;
adds dc xmm5_2 xmm5_2 L0x55555555ce08; adds dc xmm5_3 xmm5_3 L0x55555555ce0c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559394 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm12,%xmm1                       #! PC = 0x555555559398 *)
split xmm1_0 dc xmm12_0 0x19; split xmm1_1 dc xmm12_1 0x19;
split xmm1_2 dc xmm12_2 0x19; split xmm1_3 dc xmm12_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555939e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm12,%xmm2                        #! PC = 0x5555555593a2 *)
split dc xmm2_0 xmm12_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm12_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm12_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm12_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm14,%xmm12,%xmm0                      #! PC = 0x5555555593a8 *)
not xmm12_0n@uint32 xmm12_0; and xmm0_0@uint32 xmm12_0n xmm14_0;
not xmm12_1n@uint32 xmm12_1; and xmm0_1@uint32 xmm12_1n xmm14_1;
not xmm12_2n@uint32 xmm12_2; and xmm0_2@uint32 xmm12_2n xmm14_2;
not xmm12_3n@uint32 xmm12_3; and xmm0_3@uint32 xmm12_3n xmm14_3;
(* vpand  %xmm13,%xmm12,%xmm3                      #! PC = 0x5555555593ad *)
and xmm3_0@uint32 xmm12_0 xmm13_0; and xmm3_1@uint32 xmm12_1 xmm13_1;
and xmm3_2@uint32 xmm12_2 xmm13_2; and xmm3_3@uint32 xmm12_3 xmm13_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555593b2 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm8,%xmm15                        #! PC = 0x5555555593b6 *)
split xmm15_0 dc xmm8_0 0x2; split xmm15_1 dc xmm8_1 0x2;
split xmm15_2 dc xmm8_2 0x2; split xmm15_3 dc xmm8_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555593bc *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm8,%xmm1                        #! PC = 0x5555555593c0 *)
split dc xmm1_0 xmm8_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm8_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm8_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm8_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x5555555593c6 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm8,%xmm9,%xmm3                        #! PC = 0x5555555593ca *)
xor xmm3_0@uint32 xmm9_0 xmm8_0; xor xmm3_1@uint32 xmm9_1 xmm8_1;
xor xmm3_2@uint32 xmm9_2 xmm8_2; xor xmm3_3@uint32 xmm9_3 xmm8_3;
(* vpxor  %xmm1,%xmm15,%xmm15                      #! PC = 0x5555555593cf *)
xor xmm15_0@uint32 xmm15_0 xmm1_0; xor xmm15_1@uint32 xmm15_1 xmm1_1;
xor xmm15_2@uint32 xmm15_2 xmm1_2; xor xmm15_3@uint32 xmm15_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x5555555593d3 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm8,%xmm1                         #! PC = 0x5555555593d7 *)
split xmm1_0 dc xmm8_0 0xd; split xmm1_1 dc xmm8_1 0xd;
split xmm1_2 dc xmm8_2 0xd; split xmm1_3 dc xmm8_3 0xd;
(* vpslld $0x13,%xmm8,%xmm2                        #! PC = 0x5555555593dd *)
split dc xmm2_0 xmm8_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm8_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm8_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm8_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x5555555593e3 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x5555555593e7 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm15,%xmm7                       #! PC = 0x5555555593eb *)
xor xmm7_0@uint32 xmm15_0 xmm1_0; xor xmm7_1@uint32 xmm15_1 xmm1_1;
xor xmm7_2@uint32 xmm15_2 xmm1_2; xor xmm7_3@uint32 xmm15_3 xmm1_3;
(* vpsrld $0x16,%xmm8,%xmm1                        #! PC = 0x5555555593ef *)
split xmm1_0 dc xmm8_0 0x16; split xmm1_1 dc xmm8_1 0x16;
split xmm1_2 dc xmm8_2 0x16; split xmm1_3 dc xmm8_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555593f5 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm8,%xmm2                         #! PC = 0x5555555593f9 *)
split dc xmm2_0 xmm8_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm8_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm8_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm8_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm9,%xmm15                       #! PC = 0x5555555593ff *)
xor xmm15_0@uint32 xmm9_0 xmm4_0; xor xmm15_1@uint32 xmm9_1 xmm4_1;
xor xmm15_2@uint32 xmm9_2 xmm4_2; xor xmm15_3@uint32 xmm9_3 xmm4_3;
(* vpaddd %xmm5,%xmm11,%xmm11                      #! PC = 0x555555559403 *)
adds dc xmm11_0 xmm11_0 xmm5_0; adds dc xmm11_1 xmm11_1 xmm5_1;
adds dc xmm11_2 xmm11_2 xmm5_2; adds dc xmm11_3 xmm11_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559407 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555940b *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm15,%xmm15                      #! PC = 0x55555555940f *)
adds dc xmm15_0 xmm15_0 xmm5_0; adds dc xmm15_1 xmm15_1 xmm5_1;
adds dc xmm15_2 xmm15_2 xmm5_2; adds dc xmm15_3 xmm15_3 xmm5_3;
(* vpaddd %xmm7,%xmm15,%xmm15                      #! PC = 0x555555559413 *)
adds dc xmm15_0 xmm15_0 xmm7_0; adds dc xmm15_1 xmm15_1 xmm7_1;
adds dc xmm15_2 xmm15_2 xmm7_2; adds dc xmm15_3 xmm15_3 xmm7_3;
(* vmovdqu -0x60(%rax),%xmm5                       #! EA = L0x7fffffffd720; Value = 0x65d5a36865d5a368; PC = 0x555555559417 *)
mov xmm5_0 L0x7fffffffd720; mov xmm5_1 L0x7fffffffd724;
mov xmm5_2 L0x7fffffffd728; mov xmm5_3 L0x7fffffffd72c;
(* vpaddd 0x20(%rax),%xmm6,%xmm6                   #! EA = L0x7fffffffd7a0; Value = 0x8307475283074752; PC = 0x55555555941c *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd7a0; adds dc xmm6_1 xmm6_1 L0x7fffffffd7a4;
adds dc xmm6_2 xmm6_2 L0x7fffffffd7a8; adds dc xmm6_3 xmm6_3 L0x7fffffffd7ac;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x555555559421 *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x555555559426 *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x55555555942b *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559430 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x555555559434 *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559439 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x55555555943d *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x70(%rax),%xmm0                        #! EA = L0x7fffffffd7f0; Value = 0xb7ff4640b7ff4640; PC = 0x555555559442 *)
mov xmm0_0 L0x7fffffffd7f0; mov xmm0_1 L0x7fffffffd7f4;
mov xmm0_2 L0x7fffffffd7f8; mov xmm0_3 L0x7fffffffd7fc;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x555555559447 *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555944c *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559450 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559455 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559459 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555945e *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x555555559462 *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559466 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555946b *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x55555555946f *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559474 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559478 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555947c *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm11,%xmm7                        #! PC = 0x555555559480 *)
split xmm7_0 dc xmm11_0 0x6; split xmm7_1 dc xmm11_1 0x6;
split xmm7_2 dc xmm11_2 0x6; split xmm7_3 dc xmm11_3 0x6;
(* vpslld $0x1a,%xmm11,%xmm2                       #! PC = 0x555555559486 *)
split dc xmm2_0 xmm11_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm11_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm11_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm11_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,-0x70(%rax)                       #! EA = L0x7fffffffd710; PC = 0x55555555948c *)
mov L0x7fffffffd710 xmm6_0; mov L0x7fffffffd714 xmm6_1;
mov L0x7fffffffd718 xmm6_2; mov L0x7fffffffd71c xmm6_3;
(* vpaddd %xmm14,%xmm6,%xmm6                       #! PC = 0x555555559491 *)
adds dc xmm6_0 xmm6_0 xmm14_0; adds dc xmm6_1 xmm6_1 xmm14_1;
adds dc xmm6_2 xmm6_2 xmm14_2; adds dc xmm6_3 xmm6_3 xmm14_3;
(* vpsrld $0xb,%xmm11,%xmm1                        #! PC = 0x555555559496 *)
split xmm1_0 dc xmm11_0 0xb; split xmm1_1 dc xmm11_1 0xb;
split xmm1_2 dc xmm11_2 0xb; split xmm1_3 dc xmm11_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555949c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm11,%xmm2                       #! PC = 0x5555555594a0 *)
split dc xmm2_0 xmm11_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm11_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm11_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm11_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x60(%rbp),%xmm6,%xmm6                  #! EA = L0x55555555ce20; Value = 0x2e1b21382e1b2138; PC = 0x5555555594a6 *)
adds dc xmm6_0 xmm6_0 L0x55555555ce20; adds dc xmm6_1 xmm6_1 L0x55555555ce24;
adds dc xmm6_2 xmm6_2 L0x55555555ce28; adds dc xmm6_3 xmm6_3 L0x55555555ce2c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555594ab *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm11,%xmm1                       #! PC = 0x5555555594af *)
split xmm1_0 dc xmm11_0 0x19; split xmm1_1 dc xmm11_1 0x19;
split xmm1_2 dc xmm11_2 0x19; split xmm1_3 dc xmm11_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555594b5 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm11,%xmm2                        #! PC = 0x5555555594b9 *)
split dc xmm2_0 xmm11_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm11_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm11_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm11_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm13,%xmm11,%xmm0                      #! PC = 0x5555555594bf *)
not xmm11_0n@uint32 xmm11_0; and xmm0_0@uint32 xmm11_0n xmm13_0;
not xmm11_1n@uint32 xmm11_1; and xmm0_1@uint32 xmm11_1n xmm13_1;
not xmm11_2n@uint32 xmm11_2; and xmm0_2@uint32 xmm11_2n xmm13_2;
not xmm11_3n@uint32 xmm11_3; and xmm0_3@uint32 xmm11_3n xmm13_3;
(* vpand  %xmm12,%xmm11,%xmm4                      #! PC = 0x5555555594c4 *)
and xmm4_0@uint32 xmm11_0 xmm12_0; and xmm4_1@uint32 xmm11_1 xmm12_1;
and xmm4_2@uint32 xmm11_2 xmm12_2; and xmm4_3@uint32 xmm11_3 xmm12_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555594c9 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm15,%xmm14                       #! PC = 0x5555555594cd *)
split xmm14_0 dc xmm15_0 0x2; split xmm14_1 dc xmm15_1 0x2;
split xmm14_2 dc xmm15_2 0x2; split xmm14_3 dc xmm15_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555594d3 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm15,%xmm1                       #! PC = 0x5555555594d7 *)
split dc xmm1_0 xmm15_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm15_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm15_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm15_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x5555555594dd *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm15,%xmm8,%xmm4                       #! PC = 0x5555555594e1 *)
xor xmm4_0@uint32 xmm8_0 xmm15_0; xor xmm4_1@uint32 xmm8_1 xmm15_1;
xor xmm4_2@uint32 xmm8_2 xmm15_2; xor xmm4_3@uint32 xmm8_3 xmm15_3;
(* vpxor  %xmm1,%xmm14,%xmm14                      #! PC = 0x5555555594e6 *)
xor xmm14_0@uint32 xmm14_0 xmm1_0; xor xmm14_1@uint32 xmm14_1 xmm1_1;
xor xmm14_2@uint32 xmm14_2 xmm1_2; xor xmm14_3@uint32 xmm14_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x5555555594ea *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm15,%xmm1                        #! PC = 0x5555555594ee *)
split xmm1_0 dc xmm15_0 0xd; split xmm1_1 dc xmm15_1 0xd;
split xmm1_2 dc xmm15_2 0xd; split xmm1_3 dc xmm15_3 0xd;
(* vpslld $0x13,%xmm15,%xmm2                       #! PC = 0x5555555594f4 *)
split dc xmm2_0 xmm15_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm15_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm15_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm15_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x5555555594fa *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x5555555594fe *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm14,%xmm7                       #! PC = 0x555555559502 *)
xor xmm7_0@uint32 xmm14_0 xmm1_0; xor xmm7_1@uint32 xmm14_1 xmm1_1;
xor xmm7_2@uint32 xmm14_2 xmm1_2; xor xmm7_3@uint32 xmm14_3 xmm1_3;
(* vpsrld $0x16,%xmm15,%xmm1                       #! PC = 0x555555559506 *)
split xmm1_0 dc xmm15_0 0x16; split xmm1_1 dc xmm15_1 0x16;
split xmm1_2 dc xmm15_2 0x16; split xmm1_3 dc xmm15_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555950c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm15,%xmm2                        #! PC = 0x555555559510 *)
split dc xmm2_0 xmm15_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm15_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm15_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm15_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm8,%xmm14                       #! PC = 0x555555559516 *)
xor xmm14_0@uint32 xmm8_0 xmm3_0; xor xmm14_1@uint32 xmm8_1 xmm3_1;
xor xmm14_2@uint32 xmm8_2 xmm3_2; xor xmm14_3@uint32 xmm8_3 xmm3_3;
(* vpaddd %xmm6,%xmm10,%xmm10                      #! PC = 0x55555555951a *)
adds dc xmm10_0 xmm10_0 xmm6_0; adds dc xmm10_1 xmm10_1 xmm6_1;
adds dc xmm10_2 xmm10_2 xmm6_2; adds dc xmm10_3 xmm10_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555951e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559522 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm14,%xmm14                      #! PC = 0x555555559526 *)
adds dc xmm14_0 xmm14_0 xmm6_0; adds dc xmm14_1 xmm14_1 xmm6_1;
adds dc xmm14_2 xmm14_2 xmm6_2; adds dc xmm14_3 xmm14_3 xmm6_3;
(* vpaddd %xmm7,%xmm14,%xmm14                      #! PC = 0x55555555952a *)
adds dc xmm14_0 xmm14_0 xmm7_0; adds dc xmm14_1 xmm14_1 xmm7_1;
adds dc xmm14_2 xmm14_2 xmm7_2; adds dc xmm14_3 xmm14_3 xmm7_3;
(* vmovdqu -0x50(%rax),%xmm6                       #! EA = L0x7fffffffd730; Value = 0x9bef911d9bef911d; PC = 0x55555555952e *)
mov xmm6_0 L0x7fffffffd730; mov xmm6_1 L0x7fffffffd734;
mov xmm6_2 L0x7fffffffd738; mov xmm6_3 L0x7fffffffd73c;
(* vpaddd 0x30(%rax),%xmm5,%xmm5                   #! EA = L0x7fffffffd7b0; Value = 0x60b68ef460b68ef4; PC = 0x555555559533 *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd7b0; adds dc xmm5_1 xmm5_1 L0x7fffffffd7b4;
adds dc xmm5_2 xmm5_2 L0x7fffffffd7b8; adds dc xmm5_3 xmm5_3 L0x7fffffffd7bc;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x555555559538 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x55555555953d *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x555555559542 *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559547 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x55555555954b *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559550 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x555555559554 *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x80(%rax),%xmm0                       #! EA = L0x7fffffffd700; Value = 0x528ad2af528ad2af; PC = 0x555555559559 *)
mov xmm0_0 L0x7fffffffd700; mov xmm0_1 L0x7fffffffd704;
mov xmm0_2 L0x7fffffffd708; mov xmm0_3 L0x7fffffffd70c;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x55555555955e *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559563 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559567 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555956c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559570 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559575 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x555555559579 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x55555555957d *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559582 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559586 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555958b *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555958f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559593 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm10,%xmm7                        #! PC = 0x555555559597 *)
split xmm7_0 dc xmm10_0 0x6; split xmm7_1 dc xmm10_1 0x6;
split xmm7_2 dc xmm10_2 0x6; split xmm7_3 dc xmm10_3 0x6;
(* vpslld $0x1a,%xmm10,%xmm2                       #! PC = 0x55555555959d *)
split dc xmm2_0 xmm10_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm10_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm10_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm10_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,-0x60(%rax)                       #! EA = L0x7fffffffd720; PC = 0x5555555595a3 *)
mov L0x7fffffffd720 xmm5_0; mov L0x7fffffffd724 xmm5_1;
mov L0x7fffffffd728 xmm5_2; mov L0x7fffffffd72c xmm5_3;
(* vpaddd %xmm13,%xmm5,%xmm5                       #! PC = 0x5555555595a8 *)
adds dc xmm5_0 xmm5_0 xmm13_0; adds dc xmm5_1 xmm5_1 xmm13_1;
adds dc xmm5_2 xmm5_2 xmm13_2; adds dc xmm5_3 xmm5_3 xmm13_3;
(* vpsrld $0xb,%xmm10,%xmm1                        #! PC = 0x5555555595ad *)
split xmm1_0 dc xmm10_0 0xb; split xmm1_1 dc xmm10_1 0xb;
split xmm1_2 dc xmm10_2 0xb; split xmm1_3 dc xmm10_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555595b3 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm10,%xmm2                       #! PC = 0x5555555595b7 *)
split dc xmm2_0 xmm10_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm10_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm10_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm10_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x40(%rbp),%xmm5,%xmm5                  #! EA = L0x55555555ce40; Value = 0x4d2c6dfc4d2c6dfc; PC = 0x5555555595bd *)
adds dc xmm5_0 xmm5_0 L0x55555555ce40; adds dc xmm5_1 xmm5_1 L0x55555555ce44;
adds dc xmm5_2 xmm5_2 L0x55555555ce48; adds dc xmm5_3 xmm5_3 L0x55555555ce4c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555595c2 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm10,%xmm1                       #! PC = 0x5555555595c6 *)
split xmm1_0 dc xmm10_0 0x19; split xmm1_1 dc xmm10_1 0x19;
split xmm1_2 dc xmm10_2 0x19; split xmm1_3 dc xmm10_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555595cc *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm10,%xmm2                        #! PC = 0x5555555595d0 *)
split dc xmm2_0 xmm10_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm10_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm10_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm10_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm12,%xmm10,%xmm0                      #! PC = 0x5555555595d6 *)
not xmm10_0n@uint32 xmm10_0; and xmm0_0@uint32 xmm10_0n xmm12_0;
not xmm10_1n@uint32 xmm10_1; and xmm0_1@uint32 xmm10_1n xmm12_1;
not xmm10_2n@uint32 xmm10_2; and xmm0_2@uint32 xmm10_2n xmm12_2;
not xmm10_3n@uint32 xmm10_3; and xmm0_3@uint32 xmm10_3n xmm12_3;
(* vpand  %xmm11,%xmm10,%xmm3                      #! PC = 0x5555555595db *)
and xmm3_0@uint32 xmm10_0 xmm11_0; and xmm3_1@uint32 xmm10_1 xmm11_1;
and xmm3_2@uint32 xmm10_2 xmm11_2; and xmm3_3@uint32 xmm10_3 xmm11_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555595e0 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm14,%xmm13                       #! PC = 0x5555555595e4 *)
split xmm13_0 dc xmm14_0 0x2; split xmm13_1 dc xmm14_1 0x2;
split xmm13_2 dc xmm14_2 0x2; split xmm13_3 dc xmm14_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555595ea *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm14,%xmm1                       #! PC = 0x5555555595ee *)
split dc xmm1_0 xmm14_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm14_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm14_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm14_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x5555555595f4 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm14,%xmm15,%xmm3                      #! PC = 0x5555555595f8 *)
xor xmm3_0@uint32 xmm15_0 xmm14_0; xor xmm3_1@uint32 xmm15_1 xmm14_1;
xor xmm3_2@uint32 xmm15_2 xmm14_2; xor xmm3_3@uint32 xmm15_3 xmm14_3;
(* vpxor  %xmm1,%xmm13,%xmm13                      #! PC = 0x5555555595fd *)
xor xmm13_0@uint32 xmm13_0 xmm1_0; xor xmm13_1@uint32 xmm13_1 xmm1_1;
xor xmm13_2@uint32 xmm13_2 xmm1_2; xor xmm13_3@uint32 xmm13_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559601 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm14,%xmm1                        #! PC = 0x555555559605 *)
split xmm1_0 dc xmm14_0 0xd; split xmm1_1 dc xmm14_1 0xd;
split xmm1_2 dc xmm14_2 0xd; split xmm1_3 dc xmm14_3 0xd;
(* vpslld $0x13,%xmm14,%xmm2                       #! PC = 0x55555555960b *)
split dc xmm2_0 xmm14_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm14_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm14_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm14_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555559611 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555559615 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm13,%xmm7                       #! PC = 0x555555559619 *)
xor xmm7_0@uint32 xmm13_0 xmm1_0; xor xmm7_1@uint32 xmm13_1 xmm1_1;
xor xmm7_2@uint32 xmm13_2 xmm1_2; xor xmm7_3@uint32 xmm13_3 xmm1_3;
(* vpsrld $0x16,%xmm14,%xmm1                       #! PC = 0x55555555961d *)
split xmm1_0 dc xmm14_0 0x16; split xmm1_1 dc xmm14_1 0x16;
split xmm1_2 dc xmm14_2 0x16; split xmm1_3 dc xmm14_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559623 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm14,%xmm2                        #! PC = 0x555555559627 *)
split dc xmm2_0 xmm14_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm14_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm14_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm14_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm15,%xmm13                      #! PC = 0x55555555962d *)
xor xmm13_0@uint32 xmm15_0 xmm4_0; xor xmm13_1@uint32 xmm15_1 xmm4_1;
xor xmm13_2@uint32 xmm15_2 xmm4_2; xor xmm13_3@uint32 xmm15_3 xmm4_3;
(* vpaddd %xmm5,%xmm9,%xmm9                        #! PC = 0x555555559631 *)
adds dc xmm9_0 xmm9_0 xmm5_0; adds dc xmm9_1 xmm9_1 xmm5_1;
adds dc xmm9_2 xmm9_2 xmm5_2; adds dc xmm9_3 xmm9_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559635 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559639 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm13,%xmm13                      #! PC = 0x55555555963d *)
adds dc xmm13_0 xmm13_0 xmm5_0; adds dc xmm13_1 xmm13_1 xmm5_1;
adds dc xmm13_2 xmm13_2 xmm5_2; adds dc xmm13_3 xmm13_3 xmm5_3;
(* vpaddd %xmm7,%xmm13,%xmm13                      #! PC = 0x555555559641 *)
adds dc xmm13_0 xmm13_0 xmm7_0; adds dc xmm13_1 xmm13_1 xmm7_1;
adds dc xmm13_2 xmm13_2 xmm7_2; adds dc xmm13_3 xmm13_3 xmm7_3;
(* vmovdqu -0x40(%rax),%xmm5                       #! EA = L0x7fffffffd740; Value = 0x1335e16d1335e16d; PC = 0x555555559645 *)
mov xmm5_0 L0x7fffffffd740; mov xmm5_1 L0x7fffffffd744;
mov xmm5_2 L0x7fffffffd748; mov xmm5_3 L0x7fffffffd74c;
(* vpaddd 0x40(%rax),%xmm6,%xmm6                   #! EA = L0x7fffffffd7c0; Value = 0x9b87b13d9b87b13d; PC = 0x55555555964a *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd7c0; adds dc xmm6_1 xmm6_1 L0x7fffffffd7c4;
adds dc xmm6_2 xmm6_2 L0x7fffffffd7c8; adds dc xmm6_3 xmm6_3 L0x7fffffffd7cc;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x55555555964f *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x555555559654 *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x555555559659 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555965e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x555555559662 *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559667 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x55555555966b *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x70(%rax),%xmm0                       #! EA = L0x7fffffffd710; Value = 0x3e1198e03e1198e0; PC = 0x555555559670 *)
mov xmm0_0 L0x7fffffffd710; mov xmm0_1 L0x7fffffffd714;
mov xmm0_2 L0x7fffffffd718; mov xmm0_3 L0x7fffffffd71c;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x555555559675 *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555967a *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x55555555967e *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559683 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559687 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555968c *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x555555559690 *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559694 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559699 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x55555555969d *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555596a2 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555596a6 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x5555555596aa *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm9,%xmm7                         #! PC = 0x5555555596ae *)
split xmm7_0 dc xmm9_0 0x6; split xmm7_1 dc xmm9_1 0x6;
split xmm7_2 dc xmm9_2 0x6; split xmm7_3 dc xmm9_3 0x6;
(* vpslld $0x1a,%xmm9,%xmm2                        #! PC = 0x5555555596b4 *)
split dc xmm2_0 xmm9_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm9_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm9_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm9_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,-0x50(%rax)                       #! EA = L0x7fffffffd730; PC = 0x5555555596ba *)
mov L0x7fffffffd730 xmm6_0; mov L0x7fffffffd734 xmm6_1;
mov L0x7fffffffd738 xmm6_2; mov L0x7fffffffd73c xmm6_3;
(* vpaddd %xmm12,%xmm6,%xmm6                       #! PC = 0x5555555596bf *)
adds dc xmm6_0 xmm6_0 xmm12_0; adds dc xmm6_1 xmm6_1 xmm12_1;
adds dc xmm6_2 xmm6_2 xmm12_2; adds dc xmm6_3 xmm6_3 xmm12_3;
(* vpsrld $0xb,%xmm9,%xmm1                         #! PC = 0x5555555596c4 *)
split xmm1_0 dc xmm9_0 0xb; split xmm1_1 dc xmm9_1 0xb;
split xmm1_2 dc xmm9_2 0xb; split xmm1_3 dc xmm9_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555596ca *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm9,%xmm2                        #! PC = 0x5555555596ce *)
split dc xmm2_0 xmm9_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm9_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm9_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm9_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x20(%rbp),%xmm6,%xmm6                  #! EA = L0x55555555ce60; Value = 0x53380d1353380d13; PC = 0x5555555596d4 *)
adds dc xmm6_0 xmm6_0 L0x55555555ce60; adds dc xmm6_1 xmm6_1 L0x55555555ce64;
adds dc xmm6_2 xmm6_2 L0x55555555ce68; adds dc xmm6_3 xmm6_3 L0x55555555ce6c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555596d9 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm9,%xmm1                        #! PC = 0x5555555596dd *)
split xmm1_0 dc xmm9_0 0x19; split xmm1_1 dc xmm9_1 0x19;
split xmm1_2 dc xmm9_2 0x19; split xmm1_3 dc xmm9_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555596e3 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm9,%xmm2                         #! PC = 0x5555555596e7 *)
split dc xmm2_0 xmm9_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm9_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm9_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm9_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm11,%xmm9,%xmm0                       #! PC = 0x5555555596ed *)
not xmm9_0n@uint32 xmm9_0; and xmm0_0@uint32 xmm9_0n xmm11_0;
not xmm9_1n@uint32 xmm9_1; and xmm0_1@uint32 xmm9_1n xmm11_1;
not xmm9_2n@uint32 xmm9_2; and xmm0_2@uint32 xmm9_2n xmm11_2;
not xmm9_3n@uint32 xmm9_3; and xmm0_3@uint32 xmm9_3n xmm11_3;
(* vpand  %xmm10,%xmm9,%xmm4                       #! PC = 0x5555555596f2 *)
and xmm4_0@uint32 xmm9_0 xmm10_0; and xmm4_1@uint32 xmm9_1 xmm10_1;
and xmm4_2@uint32 xmm9_2 xmm10_2; and xmm4_3@uint32 xmm9_3 xmm10_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555596f7 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm13,%xmm12                       #! PC = 0x5555555596fb *)
split xmm12_0 dc xmm13_0 0x2; split xmm12_1 dc xmm13_1 0x2;
split xmm12_2 dc xmm13_2 0x2; split xmm12_3 dc xmm13_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559701 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm13,%xmm1                       #! PC = 0x555555559705 *)
split dc xmm1_0 xmm13_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm13_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm13_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm13_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x55555555970b *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm13,%xmm14,%xmm4                      #! PC = 0x55555555970f *)
xor xmm4_0@uint32 xmm14_0 xmm13_0; xor xmm4_1@uint32 xmm14_1 xmm13_1;
xor xmm4_2@uint32 xmm14_2 xmm13_2; xor xmm4_3@uint32 xmm14_3 xmm13_3;
(* vpxor  %xmm1,%xmm12,%xmm12                      #! PC = 0x555555559714 *)
xor xmm12_0@uint32 xmm12_0 xmm1_0; xor xmm12_1@uint32 xmm12_1 xmm1_1;
xor xmm12_2@uint32 xmm12_2 xmm1_2; xor xmm12_3@uint32 xmm12_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559718 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm13,%xmm1                        #! PC = 0x55555555971c *)
split xmm1_0 dc xmm13_0 0xd; split xmm1_1 dc xmm13_1 0xd;
split xmm1_2 dc xmm13_2 0xd; split xmm1_3 dc xmm13_3 0xd;
(* vpslld $0x13,%xmm13,%xmm2                       #! PC = 0x555555559722 *)
split dc xmm2_0 xmm13_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm13_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm13_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm13_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x555555559728 *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x55555555972c *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm12,%xmm7                       #! PC = 0x555555559730 *)
xor xmm7_0@uint32 xmm12_0 xmm1_0; xor xmm7_1@uint32 xmm12_1 xmm1_1;
xor xmm7_2@uint32 xmm12_2 xmm1_2; xor xmm7_3@uint32 xmm12_3 xmm1_3;
(* vpsrld $0x16,%xmm13,%xmm1                       #! PC = 0x555555559734 *)
split xmm1_0 dc xmm13_0 0x16; split xmm1_1 dc xmm13_1 0x16;
split xmm1_2 dc xmm13_2 0x16; split xmm1_3 dc xmm13_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555973a *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm13,%xmm2                        #! PC = 0x55555555973e *)
split dc xmm2_0 xmm13_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm13_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm13_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm13_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm14,%xmm12                      #! PC = 0x555555559744 *)
xor xmm12_0@uint32 xmm14_0 xmm3_0; xor xmm12_1@uint32 xmm14_1 xmm3_1;
xor xmm12_2@uint32 xmm14_2 xmm3_2; xor xmm12_3@uint32 xmm14_3 xmm3_3;
(* vpaddd %xmm6,%xmm8,%xmm8                        #! PC = 0x555555559748 *)
adds dc xmm8_0 xmm8_0 xmm6_0; adds dc xmm8_1 xmm8_1 xmm6_1;
adds dc xmm8_2 xmm8_2 xmm6_2; adds dc xmm8_3 xmm8_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555974c *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559750 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm12,%xmm12                      #! PC = 0x555555559754 *)
adds dc xmm12_0 xmm12_0 xmm6_0; adds dc xmm12_1 xmm12_1 xmm6_1;
adds dc xmm12_2 xmm12_2 xmm6_2; adds dc xmm12_3 xmm12_3 xmm6_3;
(* vpaddd %xmm7,%xmm12,%xmm12                      #! PC = 0x555555559758 *)
adds dc xmm12_0 xmm12_0 xmm7_0; adds dc xmm12_1 xmm12_1 xmm7_1;
adds dc xmm12_2 xmm12_2 xmm7_2; adds dc xmm12_3 xmm12_3 xmm7_3;
(* vmovdqu -0x30(%rax),%xmm6                       #! EA = L0x7fffffffd750; Value = 0xfa8fad31fa8fad31; PC = 0x55555555975c *)
mov xmm6_0 L0x7fffffffd750; mov xmm6_1 L0x7fffffffd754;
mov xmm6_2 L0x7fffffffd758; mov xmm6_3 L0x7fffffffd75c;
(* vpaddd 0x50(%rax),%xmm5,%xmm5                   #! EA = L0x7fffffffd7d0; Value = 0x261e0138261e0138; PC = 0x555555559761 *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd7d0; adds dc xmm5_1 xmm5_1 L0x7fffffffd7d4;
adds dc xmm5_2 xmm5_2 L0x7fffffffd7d8; adds dc xmm5_3 xmm5_3 L0x7fffffffd7dc;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x555555559766 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x55555555976b *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x555555559770 *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559775 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x555555559779 *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555977e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x555555559782 *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x60(%rax),%xmm0                       #! EA = L0x7fffffffd720; Value = 0xc5b05ff6c5b05ff6; PC = 0x555555559787 *)
mov xmm0_0 L0x7fffffffd720; mov xmm0_1 L0x7fffffffd724;
mov xmm0_2 L0x7fffffffd728; mov xmm0_3 L0x7fffffffd72c;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x55555555978c *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559791 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559795 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555979a *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x55555555979e *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x5555555597a3 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x5555555597a7 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x5555555597ab *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555597b0 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x5555555597b4 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555597b9 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555597bd *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x5555555597c1 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm8,%xmm7                         #! PC = 0x5555555597c5 *)
split xmm7_0 dc xmm8_0 0x6; split xmm7_1 dc xmm8_1 0x6;
split xmm7_2 dc xmm8_2 0x6; split xmm7_3 dc xmm8_3 0x6;
(* vpslld $0x1a,%xmm8,%xmm2                        #! PC = 0x5555555597cb *)
split dc xmm2_0 xmm8_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm8_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm8_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm8_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,-0x40(%rax)                       #! EA = L0x7fffffffd740; PC = 0x5555555597d1 *)
mov L0x7fffffffd740 xmm5_0; mov L0x7fffffffd744 xmm5_1;
mov L0x7fffffffd748 xmm5_2; mov L0x7fffffffd74c xmm5_3;
(* vpaddd %xmm11,%xmm5,%xmm5                       #! PC = 0x5555555597d6 *)
adds dc xmm5_0 xmm5_0 xmm11_0; adds dc xmm5_1 xmm5_1 xmm11_1;
adds dc xmm5_2 xmm5_2 xmm11_2; adds dc xmm5_3 xmm5_3 xmm11_3;
(* vpsrld $0xb,%xmm8,%xmm1                         #! PC = 0x5555555597db *)
split xmm1_0 dc xmm8_0 0xb; split xmm1_1 dc xmm8_1 0xb;
split xmm1_2 dc xmm8_2 0xb; split xmm1_3 dc xmm8_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555597e1 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm8,%xmm2                        #! PC = 0x5555555597e5 *)
split dc xmm2_0 xmm8_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm8_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm8_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm8_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x0(%rbp),%xmm5,%xmm5                    #! EA = L0x55555555ce80; Value = 0x650a7354650a7354; PC = 0x5555555597eb *)
adds dc xmm5_0 xmm5_0 L0x55555555ce80; adds dc xmm5_1 xmm5_1 L0x55555555ce84;
adds dc xmm5_2 xmm5_2 L0x55555555ce88; adds dc xmm5_3 xmm5_3 L0x55555555ce8c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555597f0 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm8,%xmm1                        #! PC = 0x5555555597f4 *)
split xmm1_0 dc xmm8_0 0x19; split xmm1_1 dc xmm8_1 0x19;
split xmm1_2 dc xmm8_2 0x19; split xmm1_3 dc xmm8_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555597fa *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm8,%xmm2                         #! PC = 0x5555555597fe *)
split dc xmm2_0 xmm8_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm8_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm8_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm8_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm10,%xmm8,%xmm0                       #! PC = 0x555555559804 *)
not xmm8_0n@uint32 xmm8_0; and xmm0_0@uint32 xmm8_0n xmm10_0;
not xmm8_1n@uint32 xmm8_1; and xmm0_1@uint32 xmm8_1n xmm10_1;
not xmm8_2n@uint32 xmm8_2; and xmm0_2@uint32 xmm8_2n xmm10_2;
not xmm8_3n@uint32 xmm8_3; and xmm0_3@uint32 xmm8_3n xmm10_3;
(* vpand  %xmm9,%xmm8,%xmm3                        #! PC = 0x555555559809 *)
and xmm3_0@uint32 xmm8_0 xmm9_0; and xmm3_1@uint32 xmm8_1 xmm9_1;
and xmm3_2@uint32 xmm8_2 xmm9_2; and xmm3_3@uint32 xmm8_3 xmm9_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555980e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm12,%xmm11                       #! PC = 0x555555559812 *)
split xmm11_0 dc xmm12_0 0x2; split xmm11_1 dc xmm12_1 0x2;
split xmm11_2 dc xmm12_2 0x2; split xmm11_3 dc xmm12_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559818 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm12,%xmm1                       #! PC = 0x55555555981c *)
split dc xmm1_0 xmm12_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm12_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm12_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm12_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x555555559822 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm12,%xmm13,%xmm3                      #! PC = 0x555555559826 *)
xor xmm3_0@uint32 xmm13_0 xmm12_0; xor xmm3_1@uint32 xmm13_1 xmm12_1;
xor xmm3_2@uint32 xmm13_2 xmm12_2; xor xmm3_3@uint32 xmm13_3 xmm12_3;
(* vpxor  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555555982b *)
xor xmm11_0@uint32 xmm11_0 xmm1_0; xor xmm11_1@uint32 xmm11_1 xmm1_1;
xor xmm11_2@uint32 xmm11_2 xmm1_2; xor xmm11_3@uint32 xmm11_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555982f *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm12,%xmm1                        #! PC = 0x555555559833 *)
split xmm1_0 dc xmm12_0 0xd; split xmm1_1 dc xmm12_1 0xd;
split xmm1_2 dc xmm12_2 0xd; split xmm1_3 dc xmm12_3 0xd;
(* vpslld $0x13,%xmm12,%xmm2                       #! PC = 0x555555559839 *)
split dc xmm2_0 xmm12_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm12_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm12_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm12_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x55555555983f *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555559843 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm11,%xmm7                       #! PC = 0x555555559847 *)
xor xmm7_0@uint32 xmm11_0 xmm1_0; xor xmm7_1@uint32 xmm11_1 xmm1_1;
xor xmm7_2@uint32 xmm11_2 xmm1_2; xor xmm7_3@uint32 xmm11_3 xmm1_3;
(* vpsrld $0x16,%xmm12,%xmm1                       #! PC = 0x55555555984b *)
split xmm1_0 dc xmm12_0 0x16; split xmm1_1 dc xmm12_1 0x16;
split xmm1_2 dc xmm12_2 0x16; split xmm1_3 dc xmm12_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559851 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm12,%xmm2                        #! PC = 0x555555559855 *)
split dc xmm2_0 xmm12_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm12_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm12_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm12_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm13,%xmm11                      #! PC = 0x55555555985b *)
xor xmm11_0@uint32 xmm13_0 xmm4_0; xor xmm11_1@uint32 xmm13_1 xmm4_1;
xor xmm11_2@uint32 xmm13_2 xmm4_2; xor xmm11_3@uint32 xmm13_3 xmm4_3;
(* vpaddd %xmm5,%xmm15,%xmm15                      #! PC = 0x55555555985f *)
adds dc xmm15_0 xmm15_0 xmm5_0; adds dc xmm15_1 xmm15_1 xmm5_1;
adds dc xmm15_2 xmm15_2 xmm5_2; adds dc xmm15_3 xmm15_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559863 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559867 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm11,%xmm11                      #! PC = 0x55555555986b *)
adds dc xmm11_0 xmm11_0 xmm5_0; adds dc xmm11_1 xmm11_1 xmm5_1;
adds dc xmm11_2 xmm11_2 xmm5_2; adds dc xmm11_3 xmm11_3 xmm5_3;
(* vpaddd %xmm7,%xmm11,%xmm11                      #! PC = 0x55555555986f *)
adds dc xmm11_0 xmm11_0 xmm7_0; adds dc xmm11_1 xmm11_1 xmm7_1;
adds dc xmm11_2 xmm11_2 xmm7_2; adds dc xmm11_3 xmm11_3 xmm7_3;
(* vmovdqu -0x20(%rax),%xmm5                       #! EA = L0x7fffffffd760; Value = 0x1b329dd61b329dd6; PC = 0x555555559873 *)
mov xmm5_0 L0x7fffffffd760; mov xmm5_1 L0x7fffffffd764;
mov xmm5_2 L0x7fffffffd768; mov xmm5_3 L0x7fffffffd76c;
(* vpaddd 0x60(%rax),%xmm6,%xmm6                   #! EA = L0x7fffffffd7e0; Value = 0x14b7a3be14b7a3be; PC = 0x555555559878 *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd7e0; adds dc xmm6_1 xmm6_1 L0x7fffffffd7e4;
adds dc xmm6_2 xmm6_2 L0x7fffffffd7e8; adds dc xmm6_3 xmm6_3 L0x7fffffffd7ec;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x55555555987d *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x555555559882 *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x555555559887 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555988c *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x555555559890 *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559895 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x555555559899 *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x50(%rax),%xmm0                       #! EA = L0x7fffffffd730; Value = 0xd6f67228d6f67228; PC = 0x55555555989e *)
mov xmm0_0 L0x7fffffffd730; mov xmm0_1 L0x7fffffffd734;
mov xmm0_2 L0x7fffffffd738; mov xmm0_3 L0x7fffffffd73c;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x5555555598a3 *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555598a8 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x5555555598ac *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555598b1 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x5555555598b5 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x5555555598ba *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x5555555598be *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x5555555598c2 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555598c7 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x5555555598cb *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555598d0 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555598d4 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x5555555598d8 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm15,%xmm7                        #! PC = 0x5555555598dc *)
split xmm7_0 dc xmm15_0 0x6; split xmm7_1 dc xmm15_1 0x6;
split xmm7_2 dc xmm15_2 0x6; split xmm7_3 dc xmm15_3 0x6;
(* vpslld $0x1a,%xmm15,%xmm2                       #! PC = 0x5555555598e2 *)
split dc xmm2_0 xmm15_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm15_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm15_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm15_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,-0x30(%rax)                       #! EA = L0x7fffffffd750; PC = 0x5555555598e8 *)
mov L0x7fffffffd750 xmm6_0; mov L0x7fffffffd754 xmm6_1;
mov L0x7fffffffd758 xmm6_2; mov L0x7fffffffd75c xmm6_3;
(* vpaddd %xmm10,%xmm6,%xmm6                       #! PC = 0x5555555598ed *)
adds dc xmm6_0 xmm6_0 xmm10_0; adds dc xmm6_1 xmm6_1 xmm10_1;
adds dc xmm6_2 xmm6_2 xmm10_2; adds dc xmm6_3 xmm6_3 xmm10_3;
(* vpsrld $0xb,%xmm15,%xmm1                        #! PC = 0x5555555598f2 *)
split xmm1_0 dc xmm15_0 0xb; split xmm1_1 dc xmm15_1 0xb;
split xmm1_2 dc xmm15_2 0xb; split xmm1_3 dc xmm15_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555598f8 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm15,%xmm2                       #! PC = 0x5555555598fc *)
split dc xmm2_0 xmm15_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm15_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm15_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm15_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x20(%rbp),%xmm6,%xmm6                   #! EA = L0x55555555cea0; Value = 0x766a0abb766a0abb; PC = 0x555555559902 *)
adds dc xmm6_0 xmm6_0 L0x55555555cea0; adds dc xmm6_1 xmm6_1 L0x55555555cea4;
adds dc xmm6_2 xmm6_2 L0x55555555cea8; adds dc xmm6_3 xmm6_3 L0x55555555ceac;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559907 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm15,%xmm1                       #! PC = 0x55555555990b *)
split xmm1_0 dc xmm15_0 0x19; split xmm1_1 dc xmm15_1 0x19;
split xmm1_2 dc xmm15_2 0x19; split xmm1_3 dc xmm15_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559911 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm15,%xmm2                        #! PC = 0x555555559915 *)
split dc xmm2_0 xmm15_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm15_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm15_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm15_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm9,%xmm15,%xmm0                       #! PC = 0x55555555991b *)
not xmm15_0n@uint32 xmm15_0; and xmm0_0@uint32 xmm15_0n xmm9_0;
not xmm15_1n@uint32 xmm15_1; and xmm0_1@uint32 xmm15_1n xmm9_1;
not xmm15_2n@uint32 xmm15_2; and xmm0_2@uint32 xmm15_2n xmm9_2;
not xmm15_3n@uint32 xmm15_3; and xmm0_3@uint32 xmm15_3n xmm9_3;
(* vpand  %xmm8,%xmm15,%xmm4                       #! PC = 0x555555559920 *)
and xmm4_0@uint32 xmm15_0 xmm8_0; and xmm4_1@uint32 xmm15_1 xmm8_1;
and xmm4_2@uint32 xmm15_2 xmm8_2; and xmm4_3@uint32 xmm15_3 xmm8_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559925 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm11,%xmm10                       #! PC = 0x555555559929 *)
split xmm10_0 dc xmm11_0 0x2; split xmm10_1 dc xmm11_1 0x2;
split xmm10_2 dc xmm11_2 0x2; split xmm10_3 dc xmm11_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555992f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm11,%xmm1                       #! PC = 0x555555559933 *)
split dc xmm1_0 xmm11_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm11_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm11_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm11_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x555555559939 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm11,%xmm12,%xmm4                      #! PC = 0x55555555993d *)
xor xmm4_0@uint32 xmm12_0 xmm11_0; xor xmm4_1@uint32 xmm12_1 xmm11_1;
xor xmm4_2@uint32 xmm12_2 xmm11_2; xor xmm4_3@uint32 xmm12_3 xmm11_3;
(* vpxor  %xmm1,%xmm10,%xmm10                      #! PC = 0x555555559942 *)
xor xmm10_0@uint32 xmm10_0 xmm1_0; xor xmm10_1@uint32 xmm10_1 xmm1_1;
xor xmm10_2@uint32 xmm10_2 xmm1_2; xor xmm10_3@uint32 xmm10_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559946 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm11,%xmm1                        #! PC = 0x55555555994a *)
split xmm1_0 dc xmm11_0 0xd; split xmm1_1 dc xmm11_1 0xd;
split xmm1_2 dc xmm11_2 0xd; split xmm1_3 dc xmm11_3 0xd;
(* vpslld $0x13,%xmm11,%xmm2                       #! PC = 0x555555559950 *)
split dc xmm2_0 xmm11_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm11_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm11_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm11_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x555555559956 *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x55555555995a *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm10,%xmm7                       #! PC = 0x55555555995e *)
xor xmm7_0@uint32 xmm10_0 xmm1_0; xor xmm7_1@uint32 xmm10_1 xmm1_1;
xor xmm7_2@uint32 xmm10_2 xmm1_2; xor xmm7_3@uint32 xmm10_3 xmm1_3;
(* vpsrld $0x16,%xmm11,%xmm1                       #! PC = 0x555555559962 *)
split xmm1_0 dc xmm11_0 0x16; split xmm1_1 dc xmm11_1 0x16;
split xmm1_2 dc xmm11_2 0x16; split xmm1_3 dc xmm11_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559968 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm11,%xmm2                        #! PC = 0x55555555996c *)
split dc xmm2_0 xmm11_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm11_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm11_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm11_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm12,%xmm10                      #! PC = 0x555555559972 *)
xor xmm10_0@uint32 xmm12_0 xmm3_0; xor xmm10_1@uint32 xmm12_1 xmm3_1;
xor xmm10_2@uint32 xmm12_2 xmm3_2; xor xmm10_3@uint32 xmm12_3 xmm3_3;
(* vpaddd %xmm6,%xmm14,%xmm14                      #! PC = 0x555555559976 *)
adds dc xmm14_0 xmm14_0 xmm6_0; adds dc xmm14_1 xmm14_1 xmm6_1;
adds dc xmm14_2 xmm14_2 xmm6_2; adds dc xmm14_3 xmm14_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555997a *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555997e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm10,%xmm10                      #! PC = 0x555555559982 *)
adds dc xmm10_0 xmm10_0 xmm6_0; adds dc xmm10_1 xmm10_1 xmm6_1;
adds dc xmm10_2 xmm10_2 xmm6_2; adds dc xmm10_3 xmm10_3 xmm6_3;
(* vpaddd %xmm7,%xmm10,%xmm10                      #! PC = 0x555555559986 *)
adds dc xmm10_0 xmm10_0 xmm7_0; adds dc xmm10_1 xmm10_1 xmm7_1;
adds dc xmm10_2 xmm10_2 xmm7_2; adds dc xmm10_3 xmm10_3 xmm7_3;
(* vmovdqu -0x10(%rax),%xmm6                       #! EA = L0x7fffffffd770; Value = 0x776eb770776eb770; PC = 0x55555555998a *)
mov xmm6_0 L0x7fffffffd770; mov xmm6_1 L0x7fffffffd774;
mov xmm6_2 L0x7fffffffd778; mov xmm6_3 L0x7fffffffd77c;
(* vpaddd 0x70(%rax),%xmm5,%xmm5                   #! EA = L0x7fffffffd7f0; Value = 0xb7ff4640b7ff4640; PC = 0x55555555998f *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd7f0; adds dc xmm5_1 xmm5_1 L0x7fffffffd7f4;
adds dc xmm5_2 xmm5_2 L0x7fffffffd7f8; adds dc xmm5_3 xmm5_3 L0x7fffffffd7fc;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x555555559994 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x555555559999 *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x55555555999e *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555599a3 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x5555555599a7 *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555599ac *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x5555555599b0 *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x40(%rax),%xmm0                       #! EA = L0x7fffffffd740; Value = 0xf5714d7df5714d7d; PC = 0x5555555599b5 *)
mov xmm0_0 L0x7fffffffd740; mov xmm0_1 L0x7fffffffd744;
mov xmm0_2 L0x7fffffffd748; mov xmm0_3 L0x7fffffffd74c;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x5555555599ba *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555599bf *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x5555555599c3 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555599c8 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x5555555599cc *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x5555555599d1 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x5555555599d5 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x5555555599d9 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555599de *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x5555555599e2 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555599e7 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555599eb *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x5555555599ef *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm14,%xmm7                        #! PC = 0x5555555599f3 *)
split xmm7_0 dc xmm14_0 0x6; split xmm7_1 dc xmm14_1 0x6;
split xmm7_2 dc xmm14_2 0x6; split xmm7_3 dc xmm14_3 0x6;
(* vpslld $0x1a,%xmm14,%xmm2                       #! PC = 0x5555555599f9 *)
split dc xmm2_0 xmm14_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm14_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm14_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm14_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,-0x20(%rax)                       #! EA = L0x7fffffffd760; PC = 0x5555555599ff *)
mov L0x7fffffffd760 xmm5_0; mov L0x7fffffffd764 xmm5_1;
mov L0x7fffffffd768 xmm5_2; mov L0x7fffffffd76c xmm5_3;
(* vpaddd %xmm9,%xmm5,%xmm5                        #! PC = 0x555555559a04 *)
adds dc xmm5_0 xmm5_0 xmm9_0; adds dc xmm5_1 xmm5_1 xmm9_1;
adds dc xmm5_2 xmm5_2 xmm9_2; adds dc xmm5_3 xmm5_3 xmm9_3;
(* vpsrld $0xb,%xmm14,%xmm1                        #! PC = 0x555555559a09 *)
split xmm1_0 dc xmm14_0 0xb; split xmm1_1 dc xmm14_1 0xb;
split xmm1_2 dc xmm14_2 0xb; split xmm1_3 dc xmm14_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559a0f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm14,%xmm2                       #! PC = 0x555555559a13 *)
split dc xmm2_0 xmm14_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm14_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm14_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm14_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x40(%rbp),%xmm5,%xmm5                   #! EA = L0x55555555cec0; Value = 0x81c2c92e81c2c92e; PC = 0x555555559a19 *)
adds dc xmm5_0 xmm5_0 L0x55555555cec0; adds dc xmm5_1 xmm5_1 L0x55555555cec4;
adds dc xmm5_2 xmm5_2 L0x55555555cec8; adds dc xmm5_3 xmm5_3 L0x55555555cecc;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559a1e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm14,%xmm1                       #! PC = 0x555555559a22 *)
split xmm1_0 dc xmm14_0 0x19; split xmm1_1 dc xmm14_1 0x19;
split xmm1_2 dc xmm14_2 0x19; split xmm1_3 dc xmm14_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559a28 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm14,%xmm2                        #! PC = 0x555555559a2c *)
split dc xmm2_0 xmm14_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm14_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm14_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm14_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm8,%xmm14,%xmm0                       #! PC = 0x555555559a32 *)
not xmm14_0n@uint32 xmm14_0; and xmm0_0@uint32 xmm14_0n xmm8_0;
not xmm14_1n@uint32 xmm14_1; and xmm0_1@uint32 xmm14_1n xmm8_1;
not xmm14_2n@uint32 xmm14_2; and xmm0_2@uint32 xmm14_2n xmm8_2;
not xmm14_3n@uint32 xmm14_3; and xmm0_3@uint32 xmm14_3n xmm8_3;
(* vpand  %xmm15,%xmm14,%xmm3                      #! PC = 0x555555559a37 *)
and xmm3_0@uint32 xmm14_0 xmm15_0; and xmm3_1@uint32 xmm14_1 xmm15_1;
and xmm3_2@uint32 xmm14_2 xmm15_2; and xmm3_3@uint32 xmm14_3 xmm15_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559a3c *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm10,%xmm9                        #! PC = 0x555555559a40 *)
split xmm9_0 dc xmm10_0 0x2; split xmm9_1 dc xmm10_1 0x2;
split xmm9_2 dc xmm10_2 0x2; split xmm9_3 dc xmm10_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559a46 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm10,%xmm1                       #! PC = 0x555555559a4a *)
split dc xmm1_0 xmm10_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm10_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm10_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm10_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x555555559a50 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm10,%xmm11,%xmm3                      #! PC = 0x555555559a54 *)
xor xmm3_0@uint32 xmm11_0 xmm10_0; xor xmm3_1@uint32 xmm11_1 xmm10_1;
xor xmm3_2@uint32 xmm11_2 xmm10_2; xor xmm3_3@uint32 xmm11_3 xmm10_3;
(* vpxor  %xmm1,%xmm9,%xmm9                        #! PC = 0x555555559a59 *)
xor xmm9_0@uint32 xmm9_0 xmm1_0; xor xmm9_1@uint32 xmm9_1 xmm1_1;
xor xmm9_2@uint32 xmm9_2 xmm1_2; xor xmm9_3@uint32 xmm9_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559a5d *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm10,%xmm1                        #! PC = 0x555555559a61 *)
split xmm1_0 dc xmm10_0 0xd; split xmm1_1 dc xmm10_1 0xd;
split xmm1_2 dc xmm10_2 0xd; split xmm1_3 dc xmm10_3 0xd;
(* vpslld $0x13,%xmm10,%xmm2                       #! PC = 0x555555559a67 *)
split dc xmm2_0 xmm10_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm10_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm10_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm10_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555559a6d *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555559a71 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm9,%xmm7                        #! PC = 0x555555559a75 *)
xor xmm7_0@uint32 xmm9_0 xmm1_0; xor xmm7_1@uint32 xmm9_1 xmm1_1;
xor xmm7_2@uint32 xmm9_2 xmm1_2; xor xmm7_3@uint32 xmm9_3 xmm1_3;
(* vpsrld $0x16,%xmm10,%xmm1                       #! PC = 0x555555559a79 *)
split xmm1_0 dc xmm10_0 0x16; split xmm1_1 dc xmm10_1 0x16;
split xmm1_2 dc xmm10_2 0x16; split xmm1_3 dc xmm10_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559a7f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm10,%xmm2                        #! PC = 0x555555559a83 *)
split dc xmm2_0 xmm10_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm10_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm10_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm10_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm11,%xmm9                       #! PC = 0x555555559a89 *)
xor xmm9_0@uint32 xmm11_0 xmm4_0; xor xmm9_1@uint32 xmm11_1 xmm4_1;
xor xmm9_2@uint32 xmm11_2 xmm4_2; xor xmm9_3@uint32 xmm11_3 xmm4_3;
(* vpaddd %xmm5,%xmm13,%xmm13                      #! PC = 0x555555559a8d *)
adds dc xmm13_0 xmm13_0 xmm5_0; adds dc xmm13_1 xmm13_1 xmm5_1;
adds dc xmm13_2 xmm13_2 xmm5_2; adds dc xmm13_3 xmm13_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559a91 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559a95 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm9,%xmm9                        #! PC = 0x555555559a99 *)
adds dc xmm9_0 xmm9_0 xmm5_0; adds dc xmm9_1 xmm9_1 xmm5_1;
adds dc xmm9_2 xmm9_2 xmm5_2; adds dc xmm9_3 xmm9_3 xmm5_3;
(* vpaddd %xmm7,%xmm9,%xmm9                        #! PC = 0x555555559a9d *)
adds dc xmm9_0 xmm9_0 xmm7_0; adds dc xmm9_1 xmm9_1 xmm7_1;
adds dc xmm9_2 xmm9_2 xmm7_2; adds dc xmm9_3 xmm9_3 xmm7_3;
(* vmovdqu (%rax),%xmm5                            #! EA = L0x7fffffffd780; Value = 0xfb56e45bfb56e45b; PC = 0x555555559aa1 *)
mov xmm5_0 L0x7fffffffd780; mov xmm5_1 L0x7fffffffd784;
mov xmm5_2 L0x7fffffffd788; mov xmm5_3 L0x7fffffffd78c;
(* vpaddd -0x80(%rax),%xmm6,%xmm6                  #! EA = L0x7fffffffd700; Value = 0x528ad2af528ad2af; PC = 0x555555559aa5 *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd700; adds dc xmm6_1 xmm6_1 L0x7fffffffd704;
adds dc xmm6_2 xmm6_2 L0x7fffffffd708; adds dc xmm6_3 xmm6_3 L0x7fffffffd70c;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x555555559aaa *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x555555559aaf *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x555555559ab4 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559ab9 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x555555559abd *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559ac2 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x555555559ac6 *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x30(%rax),%xmm0                       #! EA = L0x7fffffffd750; Value = 0x0ed1cd750ed1cd75; PC = 0x555555559acb *)
mov xmm0_0 L0x7fffffffd750; mov xmm0_1 L0x7fffffffd754;
mov xmm0_2 L0x7fffffffd758; mov xmm0_3 L0x7fffffffd75c;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x555555559ad0 *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559ad5 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559ad9 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559ade *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559ae2 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559ae7 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x555555559aeb *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559aef *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559af4 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559af8 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559afd *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559b01 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559b05 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm13,%xmm7                        #! PC = 0x555555559b09 *)
split xmm7_0 dc xmm13_0 0x6; split xmm7_1 dc xmm13_1 0x6;
split xmm7_2 dc xmm13_2 0x6; split xmm7_3 dc xmm13_3 0x6;
(* vpslld $0x1a,%xmm13,%xmm2                       #! PC = 0x555555559b0f *)
split dc xmm2_0 xmm13_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm13_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm13_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm13_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,-0x10(%rax)                       #! EA = L0x7fffffffd770; PC = 0x555555559b15 *)
mov L0x7fffffffd770 xmm6_0; mov L0x7fffffffd774 xmm6_1;
mov L0x7fffffffd778 xmm6_2; mov L0x7fffffffd77c xmm6_3;
(* vpaddd %xmm8,%xmm6,%xmm6                        #! PC = 0x555555559b1a *)
adds dc xmm6_0 xmm6_0 xmm8_0; adds dc xmm6_1 xmm6_1 xmm8_1;
adds dc xmm6_2 xmm6_2 xmm8_2; adds dc xmm6_3 xmm6_3 xmm8_3;
(* vpsrld $0xb,%xmm13,%xmm1                        #! PC = 0x555555559b1f *)
split xmm1_0 dc xmm13_0 0xb; split xmm1_1 dc xmm13_1 0xb;
split xmm1_2 dc xmm13_2 0xb; split xmm1_3 dc xmm13_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559b25 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm13,%xmm2                       #! PC = 0x555555559b29 *)
split dc xmm2_0 xmm13_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm13_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm13_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm13_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x60(%rbp),%xmm6,%xmm6                   #! EA = L0x55555555cee0; Value = 0x92722c8592722c85; PC = 0x555555559b2f *)
adds dc xmm6_0 xmm6_0 L0x55555555cee0; adds dc xmm6_1 xmm6_1 L0x55555555cee4;
adds dc xmm6_2 xmm6_2 L0x55555555cee8; adds dc xmm6_3 xmm6_3 L0x55555555ceec;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559b34 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm13,%xmm1                       #! PC = 0x555555559b38 *)
split xmm1_0 dc xmm13_0 0x19; split xmm1_1 dc xmm13_1 0x19;
split xmm1_2 dc xmm13_2 0x19; split xmm1_3 dc xmm13_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559b3e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm13,%xmm2                        #! PC = 0x555555559b42 *)
split dc xmm2_0 xmm13_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm13_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm13_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm13_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm15,%xmm13,%xmm0                      #! PC = 0x555555559b48 *)
not xmm13_0n@uint32 xmm13_0; and xmm0_0@uint32 xmm13_0n xmm15_0;
not xmm13_1n@uint32 xmm13_1; and xmm0_1@uint32 xmm13_1n xmm15_1;
not xmm13_2n@uint32 xmm13_2; and xmm0_2@uint32 xmm13_2n xmm15_2;
not xmm13_3n@uint32 xmm13_3; and xmm0_3@uint32 xmm13_3n xmm15_3;
(* vpand  %xmm14,%xmm13,%xmm4                      #! PC = 0x555555559b4d *)
and xmm4_0@uint32 xmm13_0 xmm14_0; and xmm4_1@uint32 xmm13_1 xmm14_1;
and xmm4_2@uint32 xmm13_2 xmm14_2; and xmm4_3@uint32 xmm13_3 xmm14_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559b52 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm9,%xmm8                         #! PC = 0x555555559b56 *)
split xmm8_0 dc xmm9_0 0x2; split xmm8_1 dc xmm9_1 0x2;
split xmm8_2 dc xmm9_2 0x2; split xmm8_3 dc xmm9_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559b5c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm9,%xmm1                        #! PC = 0x555555559b60 *)
split dc xmm1_0 xmm9_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm9_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm9_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm9_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x555555559b66 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm9,%xmm10,%xmm4                       #! PC = 0x555555559b6a *)
xor xmm4_0@uint32 xmm10_0 xmm9_0; xor xmm4_1@uint32 xmm10_1 xmm9_1;
xor xmm4_2@uint32 xmm10_2 xmm9_2; xor xmm4_3@uint32 xmm10_3 xmm9_3;
(* vpxor  %xmm1,%xmm8,%xmm8                        #! PC = 0x555555559b6f *)
xor xmm8_0@uint32 xmm8_0 xmm1_0; xor xmm8_1@uint32 xmm8_1 xmm1_1;
xor xmm8_2@uint32 xmm8_2 xmm1_2; xor xmm8_3@uint32 xmm8_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559b73 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm9,%xmm1                         #! PC = 0x555555559b77 *)
split xmm1_0 dc xmm9_0 0xd; split xmm1_1 dc xmm9_1 0xd;
split xmm1_2 dc xmm9_2 0xd; split xmm1_3 dc xmm9_3 0xd;
(* vpslld $0x13,%xmm9,%xmm2                        #! PC = 0x555555559b7d *)
split dc xmm2_0 xmm9_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm9_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm9_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm9_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x555555559b83 *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x555555559b87 *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm8,%xmm7                        #! PC = 0x555555559b8b *)
xor xmm7_0@uint32 xmm8_0 xmm1_0; xor xmm7_1@uint32 xmm8_1 xmm1_1;
xor xmm7_2@uint32 xmm8_2 xmm1_2; xor xmm7_3@uint32 xmm8_3 xmm1_3;
(* vpsrld $0x16,%xmm9,%xmm1                        #! PC = 0x555555559b8f *)
split xmm1_0 dc xmm9_0 0x16; split xmm1_1 dc xmm9_1 0x16;
split xmm1_2 dc xmm9_2 0x16; split xmm1_3 dc xmm9_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559b95 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm9,%xmm2                         #! PC = 0x555555559b99 *)
split dc xmm2_0 xmm9_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm9_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm9_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm9_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm10,%xmm8                       #! PC = 0x555555559b9f *)
xor xmm8_0@uint32 xmm10_0 xmm3_0; xor xmm8_1@uint32 xmm10_1 xmm3_1;
xor xmm8_2@uint32 xmm10_2 xmm3_2; xor xmm8_3@uint32 xmm10_3 xmm3_3;
(* vpaddd %xmm6,%xmm12,%xmm12                      #! PC = 0x555555559ba3 *)
adds dc xmm12_0 xmm12_0 xmm6_0; adds dc xmm12_1 xmm12_1 xmm6_1;
adds dc xmm12_2 xmm12_2 xmm6_2; adds dc xmm12_3 xmm12_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559ba7 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559bab *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm8,%xmm8                        #! PC = 0x555555559baf *)
adds dc xmm8_0 xmm8_0 xmm6_0; adds dc xmm8_1 xmm8_1 xmm6_1;
adds dc xmm8_2 xmm8_2 xmm6_2; adds dc xmm8_3 xmm8_3 xmm6_3;
(* vpaddd %xmm7,%xmm8,%xmm8                        #! PC = 0x555555559bb3 *)
adds dc xmm8_0 xmm8_0 xmm7_0; adds dc xmm8_1 xmm8_1 xmm7_1;
adds dc xmm8_2 xmm8_2 xmm7_2; adds dc xmm8_3 xmm8_3 xmm7_3;
(* add    $0x100,%rbp                              #! PC = 0x555555559bb7 *)
(* add 0x100, rbp *)
nop;
(* vmovdqu 0x10(%rax),%xmm6                        #! EA = L0x7fffffffd790; Value = 0x312675a1312675a1; PC = 0x555555559bbe *)
mov xmm6_0 L0x7fffffffd790; mov xmm6_1 L0x7fffffffd794;
mov xmm6_2 L0x7fffffffd798; mov xmm6_3 L0x7fffffffd79c;
(* vpaddd -0x70(%rax),%xmm5,%xmm5                  #! EA = L0x7fffffffd710; Value = 0x3e1198e03e1198e0; PC = 0x555555559bc3 *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd710; adds dc xmm5_1 xmm5_1 L0x7fffffffd714;
adds dc xmm5_2 xmm5_2 L0x7fffffffd718; adds dc xmm5_3 xmm5_3 L0x7fffffffd71c;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x555555559bc8 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x555555559bcd *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x555555559bd2 *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559bd7 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x555555559bdb *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559be0 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x555555559be4 *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x20(%rax),%xmm0                       #! EA = L0x7fffffffd760; Value = 0xa63d12b6a63d12b6; PC = 0x555555559be9 *)
mov xmm0_0 L0x7fffffffd760; mov xmm0_1 L0x7fffffffd764;
mov xmm0_2 L0x7fffffffd768; mov xmm0_3 L0x7fffffffd76c;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x555555559bee *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559bf3 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559bf7 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559bfc *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559c00 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559c05 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x555555559c09 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559c0d *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559c12 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559c16 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559c1b *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559c1f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559c23 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm12,%xmm7                        #! PC = 0x555555559c27 *)
split xmm7_0 dc xmm12_0 0x6; split xmm7_1 dc xmm12_1 0x6;
split xmm7_2 dc xmm12_2 0x6; split xmm7_3 dc xmm12_3 0x6;
(* vpslld $0x1a,%xmm12,%xmm2                       #! PC = 0x555555559c2d *)
split dc xmm2_0 xmm12_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm12_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm12_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm12_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,(%rax)                            #! EA = L0x7fffffffd780; PC = 0x555555559c33 *)
mov L0x7fffffffd780 xmm5_0; mov L0x7fffffffd784 xmm5_1;
mov L0x7fffffffd788 xmm5_2; mov L0x7fffffffd78c xmm5_3;
(* vpaddd %xmm15,%xmm5,%xmm5                       #! PC = 0x555555559c37 *)
adds dc xmm5_0 xmm5_0 xmm15_0; adds dc xmm5_1 xmm5_1 xmm15_1;
adds dc xmm5_2 xmm5_2 xmm15_2; adds dc xmm5_3 xmm5_3 xmm15_3;
(* vpsrld $0xb,%xmm12,%xmm1                        #! PC = 0x555555559c3c *)
split xmm1_0 dc xmm12_0 0xb; split xmm1_1 dc xmm12_1 0xb;
split xmm1_2 dc xmm12_2 0xb; split xmm1_3 dc xmm12_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559c42 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm12,%xmm2                       #! PC = 0x555555559c46 *)
split dc xmm2_0 xmm12_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm12_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm12_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm12_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x80(%rbp),%xmm5,%xmm5                  #! EA = L0x55555555cf00; Value = 0xa2bfe8a1a2bfe8a1; PC = 0x555555559c4c *)
adds dc xmm5_0 xmm5_0 L0x55555555cf00; adds dc xmm5_1 xmm5_1 L0x55555555cf04;
adds dc xmm5_2 xmm5_2 L0x55555555cf08; adds dc xmm5_3 xmm5_3 L0x55555555cf0c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559c51 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm12,%xmm1                       #! PC = 0x555555559c55 *)
split xmm1_0 dc xmm12_0 0x19; split xmm1_1 dc xmm12_1 0x19;
split xmm1_2 dc xmm12_2 0x19; split xmm1_3 dc xmm12_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559c5b *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm12,%xmm2                        #! PC = 0x555555559c5f *)
split dc xmm2_0 xmm12_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm12_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm12_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm12_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm14,%xmm12,%xmm0                      #! PC = 0x555555559c65 *)
not xmm12_0n@uint32 xmm12_0; and xmm0_0@uint32 xmm12_0n xmm14_0;
not xmm12_1n@uint32 xmm12_1; and xmm0_1@uint32 xmm12_1n xmm14_1;
not xmm12_2n@uint32 xmm12_2; and xmm0_2@uint32 xmm12_2n xmm14_2;
not xmm12_3n@uint32 xmm12_3; and xmm0_3@uint32 xmm12_3n xmm14_3;
(* vpand  %xmm13,%xmm12,%xmm3                      #! PC = 0x555555559c6a *)
and xmm3_0@uint32 xmm12_0 xmm13_0; and xmm3_1@uint32 xmm12_1 xmm13_1;
and xmm3_2@uint32 xmm12_2 xmm13_2; and xmm3_3@uint32 xmm12_3 xmm13_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559c6f *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm8,%xmm15                        #! PC = 0x555555559c73 *)
split xmm15_0 dc xmm8_0 0x2; split xmm15_1 dc xmm8_1 0x2;
split xmm15_2 dc xmm8_2 0x2; split xmm15_3 dc xmm8_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559c79 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm8,%xmm1                        #! PC = 0x555555559c7d *)
split dc xmm1_0 xmm8_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm8_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm8_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm8_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x555555559c83 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm8,%xmm9,%xmm3                        #! PC = 0x555555559c87 *)
xor xmm3_0@uint32 xmm9_0 xmm8_0; xor xmm3_1@uint32 xmm9_1 xmm8_1;
xor xmm3_2@uint32 xmm9_2 xmm8_2; xor xmm3_3@uint32 xmm9_3 xmm8_3;
(* vpxor  %xmm1,%xmm15,%xmm15                      #! PC = 0x555555559c8c *)
xor xmm15_0@uint32 xmm15_0 xmm1_0; xor xmm15_1@uint32 xmm15_1 xmm1_1;
xor xmm15_2@uint32 xmm15_2 xmm1_2; xor xmm15_3@uint32 xmm15_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559c90 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm8,%xmm1                         #! PC = 0x555555559c94 *)
split xmm1_0 dc xmm8_0 0xd; split xmm1_1 dc xmm8_1 0xd;
split xmm1_2 dc xmm8_2 0xd; split xmm1_3 dc xmm8_3 0xd;
(* vpslld $0x13,%xmm8,%xmm2                        #! PC = 0x555555559c9a *)
split dc xmm2_0 xmm8_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm8_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm8_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm8_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555559ca0 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555559ca4 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm15,%xmm7                       #! PC = 0x555555559ca8 *)
xor xmm7_0@uint32 xmm15_0 xmm1_0; xor xmm7_1@uint32 xmm15_1 xmm1_1;
xor xmm7_2@uint32 xmm15_2 xmm1_2; xor xmm7_3@uint32 xmm15_3 xmm1_3;
(* vpsrld $0x16,%xmm8,%xmm1                        #! PC = 0x555555559cac *)
split xmm1_0 dc xmm8_0 0x16; split xmm1_1 dc xmm8_1 0x16;
split xmm1_2 dc xmm8_2 0x16; split xmm1_3 dc xmm8_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559cb2 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm8,%xmm2                         #! PC = 0x555555559cb6 *)
split dc xmm2_0 xmm8_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm8_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm8_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm8_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm9,%xmm15                       #! PC = 0x555555559cbc *)
xor xmm15_0@uint32 xmm9_0 xmm4_0; xor xmm15_1@uint32 xmm9_1 xmm4_1;
xor xmm15_2@uint32 xmm9_2 xmm4_2; xor xmm15_3@uint32 xmm9_3 xmm4_3;
(* vpaddd %xmm5,%xmm11,%xmm11                      #! PC = 0x555555559cc0 *)
adds dc xmm11_0 xmm11_0 xmm5_0; adds dc xmm11_1 xmm11_1 xmm5_1;
adds dc xmm11_2 xmm11_2 xmm5_2; adds dc xmm11_3 xmm11_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559cc4 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559cc8 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm15,%xmm15                      #! PC = 0x555555559ccc *)
adds dc xmm15_0 xmm15_0 xmm5_0; adds dc xmm15_1 xmm15_1 xmm5_1;
adds dc xmm15_2 xmm15_2 xmm5_2; adds dc xmm15_3 xmm15_3 xmm5_3;
(* vpaddd %xmm7,%xmm15,%xmm15                      #! PC = 0x555555559cd0 *)
adds dc xmm15_0 xmm15_0 xmm7_0; adds dc xmm15_1 xmm15_1 xmm7_1;
adds dc xmm15_2 xmm15_2 xmm7_2; adds dc xmm15_3 xmm15_3 xmm7_3;
(* vmovdqu 0x20(%rax),%xmm5                        #! EA = L0x7fffffffd7a0; Value = 0x8307475283074752; PC = 0x555555559cd4 *)
mov xmm5_0 L0x7fffffffd7a0; mov xmm5_1 L0x7fffffffd7a4;
mov xmm5_2 L0x7fffffffd7a8; mov xmm5_3 L0x7fffffffd7ac;
(* vpaddd -0x60(%rax),%xmm6,%xmm6                  #! EA = L0x7fffffffd720; Value = 0xc5b05ff6c5b05ff6; PC = 0x555555559cd9 *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd720; adds dc xmm6_1 xmm6_1 L0x7fffffffd724;
adds dc xmm6_2 xmm6_2 L0x7fffffffd728; adds dc xmm6_3 xmm6_3 L0x7fffffffd72c;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x555555559cde *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x555555559ce3 *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x555555559ce8 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559ced *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x555555559cf1 *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559cf6 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x555555559cfa *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x10(%rax),%xmm0                       #! EA = L0x7fffffffd770; Value = 0xba9bac76ba9bac76; PC = 0x555555559cff *)
mov xmm0_0 L0x7fffffffd770; mov xmm0_1 L0x7fffffffd774;
mov xmm0_2 L0x7fffffffd778; mov xmm0_3 L0x7fffffffd77c;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x555555559d04 *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559d09 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559d0d *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559d12 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559d16 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559d1b *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x555555559d1f *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559d23 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559d28 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559d2c *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559d31 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559d35 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559d39 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm11,%xmm7                        #! PC = 0x555555559d3d *)
split xmm7_0 dc xmm11_0 0x6; split xmm7_1 dc xmm11_1 0x6;
split xmm7_2 dc xmm11_2 0x6; split xmm7_3 dc xmm11_3 0x6;
(* vpslld $0x1a,%xmm11,%xmm2                       #! PC = 0x555555559d43 *)
split dc xmm2_0 xmm11_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm11_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm11_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm11_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,0x10(%rax)                        #! EA = L0x7fffffffd790; PC = 0x555555559d49 *)
mov L0x7fffffffd790 xmm6_0; mov L0x7fffffffd794 xmm6_1;
mov L0x7fffffffd798 xmm6_2; mov L0x7fffffffd79c xmm6_3;
(* vpaddd %xmm14,%xmm6,%xmm6                       #! PC = 0x555555559d4e *)
adds dc xmm6_0 xmm6_0 xmm14_0; adds dc xmm6_1 xmm6_1 xmm14_1;
adds dc xmm6_2 xmm6_2 xmm14_2; adds dc xmm6_3 xmm6_3 xmm14_3;
(* vpsrld $0xb,%xmm11,%xmm1                        #! PC = 0x555555559d53 *)
split xmm1_0 dc xmm11_0 0xb; split xmm1_1 dc xmm11_1 0xb;
split xmm1_2 dc xmm11_2 0xb; split xmm1_3 dc xmm11_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559d59 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm11,%xmm2                       #! PC = 0x555555559d5d *)
split dc xmm2_0 xmm11_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm11_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm11_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm11_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x60(%rbp),%xmm6,%xmm6                  #! EA = L0x55555555cf20; Value = 0xa81a664ba81a664b; PC = 0x555555559d63 *)
adds dc xmm6_0 xmm6_0 L0x55555555cf20; adds dc xmm6_1 xmm6_1 L0x55555555cf24;
adds dc xmm6_2 xmm6_2 L0x55555555cf28; adds dc xmm6_3 xmm6_3 L0x55555555cf2c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559d68 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm11,%xmm1                       #! PC = 0x555555559d6c *)
split xmm1_0 dc xmm11_0 0x19; split xmm1_1 dc xmm11_1 0x19;
split xmm1_2 dc xmm11_2 0x19; split xmm1_3 dc xmm11_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559d72 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm11,%xmm2                        #! PC = 0x555555559d76 *)
split dc xmm2_0 xmm11_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm11_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm11_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm11_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm13,%xmm11,%xmm0                      #! PC = 0x555555559d7c *)
not xmm11_0n@uint32 xmm11_0; and xmm0_0@uint32 xmm11_0n xmm13_0;
not xmm11_1n@uint32 xmm11_1; and xmm0_1@uint32 xmm11_1n xmm13_1;
not xmm11_2n@uint32 xmm11_2; and xmm0_2@uint32 xmm11_2n xmm13_2;
not xmm11_3n@uint32 xmm11_3; and xmm0_3@uint32 xmm11_3n xmm13_3;
(* vpand  %xmm12,%xmm11,%xmm4                      #! PC = 0x555555559d81 *)
and xmm4_0@uint32 xmm11_0 xmm12_0; and xmm4_1@uint32 xmm11_1 xmm12_1;
and xmm4_2@uint32 xmm11_2 xmm12_2; and xmm4_3@uint32 xmm11_3 xmm12_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559d86 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm15,%xmm14                       #! PC = 0x555555559d8a *)
split xmm14_0 dc xmm15_0 0x2; split xmm14_1 dc xmm15_1 0x2;
split xmm14_2 dc xmm15_2 0x2; split xmm14_3 dc xmm15_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559d90 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm15,%xmm1                       #! PC = 0x555555559d94 *)
split dc xmm1_0 xmm15_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm15_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm15_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm15_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x555555559d9a *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm15,%xmm8,%xmm4                       #! PC = 0x555555559d9e *)
xor xmm4_0@uint32 xmm8_0 xmm15_0; xor xmm4_1@uint32 xmm8_1 xmm15_1;
xor xmm4_2@uint32 xmm8_2 xmm15_2; xor xmm4_3@uint32 xmm8_3 xmm15_3;
(* vpxor  %xmm1,%xmm14,%xmm14                      #! PC = 0x555555559da3 *)
xor xmm14_0@uint32 xmm14_0 xmm1_0; xor xmm14_1@uint32 xmm14_1 xmm1_1;
xor xmm14_2@uint32 xmm14_2 xmm1_2; xor xmm14_3@uint32 xmm14_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559da7 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm15,%xmm1                        #! PC = 0x555555559dab *)
split xmm1_0 dc xmm15_0 0xd; split xmm1_1 dc xmm15_1 0xd;
split xmm1_2 dc xmm15_2 0xd; split xmm1_3 dc xmm15_3 0xd;
(* vpslld $0x13,%xmm15,%xmm2                       #! PC = 0x555555559db1 *)
split dc xmm2_0 xmm15_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm15_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm15_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm15_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x555555559db7 *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x555555559dbb *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm14,%xmm7                       #! PC = 0x555555559dbf *)
xor xmm7_0@uint32 xmm14_0 xmm1_0; xor xmm7_1@uint32 xmm14_1 xmm1_1;
xor xmm7_2@uint32 xmm14_2 xmm1_2; xor xmm7_3@uint32 xmm14_3 xmm1_3;
(* vpsrld $0x16,%xmm15,%xmm1                       #! PC = 0x555555559dc3 *)
split xmm1_0 dc xmm15_0 0x16; split xmm1_1 dc xmm15_1 0x16;
split xmm1_2 dc xmm15_2 0x16; split xmm1_3 dc xmm15_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559dc9 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm15,%xmm2                        #! PC = 0x555555559dcd *)
split dc xmm2_0 xmm15_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm15_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm15_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm15_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm8,%xmm14                       #! PC = 0x555555559dd3 *)
xor xmm14_0@uint32 xmm8_0 xmm3_0; xor xmm14_1@uint32 xmm8_1 xmm3_1;
xor xmm14_2@uint32 xmm8_2 xmm3_2; xor xmm14_3@uint32 xmm8_3 xmm3_3;
(* vpaddd %xmm6,%xmm10,%xmm10                      #! PC = 0x555555559dd7 *)
adds dc xmm10_0 xmm10_0 xmm6_0; adds dc xmm10_1 xmm10_1 xmm6_1;
adds dc xmm10_2 xmm10_2 xmm6_2; adds dc xmm10_3 xmm10_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559ddb *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559ddf *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm14,%xmm14                      #! PC = 0x555555559de3 *)
adds dc xmm14_0 xmm14_0 xmm6_0; adds dc xmm14_1 xmm14_1 xmm6_1;
adds dc xmm14_2 xmm14_2 xmm6_2; adds dc xmm14_3 xmm14_3 xmm6_3;
(* vpaddd %xmm7,%xmm14,%xmm14                      #! PC = 0x555555559de7 *)
adds dc xmm14_0 xmm14_0 xmm7_0; adds dc xmm14_1 xmm14_1 xmm7_1;
adds dc xmm14_2 xmm14_2 xmm7_2; adds dc xmm14_3 xmm14_3 xmm7_3;
(* vmovdqu 0x30(%rax),%xmm6                        #! EA = L0x7fffffffd7b0; Value = 0x60b68ef460b68ef4; PC = 0x555555559deb *)
mov xmm6_0 L0x7fffffffd7b0; mov xmm6_1 L0x7fffffffd7b4;
mov xmm6_2 L0x7fffffffd7b8; mov xmm6_3 L0x7fffffffd7bc;
(* vpaddd -0x50(%rax),%xmm5,%xmm5                  #! EA = L0x7fffffffd730; Value = 0xd6f67228d6f67228; PC = 0x555555559df0 *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd730; adds dc xmm5_1 xmm5_1 L0x7fffffffd734;
adds dc xmm5_2 xmm5_2 L0x7fffffffd738; adds dc xmm5_3 xmm5_3 L0x7fffffffd73c;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x555555559df5 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x555555559dfa *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x555555559dff *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559e04 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x555555559e08 *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559e0d *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x555555559e11 *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu (%rax),%xmm0                            #! EA = L0x7fffffffd780; Value = 0x3dbb53ee3dbb53ee; PC = 0x555555559e16 *)
mov xmm0_0 L0x7fffffffd780; mov xmm0_1 L0x7fffffffd784;
mov xmm0_2 L0x7fffffffd788; mov xmm0_3 L0x7fffffffd78c;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x555555559e1a *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559e1f *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559e23 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559e28 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559e2c *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559e31 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x555555559e35 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559e39 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559e3e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559e42 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559e47 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559e4b *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559e4f *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm10,%xmm7                        #! PC = 0x555555559e53 *)
split xmm7_0 dc xmm10_0 0x6; split xmm7_1 dc xmm10_1 0x6;
split xmm7_2 dc xmm10_2 0x6; split xmm7_3 dc xmm10_3 0x6;
(* vpslld $0x1a,%xmm10,%xmm2                       #! PC = 0x555555559e59 *)
split dc xmm2_0 xmm10_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm10_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm10_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm10_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,0x20(%rax)                        #! EA = L0x7fffffffd7a0; PC = 0x555555559e5f *)
mov L0x7fffffffd7a0 xmm5_0; mov L0x7fffffffd7a4 xmm5_1;
mov L0x7fffffffd7a8 xmm5_2; mov L0x7fffffffd7ac xmm5_3;
(* vpaddd %xmm13,%xmm5,%xmm5                       #! PC = 0x555555559e64 *)
adds dc xmm5_0 xmm5_0 xmm13_0; adds dc xmm5_1 xmm5_1 xmm13_1;
adds dc xmm5_2 xmm5_2 xmm13_2; adds dc xmm5_3 xmm5_3 xmm13_3;
(* vpsrld $0xb,%xmm10,%xmm1                        #! PC = 0x555555559e69 *)
split xmm1_0 dc xmm10_0 0xb; split xmm1_1 dc xmm10_1 0xb;
split xmm1_2 dc xmm10_2 0xb; split xmm1_3 dc xmm10_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559e6f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm10,%xmm2                       #! PC = 0x555555559e73 *)
split dc xmm2_0 xmm10_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm10_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm10_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm10_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x40(%rbp),%xmm5,%xmm5                  #! EA = L0x55555555cf40; Value = 0xc24b8b70c24b8b70; PC = 0x555555559e79 *)
adds dc xmm5_0 xmm5_0 L0x55555555cf40; adds dc xmm5_1 xmm5_1 L0x55555555cf44;
adds dc xmm5_2 xmm5_2 L0x55555555cf48; adds dc xmm5_3 xmm5_3 L0x55555555cf4c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559e7e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm10,%xmm1                       #! PC = 0x555555559e82 *)
split xmm1_0 dc xmm10_0 0x19; split xmm1_1 dc xmm10_1 0x19;
split xmm1_2 dc xmm10_2 0x19; split xmm1_3 dc xmm10_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559e88 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm10,%xmm2                        #! PC = 0x555555559e8c *)
split dc xmm2_0 xmm10_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm10_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm10_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm10_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm12,%xmm10,%xmm0                      #! PC = 0x555555559e92 *)
not xmm10_0n@uint32 xmm10_0; and xmm0_0@uint32 xmm10_0n xmm12_0;
not xmm10_1n@uint32 xmm10_1; and xmm0_1@uint32 xmm10_1n xmm12_1;
not xmm10_2n@uint32 xmm10_2; and xmm0_2@uint32 xmm10_2n xmm12_2;
not xmm10_3n@uint32 xmm10_3; and xmm0_3@uint32 xmm10_3n xmm12_3;
(* vpand  %xmm11,%xmm10,%xmm3                      #! PC = 0x555555559e97 *)
and xmm3_0@uint32 xmm10_0 xmm11_0; and xmm3_1@uint32 xmm10_1 xmm11_1;
and xmm3_2@uint32 xmm10_2 xmm11_2; and xmm3_3@uint32 xmm10_3 xmm11_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559e9c *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm14,%xmm13                       #! PC = 0x555555559ea0 *)
split xmm13_0 dc xmm14_0 0x2; split xmm13_1 dc xmm14_1 0x2;
split xmm13_2 dc xmm14_2 0x2; split xmm13_3 dc xmm14_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559ea6 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm14,%xmm1                       #! PC = 0x555555559eaa *)
split dc xmm1_0 xmm14_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm14_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm14_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm14_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x555555559eb0 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm14,%xmm15,%xmm3                      #! PC = 0x555555559eb4 *)
xor xmm3_0@uint32 xmm15_0 xmm14_0; xor xmm3_1@uint32 xmm15_1 xmm14_1;
xor xmm3_2@uint32 xmm15_2 xmm14_2; xor xmm3_3@uint32 xmm15_3 xmm14_3;
(* vpxor  %xmm1,%xmm13,%xmm13                      #! PC = 0x555555559eb9 *)
xor xmm13_0@uint32 xmm13_0 xmm1_0; xor xmm13_1@uint32 xmm13_1 xmm1_1;
xor xmm13_2@uint32 xmm13_2 xmm1_2; xor xmm13_3@uint32 xmm13_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559ebd *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm14,%xmm1                        #! PC = 0x555555559ec1 *)
split xmm1_0 dc xmm14_0 0xd; split xmm1_1 dc xmm14_1 0xd;
split xmm1_2 dc xmm14_2 0xd; split xmm1_3 dc xmm14_3 0xd;
(* vpslld $0x13,%xmm14,%xmm2                       #! PC = 0x555555559ec7 *)
split dc xmm2_0 xmm14_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm14_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm14_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm14_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555559ecd *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555559ed1 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm13,%xmm7                       #! PC = 0x555555559ed5 *)
xor xmm7_0@uint32 xmm13_0 xmm1_0; xor xmm7_1@uint32 xmm13_1 xmm1_1;
xor xmm7_2@uint32 xmm13_2 xmm1_2; xor xmm7_3@uint32 xmm13_3 xmm1_3;
(* vpsrld $0x16,%xmm14,%xmm1                       #! PC = 0x555555559ed9 *)
split xmm1_0 dc xmm14_0 0x16; split xmm1_1 dc xmm14_1 0x16;
split xmm1_2 dc xmm14_2 0x16; split xmm1_3 dc xmm14_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559edf *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm14,%xmm2                        #! PC = 0x555555559ee3 *)
split dc xmm2_0 xmm14_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm14_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm14_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm14_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm15,%xmm13                      #! PC = 0x555555559ee9 *)
xor xmm13_0@uint32 xmm15_0 xmm4_0; xor xmm13_1@uint32 xmm15_1 xmm4_1;
xor xmm13_2@uint32 xmm15_2 xmm4_2; xor xmm13_3@uint32 xmm15_3 xmm4_3;
(* vpaddd %xmm5,%xmm9,%xmm9                        #! PC = 0x555555559eed *)
adds dc xmm9_0 xmm9_0 xmm5_0; adds dc xmm9_1 xmm9_1 xmm5_1;
adds dc xmm9_2 xmm9_2 xmm5_2; adds dc xmm9_3 xmm9_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559ef1 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559ef5 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm13,%xmm13                      #! PC = 0x555555559ef9 *)
adds dc xmm13_0 xmm13_0 xmm5_0; adds dc xmm13_1 xmm13_1 xmm5_1;
adds dc xmm13_2 xmm13_2 xmm5_2; adds dc xmm13_3 xmm13_3 xmm5_3;
(* vpaddd %xmm7,%xmm13,%xmm13                      #! PC = 0x555555559efd *)
adds dc xmm13_0 xmm13_0 xmm7_0; adds dc xmm13_1 xmm13_1 xmm7_1;
adds dc xmm13_2 xmm13_2 xmm7_2; adds dc xmm13_3 xmm13_3 xmm7_3;
(* vmovdqu 0x40(%rax),%xmm5                        #! EA = L0x7fffffffd7c0; Value = 0x9b87b13d9b87b13d; PC = 0x555555559f01 *)
mov xmm5_0 L0x7fffffffd7c0; mov xmm5_1 L0x7fffffffd7c4;
mov xmm5_2 L0x7fffffffd7c8; mov xmm5_3 L0x7fffffffd7cc;
(* vpaddd -0x40(%rax),%xmm6,%xmm6                  #! EA = L0x7fffffffd740; Value = 0xf5714d7df5714d7d; PC = 0x555555559f06 *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd740; adds dc xmm6_1 xmm6_1 L0x7fffffffd744;
adds dc xmm6_2 xmm6_2 L0x7fffffffd748; adds dc xmm6_3 xmm6_3 L0x7fffffffd74c;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x555555559f0b *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x555555559f10 *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x555555559f15 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559f1a *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x555555559f1e *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559f23 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x555555559f27 *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x10(%rax),%xmm0                        #! EA = L0x7fffffffd790; Value = 0xff244931ff244931; PC = 0x555555559f2c *)
mov xmm0_0 L0x7fffffffd790; mov xmm0_1 L0x7fffffffd794;
mov xmm0_2 L0x7fffffffd798; mov xmm0_3 L0x7fffffffd79c;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x555555559f31 *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559f36 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559f3a *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559f3f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559f43 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559f48 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x555555559f4c *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559f50 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559f55 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559f59 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559f5e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559f62 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559f66 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm9,%xmm7                         #! PC = 0x555555559f6a *)
split xmm7_0 dc xmm9_0 0x6; split xmm7_1 dc xmm9_1 0x6;
split xmm7_2 dc xmm9_2 0x6; split xmm7_3 dc xmm9_3 0x6;
(* vpslld $0x1a,%xmm9,%xmm2                        #! PC = 0x555555559f70 *)
split dc xmm2_0 xmm9_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm9_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm9_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm9_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,0x30(%rax)                        #! EA = L0x7fffffffd7b0; PC = 0x555555559f76 *)
mov L0x7fffffffd7b0 xmm6_0; mov L0x7fffffffd7b4 xmm6_1;
mov L0x7fffffffd7b8 xmm6_2; mov L0x7fffffffd7bc xmm6_3;
(* vpaddd %xmm12,%xmm6,%xmm6                       #! PC = 0x555555559f7b *)
adds dc xmm6_0 xmm6_0 xmm12_0; adds dc xmm6_1 xmm6_1 xmm12_1;
adds dc xmm6_2 xmm6_2 xmm12_2; adds dc xmm6_3 xmm6_3 xmm12_3;
(* vpsrld $0xb,%xmm9,%xmm1                         #! PC = 0x555555559f80 *)
split xmm1_0 dc xmm9_0 0xb; split xmm1_1 dc xmm9_1 0xb;
split xmm1_2 dc xmm9_2 0xb; split xmm1_3 dc xmm9_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559f86 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm9,%xmm2                        #! PC = 0x555555559f8a *)
split dc xmm2_0 xmm9_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm9_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm9_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm9_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x20(%rbp),%xmm6,%xmm6                  #! EA = L0x55555555cf60; Value = 0xc76c51a3c76c51a3; PC = 0x555555559f90 *)
adds dc xmm6_0 xmm6_0 L0x55555555cf60; adds dc xmm6_1 xmm6_1 L0x55555555cf64;
adds dc xmm6_2 xmm6_2 L0x55555555cf68; adds dc xmm6_3 xmm6_3 L0x55555555cf6c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559f95 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm9,%xmm1                        #! PC = 0x555555559f99 *)
split xmm1_0 dc xmm9_0 0x19; split xmm1_1 dc xmm9_1 0x19;
split xmm1_2 dc xmm9_2 0x19; split xmm1_3 dc xmm9_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559f9f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm9,%xmm2                         #! PC = 0x555555559fa3 *)
split dc xmm2_0 xmm9_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm9_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm9_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm9_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm11,%xmm9,%xmm0                       #! PC = 0x555555559fa9 *)
not xmm9_0n@uint32 xmm9_0; and xmm0_0@uint32 xmm9_0n xmm11_0;
not xmm9_1n@uint32 xmm9_1; and xmm0_1@uint32 xmm9_1n xmm11_1;
not xmm9_2n@uint32 xmm9_2; and xmm0_2@uint32 xmm9_2n xmm11_2;
not xmm9_3n@uint32 xmm9_3; and xmm0_3@uint32 xmm9_3n xmm11_3;
(* vpand  %xmm10,%xmm9,%xmm4                       #! PC = 0x555555559fae *)
and xmm4_0@uint32 xmm9_0 xmm10_0; and xmm4_1@uint32 xmm9_1 xmm10_1;
and xmm4_2@uint32 xmm9_2 xmm10_2; and xmm4_3@uint32 xmm9_3 xmm10_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559fb3 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm13,%xmm12                       #! PC = 0x555555559fb7 *)
split xmm12_0 dc xmm13_0 0x2; split xmm12_1 dc xmm13_1 0x2;
split xmm12_2 dc xmm13_2 0x2; split xmm12_3 dc xmm13_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559fbd *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm13,%xmm1                       #! PC = 0x555555559fc1 *)
split dc xmm1_0 xmm13_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm13_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm13_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm13_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x555555559fc7 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm13,%xmm14,%xmm4                      #! PC = 0x555555559fcb *)
xor xmm4_0@uint32 xmm14_0 xmm13_0; xor xmm4_1@uint32 xmm14_1 xmm13_1;
xor xmm4_2@uint32 xmm14_2 xmm13_2; xor xmm4_3@uint32 xmm14_3 xmm13_3;
(* vpxor  %xmm1,%xmm12,%xmm12                      #! PC = 0x555555559fd0 *)
xor xmm12_0@uint32 xmm12_0 xmm1_0; xor xmm12_1@uint32 xmm12_1 xmm1_1;
xor xmm12_2@uint32 xmm12_2 xmm1_2; xor xmm12_3@uint32 xmm12_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559fd4 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm13,%xmm1                        #! PC = 0x555555559fd8 *)
split xmm1_0 dc xmm13_0 0xd; split xmm1_1 dc xmm13_1 0xd;
split xmm1_2 dc xmm13_2 0xd; split xmm1_3 dc xmm13_3 0xd;
(* vpslld $0x13,%xmm13,%xmm2                       #! PC = 0x555555559fde *)
split dc xmm2_0 xmm13_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm13_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm13_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm13_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x555555559fe4 *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x555555559fe8 *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm12,%xmm7                       #! PC = 0x555555559fec *)
xor xmm7_0@uint32 xmm12_0 xmm1_0; xor xmm7_1@uint32 xmm12_1 xmm1_1;
xor xmm7_2@uint32 xmm12_2 xmm1_2; xor xmm7_3@uint32 xmm12_3 xmm1_3;
(* vpsrld $0x16,%xmm13,%xmm1                       #! PC = 0x555555559ff0 *)
split xmm1_0 dc xmm13_0 0x16; split xmm1_1 dc xmm13_1 0x16;
split xmm1_2 dc xmm13_2 0x16; split xmm1_3 dc xmm13_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559ff6 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm13,%xmm2                        #! PC = 0x555555559ffa *)
split dc xmm2_0 xmm13_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm13_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm13_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm13_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm14,%xmm12                      #! PC = 0x55555555a000 *)
xor xmm12_0@uint32 xmm14_0 xmm3_0; xor xmm12_1@uint32 xmm14_1 xmm3_1;
xor xmm12_2@uint32 xmm14_2 xmm3_2; xor xmm12_3@uint32 xmm14_3 xmm3_3;
(* vpaddd %xmm6,%xmm8,%xmm8                        #! PC = 0x55555555a004 *)
adds dc xmm8_0 xmm8_0 xmm6_0; adds dc xmm8_1 xmm8_1 xmm6_1;
adds dc xmm8_2 xmm8_2 xmm6_2; adds dc xmm8_3 xmm8_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a008 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a00c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm12,%xmm12                      #! PC = 0x55555555a010 *)
adds dc xmm12_0 xmm12_0 xmm6_0; adds dc xmm12_1 xmm12_1 xmm6_1;
adds dc xmm12_2 xmm12_2 xmm6_2; adds dc xmm12_3 xmm12_3 xmm6_3;
(* vpaddd %xmm7,%xmm12,%xmm12                      #! PC = 0x55555555a014 *)
adds dc xmm12_0 xmm12_0 xmm7_0; adds dc xmm12_1 xmm12_1 xmm7_1;
adds dc xmm12_2 xmm12_2 xmm7_2; adds dc xmm12_3 xmm12_3 xmm7_3;
(* vmovdqu 0x50(%rax),%xmm6                        #! EA = L0x7fffffffd7d0; Value = 0x261e0138261e0138; PC = 0x55555555a018 *)
mov xmm6_0 L0x7fffffffd7d0; mov xmm6_1 L0x7fffffffd7d4;
mov xmm6_2 L0x7fffffffd7d8; mov xmm6_3 L0x7fffffffd7dc;
(* vpaddd -0x30(%rax),%xmm5,%xmm5                  #! EA = L0x7fffffffd750; Value = 0x0ed1cd750ed1cd75; PC = 0x55555555a01d *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd750; adds dc xmm5_1 xmm5_1 L0x7fffffffd754;
adds dc xmm5_2 xmm5_2 L0x7fffffffd758; adds dc xmm5_3 xmm5_3 L0x7fffffffd75c;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x55555555a022 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x55555555a027 *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x55555555a02c *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a031 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x55555555a035 *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a03a *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x55555555a03e *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x20(%rax),%xmm0                        #! EA = L0x7fffffffd7a0; Value = 0x64ee162664ee1626; PC = 0x55555555a043 *)
mov xmm0_0 L0x7fffffffd7a0; mov xmm0_1 L0x7fffffffd7a4;
mov xmm0_2 L0x7fffffffd7a8; mov xmm0_3 L0x7fffffffd7ac;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x55555555a048 *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a04d *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x55555555a051 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a056 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x55555555a05a *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555a05f *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x55555555a063 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x55555555a067 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a06c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x55555555a070 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a075 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a079 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555a07d *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm8,%xmm7                         #! PC = 0x55555555a081 *)
split xmm7_0 dc xmm8_0 0x6; split xmm7_1 dc xmm8_1 0x6;
split xmm7_2 dc xmm8_2 0x6; split xmm7_3 dc xmm8_3 0x6;
(* vpslld $0x1a,%xmm8,%xmm2                        #! PC = 0x55555555a087 *)
split dc xmm2_0 xmm8_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm8_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm8_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm8_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,0x40(%rax)                        #! EA = L0x7fffffffd7c0; PC = 0x55555555a08d *)
mov L0x7fffffffd7c0 xmm5_0; mov L0x7fffffffd7c4 xmm5_1;
mov L0x7fffffffd7c8 xmm5_2; mov L0x7fffffffd7cc xmm5_3;
(* vpaddd %xmm11,%xmm5,%xmm5                       #! PC = 0x55555555a092 *)
adds dc xmm5_0 xmm5_0 xmm11_0; adds dc xmm5_1 xmm5_1 xmm11_1;
adds dc xmm5_2 xmm5_2 xmm11_2; adds dc xmm5_3 xmm5_3 xmm11_3;
(* vpsrld $0xb,%xmm8,%xmm1                         #! PC = 0x55555555a097 *)
split xmm1_0 dc xmm8_0 0xb; split xmm1_1 dc xmm8_1 0xb;
split xmm1_2 dc xmm8_2 0xb; split xmm1_3 dc xmm8_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a09d *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm8,%xmm2                        #! PC = 0x55555555a0a1 *)
split dc xmm2_0 xmm8_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm8_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm8_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm8_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x0(%rbp),%xmm5,%xmm5                    #! EA = L0x55555555cf80; Value = 0xd192e819d192e819; PC = 0x55555555a0a7 *)
adds dc xmm5_0 xmm5_0 L0x55555555cf80; adds dc xmm5_1 xmm5_1 L0x55555555cf84;
adds dc xmm5_2 xmm5_2 L0x55555555cf88; adds dc xmm5_3 xmm5_3 L0x55555555cf8c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a0ac *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm8,%xmm1                        #! PC = 0x55555555a0b0 *)
split xmm1_0 dc xmm8_0 0x19; split xmm1_1 dc xmm8_1 0x19;
split xmm1_2 dc xmm8_2 0x19; split xmm1_3 dc xmm8_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a0b6 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm8,%xmm2                         #! PC = 0x55555555a0ba *)
split dc xmm2_0 xmm8_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm8_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm8_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm8_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm10,%xmm8,%xmm0                       #! PC = 0x55555555a0c0 *)
not xmm8_0n@uint32 xmm8_0; and xmm0_0@uint32 xmm8_0n xmm10_0;
not xmm8_1n@uint32 xmm8_1; and xmm0_1@uint32 xmm8_1n xmm10_1;
not xmm8_2n@uint32 xmm8_2; and xmm0_2@uint32 xmm8_2n xmm10_2;
not xmm8_3n@uint32 xmm8_3; and xmm0_3@uint32 xmm8_3n xmm10_3;
(* vpand  %xmm9,%xmm8,%xmm3                        #! PC = 0x55555555a0c5 *)
and xmm3_0@uint32 xmm8_0 xmm9_0; and xmm3_1@uint32 xmm8_1 xmm9_1;
and xmm3_2@uint32 xmm8_2 xmm9_2; and xmm3_3@uint32 xmm8_3 xmm9_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a0ca *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm12,%xmm11                       #! PC = 0x55555555a0ce *)
split xmm11_0 dc xmm12_0 0x2; split xmm11_1 dc xmm12_1 0x2;
split xmm11_2 dc xmm12_2 0x2; split xmm11_3 dc xmm12_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a0d4 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm12,%xmm1                       #! PC = 0x55555555a0d8 *)
split dc xmm1_0 xmm12_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm12_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm12_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm12_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x55555555a0de *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm12,%xmm13,%xmm3                      #! PC = 0x55555555a0e2 *)
xor xmm3_0@uint32 xmm13_0 xmm12_0; xor xmm3_1@uint32 xmm13_1 xmm12_1;
xor xmm3_2@uint32 xmm13_2 xmm12_2; xor xmm3_3@uint32 xmm13_3 xmm12_3;
(* vpxor  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555555a0e7 *)
xor xmm11_0@uint32 xmm11_0 xmm1_0; xor xmm11_1@uint32 xmm11_1 xmm1_1;
xor xmm11_2@uint32 xmm11_2 xmm1_2; xor xmm11_3@uint32 xmm11_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555a0eb *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm12,%xmm1                        #! PC = 0x55555555a0ef *)
split xmm1_0 dc xmm12_0 0xd; split xmm1_1 dc xmm12_1 0xd;
split xmm1_2 dc xmm12_2 0xd; split xmm1_3 dc xmm12_3 0xd;
(* vpslld $0x13,%xmm12,%xmm2                       #! PC = 0x55555555a0f5 *)
split dc xmm2_0 xmm12_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm12_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm12_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm12_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x55555555a0fb *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x55555555a0ff *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm11,%xmm7                       #! PC = 0x55555555a103 *)
xor xmm7_0@uint32 xmm11_0 xmm1_0; xor xmm7_1@uint32 xmm11_1 xmm1_1;
xor xmm7_2@uint32 xmm11_2 xmm1_2; xor xmm7_3@uint32 xmm11_3 xmm1_3;
(* vpsrld $0x16,%xmm12,%xmm1                       #! PC = 0x55555555a107 *)
split xmm1_0 dc xmm12_0 0x16; split xmm1_1 dc xmm12_1 0x16;
split xmm1_2 dc xmm12_2 0x16; split xmm1_3 dc xmm12_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a10d *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm12,%xmm2                        #! PC = 0x55555555a111 *)
split dc xmm2_0 xmm12_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm12_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm12_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm12_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm13,%xmm11                      #! PC = 0x55555555a117 *)
xor xmm11_0@uint32 xmm13_0 xmm4_0; xor xmm11_1@uint32 xmm13_1 xmm4_1;
xor xmm11_2@uint32 xmm13_2 xmm4_2; xor xmm11_3@uint32 xmm13_3 xmm4_3;
(* vpaddd %xmm5,%xmm15,%xmm15                      #! PC = 0x55555555a11b *)
adds dc xmm15_0 xmm15_0 xmm5_0; adds dc xmm15_1 xmm15_1 xmm5_1;
adds dc xmm15_2 xmm15_2 xmm5_2; adds dc xmm15_3 xmm15_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a11f *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a123 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm11,%xmm11                      #! PC = 0x55555555a127 *)
adds dc xmm11_0 xmm11_0 xmm5_0; adds dc xmm11_1 xmm11_1 xmm5_1;
adds dc xmm11_2 xmm11_2 xmm5_2; adds dc xmm11_3 xmm11_3 xmm5_3;
(* vpaddd %xmm7,%xmm11,%xmm11                      #! PC = 0x55555555a12b *)
adds dc xmm11_0 xmm11_0 xmm7_0; adds dc xmm11_1 xmm11_1 xmm7_1;
adds dc xmm11_2 xmm11_2 xmm7_2; adds dc xmm11_3 xmm11_3 xmm7_3;
(* vmovdqu 0x60(%rax),%xmm5                        #! EA = L0x7fffffffd7e0; Value = 0x14b7a3be14b7a3be; PC = 0x55555555a12f *)
mov xmm5_0 L0x7fffffffd7e0; mov xmm5_1 L0x7fffffffd7e4;
mov xmm5_2 L0x7fffffffd7e8; mov xmm5_3 L0x7fffffffd7ec;
(* vpaddd -0x20(%rax),%xmm6,%xmm6                  #! EA = L0x7fffffffd760; Value = 0xa63d12b6a63d12b6; PC = 0x55555555a134 *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd760; adds dc xmm6_1 xmm6_1 L0x7fffffffd764;
adds dc xmm6_2 xmm6_2 L0x7fffffffd768; adds dc xmm6_3 xmm6_3 L0x7fffffffd76c;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x55555555a139 *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x55555555a13e *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x55555555a143 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a148 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x55555555a14c *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a151 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x55555555a155 *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x30(%rax),%xmm0                        #! EA = L0x7fffffffd7b0; Value = 0x87b1857987b18579; PC = 0x55555555a15a *)
mov xmm0_0 L0x7fffffffd7b0; mov xmm0_1 L0x7fffffffd7b4;
mov xmm0_2 L0x7fffffffd7b8; mov xmm0_3 L0x7fffffffd7bc;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x55555555a15f *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a164 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x55555555a168 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a16d *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x55555555a171 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555a176 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x55555555a17a *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x55555555a17e *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a183 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x55555555a187 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a18c *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a190 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555a194 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm15,%xmm7                        #! PC = 0x55555555a198 *)
split xmm7_0 dc xmm15_0 0x6; split xmm7_1 dc xmm15_1 0x6;
split xmm7_2 dc xmm15_2 0x6; split xmm7_3 dc xmm15_3 0x6;
(* vpslld $0x1a,%xmm15,%xmm2                       #! PC = 0x55555555a19e *)
split dc xmm2_0 xmm15_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm15_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm15_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm15_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,0x50(%rax)                        #! EA = L0x7fffffffd7d0; PC = 0x55555555a1a4 *)
mov L0x7fffffffd7d0 xmm6_0; mov L0x7fffffffd7d4 xmm6_1;
mov L0x7fffffffd7d8 xmm6_2; mov L0x7fffffffd7dc xmm6_3;
(* vpaddd %xmm10,%xmm6,%xmm6                       #! PC = 0x55555555a1a9 *)
adds dc xmm6_0 xmm6_0 xmm10_0; adds dc xmm6_1 xmm6_1 xmm10_1;
adds dc xmm6_2 xmm6_2 xmm10_2; adds dc xmm6_3 xmm6_3 xmm10_3;
(* vpsrld $0xb,%xmm15,%xmm1                        #! PC = 0x55555555a1ae *)
split xmm1_0 dc xmm15_0 0xb; split xmm1_1 dc xmm15_1 0xb;
split xmm1_2 dc xmm15_2 0xb; split xmm1_3 dc xmm15_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a1b4 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm15,%xmm2                       #! PC = 0x55555555a1b8 *)
split dc xmm2_0 xmm15_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm15_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm15_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm15_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x20(%rbp),%xmm6,%xmm6                   #! EA = L0x55555555cfa0; Value = 0xd6990624d6990624; PC = 0x55555555a1be *)
adds dc xmm6_0 xmm6_0 L0x55555555cfa0; adds dc xmm6_1 xmm6_1 L0x55555555cfa4;
adds dc xmm6_2 xmm6_2 L0x55555555cfa8; adds dc xmm6_3 xmm6_3 L0x55555555cfac;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a1c3 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm15,%xmm1                       #! PC = 0x55555555a1c7 *)
split xmm1_0 dc xmm15_0 0x19; split xmm1_1 dc xmm15_1 0x19;
split xmm1_2 dc xmm15_2 0x19; split xmm1_3 dc xmm15_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a1cd *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm15,%xmm2                        #! PC = 0x55555555a1d1 *)
split dc xmm2_0 xmm15_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm15_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm15_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm15_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm9,%xmm15,%xmm0                       #! PC = 0x55555555a1d7 *)
not xmm15_0n@uint32 xmm15_0; and xmm0_0@uint32 xmm15_0n xmm9_0;
not xmm15_1n@uint32 xmm15_1; and xmm0_1@uint32 xmm15_1n xmm9_1;
not xmm15_2n@uint32 xmm15_2; and xmm0_2@uint32 xmm15_2n xmm9_2;
not xmm15_3n@uint32 xmm15_3; and xmm0_3@uint32 xmm15_3n xmm9_3;
(* vpand  %xmm8,%xmm15,%xmm4                       #! PC = 0x55555555a1dc *)
and xmm4_0@uint32 xmm15_0 xmm8_0; and xmm4_1@uint32 xmm15_1 xmm8_1;
and xmm4_2@uint32 xmm15_2 xmm8_2; and xmm4_3@uint32 xmm15_3 xmm8_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a1e1 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm11,%xmm10                       #! PC = 0x55555555a1e5 *)
split xmm10_0 dc xmm11_0 0x2; split xmm10_1 dc xmm11_1 0x2;
split xmm10_2 dc xmm11_2 0x2; split xmm10_3 dc xmm11_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a1eb *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm11,%xmm1                       #! PC = 0x55555555a1ef *)
split dc xmm1_0 xmm11_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm11_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm11_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm11_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x55555555a1f5 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm11,%xmm12,%xmm4                      #! PC = 0x55555555a1f9 *)
xor xmm4_0@uint32 xmm12_0 xmm11_0; xor xmm4_1@uint32 xmm12_1 xmm11_1;
xor xmm4_2@uint32 xmm12_2 xmm11_2; xor xmm4_3@uint32 xmm12_3 xmm11_3;
(* vpxor  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555555a1fe *)
xor xmm10_0@uint32 xmm10_0 xmm1_0; xor xmm10_1@uint32 xmm10_1 xmm1_1;
xor xmm10_2@uint32 xmm10_2 xmm1_2; xor xmm10_3@uint32 xmm10_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555a202 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm11,%xmm1                        #! PC = 0x55555555a206 *)
split xmm1_0 dc xmm11_0 0xd; split xmm1_1 dc xmm11_1 0xd;
split xmm1_2 dc xmm11_2 0xd; split xmm1_3 dc xmm11_3 0xd;
(* vpslld $0x13,%xmm11,%xmm2                       #! PC = 0x55555555a20c *)
split dc xmm2_0 xmm11_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm11_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm11_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm11_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x55555555a212 *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x55555555a216 *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm10,%xmm7                       #! PC = 0x55555555a21a *)
xor xmm7_0@uint32 xmm10_0 xmm1_0; xor xmm7_1@uint32 xmm10_1 xmm1_1;
xor xmm7_2@uint32 xmm10_2 xmm1_2; xor xmm7_3@uint32 xmm10_3 xmm1_3;
(* vpsrld $0x16,%xmm11,%xmm1                       #! PC = 0x55555555a21e *)
split xmm1_0 dc xmm11_0 0x16; split xmm1_1 dc xmm11_1 0x16;
split xmm1_2 dc xmm11_2 0x16; split xmm1_3 dc xmm11_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a224 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm11,%xmm2                        #! PC = 0x55555555a228 *)
split dc xmm2_0 xmm11_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm11_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm11_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm11_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm12,%xmm10                      #! PC = 0x55555555a22e *)
xor xmm10_0@uint32 xmm12_0 xmm3_0; xor xmm10_1@uint32 xmm12_1 xmm3_1;
xor xmm10_2@uint32 xmm12_2 xmm3_2; xor xmm10_3@uint32 xmm12_3 xmm3_3;
(* vpaddd %xmm6,%xmm14,%xmm14                      #! PC = 0x55555555a232 *)
adds dc xmm14_0 xmm14_0 xmm6_0; adds dc xmm14_1 xmm14_1 xmm6_1;
adds dc xmm14_2 xmm14_2 xmm6_2; adds dc xmm14_3 xmm14_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a236 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a23a *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm10,%xmm10                      #! PC = 0x55555555a23e *)
adds dc xmm10_0 xmm10_0 xmm6_0; adds dc xmm10_1 xmm10_1 xmm6_1;
adds dc xmm10_2 xmm10_2 xmm6_2; adds dc xmm10_3 xmm10_3 xmm6_3;
(* vpaddd %xmm7,%xmm10,%xmm10                      #! PC = 0x55555555a242 *)
adds dc xmm10_0 xmm10_0 xmm7_0; adds dc xmm10_1 xmm10_1 xmm7_1;
adds dc xmm10_2 xmm10_2 xmm7_2; adds dc xmm10_3 xmm10_3 xmm7_3;
(* vmovdqu 0x70(%rax),%xmm6                        #! EA = L0x7fffffffd7f0; Value = 0xb7ff4640b7ff4640; PC = 0x55555555a246 *)
mov xmm6_0 L0x7fffffffd7f0; mov xmm6_1 L0x7fffffffd7f4;
mov xmm6_2 L0x7fffffffd7f8; mov xmm6_3 L0x7fffffffd7fc;
(* vpaddd -0x10(%rax),%xmm5,%xmm5                  #! EA = L0x7fffffffd770; Value = 0xba9bac76ba9bac76; PC = 0x55555555a24b *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd770; adds dc xmm5_1 xmm5_1 L0x7fffffffd774;
adds dc xmm5_2 xmm5_2 L0x7fffffffd778; adds dc xmm5_3 xmm5_3 L0x7fffffffd77c;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x55555555a250 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x55555555a255 *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x55555555a25a *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a25f *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x55555555a263 *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a268 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x55555555a26c *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x40(%rax),%xmm0                        #! EA = L0x7fffffffd7c0; Value = 0x68ea39c368ea39c3; PC = 0x55555555a271 *)
mov xmm0_0 L0x7fffffffd7c0; mov xmm0_1 L0x7fffffffd7c4;
mov xmm0_2 L0x7fffffffd7c8; mov xmm0_3 L0x7fffffffd7cc;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x55555555a276 *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a27b *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x55555555a27f *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a284 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x55555555a288 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555a28d *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x55555555a291 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x55555555a295 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a29a *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x55555555a29e *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a2a3 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a2a7 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555a2ab *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm14,%xmm7                        #! PC = 0x55555555a2af *)
split xmm7_0 dc xmm14_0 0x6; split xmm7_1 dc xmm14_1 0x6;
split xmm7_2 dc xmm14_2 0x6; split xmm7_3 dc xmm14_3 0x6;
(* vpslld $0x1a,%xmm14,%xmm2                       #! PC = 0x55555555a2b5 *)
split dc xmm2_0 xmm14_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm14_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm14_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm14_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,0x60(%rax)                        #! EA = L0x7fffffffd7e0; PC = 0x55555555a2bb *)
mov L0x7fffffffd7e0 xmm5_0; mov L0x7fffffffd7e4 xmm5_1;
mov L0x7fffffffd7e8 xmm5_2; mov L0x7fffffffd7ec xmm5_3;
(* vpaddd %xmm9,%xmm5,%xmm5                        #! PC = 0x55555555a2c0 *)
adds dc xmm5_0 xmm5_0 xmm9_0; adds dc xmm5_1 xmm5_1 xmm9_1;
adds dc xmm5_2 xmm5_2 xmm9_2; adds dc xmm5_3 xmm5_3 xmm9_3;
(* vpsrld $0xb,%xmm14,%xmm1                        #! PC = 0x55555555a2c5 *)
split xmm1_0 dc xmm14_0 0xb; split xmm1_1 dc xmm14_1 0xb;
split xmm1_2 dc xmm14_2 0xb; split xmm1_3 dc xmm14_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a2cb *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm14,%xmm2                       #! PC = 0x55555555a2cf *)
split dc xmm2_0 xmm14_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm14_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm14_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm14_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x40(%rbp),%xmm5,%xmm5                   #! EA = L0x55555555cfc0; Value = 0xf40e3585f40e3585; PC = 0x55555555a2d5 *)
adds dc xmm5_0 xmm5_0 L0x55555555cfc0; adds dc xmm5_1 xmm5_1 L0x55555555cfc4;
adds dc xmm5_2 xmm5_2 L0x55555555cfc8; adds dc xmm5_3 xmm5_3 L0x55555555cfcc;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a2da *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm14,%xmm1                       #! PC = 0x55555555a2de *)
split xmm1_0 dc xmm14_0 0x19; split xmm1_1 dc xmm14_1 0x19;
split xmm1_2 dc xmm14_2 0x19; split xmm1_3 dc xmm14_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a2e4 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm14,%xmm2                        #! PC = 0x55555555a2e8 *)
split dc xmm2_0 xmm14_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm14_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm14_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm14_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm8,%xmm14,%xmm0                       #! PC = 0x55555555a2ee *)
not xmm14_0n@uint32 xmm14_0; and xmm0_0@uint32 xmm14_0n xmm8_0;
not xmm14_1n@uint32 xmm14_1; and xmm0_1@uint32 xmm14_1n xmm8_1;
not xmm14_2n@uint32 xmm14_2; and xmm0_2@uint32 xmm14_2n xmm8_2;
not xmm14_3n@uint32 xmm14_3; and xmm0_3@uint32 xmm14_3n xmm8_3;
(* vpand  %xmm15,%xmm14,%xmm3                      #! PC = 0x55555555a2f3 *)
and xmm3_0@uint32 xmm14_0 xmm15_0; and xmm3_1@uint32 xmm14_1 xmm15_1;
and xmm3_2@uint32 xmm14_2 xmm15_2; and xmm3_3@uint32 xmm14_3 xmm15_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a2f8 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm10,%xmm9                        #! PC = 0x55555555a2fc *)
split xmm9_0 dc xmm10_0 0x2; split xmm9_1 dc xmm10_1 0x2;
split xmm9_2 dc xmm10_2 0x2; split xmm9_3 dc xmm10_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a302 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm10,%xmm1                       #! PC = 0x55555555a306 *)
split dc xmm1_0 xmm10_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm10_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm10_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm10_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x55555555a30c *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm10,%xmm11,%xmm3                      #! PC = 0x55555555a310 *)
xor xmm3_0@uint32 xmm11_0 xmm10_0; xor xmm3_1@uint32 xmm11_1 xmm10_1;
xor xmm3_2@uint32 xmm11_2 xmm10_2; xor xmm3_3@uint32 xmm11_3 xmm10_3;
(* vpxor  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555555a315 *)
xor xmm9_0@uint32 xmm9_0 xmm1_0; xor xmm9_1@uint32 xmm9_1 xmm1_1;
xor xmm9_2@uint32 xmm9_2 xmm1_2; xor xmm9_3@uint32 xmm9_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555a319 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm10,%xmm1                        #! PC = 0x55555555a31d *)
split xmm1_0 dc xmm10_0 0xd; split xmm1_1 dc xmm10_1 0xd;
split xmm1_2 dc xmm10_2 0xd; split xmm1_3 dc xmm10_3 0xd;
(* vpslld $0x13,%xmm10,%xmm2                       #! PC = 0x55555555a323 *)
split dc xmm2_0 xmm10_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm10_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm10_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm10_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x55555555a329 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x55555555a32d *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm9,%xmm7                        #! PC = 0x55555555a331 *)
xor xmm7_0@uint32 xmm9_0 xmm1_0; xor xmm7_1@uint32 xmm9_1 xmm1_1;
xor xmm7_2@uint32 xmm9_2 xmm1_2; xor xmm7_3@uint32 xmm9_3 xmm1_3;
(* vpsrld $0x16,%xmm10,%xmm1                       #! PC = 0x55555555a335 *)
split xmm1_0 dc xmm10_0 0x16; split xmm1_1 dc xmm10_1 0x16;
split xmm1_2 dc xmm10_2 0x16; split xmm1_3 dc xmm10_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a33b *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm10,%xmm2                        #! PC = 0x55555555a33f *)
split dc xmm2_0 xmm10_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm10_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm10_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm10_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm11,%xmm9                       #! PC = 0x55555555a345 *)
xor xmm9_0@uint32 xmm11_0 xmm4_0; xor xmm9_1@uint32 xmm11_1 xmm4_1;
xor xmm9_2@uint32 xmm11_2 xmm4_2; xor xmm9_3@uint32 xmm11_3 xmm4_3;
(* vpaddd %xmm5,%xmm13,%xmm13                      #! PC = 0x55555555a349 *)
adds dc xmm13_0 xmm13_0 xmm5_0; adds dc xmm13_1 xmm13_1 xmm5_1;
adds dc xmm13_2 xmm13_2 xmm5_2; adds dc xmm13_3 xmm13_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a34d *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a351 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm9,%xmm9                        #! PC = 0x55555555a355 *)
adds dc xmm9_0 xmm9_0 xmm5_0; adds dc xmm9_1 xmm9_1 xmm5_1;
adds dc xmm9_2 xmm9_2 xmm5_2; adds dc xmm9_3 xmm9_3 xmm5_3;
(* vpaddd %xmm7,%xmm9,%xmm9                        #! PC = 0x55555555a359 *)
adds dc xmm9_0 xmm9_0 xmm7_0; adds dc xmm9_1 xmm9_1 xmm7_1;
adds dc xmm9_2 xmm9_2 xmm7_2; adds dc xmm9_3 xmm9_3 xmm7_3;
(* vmovdqu -0x80(%rax),%xmm5                       #! EA = L0x7fffffffd700; Value = 0x528ad2af528ad2af; PC = 0x55555555a35d *)
mov xmm5_0 L0x7fffffffd700; mov xmm5_1 L0x7fffffffd704;
mov xmm5_2 L0x7fffffffd708; mov xmm5_3 L0x7fffffffd70c;
(* vpaddd (%rax),%xmm6,%xmm6                       #! EA = L0x7fffffffd780; Value = 0x3dbb53ee3dbb53ee; PC = 0x55555555a362 *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd780; adds dc xmm6_1 xmm6_1 L0x7fffffffd784;
adds dc xmm6_2 xmm6_2 L0x7fffffffd788; adds dc xmm6_3 xmm6_3 L0x7fffffffd78c;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x55555555a366 *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x55555555a36b *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x55555555a370 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a375 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x55555555a379 *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a37e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x55555555a382 *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x50(%rax),%xmm0                        #! EA = L0x7fffffffd7d0; Value = 0x54dd515a54dd515a; PC = 0x55555555a387 *)
mov xmm0_0 L0x7fffffffd7d0; mov xmm0_1 L0x7fffffffd7d4;
mov xmm0_2 L0x7fffffffd7d8; mov xmm0_3 L0x7fffffffd7dc;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x55555555a38c *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a391 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x55555555a395 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a39a *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x55555555a39e *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555a3a3 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x55555555a3a7 *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x55555555a3ab *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a3b0 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x55555555a3b4 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a3b9 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a3bd *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555a3c1 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm13,%xmm7                        #! PC = 0x55555555a3c5 *)
split xmm7_0 dc xmm13_0 0x6; split xmm7_1 dc xmm13_1 0x6;
split xmm7_2 dc xmm13_2 0x6; split xmm7_3 dc xmm13_3 0x6;
(* vpslld $0x1a,%xmm13,%xmm2                       #! PC = 0x55555555a3cb *)
split dc xmm2_0 xmm13_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm13_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm13_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm13_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,0x70(%rax)                        #! EA = L0x7fffffffd7f0; PC = 0x55555555a3d1 *)
mov L0x7fffffffd7f0 xmm6_0; mov L0x7fffffffd7f4 xmm6_1;
mov L0x7fffffffd7f8 xmm6_2; mov L0x7fffffffd7fc xmm6_3;
(* vpaddd %xmm8,%xmm6,%xmm6                        #! PC = 0x55555555a3d6 *)
adds dc xmm6_0 xmm6_0 xmm8_0; adds dc xmm6_1 xmm6_1 xmm8_1;
adds dc xmm6_2 xmm6_2 xmm8_2; adds dc xmm6_3 xmm6_3 xmm8_3;
(* vpsrld $0xb,%xmm13,%xmm1                        #! PC = 0x55555555a3db *)
split xmm1_0 dc xmm13_0 0xb; split xmm1_1 dc xmm13_1 0xb;
split xmm1_2 dc xmm13_2 0xb; split xmm1_3 dc xmm13_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a3e1 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm13,%xmm2                       #! PC = 0x55555555a3e5 *)
split dc xmm2_0 xmm13_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm13_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm13_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm13_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x60(%rbp),%xmm6,%xmm6                   #! EA = L0x55555555cfe0; Value = 0x106aa070106aa070; PC = 0x55555555a3eb *)
adds dc xmm6_0 xmm6_0 L0x55555555cfe0; adds dc xmm6_1 xmm6_1 L0x55555555cfe4;
adds dc xmm6_2 xmm6_2 L0x55555555cfe8; adds dc xmm6_3 xmm6_3 L0x55555555cfec;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a3f0 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm13,%xmm1                       #! PC = 0x55555555a3f4 *)
split xmm1_0 dc xmm13_0 0x19; split xmm1_1 dc xmm13_1 0x19;
split xmm1_2 dc xmm13_2 0x19; split xmm1_3 dc xmm13_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a3fa *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm13,%xmm2                        #! PC = 0x55555555a3fe *)
split dc xmm2_0 xmm13_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm13_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm13_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm13_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm15,%xmm13,%xmm0                      #! PC = 0x55555555a404 *)
not xmm13_0n@uint32 xmm13_0; and xmm0_0@uint32 xmm13_0n xmm15_0;
not xmm13_1n@uint32 xmm13_1; and xmm0_1@uint32 xmm13_1n xmm15_1;
not xmm13_2n@uint32 xmm13_2; and xmm0_2@uint32 xmm13_2n xmm15_2;
not xmm13_3n@uint32 xmm13_3; and xmm0_3@uint32 xmm13_3n xmm15_3;
(* vpand  %xmm14,%xmm13,%xmm4                      #! PC = 0x55555555a409 *)
and xmm4_0@uint32 xmm13_0 xmm14_0; and xmm4_1@uint32 xmm13_1 xmm14_1;
and xmm4_2@uint32 xmm13_2 xmm14_2; and xmm4_3@uint32 xmm13_3 xmm14_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a40e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm9,%xmm8                         #! PC = 0x55555555a412 *)
split xmm8_0 dc xmm9_0 0x2; split xmm8_1 dc xmm9_1 0x2;
split xmm8_2 dc xmm9_2 0x2; split xmm8_3 dc xmm9_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a418 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm9,%xmm1                        #! PC = 0x55555555a41c *)
split dc xmm1_0 xmm9_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm9_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm9_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm9_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x55555555a422 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm9,%xmm10,%xmm4                       #! PC = 0x55555555a426 *)
xor xmm4_0@uint32 xmm10_0 xmm9_0; xor xmm4_1@uint32 xmm10_1 xmm9_1;
xor xmm4_2@uint32 xmm10_2 xmm9_2; xor xmm4_3@uint32 xmm10_3 xmm9_3;
(* vpxor  %xmm1,%xmm8,%xmm8                        #! PC = 0x55555555a42b *)
xor xmm8_0@uint32 xmm8_0 xmm1_0; xor xmm8_1@uint32 xmm8_1 xmm1_1;
xor xmm8_2@uint32 xmm8_2 xmm1_2; xor xmm8_3@uint32 xmm8_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555a42f *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm9,%xmm1                         #! PC = 0x55555555a433 *)
split xmm1_0 dc xmm9_0 0xd; split xmm1_1 dc xmm9_1 0xd;
split xmm1_2 dc xmm9_2 0xd; split xmm1_3 dc xmm9_3 0xd;
(* vpslld $0x13,%xmm9,%xmm2                        #! PC = 0x55555555a439 *)
split dc xmm2_0 xmm9_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm9_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm9_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm9_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x55555555a43f *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x55555555a443 *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm8,%xmm7                        #! PC = 0x55555555a447 *)
xor xmm7_0@uint32 xmm8_0 xmm1_0; xor xmm7_1@uint32 xmm8_1 xmm1_1;
xor xmm7_2@uint32 xmm8_2 xmm1_2; xor xmm7_3@uint32 xmm8_3 xmm1_3;
(* vpsrld $0x16,%xmm9,%xmm1                        #! PC = 0x55555555a44b *)
split xmm1_0 dc xmm9_0 0x16; split xmm1_1 dc xmm9_1 0x16;
split xmm1_2 dc xmm9_2 0x16; split xmm1_3 dc xmm9_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a451 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm9,%xmm2                         #! PC = 0x55555555a455 *)
split dc xmm2_0 xmm9_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm9_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm9_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm9_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm10,%xmm8                       #! PC = 0x55555555a45b *)
xor xmm8_0@uint32 xmm10_0 xmm3_0; xor xmm8_1@uint32 xmm10_1 xmm3_1;
xor xmm8_2@uint32 xmm10_2 xmm3_2; xor xmm8_3@uint32 xmm10_3 xmm3_3;
(* vpaddd %xmm6,%xmm12,%xmm12                      #! PC = 0x55555555a45f *)
adds dc xmm12_0 xmm12_0 xmm6_0; adds dc xmm12_1 xmm12_1 xmm6_1;
adds dc xmm12_2 xmm12_2 xmm6_2; adds dc xmm12_3 xmm12_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a463 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a467 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm8,%xmm8                        #! PC = 0x55555555a46b *)
adds dc xmm8_0 xmm8_0 xmm6_0; adds dc xmm8_1 xmm8_1 xmm6_1;
adds dc xmm8_2 xmm8_2 xmm6_2; adds dc xmm8_3 xmm8_3 xmm6_3;
(* vpaddd %xmm7,%xmm8,%xmm8                        #! PC = 0x55555555a46f *)
adds dc xmm8_0 xmm8_0 xmm7_0; adds dc xmm8_1 xmm8_1 xmm7_1;
adds dc xmm8_2 xmm8_2 xmm7_2; adds dc xmm8_3 xmm8_3 xmm7_3;
(* add    $0x100,%rbp                              #! PC = 0x55555555a473 *)
(* add 0x100, rbp *)
nop;
(* dec    %ecx                                     #! PC = 0x55555555a47a *)
(* dec ecx *)
nop;
(* #jne    0x555555559300 <sha256_multi_block_avx+3680>#! PC = 0x55555555a47c *)
#jne    0x555555559300 <sha256_multi_block_avx+3680>#! 0x55555555a47c = 0x55555555a47c;
(* vmovdqu -0x70(%rax),%xmm6                       #! EA = L0x7fffffffd710; Value = 0x3e1198e03e1198e0; PC = 0x555555559300 *)
mov xmm6_0 L0x7fffffffd710; mov xmm6_1 L0x7fffffffd714;
mov xmm6_2 L0x7fffffffd718; mov xmm6_3 L0x7fffffffd71c;
(* vpaddd 0x10(%rax),%xmm5,%xmm5                   #! EA = L0x7fffffffd790; Value = 0xff244931ff244931; PC = 0x555555559305 *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd790; adds dc xmm5_1 xmm5_1 L0x7fffffffd794;
adds dc xmm5_2 xmm5_2 L0x7fffffffd798; adds dc xmm5_3 xmm5_3 L0x7fffffffd79c;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x55555555930a *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x55555555930f *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x555555559314 *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559319 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x55555555931d *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559322 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x555555559326 *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x60(%rax),%xmm0                        #! EA = L0x7fffffffd7e0; Value = 0x71176fd571176fd5; PC = 0x55555555932b *)
mov xmm0_0 L0x7fffffffd7e0; mov xmm0_1 L0x7fffffffd7e4;
mov xmm0_2 L0x7fffffffd7e8; mov xmm0_3 L0x7fffffffd7ec;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x555555559330 *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559335 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559339 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555933e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559342 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559347 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x55555555934b *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x55555555934f *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559354 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559358 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555935d *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559361 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559365 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm12,%xmm7                        #! PC = 0x555555559369 *)
split xmm7_0 dc xmm12_0 0x6; split xmm7_1 dc xmm12_1 0x6;
split xmm7_2 dc xmm12_2 0x6; split xmm7_3 dc xmm12_3 0x6;
(* vpslld $0x1a,%xmm12,%xmm2                       #! PC = 0x55555555936f *)
split dc xmm2_0 xmm12_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm12_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm12_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm12_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,-0x80(%rax)                       #! EA = L0x7fffffffd700; PC = 0x555555559375 *)
mov L0x7fffffffd700 xmm5_0; mov L0x7fffffffd704 xmm5_1;
mov L0x7fffffffd708 xmm5_2; mov L0x7fffffffd70c xmm5_3;
(* vpaddd %xmm15,%xmm5,%xmm5                       #! PC = 0x55555555937a *)
adds dc xmm5_0 xmm5_0 xmm15_0; adds dc xmm5_1 xmm5_1 xmm15_1;
adds dc xmm5_2 xmm5_2 xmm15_2; adds dc xmm5_3 xmm5_3 xmm15_3;
(* vpsrld $0xb,%xmm12,%xmm1                        #! PC = 0x55555555937f *)
split xmm1_0 dc xmm12_0 0xb; split xmm1_1 dc xmm12_1 0xb;
split xmm1_2 dc xmm12_2 0xb; split xmm1_3 dc xmm12_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559385 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm12,%xmm2                       #! PC = 0x555555559389 *)
split dc xmm2_0 xmm12_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm12_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm12_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm12_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x80(%rbp),%xmm5,%xmm5                  #! EA = L0x55555555d000; Value = 0x19a4c11619a4c116; PC = 0x55555555938f *)
adds dc xmm5_0 xmm5_0 L0x55555555d000; adds dc xmm5_1 xmm5_1 L0x55555555d004;
adds dc xmm5_2 xmm5_2 L0x55555555d008; adds dc xmm5_3 xmm5_3 L0x55555555d00c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559394 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm12,%xmm1                       #! PC = 0x555555559398 *)
split xmm1_0 dc xmm12_0 0x19; split xmm1_1 dc xmm12_1 0x19;
split xmm1_2 dc xmm12_2 0x19; split xmm1_3 dc xmm12_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555939e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm12,%xmm2                        #! PC = 0x5555555593a2 *)
split dc xmm2_0 xmm12_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm12_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm12_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm12_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm14,%xmm12,%xmm0                      #! PC = 0x5555555593a8 *)
not xmm12_0n@uint32 xmm12_0; and xmm0_0@uint32 xmm12_0n xmm14_0;
not xmm12_1n@uint32 xmm12_1; and xmm0_1@uint32 xmm12_1n xmm14_1;
not xmm12_2n@uint32 xmm12_2; and xmm0_2@uint32 xmm12_2n xmm14_2;
not xmm12_3n@uint32 xmm12_3; and xmm0_3@uint32 xmm12_3n xmm14_3;
(* vpand  %xmm13,%xmm12,%xmm3                      #! PC = 0x5555555593ad *)
and xmm3_0@uint32 xmm12_0 xmm13_0; and xmm3_1@uint32 xmm12_1 xmm13_1;
and xmm3_2@uint32 xmm12_2 xmm13_2; and xmm3_3@uint32 xmm12_3 xmm13_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555593b2 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm8,%xmm15                        #! PC = 0x5555555593b6 *)
split xmm15_0 dc xmm8_0 0x2; split xmm15_1 dc xmm8_1 0x2;
split xmm15_2 dc xmm8_2 0x2; split xmm15_3 dc xmm8_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555593bc *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm8,%xmm1                        #! PC = 0x5555555593c0 *)
split dc xmm1_0 xmm8_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm8_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm8_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm8_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x5555555593c6 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm8,%xmm9,%xmm3                        #! PC = 0x5555555593ca *)
xor xmm3_0@uint32 xmm9_0 xmm8_0; xor xmm3_1@uint32 xmm9_1 xmm8_1;
xor xmm3_2@uint32 xmm9_2 xmm8_2; xor xmm3_3@uint32 xmm9_3 xmm8_3;
(* vpxor  %xmm1,%xmm15,%xmm15                      #! PC = 0x5555555593cf *)
xor xmm15_0@uint32 xmm15_0 xmm1_0; xor xmm15_1@uint32 xmm15_1 xmm1_1;
xor xmm15_2@uint32 xmm15_2 xmm1_2; xor xmm15_3@uint32 xmm15_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x5555555593d3 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm8,%xmm1                         #! PC = 0x5555555593d7 *)
split xmm1_0 dc xmm8_0 0xd; split xmm1_1 dc xmm8_1 0xd;
split xmm1_2 dc xmm8_2 0xd; split xmm1_3 dc xmm8_3 0xd;
(* vpslld $0x13,%xmm8,%xmm2                        #! PC = 0x5555555593dd *)
split dc xmm2_0 xmm8_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm8_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm8_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm8_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x5555555593e3 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x5555555593e7 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm15,%xmm7                       #! PC = 0x5555555593eb *)
xor xmm7_0@uint32 xmm15_0 xmm1_0; xor xmm7_1@uint32 xmm15_1 xmm1_1;
xor xmm7_2@uint32 xmm15_2 xmm1_2; xor xmm7_3@uint32 xmm15_3 xmm1_3;
(* vpsrld $0x16,%xmm8,%xmm1                        #! PC = 0x5555555593ef *)
split xmm1_0 dc xmm8_0 0x16; split xmm1_1 dc xmm8_1 0x16;
split xmm1_2 dc xmm8_2 0x16; split xmm1_3 dc xmm8_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555593f5 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm8,%xmm2                         #! PC = 0x5555555593f9 *)
split dc xmm2_0 xmm8_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm8_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm8_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm8_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm9,%xmm15                       #! PC = 0x5555555593ff *)
xor xmm15_0@uint32 xmm9_0 xmm4_0; xor xmm15_1@uint32 xmm9_1 xmm4_1;
xor xmm15_2@uint32 xmm9_2 xmm4_2; xor xmm15_3@uint32 xmm9_3 xmm4_3;
(* vpaddd %xmm5,%xmm11,%xmm11                      #! PC = 0x555555559403 *)
adds dc xmm11_0 xmm11_0 xmm5_0; adds dc xmm11_1 xmm11_1 xmm5_1;
adds dc xmm11_2 xmm11_2 xmm5_2; adds dc xmm11_3 xmm11_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559407 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555940b *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm15,%xmm15                      #! PC = 0x55555555940f *)
adds dc xmm15_0 xmm15_0 xmm5_0; adds dc xmm15_1 xmm15_1 xmm5_1;
adds dc xmm15_2 xmm15_2 xmm5_2; adds dc xmm15_3 xmm15_3 xmm5_3;
(* vpaddd %xmm7,%xmm15,%xmm15                      #! PC = 0x555555559413 *)
adds dc xmm15_0 xmm15_0 xmm7_0; adds dc xmm15_1 xmm15_1 xmm7_1;
adds dc xmm15_2 xmm15_2 xmm7_2; adds dc xmm15_3 xmm15_3 xmm7_3;
(* vmovdqu -0x60(%rax),%xmm5                       #! EA = L0x7fffffffd720; Value = 0xc5b05ff6c5b05ff6; PC = 0x555555559417 *)
mov xmm5_0 L0x7fffffffd720; mov xmm5_1 L0x7fffffffd724;
mov xmm5_2 L0x7fffffffd728; mov xmm5_3 L0x7fffffffd72c;
(* vpaddd 0x20(%rax),%xmm6,%xmm6                   #! EA = L0x7fffffffd7a0; Value = 0x64ee162664ee1626; PC = 0x55555555941c *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd7a0; adds dc xmm6_1 xmm6_1 L0x7fffffffd7a4;
adds dc xmm6_2 xmm6_2 L0x7fffffffd7a8; adds dc xmm6_3 xmm6_3 L0x7fffffffd7ac;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x555555559421 *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x555555559426 *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x55555555942b *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559430 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x555555559434 *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559439 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x55555555943d *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x70(%rax),%xmm0                        #! EA = L0x7fffffffd7f0; Value = 0xd8ad8d21d8ad8d21; PC = 0x555555559442 *)
mov xmm0_0 L0x7fffffffd7f0; mov xmm0_1 L0x7fffffffd7f4;
mov xmm0_2 L0x7fffffffd7f8; mov xmm0_3 L0x7fffffffd7fc;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x555555559447 *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555944c *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559450 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559455 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559459 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555945e *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x555555559462 *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559466 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555946b *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x55555555946f *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559474 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559478 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555947c *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm11,%xmm7                        #! PC = 0x555555559480 *)
split xmm7_0 dc xmm11_0 0x6; split xmm7_1 dc xmm11_1 0x6;
split xmm7_2 dc xmm11_2 0x6; split xmm7_3 dc xmm11_3 0x6;
(* vpslld $0x1a,%xmm11,%xmm2                       #! PC = 0x555555559486 *)
split dc xmm2_0 xmm11_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm11_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm11_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm11_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,-0x70(%rax)                       #! EA = L0x7fffffffd710; PC = 0x55555555948c *)
mov L0x7fffffffd710 xmm6_0; mov L0x7fffffffd714 xmm6_1;
mov L0x7fffffffd718 xmm6_2; mov L0x7fffffffd71c xmm6_3;
(* vpaddd %xmm14,%xmm6,%xmm6                       #! PC = 0x555555559491 *)
adds dc xmm6_0 xmm6_0 xmm14_0; adds dc xmm6_1 xmm6_1 xmm14_1;
adds dc xmm6_2 xmm6_2 xmm14_2; adds dc xmm6_3 xmm6_3 xmm14_3;
(* vpsrld $0xb,%xmm11,%xmm1                        #! PC = 0x555555559496 *)
split xmm1_0 dc xmm11_0 0xb; split xmm1_1 dc xmm11_1 0xb;
split xmm1_2 dc xmm11_2 0xb; split xmm1_3 dc xmm11_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555949c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm11,%xmm2                       #! PC = 0x5555555594a0 *)
split dc xmm2_0 xmm11_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm11_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm11_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm11_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x60(%rbp),%xmm6,%xmm6                  #! EA = L0x55555555d020; Value = 0x1e376c081e376c08; PC = 0x5555555594a6 *)
adds dc xmm6_0 xmm6_0 L0x55555555d020; adds dc xmm6_1 xmm6_1 L0x55555555d024;
adds dc xmm6_2 xmm6_2 L0x55555555d028; adds dc xmm6_3 xmm6_3 L0x55555555d02c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555594ab *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm11,%xmm1                       #! PC = 0x5555555594af *)
split xmm1_0 dc xmm11_0 0x19; split xmm1_1 dc xmm11_1 0x19;
split xmm1_2 dc xmm11_2 0x19; split xmm1_3 dc xmm11_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555594b5 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm11,%xmm2                        #! PC = 0x5555555594b9 *)
split dc xmm2_0 xmm11_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm11_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm11_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm11_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm13,%xmm11,%xmm0                      #! PC = 0x5555555594bf *)
not xmm11_0n@uint32 xmm11_0; and xmm0_0@uint32 xmm11_0n xmm13_0;
not xmm11_1n@uint32 xmm11_1; and xmm0_1@uint32 xmm11_1n xmm13_1;
not xmm11_2n@uint32 xmm11_2; and xmm0_2@uint32 xmm11_2n xmm13_2;
not xmm11_3n@uint32 xmm11_3; and xmm0_3@uint32 xmm11_3n xmm13_3;
(* vpand  %xmm12,%xmm11,%xmm4                      #! PC = 0x5555555594c4 *)
and xmm4_0@uint32 xmm11_0 xmm12_0; and xmm4_1@uint32 xmm11_1 xmm12_1;
and xmm4_2@uint32 xmm11_2 xmm12_2; and xmm4_3@uint32 xmm11_3 xmm12_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555594c9 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm15,%xmm14                       #! PC = 0x5555555594cd *)
split xmm14_0 dc xmm15_0 0x2; split xmm14_1 dc xmm15_1 0x2;
split xmm14_2 dc xmm15_2 0x2; split xmm14_3 dc xmm15_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555594d3 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm15,%xmm1                       #! PC = 0x5555555594d7 *)
split dc xmm1_0 xmm15_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm15_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm15_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm15_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x5555555594dd *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm15,%xmm8,%xmm4                       #! PC = 0x5555555594e1 *)
xor xmm4_0@uint32 xmm8_0 xmm15_0; xor xmm4_1@uint32 xmm8_1 xmm15_1;
xor xmm4_2@uint32 xmm8_2 xmm15_2; xor xmm4_3@uint32 xmm8_3 xmm15_3;
(* vpxor  %xmm1,%xmm14,%xmm14                      #! PC = 0x5555555594e6 *)
xor xmm14_0@uint32 xmm14_0 xmm1_0; xor xmm14_1@uint32 xmm14_1 xmm1_1;
xor xmm14_2@uint32 xmm14_2 xmm1_2; xor xmm14_3@uint32 xmm14_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x5555555594ea *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm15,%xmm1                        #! PC = 0x5555555594ee *)
split xmm1_0 dc xmm15_0 0xd; split xmm1_1 dc xmm15_1 0xd;
split xmm1_2 dc xmm15_2 0xd; split xmm1_3 dc xmm15_3 0xd;
(* vpslld $0x13,%xmm15,%xmm2                       #! PC = 0x5555555594f4 *)
split dc xmm2_0 xmm15_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm15_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm15_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm15_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x5555555594fa *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x5555555594fe *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm14,%xmm7                       #! PC = 0x555555559502 *)
xor xmm7_0@uint32 xmm14_0 xmm1_0; xor xmm7_1@uint32 xmm14_1 xmm1_1;
xor xmm7_2@uint32 xmm14_2 xmm1_2; xor xmm7_3@uint32 xmm14_3 xmm1_3;
(* vpsrld $0x16,%xmm15,%xmm1                       #! PC = 0x555555559506 *)
split xmm1_0 dc xmm15_0 0x16; split xmm1_1 dc xmm15_1 0x16;
split xmm1_2 dc xmm15_2 0x16; split xmm1_3 dc xmm15_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555950c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm15,%xmm2                        #! PC = 0x555555559510 *)
split dc xmm2_0 xmm15_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm15_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm15_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm15_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm8,%xmm14                       #! PC = 0x555555559516 *)
xor xmm14_0@uint32 xmm8_0 xmm3_0; xor xmm14_1@uint32 xmm8_1 xmm3_1;
xor xmm14_2@uint32 xmm8_2 xmm3_2; xor xmm14_3@uint32 xmm8_3 xmm3_3;
(* vpaddd %xmm6,%xmm10,%xmm10                      #! PC = 0x55555555951a *)
adds dc xmm10_0 xmm10_0 xmm6_0; adds dc xmm10_1 xmm10_1 xmm6_1;
adds dc xmm10_2 xmm10_2 xmm6_2; adds dc xmm10_3 xmm10_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555951e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559522 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm14,%xmm14                      #! PC = 0x555555559526 *)
adds dc xmm14_0 xmm14_0 xmm6_0; adds dc xmm14_1 xmm14_1 xmm6_1;
adds dc xmm14_2 xmm14_2 xmm6_2; adds dc xmm14_3 xmm14_3 xmm6_3;
(* vpaddd %xmm7,%xmm14,%xmm14                      #! PC = 0x55555555952a *)
adds dc xmm14_0 xmm14_0 xmm7_0; adds dc xmm14_1 xmm14_1 xmm7_1;
adds dc xmm14_2 xmm14_2 xmm7_2; adds dc xmm14_3 xmm14_3 xmm7_3;
(* vmovdqu -0x50(%rax),%xmm6                       #! EA = L0x7fffffffd730; Value = 0xd6f67228d6f67228; PC = 0x55555555952e *)
mov xmm6_0 L0x7fffffffd730; mov xmm6_1 L0x7fffffffd734;
mov xmm6_2 L0x7fffffffd738; mov xmm6_3 L0x7fffffffd73c;
(* vpaddd 0x30(%rax),%xmm5,%xmm5                   #! EA = L0x7fffffffd7b0; Value = 0x87b1857987b18579; PC = 0x555555559533 *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd7b0; adds dc xmm5_1 xmm5_1 L0x7fffffffd7b4;
adds dc xmm5_2 xmm5_2 L0x7fffffffd7b8; adds dc xmm5_3 xmm5_3 L0x7fffffffd7bc;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x555555559538 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x55555555953d *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x555555559542 *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559547 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x55555555954b *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559550 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x555555559554 *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x80(%rax),%xmm0                       #! EA = L0x7fffffffd700; Value = 0x4d418efb4d418efb; PC = 0x555555559559 *)
mov xmm0_0 L0x7fffffffd700; mov xmm0_1 L0x7fffffffd704;
mov xmm0_2 L0x7fffffffd708; mov xmm0_3 L0x7fffffffd70c;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x55555555955e *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559563 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559567 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555956c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559570 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559575 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x555555559579 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x55555555957d *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559582 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559586 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555958b *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555958f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559593 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm10,%xmm7                        #! PC = 0x555555559597 *)
split xmm7_0 dc xmm10_0 0x6; split xmm7_1 dc xmm10_1 0x6;
split xmm7_2 dc xmm10_2 0x6; split xmm7_3 dc xmm10_3 0x6;
(* vpslld $0x1a,%xmm10,%xmm2                       #! PC = 0x55555555959d *)
split dc xmm2_0 xmm10_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm10_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm10_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm10_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,-0x60(%rax)                       #! EA = L0x7fffffffd720; PC = 0x5555555595a3 *)
mov L0x7fffffffd720 xmm5_0; mov L0x7fffffffd724 xmm5_1;
mov L0x7fffffffd728 xmm5_2; mov L0x7fffffffd72c xmm5_3;
(* vpaddd %xmm13,%xmm5,%xmm5                       #! PC = 0x5555555595a8 *)
adds dc xmm5_0 xmm5_0 xmm13_0; adds dc xmm5_1 xmm5_1 xmm13_1;
adds dc xmm5_2 xmm5_2 xmm13_2; adds dc xmm5_3 xmm5_3 xmm13_3;
(* vpsrld $0xb,%xmm10,%xmm1                        #! PC = 0x5555555595ad *)
split xmm1_0 dc xmm10_0 0xb; split xmm1_1 dc xmm10_1 0xb;
split xmm1_2 dc xmm10_2 0xb; split xmm1_3 dc xmm10_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555595b3 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm10,%xmm2                       #! PC = 0x5555555595b7 *)
split dc xmm2_0 xmm10_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm10_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm10_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm10_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x40(%rbp),%xmm5,%xmm5                  #! EA = L0x55555555d040; Value = 0x2748774c2748774c; PC = 0x5555555595bd *)
adds dc xmm5_0 xmm5_0 L0x55555555d040; adds dc xmm5_1 xmm5_1 L0x55555555d044;
adds dc xmm5_2 xmm5_2 L0x55555555d048; adds dc xmm5_3 xmm5_3 L0x55555555d04c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555595c2 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm10,%xmm1                       #! PC = 0x5555555595c6 *)
split xmm1_0 dc xmm10_0 0x19; split xmm1_1 dc xmm10_1 0x19;
split xmm1_2 dc xmm10_2 0x19; split xmm1_3 dc xmm10_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555595cc *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm10,%xmm2                        #! PC = 0x5555555595d0 *)
split dc xmm2_0 xmm10_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm10_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm10_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm10_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm12,%xmm10,%xmm0                      #! PC = 0x5555555595d6 *)
not xmm10_0n@uint32 xmm10_0; and xmm0_0@uint32 xmm10_0n xmm12_0;
not xmm10_1n@uint32 xmm10_1; and xmm0_1@uint32 xmm10_1n xmm12_1;
not xmm10_2n@uint32 xmm10_2; and xmm0_2@uint32 xmm10_2n xmm12_2;
not xmm10_3n@uint32 xmm10_3; and xmm0_3@uint32 xmm10_3n xmm12_3;
(* vpand  %xmm11,%xmm10,%xmm3                      #! PC = 0x5555555595db *)
and xmm3_0@uint32 xmm10_0 xmm11_0; and xmm3_1@uint32 xmm10_1 xmm11_1;
and xmm3_2@uint32 xmm10_2 xmm11_2; and xmm3_3@uint32 xmm10_3 xmm11_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555595e0 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm14,%xmm13                       #! PC = 0x5555555595e4 *)
split xmm13_0 dc xmm14_0 0x2; split xmm13_1 dc xmm14_1 0x2;
split xmm13_2 dc xmm14_2 0x2; split xmm13_3 dc xmm14_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555595ea *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm14,%xmm1                       #! PC = 0x5555555595ee *)
split dc xmm1_0 xmm14_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm14_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm14_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm14_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x5555555595f4 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm14,%xmm15,%xmm3                      #! PC = 0x5555555595f8 *)
xor xmm3_0@uint32 xmm15_0 xmm14_0; xor xmm3_1@uint32 xmm15_1 xmm14_1;
xor xmm3_2@uint32 xmm15_2 xmm14_2; xor xmm3_3@uint32 xmm15_3 xmm14_3;
(* vpxor  %xmm1,%xmm13,%xmm13                      #! PC = 0x5555555595fd *)
xor xmm13_0@uint32 xmm13_0 xmm1_0; xor xmm13_1@uint32 xmm13_1 xmm1_1;
xor xmm13_2@uint32 xmm13_2 xmm1_2; xor xmm13_3@uint32 xmm13_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559601 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm14,%xmm1                        #! PC = 0x555555559605 *)
split xmm1_0 dc xmm14_0 0xd; split xmm1_1 dc xmm14_1 0xd;
split xmm1_2 dc xmm14_2 0xd; split xmm1_3 dc xmm14_3 0xd;
(* vpslld $0x13,%xmm14,%xmm2                       #! PC = 0x55555555960b *)
split dc xmm2_0 xmm14_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm14_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm14_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm14_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555559611 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555559615 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm13,%xmm7                       #! PC = 0x555555559619 *)
xor xmm7_0@uint32 xmm13_0 xmm1_0; xor xmm7_1@uint32 xmm13_1 xmm1_1;
xor xmm7_2@uint32 xmm13_2 xmm1_2; xor xmm7_3@uint32 xmm13_3 xmm1_3;
(* vpsrld $0x16,%xmm14,%xmm1                       #! PC = 0x55555555961d *)
split xmm1_0 dc xmm14_0 0x16; split xmm1_1 dc xmm14_1 0x16;
split xmm1_2 dc xmm14_2 0x16; split xmm1_3 dc xmm14_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559623 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm14,%xmm2                        #! PC = 0x555555559627 *)
split dc xmm2_0 xmm14_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm14_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm14_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm14_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm15,%xmm13                      #! PC = 0x55555555962d *)
xor xmm13_0@uint32 xmm15_0 xmm4_0; xor xmm13_1@uint32 xmm15_1 xmm4_1;
xor xmm13_2@uint32 xmm15_2 xmm4_2; xor xmm13_3@uint32 xmm15_3 xmm4_3;
(* vpaddd %xmm5,%xmm9,%xmm9                        #! PC = 0x555555559631 *)
adds dc xmm9_0 xmm9_0 xmm5_0; adds dc xmm9_1 xmm9_1 xmm5_1;
adds dc xmm9_2 xmm9_2 xmm5_2; adds dc xmm9_3 xmm9_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559635 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559639 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm13,%xmm13                      #! PC = 0x55555555963d *)
adds dc xmm13_0 xmm13_0 xmm5_0; adds dc xmm13_1 xmm13_1 xmm5_1;
adds dc xmm13_2 xmm13_2 xmm5_2; adds dc xmm13_3 xmm13_3 xmm5_3;
(* vpaddd %xmm7,%xmm13,%xmm13                      #! PC = 0x555555559641 *)
adds dc xmm13_0 xmm13_0 xmm7_0; adds dc xmm13_1 xmm13_1 xmm7_1;
adds dc xmm13_2 xmm13_2 xmm7_2; adds dc xmm13_3 xmm13_3 xmm7_3;
(* vmovdqu -0x40(%rax),%xmm5                       #! EA = L0x7fffffffd740; Value = 0xf5714d7df5714d7d; PC = 0x555555559645 *)
mov xmm5_0 L0x7fffffffd740; mov xmm5_1 L0x7fffffffd744;
mov xmm5_2 L0x7fffffffd748; mov xmm5_3 L0x7fffffffd74c;
(* vpaddd 0x40(%rax),%xmm6,%xmm6                   #! EA = L0x7fffffffd7c0; Value = 0x68ea39c368ea39c3; PC = 0x55555555964a *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd7c0; adds dc xmm6_1 xmm6_1 L0x7fffffffd7c4;
adds dc xmm6_2 xmm6_2 L0x7fffffffd7c8; adds dc xmm6_3 xmm6_3 L0x7fffffffd7cc;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x55555555964f *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x555555559654 *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x555555559659 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555965e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x555555559662 *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559667 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x55555555966b *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x70(%rax),%xmm0                       #! EA = L0x7fffffffd710; Value = 0xfcc38553fcc38553; PC = 0x555555559670 *)
mov xmm0_0 L0x7fffffffd710; mov xmm0_1 L0x7fffffffd714;
mov xmm0_2 L0x7fffffffd718; mov xmm0_3 L0x7fffffffd71c;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x555555559675 *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555967a *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x55555555967e *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559683 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559687 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555968c *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x555555559690 *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559694 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559699 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x55555555969d *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555596a2 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555596a6 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x5555555596aa *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm9,%xmm7                         #! PC = 0x5555555596ae *)
split xmm7_0 dc xmm9_0 0x6; split xmm7_1 dc xmm9_1 0x6;
split xmm7_2 dc xmm9_2 0x6; split xmm7_3 dc xmm9_3 0x6;
(* vpslld $0x1a,%xmm9,%xmm2                        #! PC = 0x5555555596b4 *)
split dc xmm2_0 xmm9_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm9_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm9_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm9_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,-0x50(%rax)                       #! EA = L0x7fffffffd730; PC = 0x5555555596ba *)
mov L0x7fffffffd730 xmm6_0; mov L0x7fffffffd734 xmm6_1;
mov L0x7fffffffd738 xmm6_2; mov L0x7fffffffd73c xmm6_3;
(* vpaddd %xmm12,%xmm6,%xmm6                       #! PC = 0x5555555596bf *)
adds dc xmm6_0 xmm6_0 xmm12_0; adds dc xmm6_1 xmm6_1 xmm12_1;
adds dc xmm6_2 xmm6_2 xmm12_2; adds dc xmm6_3 xmm6_3 xmm12_3;
(* vpsrld $0xb,%xmm9,%xmm1                         #! PC = 0x5555555596c4 *)
split xmm1_0 dc xmm9_0 0xb; split xmm1_1 dc xmm9_1 0xb;
split xmm1_2 dc xmm9_2 0xb; split xmm1_3 dc xmm9_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555596ca *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm9,%xmm2                        #! PC = 0x5555555596ce *)
split dc xmm2_0 xmm9_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm9_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm9_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm9_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x20(%rbp),%xmm6,%xmm6                  #! EA = L0x55555555d060; Value = 0x34b0bcb534b0bcb5; PC = 0x5555555596d4 *)
adds dc xmm6_0 xmm6_0 L0x55555555d060; adds dc xmm6_1 xmm6_1 L0x55555555d064;
adds dc xmm6_2 xmm6_2 L0x55555555d068; adds dc xmm6_3 xmm6_3 L0x55555555d06c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555596d9 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm9,%xmm1                        #! PC = 0x5555555596dd *)
split xmm1_0 dc xmm9_0 0x19; split xmm1_1 dc xmm9_1 0x19;
split xmm1_2 dc xmm9_2 0x19; split xmm1_3 dc xmm9_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555596e3 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm9,%xmm2                         #! PC = 0x5555555596e7 *)
split dc xmm2_0 xmm9_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm9_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm9_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm9_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm11,%xmm9,%xmm0                       #! PC = 0x5555555596ed *)
not xmm9_0n@uint32 xmm9_0; and xmm0_0@uint32 xmm9_0n xmm11_0;
not xmm9_1n@uint32 xmm9_1; and xmm0_1@uint32 xmm9_1n xmm11_1;
not xmm9_2n@uint32 xmm9_2; and xmm0_2@uint32 xmm9_2n xmm11_2;
not xmm9_3n@uint32 xmm9_3; and xmm0_3@uint32 xmm9_3n xmm11_3;
(* vpand  %xmm10,%xmm9,%xmm4                       #! PC = 0x5555555596f2 *)
and xmm4_0@uint32 xmm9_0 xmm10_0; and xmm4_1@uint32 xmm9_1 xmm10_1;
and xmm4_2@uint32 xmm9_2 xmm10_2; and xmm4_3@uint32 xmm9_3 xmm10_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555596f7 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm13,%xmm12                       #! PC = 0x5555555596fb *)
split xmm12_0 dc xmm13_0 0x2; split xmm12_1 dc xmm13_1 0x2;
split xmm12_2 dc xmm13_2 0x2; split xmm12_3 dc xmm13_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559701 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm13,%xmm1                       #! PC = 0x555555559705 *)
split dc xmm1_0 xmm13_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm13_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm13_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm13_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x55555555970b *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm13,%xmm14,%xmm4                      #! PC = 0x55555555970f *)
xor xmm4_0@uint32 xmm14_0 xmm13_0; xor xmm4_1@uint32 xmm14_1 xmm13_1;
xor xmm4_2@uint32 xmm14_2 xmm13_2; xor xmm4_3@uint32 xmm14_3 xmm13_3;
(* vpxor  %xmm1,%xmm12,%xmm12                      #! PC = 0x555555559714 *)
xor xmm12_0@uint32 xmm12_0 xmm1_0; xor xmm12_1@uint32 xmm12_1 xmm1_1;
xor xmm12_2@uint32 xmm12_2 xmm1_2; xor xmm12_3@uint32 xmm12_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559718 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm13,%xmm1                        #! PC = 0x55555555971c *)
split xmm1_0 dc xmm13_0 0xd; split xmm1_1 dc xmm13_1 0xd;
split xmm1_2 dc xmm13_2 0xd; split xmm1_3 dc xmm13_3 0xd;
(* vpslld $0x13,%xmm13,%xmm2                       #! PC = 0x555555559722 *)
split dc xmm2_0 xmm13_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm13_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm13_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm13_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x555555559728 *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x55555555972c *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm12,%xmm7                       #! PC = 0x555555559730 *)
xor xmm7_0@uint32 xmm12_0 xmm1_0; xor xmm7_1@uint32 xmm12_1 xmm1_1;
xor xmm7_2@uint32 xmm12_2 xmm1_2; xor xmm7_3@uint32 xmm12_3 xmm1_3;
(* vpsrld $0x16,%xmm13,%xmm1                       #! PC = 0x555555559734 *)
split xmm1_0 dc xmm13_0 0x16; split xmm1_1 dc xmm13_1 0x16;
split xmm1_2 dc xmm13_2 0x16; split xmm1_3 dc xmm13_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555973a *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm13,%xmm2                        #! PC = 0x55555555973e *)
split dc xmm2_0 xmm13_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm13_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm13_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm13_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm14,%xmm12                      #! PC = 0x555555559744 *)
xor xmm12_0@uint32 xmm14_0 xmm3_0; xor xmm12_1@uint32 xmm14_1 xmm3_1;
xor xmm12_2@uint32 xmm14_2 xmm3_2; xor xmm12_3@uint32 xmm14_3 xmm3_3;
(* vpaddd %xmm6,%xmm8,%xmm8                        #! PC = 0x555555559748 *)
adds dc xmm8_0 xmm8_0 xmm6_0; adds dc xmm8_1 xmm8_1 xmm6_1;
adds dc xmm8_2 xmm8_2 xmm6_2; adds dc xmm8_3 xmm8_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555974c *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559750 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm12,%xmm12                      #! PC = 0x555555559754 *)
adds dc xmm12_0 xmm12_0 xmm6_0; adds dc xmm12_1 xmm12_1 xmm6_1;
adds dc xmm12_2 xmm12_2 xmm6_2; adds dc xmm12_3 xmm12_3 xmm6_3;
(* vpaddd %xmm7,%xmm12,%xmm12                      #! PC = 0x555555559758 *)
adds dc xmm12_0 xmm12_0 xmm7_0; adds dc xmm12_1 xmm12_1 xmm7_1;
adds dc xmm12_2 xmm12_2 xmm7_2; adds dc xmm12_3 xmm12_3 xmm7_3;
(* vmovdqu -0x30(%rax),%xmm6                       #! EA = L0x7fffffffd750; Value = 0x0ed1cd750ed1cd75; PC = 0x55555555975c *)
mov xmm6_0 L0x7fffffffd750; mov xmm6_1 L0x7fffffffd754;
mov xmm6_2 L0x7fffffffd758; mov xmm6_3 L0x7fffffffd75c;
(* vpaddd 0x50(%rax),%xmm5,%xmm5                   #! EA = L0x7fffffffd7d0; Value = 0x54dd515a54dd515a; PC = 0x555555559761 *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd7d0; adds dc xmm5_1 xmm5_1 L0x7fffffffd7d4;
adds dc xmm5_2 xmm5_2 L0x7fffffffd7d8; adds dc xmm5_3 xmm5_3 L0x7fffffffd7dc;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x555555559766 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x55555555976b *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x555555559770 *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559775 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x555555559779 *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555977e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x555555559782 *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x60(%rax),%xmm0                       #! EA = L0x7fffffffd720; Value = 0x1c0c9bf61c0c9bf6; PC = 0x555555559787 *)
mov xmm0_0 L0x7fffffffd720; mov xmm0_1 L0x7fffffffd724;
mov xmm0_2 L0x7fffffffd728; mov xmm0_3 L0x7fffffffd72c;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x55555555978c *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559791 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559795 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555979a *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x55555555979e *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x5555555597a3 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x5555555597a7 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x5555555597ab *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555597b0 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x5555555597b4 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555597b9 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555597bd *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x5555555597c1 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm8,%xmm7                         #! PC = 0x5555555597c5 *)
split xmm7_0 dc xmm8_0 0x6; split xmm7_1 dc xmm8_1 0x6;
split xmm7_2 dc xmm8_2 0x6; split xmm7_3 dc xmm8_3 0x6;
(* vpslld $0x1a,%xmm8,%xmm2                        #! PC = 0x5555555597cb *)
split dc xmm2_0 xmm8_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm8_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm8_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm8_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,-0x40(%rax)                       #! EA = L0x7fffffffd740; PC = 0x5555555597d1 *)
mov L0x7fffffffd740 xmm5_0; mov L0x7fffffffd744 xmm5_1;
mov L0x7fffffffd748 xmm5_2; mov L0x7fffffffd74c xmm5_3;
(* vpaddd %xmm11,%xmm5,%xmm5                       #! PC = 0x5555555597d6 *)
adds dc xmm5_0 xmm5_0 xmm11_0; adds dc xmm5_1 xmm5_1 xmm11_1;
adds dc xmm5_2 xmm5_2 xmm11_2; adds dc xmm5_3 xmm5_3 xmm11_3;
(* vpsrld $0xb,%xmm8,%xmm1                         #! PC = 0x5555555597db *)
split xmm1_0 dc xmm8_0 0xb; split xmm1_1 dc xmm8_1 0xb;
split xmm1_2 dc xmm8_2 0xb; split xmm1_3 dc xmm8_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555597e1 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm8,%xmm2                        #! PC = 0x5555555597e5 *)
split dc xmm2_0 xmm8_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm8_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm8_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm8_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x0(%rbp),%xmm5,%xmm5                    #! EA = L0x55555555d080; Value = 0x391c0cb3391c0cb3; PC = 0x5555555597eb *)
adds dc xmm5_0 xmm5_0 L0x55555555d080; adds dc xmm5_1 xmm5_1 L0x55555555d084;
adds dc xmm5_2 xmm5_2 L0x55555555d088; adds dc xmm5_3 xmm5_3 L0x55555555d08c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555597f0 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm8,%xmm1                        #! PC = 0x5555555597f4 *)
split xmm1_0 dc xmm8_0 0x19; split xmm1_1 dc xmm8_1 0x19;
split xmm1_2 dc xmm8_2 0x19; split xmm1_3 dc xmm8_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555597fa *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm8,%xmm2                         #! PC = 0x5555555597fe *)
split dc xmm2_0 xmm8_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm8_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm8_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm8_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm10,%xmm8,%xmm0                       #! PC = 0x555555559804 *)
not xmm8_0n@uint32 xmm8_0; and xmm0_0@uint32 xmm8_0n xmm10_0;
not xmm8_1n@uint32 xmm8_1; and xmm0_1@uint32 xmm8_1n xmm10_1;
not xmm8_2n@uint32 xmm8_2; and xmm0_2@uint32 xmm8_2n xmm10_2;
not xmm8_3n@uint32 xmm8_3; and xmm0_3@uint32 xmm8_3n xmm10_3;
(* vpand  %xmm9,%xmm8,%xmm3                        #! PC = 0x555555559809 *)
and xmm3_0@uint32 xmm8_0 xmm9_0; and xmm3_1@uint32 xmm8_1 xmm9_1;
and xmm3_2@uint32 xmm8_2 xmm9_2; and xmm3_3@uint32 xmm8_3 xmm9_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555980e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm12,%xmm11                       #! PC = 0x555555559812 *)
split xmm11_0 dc xmm12_0 0x2; split xmm11_1 dc xmm12_1 0x2;
split xmm11_2 dc xmm12_2 0x2; split xmm11_3 dc xmm12_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559818 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm12,%xmm1                       #! PC = 0x55555555981c *)
split dc xmm1_0 xmm12_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm12_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm12_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm12_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x555555559822 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm12,%xmm13,%xmm3                      #! PC = 0x555555559826 *)
xor xmm3_0@uint32 xmm13_0 xmm12_0; xor xmm3_1@uint32 xmm13_1 xmm12_1;
xor xmm3_2@uint32 xmm13_2 xmm12_2; xor xmm3_3@uint32 xmm13_3 xmm12_3;
(* vpxor  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555555982b *)
xor xmm11_0@uint32 xmm11_0 xmm1_0; xor xmm11_1@uint32 xmm11_1 xmm1_1;
xor xmm11_2@uint32 xmm11_2 xmm1_2; xor xmm11_3@uint32 xmm11_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555982f *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm12,%xmm1                        #! PC = 0x555555559833 *)
split xmm1_0 dc xmm12_0 0xd; split xmm1_1 dc xmm12_1 0xd;
split xmm1_2 dc xmm12_2 0xd; split xmm1_3 dc xmm12_3 0xd;
(* vpslld $0x13,%xmm12,%xmm2                       #! PC = 0x555555559839 *)
split dc xmm2_0 xmm12_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm12_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm12_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm12_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x55555555983f *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555559843 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm11,%xmm7                       #! PC = 0x555555559847 *)
xor xmm7_0@uint32 xmm11_0 xmm1_0; xor xmm7_1@uint32 xmm11_1 xmm1_1;
xor xmm7_2@uint32 xmm11_2 xmm1_2; xor xmm7_3@uint32 xmm11_3 xmm1_3;
(* vpsrld $0x16,%xmm12,%xmm1                       #! PC = 0x55555555984b *)
split xmm1_0 dc xmm12_0 0x16; split xmm1_1 dc xmm12_1 0x16;
split xmm1_2 dc xmm12_2 0x16; split xmm1_3 dc xmm12_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559851 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm12,%xmm2                        #! PC = 0x555555559855 *)
split dc xmm2_0 xmm12_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm12_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm12_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm12_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm13,%xmm11                      #! PC = 0x55555555985b *)
xor xmm11_0@uint32 xmm13_0 xmm4_0; xor xmm11_1@uint32 xmm13_1 xmm4_1;
xor xmm11_2@uint32 xmm13_2 xmm4_2; xor xmm11_3@uint32 xmm13_3 xmm4_3;
(* vpaddd %xmm5,%xmm15,%xmm15                      #! PC = 0x55555555985f *)
adds dc xmm15_0 xmm15_0 xmm5_0; adds dc xmm15_1 xmm15_1 xmm5_1;
adds dc xmm15_2 xmm15_2 xmm5_2; adds dc xmm15_3 xmm15_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559863 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559867 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm11,%xmm11                      #! PC = 0x55555555986b *)
adds dc xmm11_0 xmm11_0 xmm5_0; adds dc xmm11_1 xmm11_1 xmm5_1;
adds dc xmm11_2 xmm11_2 xmm5_2; adds dc xmm11_3 xmm11_3 xmm5_3;
(* vpaddd %xmm7,%xmm11,%xmm11                      #! PC = 0x55555555986f *)
adds dc xmm11_0 xmm11_0 xmm7_0; adds dc xmm11_1 xmm11_1 xmm7_1;
adds dc xmm11_2 xmm11_2 xmm7_2; adds dc xmm11_3 xmm11_3 xmm7_3;
(* vmovdqu -0x20(%rax),%xmm5                       #! EA = L0x7fffffffd760; Value = 0xa63d12b6a63d12b6; PC = 0x555555559873 *)
mov xmm5_0 L0x7fffffffd760; mov xmm5_1 L0x7fffffffd764;
mov xmm5_2 L0x7fffffffd768; mov xmm5_3 L0x7fffffffd76c;
(* vpaddd 0x60(%rax),%xmm6,%xmm6                   #! EA = L0x7fffffffd7e0; Value = 0x71176fd571176fd5; PC = 0x555555559878 *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd7e0; adds dc xmm6_1 xmm6_1 L0x7fffffffd7e4;
adds dc xmm6_2 xmm6_2 L0x7fffffffd7e8; adds dc xmm6_3 xmm6_3 L0x7fffffffd7ec;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x55555555987d *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x555555559882 *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x555555559887 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555988c *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x555555559890 *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559895 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x555555559899 *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x50(%rax),%xmm0                       #! EA = L0x7fffffffd730; Value = 0xa839136ca839136c; PC = 0x55555555989e *)
mov xmm0_0 L0x7fffffffd730; mov xmm0_1 L0x7fffffffd734;
mov xmm0_2 L0x7fffffffd738; mov xmm0_3 L0x7fffffffd73c;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x5555555598a3 *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555598a8 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x5555555598ac *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555598b1 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x5555555598b5 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x5555555598ba *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x5555555598be *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x5555555598c2 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555598c7 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x5555555598cb *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555598d0 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555598d4 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x5555555598d8 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm15,%xmm7                        #! PC = 0x5555555598dc *)
split xmm7_0 dc xmm15_0 0x6; split xmm7_1 dc xmm15_1 0x6;
split xmm7_2 dc xmm15_2 0x6; split xmm7_3 dc xmm15_3 0x6;
(* vpslld $0x1a,%xmm15,%xmm2                       #! PC = 0x5555555598e2 *)
split dc xmm2_0 xmm15_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm15_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm15_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm15_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,-0x30(%rax)                       #! EA = L0x7fffffffd750; PC = 0x5555555598e8 *)
mov L0x7fffffffd750 xmm6_0; mov L0x7fffffffd754 xmm6_1;
mov L0x7fffffffd758 xmm6_2; mov L0x7fffffffd75c xmm6_3;
(* vpaddd %xmm10,%xmm6,%xmm6                       #! PC = 0x5555555598ed *)
adds dc xmm6_0 xmm6_0 xmm10_0; adds dc xmm6_1 xmm6_1 xmm10_1;
adds dc xmm6_2 xmm6_2 xmm10_2; adds dc xmm6_3 xmm6_3 xmm10_3;
(* vpsrld $0xb,%xmm15,%xmm1                        #! PC = 0x5555555598f2 *)
split xmm1_0 dc xmm15_0 0xb; split xmm1_1 dc xmm15_1 0xb;
split xmm1_2 dc xmm15_2 0xb; split xmm1_3 dc xmm15_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555598f8 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm15,%xmm2                       #! PC = 0x5555555598fc *)
split dc xmm2_0 xmm15_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm15_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm15_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm15_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x20(%rbp),%xmm6,%xmm6                   #! EA = L0x55555555d0a0; Value = 0x4ed8aa4a4ed8aa4a; PC = 0x555555559902 *)
adds dc xmm6_0 xmm6_0 L0x55555555d0a0; adds dc xmm6_1 xmm6_1 L0x55555555d0a4;
adds dc xmm6_2 xmm6_2 L0x55555555d0a8; adds dc xmm6_3 xmm6_3 L0x55555555d0ac;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559907 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm15,%xmm1                       #! PC = 0x55555555990b *)
split xmm1_0 dc xmm15_0 0x19; split xmm1_1 dc xmm15_1 0x19;
split xmm1_2 dc xmm15_2 0x19; split xmm1_3 dc xmm15_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559911 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm15,%xmm2                        #! PC = 0x555555559915 *)
split dc xmm2_0 xmm15_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm15_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm15_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm15_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm9,%xmm15,%xmm0                       #! PC = 0x55555555991b *)
not xmm15_0n@uint32 xmm15_0; and xmm0_0@uint32 xmm15_0n xmm9_0;
not xmm15_1n@uint32 xmm15_1; and xmm0_1@uint32 xmm15_1n xmm9_1;
not xmm15_2n@uint32 xmm15_2; and xmm0_2@uint32 xmm15_2n xmm9_2;
not xmm15_3n@uint32 xmm15_3; and xmm0_3@uint32 xmm15_3n xmm9_3;
(* vpand  %xmm8,%xmm15,%xmm4                       #! PC = 0x555555559920 *)
and xmm4_0@uint32 xmm15_0 xmm8_0; and xmm4_1@uint32 xmm15_1 xmm8_1;
and xmm4_2@uint32 xmm15_2 xmm8_2; and xmm4_3@uint32 xmm15_3 xmm8_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559925 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm11,%xmm10                       #! PC = 0x555555559929 *)
split xmm10_0 dc xmm11_0 0x2; split xmm10_1 dc xmm11_1 0x2;
split xmm10_2 dc xmm11_2 0x2; split xmm10_3 dc xmm11_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555992f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm11,%xmm1                       #! PC = 0x555555559933 *)
split dc xmm1_0 xmm11_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm11_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm11_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm11_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x555555559939 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm11,%xmm12,%xmm4                      #! PC = 0x55555555993d *)
xor xmm4_0@uint32 xmm12_0 xmm11_0; xor xmm4_1@uint32 xmm12_1 xmm11_1;
xor xmm4_2@uint32 xmm12_2 xmm11_2; xor xmm4_3@uint32 xmm12_3 xmm11_3;
(* vpxor  %xmm1,%xmm10,%xmm10                      #! PC = 0x555555559942 *)
xor xmm10_0@uint32 xmm10_0 xmm1_0; xor xmm10_1@uint32 xmm10_1 xmm1_1;
xor xmm10_2@uint32 xmm10_2 xmm1_2; xor xmm10_3@uint32 xmm10_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559946 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm11,%xmm1                        #! PC = 0x55555555994a *)
split xmm1_0 dc xmm11_0 0xd; split xmm1_1 dc xmm11_1 0xd;
split xmm1_2 dc xmm11_2 0xd; split xmm1_3 dc xmm11_3 0xd;
(* vpslld $0x13,%xmm11,%xmm2                       #! PC = 0x555555559950 *)
split dc xmm2_0 xmm11_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm11_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm11_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm11_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x555555559956 *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x55555555995a *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm10,%xmm7                       #! PC = 0x55555555995e *)
xor xmm7_0@uint32 xmm10_0 xmm1_0; xor xmm7_1@uint32 xmm10_1 xmm1_1;
xor xmm7_2@uint32 xmm10_2 xmm1_2; xor xmm7_3@uint32 xmm10_3 xmm1_3;
(* vpsrld $0x16,%xmm11,%xmm1                       #! PC = 0x555555559962 *)
split xmm1_0 dc xmm11_0 0x16; split xmm1_1 dc xmm11_1 0x16;
split xmm1_2 dc xmm11_2 0x16; split xmm1_3 dc xmm11_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559968 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm11,%xmm2                        #! PC = 0x55555555996c *)
split dc xmm2_0 xmm11_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm11_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm11_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm11_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm12,%xmm10                      #! PC = 0x555555559972 *)
xor xmm10_0@uint32 xmm12_0 xmm3_0; xor xmm10_1@uint32 xmm12_1 xmm3_1;
xor xmm10_2@uint32 xmm12_2 xmm3_2; xor xmm10_3@uint32 xmm12_3 xmm3_3;
(* vpaddd %xmm6,%xmm14,%xmm14                      #! PC = 0x555555559976 *)
adds dc xmm14_0 xmm14_0 xmm6_0; adds dc xmm14_1 xmm14_1 xmm6_1;
adds dc xmm14_2 xmm14_2 xmm6_2; adds dc xmm14_3 xmm14_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555997a *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555997e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm10,%xmm10                      #! PC = 0x555555559982 *)
adds dc xmm10_0 xmm10_0 xmm6_0; adds dc xmm10_1 xmm10_1 xmm6_1;
adds dc xmm10_2 xmm10_2 xmm6_2; adds dc xmm10_3 xmm10_3 xmm6_3;
(* vpaddd %xmm7,%xmm10,%xmm10                      #! PC = 0x555555559986 *)
adds dc xmm10_0 xmm10_0 xmm7_0; adds dc xmm10_1 xmm10_1 xmm7_1;
adds dc xmm10_2 xmm10_2 xmm7_2; adds dc xmm10_3 xmm10_3 xmm7_3;
(* vmovdqu -0x10(%rax),%xmm6                       #! EA = L0x7fffffffd770; Value = 0xba9bac76ba9bac76; PC = 0x55555555998a *)
mov xmm6_0 L0x7fffffffd770; mov xmm6_1 L0x7fffffffd774;
mov xmm6_2 L0x7fffffffd778; mov xmm6_3 L0x7fffffffd77c;
(* vpaddd 0x70(%rax),%xmm5,%xmm5                   #! EA = L0x7fffffffd7f0; Value = 0xd8ad8d21d8ad8d21; PC = 0x55555555998f *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd7f0; adds dc xmm5_1 xmm5_1 L0x7fffffffd7f4;
adds dc xmm5_2 xmm5_2 L0x7fffffffd7f8; adds dc xmm5_3 xmm5_3 L0x7fffffffd7fc;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x555555559994 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x555555559999 *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x55555555999e *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555599a3 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x5555555599a7 *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555599ac *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x5555555599b0 *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x40(%rax),%xmm0                       #! EA = L0x7fffffffd740; Value = 0xc16c46f8c16c46f8; PC = 0x5555555599b5 *)
mov xmm0_0 L0x7fffffffd740; mov xmm0_1 L0x7fffffffd744;
mov xmm0_2 L0x7fffffffd748; mov xmm0_3 L0x7fffffffd74c;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x5555555599ba *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555599bf *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x5555555599c3 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555599c8 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x5555555599cc *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x5555555599d1 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x5555555599d5 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x5555555599d9 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555599de *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x5555555599e2 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x5555555599e7 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x5555555599eb *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x5555555599ef *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm14,%xmm7                        #! PC = 0x5555555599f3 *)
split xmm7_0 dc xmm14_0 0x6; split xmm7_1 dc xmm14_1 0x6;
split xmm7_2 dc xmm14_2 0x6; split xmm7_3 dc xmm14_3 0x6;
(* vpslld $0x1a,%xmm14,%xmm2                       #! PC = 0x5555555599f9 *)
split dc xmm2_0 xmm14_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm14_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm14_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm14_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,-0x20(%rax)                       #! EA = L0x7fffffffd760; PC = 0x5555555599ff *)
mov L0x7fffffffd760 xmm5_0; mov L0x7fffffffd764 xmm5_1;
mov L0x7fffffffd768 xmm5_2; mov L0x7fffffffd76c xmm5_3;
(* vpaddd %xmm9,%xmm5,%xmm5                        #! PC = 0x555555559a04 *)
adds dc xmm5_0 xmm5_0 xmm9_0; adds dc xmm5_1 xmm5_1 xmm9_1;
adds dc xmm5_2 xmm5_2 xmm9_2; adds dc xmm5_3 xmm5_3 xmm9_3;
(* vpsrld $0xb,%xmm14,%xmm1                        #! PC = 0x555555559a09 *)
split xmm1_0 dc xmm14_0 0xb; split xmm1_1 dc xmm14_1 0xb;
split xmm1_2 dc xmm14_2 0xb; split xmm1_3 dc xmm14_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559a0f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm14,%xmm2                       #! PC = 0x555555559a13 *)
split dc xmm2_0 xmm14_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm14_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm14_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm14_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x40(%rbp),%xmm5,%xmm5                   #! EA = L0x55555555d0c0; Value = 0x5b9cca4f5b9cca4f; PC = 0x555555559a19 *)
adds dc xmm5_0 xmm5_0 L0x55555555d0c0; adds dc xmm5_1 xmm5_1 L0x55555555d0c4;
adds dc xmm5_2 xmm5_2 L0x55555555d0c8; adds dc xmm5_3 xmm5_3 L0x55555555d0cc;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559a1e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm14,%xmm1                       #! PC = 0x555555559a22 *)
split xmm1_0 dc xmm14_0 0x19; split xmm1_1 dc xmm14_1 0x19;
split xmm1_2 dc xmm14_2 0x19; split xmm1_3 dc xmm14_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559a28 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm14,%xmm2                        #! PC = 0x555555559a2c *)
split dc xmm2_0 xmm14_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm14_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm14_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm14_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm8,%xmm14,%xmm0                       #! PC = 0x555555559a32 *)
not xmm14_0n@uint32 xmm14_0; and xmm0_0@uint32 xmm14_0n xmm8_0;
not xmm14_1n@uint32 xmm14_1; and xmm0_1@uint32 xmm14_1n xmm8_1;
not xmm14_2n@uint32 xmm14_2; and xmm0_2@uint32 xmm14_2n xmm8_2;
not xmm14_3n@uint32 xmm14_3; and xmm0_3@uint32 xmm14_3n xmm8_3;
(* vpand  %xmm15,%xmm14,%xmm3                      #! PC = 0x555555559a37 *)
and xmm3_0@uint32 xmm14_0 xmm15_0; and xmm3_1@uint32 xmm14_1 xmm15_1;
and xmm3_2@uint32 xmm14_2 xmm15_2; and xmm3_3@uint32 xmm14_3 xmm15_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559a3c *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm10,%xmm9                        #! PC = 0x555555559a40 *)
split xmm9_0 dc xmm10_0 0x2; split xmm9_1 dc xmm10_1 0x2;
split xmm9_2 dc xmm10_2 0x2; split xmm9_3 dc xmm10_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559a46 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm10,%xmm1                       #! PC = 0x555555559a4a *)
split dc xmm1_0 xmm10_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm10_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm10_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm10_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x555555559a50 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm10,%xmm11,%xmm3                      #! PC = 0x555555559a54 *)
xor xmm3_0@uint32 xmm11_0 xmm10_0; xor xmm3_1@uint32 xmm11_1 xmm10_1;
xor xmm3_2@uint32 xmm11_2 xmm10_2; xor xmm3_3@uint32 xmm11_3 xmm10_3;
(* vpxor  %xmm1,%xmm9,%xmm9                        #! PC = 0x555555559a59 *)
xor xmm9_0@uint32 xmm9_0 xmm1_0; xor xmm9_1@uint32 xmm9_1 xmm1_1;
xor xmm9_2@uint32 xmm9_2 xmm1_2; xor xmm9_3@uint32 xmm9_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559a5d *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm10,%xmm1                        #! PC = 0x555555559a61 *)
split xmm1_0 dc xmm10_0 0xd; split xmm1_1 dc xmm10_1 0xd;
split xmm1_2 dc xmm10_2 0xd; split xmm1_3 dc xmm10_3 0xd;
(* vpslld $0x13,%xmm10,%xmm2                       #! PC = 0x555555559a67 *)
split dc xmm2_0 xmm10_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm10_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm10_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm10_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555559a6d *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555559a71 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm9,%xmm7                        #! PC = 0x555555559a75 *)
xor xmm7_0@uint32 xmm9_0 xmm1_0; xor xmm7_1@uint32 xmm9_1 xmm1_1;
xor xmm7_2@uint32 xmm9_2 xmm1_2; xor xmm7_3@uint32 xmm9_3 xmm1_3;
(* vpsrld $0x16,%xmm10,%xmm1                       #! PC = 0x555555559a79 *)
split xmm1_0 dc xmm10_0 0x16; split xmm1_1 dc xmm10_1 0x16;
split xmm1_2 dc xmm10_2 0x16; split xmm1_3 dc xmm10_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559a7f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm10,%xmm2                        #! PC = 0x555555559a83 *)
split dc xmm2_0 xmm10_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm10_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm10_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm10_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm11,%xmm9                       #! PC = 0x555555559a89 *)
xor xmm9_0@uint32 xmm11_0 xmm4_0; xor xmm9_1@uint32 xmm11_1 xmm4_1;
xor xmm9_2@uint32 xmm11_2 xmm4_2; xor xmm9_3@uint32 xmm11_3 xmm4_3;
(* vpaddd %xmm5,%xmm13,%xmm13                      #! PC = 0x555555559a8d *)
adds dc xmm13_0 xmm13_0 xmm5_0; adds dc xmm13_1 xmm13_1 xmm5_1;
adds dc xmm13_2 xmm13_2 xmm5_2; adds dc xmm13_3 xmm13_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559a91 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559a95 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm9,%xmm9                        #! PC = 0x555555559a99 *)
adds dc xmm9_0 xmm9_0 xmm5_0; adds dc xmm9_1 xmm9_1 xmm5_1;
adds dc xmm9_2 xmm9_2 xmm5_2; adds dc xmm9_3 xmm9_3 xmm5_3;
(* vpaddd %xmm7,%xmm9,%xmm9                        #! PC = 0x555555559a9d *)
adds dc xmm9_0 xmm9_0 xmm7_0; adds dc xmm9_1 xmm9_1 xmm7_1;
adds dc xmm9_2 xmm9_2 xmm7_2; adds dc xmm9_3 xmm9_3 xmm7_3;
(* vmovdqu (%rax),%xmm5                            #! EA = L0x7fffffffd780; Value = 0x3dbb53ee3dbb53ee; PC = 0x555555559aa1 *)
mov xmm5_0 L0x7fffffffd780; mov xmm5_1 L0x7fffffffd784;
mov xmm5_2 L0x7fffffffd788; mov xmm5_3 L0x7fffffffd78c;
(* vpaddd -0x80(%rax),%xmm6,%xmm6                  #! EA = L0x7fffffffd700; Value = 0x4d418efb4d418efb; PC = 0x555555559aa5 *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd700; adds dc xmm6_1 xmm6_1 L0x7fffffffd704;
adds dc xmm6_2 xmm6_2 L0x7fffffffd708; adds dc xmm6_3 xmm6_3 L0x7fffffffd70c;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x555555559aaa *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x555555559aaf *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x555555559ab4 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559ab9 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x555555559abd *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559ac2 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x555555559ac6 *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x30(%rax),%xmm0                       #! EA = L0x7fffffffd750; Value = 0x69017ea569017ea5; PC = 0x555555559acb *)
mov xmm0_0 L0x7fffffffd750; mov xmm0_1 L0x7fffffffd754;
mov xmm0_2 L0x7fffffffd758; mov xmm0_3 L0x7fffffffd75c;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x555555559ad0 *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559ad5 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559ad9 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559ade *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559ae2 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559ae7 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x555555559aeb *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559aef *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559af4 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559af8 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559afd *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559b01 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559b05 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm13,%xmm7                        #! PC = 0x555555559b09 *)
split xmm7_0 dc xmm13_0 0x6; split xmm7_1 dc xmm13_1 0x6;
split xmm7_2 dc xmm13_2 0x6; split xmm7_3 dc xmm13_3 0x6;
(* vpslld $0x1a,%xmm13,%xmm2                       #! PC = 0x555555559b0f *)
split dc xmm2_0 xmm13_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm13_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm13_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm13_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,-0x10(%rax)                       #! EA = L0x7fffffffd770; PC = 0x555555559b15 *)
mov L0x7fffffffd770 xmm6_0; mov L0x7fffffffd774 xmm6_1;
mov L0x7fffffffd778 xmm6_2; mov L0x7fffffffd77c xmm6_3;
(* vpaddd %xmm8,%xmm6,%xmm6                        #! PC = 0x555555559b1a *)
adds dc xmm6_0 xmm6_0 xmm8_0; adds dc xmm6_1 xmm6_1 xmm8_1;
adds dc xmm6_2 xmm6_2 xmm8_2; adds dc xmm6_3 xmm6_3 xmm8_3;
(* vpsrld $0xb,%xmm13,%xmm1                        #! PC = 0x555555559b1f *)
split xmm1_0 dc xmm13_0 0xb; split xmm1_1 dc xmm13_1 0xb;
split xmm1_2 dc xmm13_2 0xb; split xmm1_3 dc xmm13_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559b25 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm13,%xmm2                       #! PC = 0x555555559b29 *)
split dc xmm2_0 xmm13_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm13_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm13_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm13_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x60(%rbp),%xmm6,%xmm6                   #! EA = L0x55555555d0e0; Value = 0x682e6ff3682e6ff3; PC = 0x555555559b2f *)
adds dc xmm6_0 xmm6_0 L0x55555555d0e0; adds dc xmm6_1 xmm6_1 L0x55555555d0e4;
adds dc xmm6_2 xmm6_2 L0x55555555d0e8; adds dc xmm6_3 xmm6_3 L0x55555555d0ec;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559b34 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm13,%xmm1                       #! PC = 0x555555559b38 *)
split xmm1_0 dc xmm13_0 0x19; split xmm1_1 dc xmm13_1 0x19;
split xmm1_2 dc xmm13_2 0x19; split xmm1_3 dc xmm13_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559b3e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm13,%xmm2                        #! PC = 0x555555559b42 *)
split dc xmm2_0 xmm13_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm13_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm13_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm13_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm15,%xmm13,%xmm0                      #! PC = 0x555555559b48 *)
not xmm13_0n@uint32 xmm13_0; and xmm0_0@uint32 xmm13_0n xmm15_0;
not xmm13_1n@uint32 xmm13_1; and xmm0_1@uint32 xmm13_1n xmm15_1;
not xmm13_2n@uint32 xmm13_2; and xmm0_2@uint32 xmm13_2n xmm15_2;
not xmm13_3n@uint32 xmm13_3; and xmm0_3@uint32 xmm13_3n xmm15_3;
(* vpand  %xmm14,%xmm13,%xmm4                      #! PC = 0x555555559b4d *)
and xmm4_0@uint32 xmm13_0 xmm14_0; and xmm4_1@uint32 xmm13_1 xmm14_1;
and xmm4_2@uint32 xmm13_2 xmm14_2; and xmm4_3@uint32 xmm13_3 xmm14_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559b52 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm9,%xmm8                         #! PC = 0x555555559b56 *)
split xmm8_0 dc xmm9_0 0x2; split xmm8_1 dc xmm9_1 0x2;
split xmm8_2 dc xmm9_2 0x2; split xmm8_3 dc xmm9_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559b5c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm9,%xmm1                        #! PC = 0x555555559b60 *)
split dc xmm1_0 xmm9_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm9_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm9_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm9_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x555555559b66 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm9,%xmm10,%xmm4                       #! PC = 0x555555559b6a *)
xor xmm4_0@uint32 xmm10_0 xmm9_0; xor xmm4_1@uint32 xmm10_1 xmm9_1;
xor xmm4_2@uint32 xmm10_2 xmm9_2; xor xmm4_3@uint32 xmm10_3 xmm9_3;
(* vpxor  %xmm1,%xmm8,%xmm8                        #! PC = 0x555555559b6f *)
xor xmm8_0@uint32 xmm8_0 xmm1_0; xor xmm8_1@uint32 xmm8_1 xmm1_1;
xor xmm8_2@uint32 xmm8_2 xmm1_2; xor xmm8_3@uint32 xmm8_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559b73 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm9,%xmm1                         #! PC = 0x555555559b77 *)
split xmm1_0 dc xmm9_0 0xd; split xmm1_1 dc xmm9_1 0xd;
split xmm1_2 dc xmm9_2 0xd; split xmm1_3 dc xmm9_3 0xd;
(* vpslld $0x13,%xmm9,%xmm2                        #! PC = 0x555555559b7d *)
split dc xmm2_0 xmm9_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm9_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm9_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm9_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x555555559b83 *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x555555559b87 *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm8,%xmm7                        #! PC = 0x555555559b8b *)
xor xmm7_0@uint32 xmm8_0 xmm1_0; xor xmm7_1@uint32 xmm8_1 xmm1_1;
xor xmm7_2@uint32 xmm8_2 xmm1_2; xor xmm7_3@uint32 xmm8_3 xmm1_3;
(* vpsrld $0x16,%xmm9,%xmm1                        #! PC = 0x555555559b8f *)
split xmm1_0 dc xmm9_0 0x16; split xmm1_1 dc xmm9_1 0x16;
split xmm1_2 dc xmm9_2 0x16; split xmm1_3 dc xmm9_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559b95 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm9,%xmm2                         #! PC = 0x555555559b99 *)
split dc xmm2_0 xmm9_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm9_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm9_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm9_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm10,%xmm8                       #! PC = 0x555555559b9f *)
xor xmm8_0@uint32 xmm10_0 xmm3_0; xor xmm8_1@uint32 xmm10_1 xmm3_1;
xor xmm8_2@uint32 xmm10_2 xmm3_2; xor xmm8_3@uint32 xmm10_3 xmm3_3;
(* vpaddd %xmm6,%xmm12,%xmm12                      #! PC = 0x555555559ba3 *)
adds dc xmm12_0 xmm12_0 xmm6_0; adds dc xmm12_1 xmm12_1 xmm6_1;
adds dc xmm12_2 xmm12_2 xmm6_2; adds dc xmm12_3 xmm12_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559ba7 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559bab *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm8,%xmm8                        #! PC = 0x555555559baf *)
adds dc xmm8_0 xmm8_0 xmm6_0; adds dc xmm8_1 xmm8_1 xmm6_1;
adds dc xmm8_2 xmm8_2 xmm6_2; adds dc xmm8_3 xmm8_3 xmm6_3;
(* vpaddd %xmm7,%xmm8,%xmm8                        #! PC = 0x555555559bb3 *)
adds dc xmm8_0 xmm8_0 xmm7_0; adds dc xmm8_1 xmm8_1 xmm7_1;
adds dc xmm8_2 xmm8_2 xmm7_2; adds dc xmm8_3 xmm8_3 xmm7_3;
(* add    $0x100,%rbp                              #! PC = 0x555555559bb7 *)
(* add 0x100, rbp *)
nop;
(* vmovdqu 0x10(%rax),%xmm6                        #! EA = L0x7fffffffd790; Value = 0xff244931ff244931; PC = 0x555555559bbe *)
mov xmm6_0 L0x7fffffffd790; mov xmm6_1 L0x7fffffffd794;
mov xmm6_2 L0x7fffffffd798; mov xmm6_3 L0x7fffffffd79c;
(* vpaddd -0x70(%rax),%xmm5,%xmm5                  #! EA = L0x7fffffffd710; Value = 0xfcc38553fcc38553; PC = 0x555555559bc3 *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd710; adds dc xmm5_1 xmm5_1 L0x7fffffffd714;
adds dc xmm5_2 xmm5_2 L0x7fffffffd718; adds dc xmm5_3 xmm5_3 L0x7fffffffd71c;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x555555559bc8 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x555555559bcd *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x555555559bd2 *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559bd7 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x555555559bdb *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559be0 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x555555559be4 *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x20(%rax),%xmm0                       #! EA = L0x7fffffffd760; Value = 0x3bb9afd13bb9afd1; PC = 0x555555559be9 *)
mov xmm0_0 L0x7fffffffd760; mov xmm0_1 L0x7fffffffd764;
mov xmm0_2 L0x7fffffffd768; mov xmm0_3 L0x7fffffffd76c;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x555555559bee *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559bf3 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559bf7 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559bfc *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559c00 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559c05 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x555555559c09 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559c0d *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559c12 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559c16 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559c1b *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559c1f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559c23 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm12,%xmm7                        #! PC = 0x555555559c27 *)
split xmm7_0 dc xmm12_0 0x6; split xmm7_1 dc xmm12_1 0x6;
split xmm7_2 dc xmm12_2 0x6; split xmm7_3 dc xmm12_3 0x6;
(* vpslld $0x1a,%xmm12,%xmm2                       #! PC = 0x555555559c2d *)
split dc xmm2_0 xmm12_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm12_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm12_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm12_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,(%rax)                            #! EA = L0x7fffffffd780; PC = 0x555555559c33 *)
mov L0x7fffffffd780 xmm5_0; mov L0x7fffffffd784 xmm5_1;
mov L0x7fffffffd788 xmm5_2; mov L0x7fffffffd78c xmm5_3;
(* vpaddd %xmm15,%xmm5,%xmm5                       #! PC = 0x555555559c37 *)
adds dc xmm5_0 xmm5_0 xmm15_0; adds dc xmm5_1 xmm5_1 xmm15_1;
adds dc xmm5_2 xmm5_2 xmm15_2; adds dc xmm5_3 xmm5_3 xmm15_3;
(* vpsrld $0xb,%xmm12,%xmm1                        #! PC = 0x555555559c3c *)
split xmm1_0 dc xmm12_0 0xb; split xmm1_1 dc xmm12_1 0xb;
split xmm1_2 dc xmm12_2 0xb; split xmm1_3 dc xmm12_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559c42 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm12,%xmm2                       #! PC = 0x555555559c46 *)
split dc xmm2_0 xmm12_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm12_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm12_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm12_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x80(%rbp),%xmm5,%xmm5                  #! EA = L0x55555555d100; Value = 0x748f82ee748f82ee; PC = 0x555555559c4c *)
adds dc xmm5_0 xmm5_0 L0x55555555d100; adds dc xmm5_1 xmm5_1 L0x55555555d104;
adds dc xmm5_2 xmm5_2 L0x55555555d108; adds dc xmm5_3 xmm5_3 L0x55555555d10c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559c51 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm12,%xmm1                       #! PC = 0x555555559c55 *)
split xmm1_0 dc xmm12_0 0x19; split xmm1_1 dc xmm12_1 0x19;
split xmm1_2 dc xmm12_2 0x19; split xmm1_3 dc xmm12_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559c5b *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm12,%xmm2                        #! PC = 0x555555559c5f *)
split dc xmm2_0 xmm12_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm12_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm12_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm12_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm14,%xmm12,%xmm0                      #! PC = 0x555555559c65 *)
not xmm12_0n@uint32 xmm12_0; and xmm0_0@uint32 xmm12_0n xmm14_0;
not xmm12_1n@uint32 xmm12_1; and xmm0_1@uint32 xmm12_1n xmm14_1;
not xmm12_2n@uint32 xmm12_2; and xmm0_2@uint32 xmm12_2n xmm14_2;
not xmm12_3n@uint32 xmm12_3; and xmm0_3@uint32 xmm12_3n xmm14_3;
(* vpand  %xmm13,%xmm12,%xmm3                      #! PC = 0x555555559c6a *)
and xmm3_0@uint32 xmm12_0 xmm13_0; and xmm3_1@uint32 xmm12_1 xmm13_1;
and xmm3_2@uint32 xmm12_2 xmm13_2; and xmm3_3@uint32 xmm12_3 xmm13_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559c6f *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm8,%xmm15                        #! PC = 0x555555559c73 *)
split xmm15_0 dc xmm8_0 0x2; split xmm15_1 dc xmm8_1 0x2;
split xmm15_2 dc xmm8_2 0x2; split xmm15_3 dc xmm8_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559c79 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm8,%xmm1                        #! PC = 0x555555559c7d *)
split dc xmm1_0 xmm8_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm8_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm8_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm8_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x555555559c83 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm8,%xmm9,%xmm3                        #! PC = 0x555555559c87 *)
xor xmm3_0@uint32 xmm9_0 xmm8_0; xor xmm3_1@uint32 xmm9_1 xmm8_1;
xor xmm3_2@uint32 xmm9_2 xmm8_2; xor xmm3_3@uint32 xmm9_3 xmm8_3;
(* vpxor  %xmm1,%xmm15,%xmm15                      #! PC = 0x555555559c8c *)
xor xmm15_0@uint32 xmm15_0 xmm1_0; xor xmm15_1@uint32 xmm15_1 xmm1_1;
xor xmm15_2@uint32 xmm15_2 xmm1_2; xor xmm15_3@uint32 xmm15_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559c90 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm8,%xmm1                         #! PC = 0x555555559c94 *)
split xmm1_0 dc xmm8_0 0xd; split xmm1_1 dc xmm8_1 0xd;
split xmm1_2 dc xmm8_2 0xd; split xmm1_3 dc xmm8_3 0xd;
(* vpslld $0x13,%xmm8,%xmm2                        #! PC = 0x555555559c9a *)
split dc xmm2_0 xmm8_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm8_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm8_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm8_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555559ca0 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555559ca4 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm15,%xmm7                       #! PC = 0x555555559ca8 *)
xor xmm7_0@uint32 xmm15_0 xmm1_0; xor xmm7_1@uint32 xmm15_1 xmm1_1;
xor xmm7_2@uint32 xmm15_2 xmm1_2; xor xmm7_3@uint32 xmm15_3 xmm1_3;
(* vpsrld $0x16,%xmm8,%xmm1                        #! PC = 0x555555559cac *)
split xmm1_0 dc xmm8_0 0x16; split xmm1_1 dc xmm8_1 0x16;
split xmm1_2 dc xmm8_2 0x16; split xmm1_3 dc xmm8_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559cb2 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm8,%xmm2                         #! PC = 0x555555559cb6 *)
split dc xmm2_0 xmm8_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm8_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm8_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm8_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm9,%xmm15                       #! PC = 0x555555559cbc *)
xor xmm15_0@uint32 xmm9_0 xmm4_0; xor xmm15_1@uint32 xmm9_1 xmm4_1;
xor xmm15_2@uint32 xmm9_2 xmm4_2; xor xmm15_3@uint32 xmm9_3 xmm4_3;
(* vpaddd %xmm5,%xmm11,%xmm11                      #! PC = 0x555555559cc0 *)
adds dc xmm11_0 xmm11_0 xmm5_0; adds dc xmm11_1 xmm11_1 xmm5_1;
adds dc xmm11_2 xmm11_2 xmm5_2; adds dc xmm11_3 xmm11_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559cc4 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559cc8 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm15,%xmm15                      #! PC = 0x555555559ccc *)
adds dc xmm15_0 xmm15_0 xmm5_0; adds dc xmm15_1 xmm15_1 xmm5_1;
adds dc xmm15_2 xmm15_2 xmm5_2; adds dc xmm15_3 xmm15_3 xmm5_3;
(* vpaddd %xmm7,%xmm15,%xmm15                      #! PC = 0x555555559cd0 *)
adds dc xmm15_0 xmm15_0 xmm7_0; adds dc xmm15_1 xmm15_1 xmm7_1;
adds dc xmm15_2 xmm15_2 xmm7_2; adds dc xmm15_3 xmm15_3 xmm7_3;
(* vmovdqu 0x20(%rax),%xmm5                        #! EA = L0x7fffffffd7a0; Value = 0x64ee162664ee1626; PC = 0x555555559cd4 *)
mov xmm5_0 L0x7fffffffd7a0; mov xmm5_1 L0x7fffffffd7a4;
mov xmm5_2 L0x7fffffffd7a8; mov xmm5_3 L0x7fffffffd7ac;
(* vpaddd -0x60(%rax),%xmm6,%xmm6                  #! EA = L0x7fffffffd720; Value = 0x1c0c9bf61c0c9bf6; PC = 0x555555559cd9 *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd720; adds dc xmm6_1 xmm6_1 L0x7fffffffd724;
adds dc xmm6_2 xmm6_2 L0x7fffffffd728; adds dc xmm6_3 xmm6_3 L0x7fffffffd72c;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x555555559cde *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x555555559ce3 *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x555555559ce8 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559ced *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x555555559cf1 *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559cf6 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x555555559cfa *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu -0x10(%rax),%xmm0                       #! EA = L0x7fffffffd770; Value = 0xa7b12924a7b12924; PC = 0x555555559cff *)
mov xmm0_0 L0x7fffffffd770; mov xmm0_1 L0x7fffffffd774;
mov xmm0_2 L0x7fffffffd778; mov xmm0_3 L0x7fffffffd77c;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x555555559d04 *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559d09 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559d0d *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559d12 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559d16 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559d1b *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x555555559d1f *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559d23 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559d28 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559d2c *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559d31 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559d35 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559d39 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm11,%xmm7                        #! PC = 0x555555559d3d *)
split xmm7_0 dc xmm11_0 0x6; split xmm7_1 dc xmm11_1 0x6;
split xmm7_2 dc xmm11_2 0x6; split xmm7_3 dc xmm11_3 0x6;
(* vpslld $0x1a,%xmm11,%xmm2                       #! PC = 0x555555559d43 *)
split dc xmm2_0 xmm11_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm11_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm11_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm11_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,0x10(%rax)                        #! EA = L0x7fffffffd790; PC = 0x555555559d49 *)
mov L0x7fffffffd790 xmm6_0; mov L0x7fffffffd794 xmm6_1;
mov L0x7fffffffd798 xmm6_2; mov L0x7fffffffd79c xmm6_3;
(* vpaddd %xmm14,%xmm6,%xmm6                       #! PC = 0x555555559d4e *)
adds dc xmm6_0 xmm6_0 xmm14_0; adds dc xmm6_1 xmm6_1 xmm14_1;
adds dc xmm6_2 xmm6_2 xmm14_2; adds dc xmm6_3 xmm6_3 xmm14_3;
(* vpsrld $0xb,%xmm11,%xmm1                        #! PC = 0x555555559d53 *)
split xmm1_0 dc xmm11_0 0xb; split xmm1_1 dc xmm11_1 0xb;
split xmm1_2 dc xmm11_2 0xb; split xmm1_3 dc xmm11_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559d59 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm11,%xmm2                       #! PC = 0x555555559d5d *)
split dc xmm2_0 xmm11_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm11_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm11_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm11_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x60(%rbp),%xmm6,%xmm6                  #! EA = L0x55555555d120; Value = 0x78a5636f78a5636f; PC = 0x555555559d63 *)
adds dc xmm6_0 xmm6_0 L0x55555555d120; adds dc xmm6_1 xmm6_1 L0x55555555d124;
adds dc xmm6_2 xmm6_2 L0x55555555d128; adds dc xmm6_3 xmm6_3 L0x55555555d12c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559d68 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm11,%xmm1                       #! PC = 0x555555559d6c *)
split xmm1_0 dc xmm11_0 0x19; split xmm1_1 dc xmm11_1 0x19;
split xmm1_2 dc xmm11_2 0x19; split xmm1_3 dc xmm11_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559d72 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm11,%xmm2                        #! PC = 0x555555559d76 *)
split dc xmm2_0 xmm11_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm11_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm11_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm11_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm13,%xmm11,%xmm0                      #! PC = 0x555555559d7c *)
not xmm11_0n@uint32 xmm11_0; and xmm0_0@uint32 xmm11_0n xmm13_0;
not xmm11_1n@uint32 xmm11_1; and xmm0_1@uint32 xmm11_1n xmm13_1;
not xmm11_2n@uint32 xmm11_2; and xmm0_2@uint32 xmm11_2n xmm13_2;
not xmm11_3n@uint32 xmm11_3; and xmm0_3@uint32 xmm11_3n xmm13_3;
(* vpand  %xmm12,%xmm11,%xmm4                      #! PC = 0x555555559d81 *)
and xmm4_0@uint32 xmm11_0 xmm12_0; and xmm4_1@uint32 xmm11_1 xmm12_1;
and xmm4_2@uint32 xmm11_2 xmm12_2; and xmm4_3@uint32 xmm11_3 xmm12_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559d86 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm15,%xmm14                       #! PC = 0x555555559d8a *)
split xmm14_0 dc xmm15_0 0x2; split xmm14_1 dc xmm15_1 0x2;
split xmm14_2 dc xmm15_2 0x2; split xmm14_3 dc xmm15_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559d90 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm15,%xmm1                       #! PC = 0x555555559d94 *)
split dc xmm1_0 xmm15_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm15_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm15_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm15_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x555555559d9a *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm15,%xmm8,%xmm4                       #! PC = 0x555555559d9e *)
xor xmm4_0@uint32 xmm8_0 xmm15_0; xor xmm4_1@uint32 xmm8_1 xmm15_1;
xor xmm4_2@uint32 xmm8_2 xmm15_2; xor xmm4_3@uint32 xmm8_3 xmm15_3;
(* vpxor  %xmm1,%xmm14,%xmm14                      #! PC = 0x555555559da3 *)
xor xmm14_0@uint32 xmm14_0 xmm1_0; xor xmm14_1@uint32 xmm14_1 xmm1_1;
xor xmm14_2@uint32 xmm14_2 xmm1_2; xor xmm14_3@uint32 xmm14_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559da7 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm15,%xmm1                        #! PC = 0x555555559dab *)
split xmm1_0 dc xmm15_0 0xd; split xmm1_1 dc xmm15_1 0xd;
split xmm1_2 dc xmm15_2 0xd; split xmm1_3 dc xmm15_3 0xd;
(* vpslld $0x13,%xmm15,%xmm2                       #! PC = 0x555555559db1 *)
split dc xmm2_0 xmm15_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm15_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm15_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm15_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x555555559db7 *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x555555559dbb *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm14,%xmm7                       #! PC = 0x555555559dbf *)
xor xmm7_0@uint32 xmm14_0 xmm1_0; xor xmm7_1@uint32 xmm14_1 xmm1_1;
xor xmm7_2@uint32 xmm14_2 xmm1_2; xor xmm7_3@uint32 xmm14_3 xmm1_3;
(* vpsrld $0x16,%xmm15,%xmm1                       #! PC = 0x555555559dc3 *)
split xmm1_0 dc xmm15_0 0x16; split xmm1_1 dc xmm15_1 0x16;
split xmm1_2 dc xmm15_2 0x16; split xmm1_3 dc xmm15_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559dc9 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm15,%xmm2                        #! PC = 0x555555559dcd *)
split dc xmm2_0 xmm15_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm15_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm15_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm15_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm8,%xmm14                       #! PC = 0x555555559dd3 *)
xor xmm14_0@uint32 xmm8_0 xmm3_0; xor xmm14_1@uint32 xmm8_1 xmm3_1;
xor xmm14_2@uint32 xmm8_2 xmm3_2; xor xmm14_3@uint32 xmm8_3 xmm3_3;
(* vpaddd %xmm6,%xmm10,%xmm10                      #! PC = 0x555555559dd7 *)
adds dc xmm10_0 xmm10_0 xmm6_0; adds dc xmm10_1 xmm10_1 xmm6_1;
adds dc xmm10_2 xmm10_2 xmm6_2; adds dc xmm10_3 xmm10_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559ddb *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559ddf *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm14,%xmm14                      #! PC = 0x555555559de3 *)
adds dc xmm14_0 xmm14_0 xmm6_0; adds dc xmm14_1 xmm14_1 xmm6_1;
adds dc xmm14_2 xmm14_2 xmm6_2; adds dc xmm14_3 xmm14_3 xmm6_3;
(* vpaddd %xmm7,%xmm14,%xmm14                      #! PC = 0x555555559de7 *)
adds dc xmm14_0 xmm14_0 xmm7_0; adds dc xmm14_1 xmm14_1 xmm7_1;
adds dc xmm14_2 xmm14_2 xmm7_2; adds dc xmm14_3 xmm14_3 xmm7_3;
(* vmovdqu 0x30(%rax),%xmm6                        #! EA = L0x7fffffffd7b0; Value = 0x87b1857987b18579; PC = 0x555555559deb *)
mov xmm6_0 L0x7fffffffd7b0; mov xmm6_1 L0x7fffffffd7b4;
mov xmm6_2 L0x7fffffffd7b8; mov xmm6_3 L0x7fffffffd7bc;
(* vpaddd -0x50(%rax),%xmm5,%xmm5                  #! EA = L0x7fffffffd730; Value = 0xa839136ca839136c; PC = 0x555555559df0 *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd730; adds dc xmm5_1 xmm5_1 L0x7fffffffd734;
adds dc xmm5_2 xmm5_2 L0x7fffffffd738; adds dc xmm5_3 xmm5_3 L0x7fffffffd73c;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x555555559df5 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x555555559dfa *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x555555559dff *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559e04 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x555555559e08 *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559e0d *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x555555559e11 *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu (%rax),%xmm0                            #! EA = L0x7fffffffd780; Value = 0x8af1ec7e8af1ec7e; PC = 0x555555559e16 *)
mov xmm0_0 L0x7fffffffd780; mov xmm0_1 L0x7fffffffd784;
mov xmm0_2 L0x7fffffffd788; mov xmm0_3 L0x7fffffffd78c;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x555555559e1a *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559e1f *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559e23 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559e28 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559e2c *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559e31 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x555555559e35 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559e39 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559e3e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559e42 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559e47 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559e4b *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559e4f *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm10,%xmm7                        #! PC = 0x555555559e53 *)
split xmm7_0 dc xmm10_0 0x6; split xmm7_1 dc xmm10_1 0x6;
split xmm7_2 dc xmm10_2 0x6; split xmm7_3 dc xmm10_3 0x6;
(* vpslld $0x1a,%xmm10,%xmm2                       #! PC = 0x555555559e59 *)
split dc xmm2_0 xmm10_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm10_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm10_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm10_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,0x20(%rax)                        #! EA = L0x7fffffffd7a0; PC = 0x555555559e5f *)
mov L0x7fffffffd7a0 xmm5_0; mov L0x7fffffffd7a4 xmm5_1;
mov L0x7fffffffd7a8 xmm5_2; mov L0x7fffffffd7ac xmm5_3;
(* vpaddd %xmm13,%xmm5,%xmm5                       #! PC = 0x555555559e64 *)
adds dc xmm5_0 xmm5_0 xmm13_0; adds dc xmm5_1 xmm5_1 xmm13_1;
adds dc xmm5_2 xmm5_2 xmm13_2; adds dc xmm5_3 xmm5_3 xmm13_3;
(* vpsrld $0xb,%xmm10,%xmm1                        #! PC = 0x555555559e69 *)
split xmm1_0 dc xmm10_0 0xb; split xmm1_1 dc xmm10_1 0xb;
split xmm1_2 dc xmm10_2 0xb; split xmm1_3 dc xmm10_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559e6f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm10,%xmm2                       #! PC = 0x555555559e73 *)
split dc xmm2_0 xmm10_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm10_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm10_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm10_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x40(%rbp),%xmm5,%xmm5                  #! EA = L0x55555555d140; Value = 0x84c8781484c87814; PC = 0x555555559e79 *)
adds dc xmm5_0 xmm5_0 L0x55555555d140; adds dc xmm5_1 xmm5_1 L0x55555555d144;
adds dc xmm5_2 xmm5_2 L0x55555555d148; adds dc xmm5_3 xmm5_3 L0x55555555d14c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559e7e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm10,%xmm1                       #! PC = 0x555555559e82 *)
split xmm1_0 dc xmm10_0 0x19; split xmm1_1 dc xmm10_1 0x19;
split xmm1_2 dc xmm10_2 0x19; split xmm1_3 dc xmm10_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559e88 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm10,%xmm2                        #! PC = 0x555555559e8c *)
split dc xmm2_0 xmm10_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm10_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm10_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm10_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm12,%xmm10,%xmm0                      #! PC = 0x555555559e92 *)
not xmm10_0n@uint32 xmm10_0; and xmm0_0@uint32 xmm10_0n xmm12_0;
not xmm10_1n@uint32 xmm10_1; and xmm0_1@uint32 xmm10_1n xmm12_1;
not xmm10_2n@uint32 xmm10_2; and xmm0_2@uint32 xmm10_2n xmm12_2;
not xmm10_3n@uint32 xmm10_3; and xmm0_3@uint32 xmm10_3n xmm12_3;
(* vpand  %xmm11,%xmm10,%xmm3                      #! PC = 0x555555559e97 *)
and xmm3_0@uint32 xmm10_0 xmm11_0; and xmm3_1@uint32 xmm10_1 xmm11_1;
and xmm3_2@uint32 xmm10_2 xmm11_2; and xmm3_3@uint32 xmm10_3 xmm11_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559e9c *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm14,%xmm13                       #! PC = 0x555555559ea0 *)
split xmm13_0 dc xmm14_0 0x2; split xmm13_1 dc xmm14_1 0x2;
split xmm13_2 dc xmm14_2 0x2; split xmm13_3 dc xmm14_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559ea6 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm14,%xmm1                       #! PC = 0x555555559eaa *)
split dc xmm1_0 xmm14_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm14_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm14_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm14_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x555555559eb0 *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm14,%xmm15,%xmm3                      #! PC = 0x555555559eb4 *)
xor xmm3_0@uint32 xmm15_0 xmm14_0; xor xmm3_1@uint32 xmm15_1 xmm14_1;
xor xmm3_2@uint32 xmm15_2 xmm14_2; xor xmm3_3@uint32 xmm15_3 xmm14_3;
(* vpxor  %xmm1,%xmm13,%xmm13                      #! PC = 0x555555559eb9 *)
xor xmm13_0@uint32 xmm13_0 xmm1_0; xor xmm13_1@uint32 xmm13_1 xmm1_1;
xor xmm13_2@uint32 xmm13_2 xmm1_2; xor xmm13_3@uint32 xmm13_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x555555559ebd *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm14,%xmm1                        #! PC = 0x555555559ec1 *)
split xmm1_0 dc xmm14_0 0xd; split xmm1_1 dc xmm14_1 0xd;
split xmm1_2 dc xmm14_2 0xd; split xmm1_3 dc xmm14_3 0xd;
(* vpslld $0x13,%xmm14,%xmm2                       #! PC = 0x555555559ec7 *)
split dc xmm2_0 xmm14_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm14_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm14_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm14_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x555555559ecd *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x555555559ed1 *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm13,%xmm7                       #! PC = 0x555555559ed5 *)
xor xmm7_0@uint32 xmm13_0 xmm1_0; xor xmm7_1@uint32 xmm13_1 xmm1_1;
xor xmm7_2@uint32 xmm13_2 xmm1_2; xor xmm7_3@uint32 xmm13_3 xmm1_3;
(* vpsrld $0x16,%xmm14,%xmm1                       #! PC = 0x555555559ed9 *)
split xmm1_0 dc xmm14_0 0x16; split xmm1_1 dc xmm14_1 0x16;
split xmm1_2 dc xmm14_2 0x16; split xmm1_3 dc xmm14_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559edf *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm14,%xmm2                        #! PC = 0x555555559ee3 *)
split dc xmm2_0 xmm14_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm14_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm14_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm14_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm15,%xmm13                      #! PC = 0x555555559ee9 *)
xor xmm13_0@uint32 xmm15_0 xmm4_0; xor xmm13_1@uint32 xmm15_1 xmm4_1;
xor xmm13_2@uint32 xmm15_2 xmm4_2; xor xmm13_3@uint32 xmm15_3 xmm4_3;
(* vpaddd %xmm5,%xmm9,%xmm9                        #! PC = 0x555555559eed *)
adds dc xmm9_0 xmm9_0 xmm5_0; adds dc xmm9_1 xmm9_1 xmm5_1;
adds dc xmm9_2 xmm9_2 xmm5_2; adds dc xmm9_3 xmm9_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559ef1 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559ef5 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm13,%xmm13                      #! PC = 0x555555559ef9 *)
adds dc xmm13_0 xmm13_0 xmm5_0; adds dc xmm13_1 xmm13_1 xmm5_1;
adds dc xmm13_2 xmm13_2 xmm5_2; adds dc xmm13_3 xmm13_3 xmm5_3;
(* vpaddd %xmm7,%xmm13,%xmm13                      #! PC = 0x555555559efd *)
adds dc xmm13_0 xmm13_0 xmm7_0; adds dc xmm13_1 xmm13_1 xmm7_1;
adds dc xmm13_2 xmm13_2 xmm7_2; adds dc xmm13_3 xmm13_3 xmm7_3;
(* vmovdqu 0x40(%rax),%xmm5                        #! EA = L0x7fffffffd7c0; Value = 0x68ea39c368ea39c3; PC = 0x555555559f01 *)
mov xmm5_0 L0x7fffffffd7c0; mov xmm5_1 L0x7fffffffd7c4;
mov xmm5_2 L0x7fffffffd7c8; mov xmm5_3 L0x7fffffffd7cc;
(* vpaddd -0x40(%rax),%xmm6,%xmm6                  #! EA = L0x7fffffffd740; Value = 0xc16c46f8c16c46f8; PC = 0x555555559f06 *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd740; adds dc xmm6_1 xmm6_1 L0x7fffffffd744;
adds dc xmm6_2 xmm6_2 L0x7fffffffd748; adds dc xmm6_3 xmm6_3 L0x7fffffffd74c;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x555555559f0b *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x555555559f10 *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x555555559f15 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559f1a *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x555555559f1e *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559f23 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x555555559f27 *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x10(%rax),%xmm0                        #! EA = L0x7fffffffd790; Value = 0x92ad985e92ad985e; PC = 0x555555559f2c *)
mov xmm0_0 L0x7fffffffd790; mov xmm0_1 L0x7fffffffd794;
mov xmm0_2 L0x7fffffffd798; mov xmm0_3 L0x7fffffffd79c;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x555555559f31 *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559f36 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x555555559f3a *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559f3f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x555555559f43 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559f48 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x555555559f4c *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x555555559f50 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559f55 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x555555559f59 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559f5e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559f62 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559f66 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm9,%xmm7                         #! PC = 0x555555559f6a *)
split xmm7_0 dc xmm9_0 0x6; split xmm7_1 dc xmm9_1 0x6;
split xmm7_2 dc xmm9_2 0x6; split xmm7_3 dc xmm9_3 0x6;
(* vpslld $0x1a,%xmm9,%xmm2                        #! PC = 0x555555559f70 *)
split dc xmm2_0 xmm9_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm9_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm9_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm9_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,0x30(%rax)                        #! EA = L0x7fffffffd7b0; PC = 0x555555559f76 *)
mov L0x7fffffffd7b0 xmm6_0; mov L0x7fffffffd7b4 xmm6_1;
mov L0x7fffffffd7b8 xmm6_2; mov L0x7fffffffd7bc xmm6_3;
(* vpaddd %xmm12,%xmm6,%xmm6                       #! PC = 0x555555559f7b *)
adds dc xmm6_0 xmm6_0 xmm12_0; adds dc xmm6_1 xmm6_1 xmm12_1;
adds dc xmm6_2 xmm6_2 xmm12_2; adds dc xmm6_3 xmm6_3 xmm12_3;
(* vpsrld $0xb,%xmm9,%xmm1                         #! PC = 0x555555559f80 *)
split xmm1_0 dc xmm9_0 0xb; split xmm1_1 dc xmm9_1 0xb;
split xmm1_2 dc xmm9_2 0xb; split xmm1_3 dc xmm9_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559f86 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm9,%xmm2                        #! PC = 0x555555559f8a *)
split dc xmm2_0 xmm9_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm9_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm9_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm9_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd -0x20(%rbp),%xmm6,%xmm6                  #! EA = L0x55555555d160; Value = 0x8cc702088cc70208; PC = 0x555555559f90 *)
adds dc xmm6_0 xmm6_0 L0x55555555d160; adds dc xmm6_1 xmm6_1 L0x55555555d164;
adds dc xmm6_2 xmm6_2 L0x55555555d168; adds dc xmm6_3 xmm6_3 L0x55555555d16c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559f95 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm9,%xmm1                        #! PC = 0x555555559f99 *)
split xmm1_0 dc xmm9_0 0x19; split xmm1_1 dc xmm9_1 0x19;
split xmm1_2 dc xmm9_2 0x19; split xmm1_3 dc xmm9_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559f9f *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm9,%xmm2                         #! PC = 0x555555559fa3 *)
split dc xmm2_0 xmm9_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm9_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm9_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm9_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm11,%xmm9,%xmm0                       #! PC = 0x555555559fa9 *)
not xmm9_0n@uint32 xmm9_0; and xmm0_0@uint32 xmm9_0n xmm11_0;
not xmm9_1n@uint32 xmm9_1; and xmm0_1@uint32 xmm9_1n xmm11_1;
not xmm9_2n@uint32 xmm9_2; and xmm0_2@uint32 xmm9_2n xmm11_2;
not xmm9_3n@uint32 xmm9_3; and xmm0_3@uint32 xmm9_3n xmm11_3;
(* vpand  %xmm10,%xmm9,%xmm4                       #! PC = 0x555555559fae *)
and xmm4_0@uint32 xmm9_0 xmm10_0; and xmm4_1@uint32 xmm9_1 xmm10_1;
and xmm4_2@uint32 xmm9_2 xmm10_2; and xmm4_3@uint32 xmm9_3 xmm10_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x555555559fb3 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm13,%xmm12                       #! PC = 0x555555559fb7 *)
split xmm12_0 dc xmm13_0 0x2; split xmm12_1 dc xmm13_1 0x2;
split xmm12_2 dc xmm13_2 0x2; split xmm12_3 dc xmm13_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559fbd *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm13,%xmm1                       #! PC = 0x555555559fc1 *)
split dc xmm1_0 xmm13_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm13_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm13_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm13_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x555555559fc7 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm13,%xmm14,%xmm4                      #! PC = 0x555555559fcb *)
xor xmm4_0@uint32 xmm14_0 xmm13_0; xor xmm4_1@uint32 xmm14_1 xmm13_1;
xor xmm4_2@uint32 xmm14_2 xmm13_2; xor xmm4_3@uint32 xmm14_3 xmm13_3;
(* vpxor  %xmm1,%xmm12,%xmm12                      #! PC = 0x555555559fd0 *)
xor xmm12_0@uint32 xmm12_0 xmm1_0; xor xmm12_1@uint32 xmm12_1 xmm1_1;
xor xmm12_2@uint32 xmm12_2 xmm1_2; xor xmm12_3@uint32 xmm12_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x555555559fd4 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm13,%xmm1                        #! PC = 0x555555559fd8 *)
split xmm1_0 dc xmm13_0 0xd; split xmm1_1 dc xmm13_1 0xd;
split xmm1_2 dc xmm13_2 0xd; split xmm1_3 dc xmm13_3 0xd;
(* vpslld $0x13,%xmm13,%xmm2                       #! PC = 0x555555559fde *)
split dc xmm2_0 xmm13_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm13_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm13_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm13_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x555555559fe4 *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x555555559fe8 *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm12,%xmm7                       #! PC = 0x555555559fec *)
xor xmm7_0@uint32 xmm12_0 xmm1_0; xor xmm7_1@uint32 xmm12_1 xmm1_1;
xor xmm7_2@uint32 xmm12_2 xmm1_2; xor xmm7_3@uint32 xmm12_3 xmm1_3;
(* vpsrld $0x16,%xmm13,%xmm1                       #! PC = 0x555555559ff0 *)
split xmm1_0 dc xmm13_0 0x16; split xmm1_1 dc xmm13_1 0x16;
split xmm1_2 dc xmm13_2 0x16; split xmm1_3 dc xmm13_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x555555559ff6 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm13,%xmm2                        #! PC = 0x555555559ffa *)
split dc xmm2_0 xmm13_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm13_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm13_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm13_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm14,%xmm12                      #! PC = 0x55555555a000 *)
xor xmm12_0@uint32 xmm14_0 xmm3_0; xor xmm12_1@uint32 xmm14_1 xmm3_1;
xor xmm12_2@uint32 xmm14_2 xmm3_2; xor xmm12_3@uint32 xmm14_3 xmm3_3;
(* vpaddd %xmm6,%xmm8,%xmm8                        #! PC = 0x55555555a004 *)
adds dc xmm8_0 xmm8_0 xmm6_0; adds dc xmm8_1 xmm8_1 xmm6_1;
adds dc xmm8_2 xmm8_2 xmm6_2; adds dc xmm8_3 xmm8_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a008 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a00c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm12,%xmm12                      #! PC = 0x55555555a010 *)
adds dc xmm12_0 xmm12_0 xmm6_0; adds dc xmm12_1 xmm12_1 xmm6_1;
adds dc xmm12_2 xmm12_2 xmm6_2; adds dc xmm12_3 xmm12_3 xmm6_3;
(* vpaddd %xmm7,%xmm12,%xmm12                      #! PC = 0x55555555a014 *)
adds dc xmm12_0 xmm12_0 xmm7_0; adds dc xmm12_1 xmm12_1 xmm7_1;
adds dc xmm12_2 xmm12_2 xmm7_2; adds dc xmm12_3 xmm12_3 xmm7_3;
(* vmovdqu 0x50(%rax),%xmm6                        #! EA = L0x7fffffffd7d0; Value = 0x54dd515a54dd515a; PC = 0x55555555a018 *)
mov xmm6_0 L0x7fffffffd7d0; mov xmm6_1 L0x7fffffffd7d4;
mov xmm6_2 L0x7fffffffd7d8; mov xmm6_3 L0x7fffffffd7dc;
(* vpaddd -0x30(%rax),%xmm5,%xmm5                  #! EA = L0x7fffffffd750; Value = 0x69017ea569017ea5; PC = 0x55555555a01d *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd750; adds dc xmm5_1 xmm5_1 L0x7fffffffd754;
adds dc xmm5_2 xmm5_2 L0x7fffffffd758; adds dc xmm5_3 xmm5_3 L0x7fffffffd75c;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x55555555a022 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x55555555a027 *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x55555555a02c *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a031 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x55555555a035 *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a03a *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x55555555a03e *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x20(%rax),%xmm0                        #! EA = L0x7fffffffd7a0; Value = 0x5b6084385b608438; PC = 0x55555555a043 *)
mov xmm0_0 L0x7fffffffd7a0; mov xmm0_1 L0x7fffffffd7a4;
mov xmm0_2 L0x7fffffffd7a8; mov xmm0_3 L0x7fffffffd7ac;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x55555555a048 *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a04d *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x55555555a051 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a056 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x55555555a05a *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555a05f *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x55555555a063 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x55555555a067 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a06c *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x55555555a070 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a075 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a079 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555a07d *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm8,%xmm7                         #! PC = 0x55555555a081 *)
split xmm7_0 dc xmm8_0 0x6; split xmm7_1 dc xmm8_1 0x6;
split xmm7_2 dc xmm8_2 0x6; split xmm7_3 dc xmm8_3 0x6;
(* vpslld $0x1a,%xmm8,%xmm2                        #! PC = 0x55555555a087 *)
split dc xmm2_0 xmm8_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm8_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm8_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm8_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,0x40(%rax)                        #! EA = L0x7fffffffd7c0; PC = 0x55555555a08d *)
mov L0x7fffffffd7c0 xmm5_0; mov L0x7fffffffd7c4 xmm5_1;
mov L0x7fffffffd7c8 xmm5_2; mov L0x7fffffffd7cc xmm5_3;
(* vpaddd %xmm11,%xmm5,%xmm5                       #! PC = 0x55555555a092 *)
adds dc xmm5_0 xmm5_0 xmm11_0; adds dc xmm5_1 xmm5_1 xmm11_1;
adds dc xmm5_2 xmm5_2 xmm11_2; adds dc xmm5_3 xmm5_3 xmm11_3;
(* vpsrld $0xb,%xmm8,%xmm1                         #! PC = 0x55555555a097 *)
split xmm1_0 dc xmm8_0 0xb; split xmm1_1 dc xmm8_1 0xb;
split xmm1_2 dc xmm8_2 0xb; split xmm1_3 dc xmm8_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a09d *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm8,%xmm2                        #! PC = 0x55555555a0a1 *)
split dc xmm2_0 xmm8_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm8_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm8_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm8_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x0(%rbp),%xmm5,%xmm5                    #! EA = L0x55555555d180; Value = 0x90befffa90befffa; PC = 0x55555555a0a7 *)
adds dc xmm5_0 xmm5_0 L0x55555555d180; adds dc xmm5_1 xmm5_1 L0x55555555d184;
adds dc xmm5_2 xmm5_2 L0x55555555d188; adds dc xmm5_3 xmm5_3 L0x55555555d18c;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a0ac *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm8,%xmm1                        #! PC = 0x55555555a0b0 *)
split xmm1_0 dc xmm8_0 0x19; split xmm1_1 dc xmm8_1 0x19;
split xmm1_2 dc xmm8_2 0x19; split xmm1_3 dc xmm8_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a0b6 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm8,%xmm2                         #! PC = 0x55555555a0ba *)
split dc xmm2_0 xmm8_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm8_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm8_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm8_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm10,%xmm8,%xmm0                       #! PC = 0x55555555a0c0 *)
not xmm8_0n@uint32 xmm8_0; and xmm0_0@uint32 xmm8_0n xmm10_0;
not xmm8_1n@uint32 xmm8_1; and xmm0_1@uint32 xmm8_1n xmm10_1;
not xmm8_2n@uint32 xmm8_2; and xmm0_2@uint32 xmm8_2n xmm10_2;
not xmm8_3n@uint32 xmm8_3; and xmm0_3@uint32 xmm8_3n xmm10_3;
(* vpand  %xmm9,%xmm8,%xmm3                        #! PC = 0x55555555a0c5 *)
and xmm3_0@uint32 xmm8_0 xmm9_0; and xmm3_1@uint32 xmm8_1 xmm9_1;
and xmm3_2@uint32 xmm8_2 xmm9_2; and xmm3_3@uint32 xmm8_3 xmm9_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a0ca *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm12,%xmm11                       #! PC = 0x55555555a0ce *)
split xmm11_0 dc xmm12_0 0x2; split xmm11_1 dc xmm12_1 0x2;
split xmm11_2 dc xmm12_2 0x2; split xmm11_3 dc xmm12_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a0d4 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm12,%xmm1                       #! PC = 0x55555555a0d8 *)
split dc xmm1_0 xmm12_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm12_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm12_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm12_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x55555555a0de *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm12,%xmm13,%xmm3                      #! PC = 0x55555555a0e2 *)
xor xmm3_0@uint32 xmm13_0 xmm12_0; xor xmm3_1@uint32 xmm13_1 xmm12_1;
xor xmm3_2@uint32 xmm13_2 xmm12_2; xor xmm3_3@uint32 xmm13_3 xmm12_3;
(* vpxor  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555555a0e7 *)
xor xmm11_0@uint32 xmm11_0 xmm1_0; xor xmm11_1@uint32 xmm11_1 xmm1_1;
xor xmm11_2@uint32 xmm11_2 xmm1_2; xor xmm11_3@uint32 xmm11_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555a0eb *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm12,%xmm1                        #! PC = 0x55555555a0ef *)
split xmm1_0 dc xmm12_0 0xd; split xmm1_1 dc xmm12_1 0xd;
split xmm1_2 dc xmm12_2 0xd; split xmm1_3 dc xmm12_3 0xd;
(* vpslld $0x13,%xmm12,%xmm2                       #! PC = 0x55555555a0f5 *)
split dc xmm2_0 xmm12_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm12_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm12_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm12_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x55555555a0fb *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x55555555a0ff *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm11,%xmm7                       #! PC = 0x55555555a103 *)
xor xmm7_0@uint32 xmm11_0 xmm1_0; xor xmm7_1@uint32 xmm11_1 xmm1_1;
xor xmm7_2@uint32 xmm11_2 xmm1_2; xor xmm7_3@uint32 xmm11_3 xmm1_3;
(* vpsrld $0x16,%xmm12,%xmm1                       #! PC = 0x55555555a107 *)
split xmm1_0 dc xmm12_0 0x16; split xmm1_1 dc xmm12_1 0x16;
split xmm1_2 dc xmm12_2 0x16; split xmm1_3 dc xmm12_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a10d *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm12,%xmm2                        #! PC = 0x55555555a111 *)
split dc xmm2_0 xmm12_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm12_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm12_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm12_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm13,%xmm11                      #! PC = 0x55555555a117 *)
xor xmm11_0@uint32 xmm13_0 xmm4_0; xor xmm11_1@uint32 xmm13_1 xmm4_1;
xor xmm11_2@uint32 xmm13_2 xmm4_2; xor xmm11_3@uint32 xmm13_3 xmm4_3;
(* vpaddd %xmm5,%xmm15,%xmm15                      #! PC = 0x55555555a11b *)
adds dc xmm15_0 xmm15_0 xmm5_0; adds dc xmm15_1 xmm15_1 xmm5_1;
adds dc xmm15_2 xmm15_2 xmm5_2; adds dc xmm15_3 xmm15_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a11f *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a123 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm11,%xmm11                      #! PC = 0x55555555a127 *)
adds dc xmm11_0 xmm11_0 xmm5_0; adds dc xmm11_1 xmm11_1 xmm5_1;
adds dc xmm11_2 xmm11_2 xmm5_2; adds dc xmm11_3 xmm11_3 xmm5_3;
(* vpaddd %xmm7,%xmm11,%xmm11                      #! PC = 0x55555555a12b *)
adds dc xmm11_0 xmm11_0 xmm7_0; adds dc xmm11_1 xmm11_1 xmm7_1;
adds dc xmm11_2 xmm11_2 xmm7_2; adds dc xmm11_3 xmm11_3 xmm7_3;
(* vmovdqu 0x60(%rax),%xmm5                        #! EA = L0x7fffffffd7e0; Value = 0x71176fd571176fd5; PC = 0x55555555a12f *)
mov xmm5_0 L0x7fffffffd7e0; mov xmm5_1 L0x7fffffffd7e4;
mov xmm5_2 L0x7fffffffd7e8; mov xmm5_3 L0x7fffffffd7ec;
(* vpaddd -0x20(%rax),%xmm6,%xmm6                  #! EA = L0x7fffffffd760; Value = 0x3bb9afd13bb9afd1; PC = 0x55555555a134 *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd760; adds dc xmm6_1 xmm6_1 L0x7fffffffd764;
adds dc xmm6_2 xmm6_2 L0x7fffffffd768; adds dc xmm6_3 xmm6_3 L0x7fffffffd76c;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x55555555a139 *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x55555555a13e *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x55555555a143 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a148 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x55555555a14c *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a151 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x55555555a155 *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x30(%rax),%xmm0                        #! EA = L0x7fffffffd7b0; Value = 0xcdda4647cdda4647; PC = 0x55555555a15a *)
mov xmm0_0 L0x7fffffffd7b0; mov xmm0_1 L0x7fffffffd7b4;
mov xmm0_2 L0x7fffffffd7b8; mov xmm0_3 L0x7fffffffd7bc;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x55555555a15f *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a164 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x55555555a168 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a16d *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x55555555a171 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555a176 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x55555555a17a *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x55555555a17e *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a183 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x55555555a187 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a18c *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a190 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555a194 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm15,%xmm7                        #! PC = 0x55555555a198 *)
split xmm7_0 dc xmm15_0 0x6; split xmm7_1 dc xmm15_1 0x6;
split xmm7_2 dc xmm15_2 0x6; split xmm7_3 dc xmm15_3 0x6;
(* vpslld $0x1a,%xmm15,%xmm2                       #! PC = 0x55555555a19e *)
split dc xmm2_0 xmm15_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm15_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm15_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm15_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,0x50(%rax)                        #! EA = L0x7fffffffd7d0; PC = 0x55555555a1a4 *)
mov L0x7fffffffd7d0 xmm6_0; mov L0x7fffffffd7d4 xmm6_1;
mov L0x7fffffffd7d8 xmm6_2; mov L0x7fffffffd7dc xmm6_3;
(* vpaddd %xmm10,%xmm6,%xmm6                       #! PC = 0x55555555a1a9 *)
adds dc xmm6_0 xmm6_0 xmm10_0; adds dc xmm6_1 xmm6_1 xmm10_1;
adds dc xmm6_2 xmm6_2 xmm10_2; adds dc xmm6_3 xmm6_3 xmm10_3;
(* vpsrld $0xb,%xmm15,%xmm1                        #! PC = 0x55555555a1ae *)
split xmm1_0 dc xmm15_0 0xb; split xmm1_1 dc xmm15_1 0xb;
split xmm1_2 dc xmm15_2 0xb; split xmm1_3 dc xmm15_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a1b4 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm15,%xmm2                       #! PC = 0x55555555a1b8 *)
split dc xmm2_0 xmm15_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm15_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm15_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm15_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x20(%rbp),%xmm6,%xmm6                   #! EA = L0x55555555d1a0; Value = 0xa4506ceba4506ceb; PC = 0x55555555a1be *)
adds dc xmm6_0 xmm6_0 L0x55555555d1a0; adds dc xmm6_1 xmm6_1 L0x55555555d1a4;
adds dc xmm6_2 xmm6_2 L0x55555555d1a8; adds dc xmm6_3 xmm6_3 L0x55555555d1ac;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a1c3 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm15,%xmm1                       #! PC = 0x55555555a1c7 *)
split xmm1_0 dc xmm15_0 0x19; split xmm1_1 dc xmm15_1 0x19;
split xmm1_2 dc xmm15_2 0x19; split xmm1_3 dc xmm15_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a1cd *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm15,%xmm2                        #! PC = 0x55555555a1d1 *)
split dc xmm2_0 xmm15_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm15_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm15_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm15_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm9,%xmm15,%xmm0                       #! PC = 0x55555555a1d7 *)
not xmm15_0n@uint32 xmm15_0; and xmm0_0@uint32 xmm15_0n xmm9_0;
not xmm15_1n@uint32 xmm15_1; and xmm0_1@uint32 xmm15_1n xmm9_1;
not xmm15_2n@uint32 xmm15_2; and xmm0_2@uint32 xmm15_2n xmm9_2;
not xmm15_3n@uint32 xmm15_3; and xmm0_3@uint32 xmm15_3n xmm9_3;
(* vpand  %xmm8,%xmm15,%xmm4                       #! PC = 0x55555555a1dc *)
and xmm4_0@uint32 xmm15_0 xmm8_0; and xmm4_1@uint32 xmm15_1 xmm8_1;
and xmm4_2@uint32 xmm15_2 xmm8_2; and xmm4_3@uint32 xmm15_3 xmm8_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a1e1 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm11,%xmm10                       #! PC = 0x55555555a1e5 *)
split xmm10_0 dc xmm11_0 0x2; split xmm10_1 dc xmm11_1 0x2;
split xmm10_2 dc xmm11_2 0x2; split xmm10_3 dc xmm11_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a1eb *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm11,%xmm1                       #! PC = 0x55555555a1ef *)
split dc xmm1_0 xmm11_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm11_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm11_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm11_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x55555555a1f5 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm11,%xmm12,%xmm4                      #! PC = 0x55555555a1f9 *)
xor xmm4_0@uint32 xmm12_0 xmm11_0; xor xmm4_1@uint32 xmm12_1 xmm11_1;
xor xmm4_2@uint32 xmm12_2 xmm11_2; xor xmm4_3@uint32 xmm12_3 xmm11_3;
(* vpxor  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555555a1fe *)
xor xmm10_0@uint32 xmm10_0 xmm1_0; xor xmm10_1@uint32 xmm10_1 xmm1_1;
xor xmm10_2@uint32 xmm10_2 xmm1_2; xor xmm10_3@uint32 xmm10_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555a202 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm11,%xmm1                        #! PC = 0x55555555a206 *)
split xmm1_0 dc xmm11_0 0xd; split xmm1_1 dc xmm11_1 0xd;
split xmm1_2 dc xmm11_2 0xd; split xmm1_3 dc xmm11_3 0xd;
(* vpslld $0x13,%xmm11,%xmm2                       #! PC = 0x55555555a20c *)
split dc xmm2_0 xmm11_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm11_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm11_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm11_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x55555555a212 *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x55555555a216 *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm10,%xmm7                       #! PC = 0x55555555a21a *)
xor xmm7_0@uint32 xmm10_0 xmm1_0; xor xmm7_1@uint32 xmm10_1 xmm1_1;
xor xmm7_2@uint32 xmm10_2 xmm1_2; xor xmm7_3@uint32 xmm10_3 xmm1_3;
(* vpsrld $0x16,%xmm11,%xmm1                       #! PC = 0x55555555a21e *)
split xmm1_0 dc xmm11_0 0x16; split xmm1_1 dc xmm11_1 0x16;
split xmm1_2 dc xmm11_2 0x16; split xmm1_3 dc xmm11_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a224 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm11,%xmm2                        #! PC = 0x55555555a228 *)
split dc xmm2_0 xmm11_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm11_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm11_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm11_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm12,%xmm10                      #! PC = 0x55555555a22e *)
xor xmm10_0@uint32 xmm12_0 xmm3_0; xor xmm10_1@uint32 xmm12_1 xmm3_1;
xor xmm10_2@uint32 xmm12_2 xmm3_2; xor xmm10_3@uint32 xmm12_3 xmm3_3;
(* vpaddd %xmm6,%xmm14,%xmm14                      #! PC = 0x55555555a232 *)
adds dc xmm14_0 xmm14_0 xmm6_0; adds dc xmm14_1 xmm14_1 xmm6_1;
adds dc xmm14_2 xmm14_2 xmm6_2; adds dc xmm14_3 xmm14_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a236 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a23a *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm10,%xmm10                      #! PC = 0x55555555a23e *)
adds dc xmm10_0 xmm10_0 xmm6_0; adds dc xmm10_1 xmm10_1 xmm6_1;
adds dc xmm10_2 xmm10_2 xmm6_2; adds dc xmm10_3 xmm10_3 xmm6_3;
(* vpaddd %xmm7,%xmm10,%xmm10                      #! PC = 0x55555555a242 *)
adds dc xmm10_0 xmm10_0 xmm7_0; adds dc xmm10_1 xmm10_1 xmm7_1;
adds dc xmm10_2 xmm10_2 xmm7_2; adds dc xmm10_3 xmm10_3 xmm7_3;
(* vmovdqu 0x70(%rax),%xmm6                        #! EA = L0x7fffffffd7f0; Value = 0xd8ad8d21d8ad8d21; PC = 0x55555555a246 *)
mov xmm6_0 L0x7fffffffd7f0; mov xmm6_1 L0x7fffffffd7f4;
mov xmm6_2 L0x7fffffffd7f8; mov xmm6_3 L0x7fffffffd7fc;
(* vpaddd -0x10(%rax),%xmm5,%xmm5                  #! EA = L0x7fffffffd770; Value = 0xa7b12924a7b12924; PC = 0x55555555a24b *)
adds dc xmm5_0 xmm5_0 L0x7fffffffd770; adds dc xmm5_1 xmm5_1 L0x7fffffffd774;
adds dc xmm5_2 xmm5_2 L0x7fffffffd778; adds dc xmm5_3 xmm5_3 L0x7fffffffd77c;
(* vpsrld $0x3,%xmm6,%xmm7                         #! PC = 0x55555555a250 *)
split xmm7_0 dc xmm6_0 0x3; split xmm7_1 dc xmm6_1 0x3;
split xmm7_2 dc xmm6_2 0x3; split xmm7_3 dc xmm6_3 0x3;
(* vpsrld $0x7,%xmm6,%xmm1                         #! PC = 0x55555555a255 *)
split xmm1_0 dc xmm6_0 0x7; split xmm1_1 dc xmm6_1 0x7;
split xmm1_2 dc xmm6_2 0x7; split xmm1_3 dc xmm6_3 0x7;
(* vpslld $0x19,%xmm6,%xmm2                        #! PC = 0x55555555a25a *)
split dc xmm2_0 xmm6_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm6_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm6_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm6_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a25f *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm6,%xmm1                        #! PC = 0x55555555a263 *)
split xmm1_0 dc xmm6_0 0x12; split xmm1_1 dc xmm6_1 0x12;
split xmm1_2 dc xmm6_2 0x12; split xmm1_3 dc xmm6_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a268 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm6,%xmm2                         #! PC = 0x55555555a26c *)
split dc xmm2_0 xmm6_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm6_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm6_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm6_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x40(%rax),%xmm0                        #! EA = L0x7fffffffd7c0; Value = 0x0ede3d230ede3d23; PC = 0x55555555a271 *)
mov xmm0_0 L0x7fffffffd7c0; mov xmm0_1 L0x7fffffffd7c4;
mov xmm0_2 L0x7fffffffd7c8; mov xmm0_3 L0x7fffffffd7cc;
(* vpsrld $0xa,%xmm0,%xmm3                         #! PC = 0x55555555a276 *)
split xmm3_0 dc xmm0_0 0xa; split xmm3_1 dc xmm0_1 0xa;
split xmm3_2 dc xmm0_2 0xa; split xmm3_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a27b *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x55555555a27f *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a284 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x55555555a288 *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555a28d *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpxor  %xmm1,%xmm3,%xmm7                        #! PC = 0x55555555a291 *)
xor xmm7_0@uint32 xmm3_0 xmm1_0; xor xmm7_1@uint32 xmm3_1 xmm1_1;
xor xmm7_2@uint32 xmm3_2 xmm1_2; xor xmm7_3@uint32 xmm3_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x55555555a295 *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a29a *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x55555555a29e *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a2a3 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a2a7 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555a2ab *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0x6,%xmm14,%xmm7                        #! PC = 0x55555555a2af *)
split xmm7_0 dc xmm14_0 0x6; split xmm7_1 dc xmm14_1 0x6;
split xmm7_2 dc xmm14_2 0x6; split xmm7_3 dc xmm14_3 0x6;
(* vpslld $0x1a,%xmm14,%xmm2                       #! PC = 0x55555555a2b5 *)
split dc xmm2_0 xmm14_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm14_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm14_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm14_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm5,0x60(%rax)                        #! EA = L0x7fffffffd7e0; PC = 0x55555555a2bb *)
mov L0x7fffffffd7e0 xmm5_0; mov L0x7fffffffd7e4 xmm5_1;
mov L0x7fffffffd7e8 xmm5_2; mov L0x7fffffffd7ec xmm5_3;
(* vpaddd %xmm9,%xmm5,%xmm5                        #! PC = 0x55555555a2c0 *)
adds dc xmm5_0 xmm5_0 xmm9_0; adds dc xmm5_1 xmm5_1 xmm9_1;
adds dc xmm5_2 xmm5_2 xmm9_2; adds dc xmm5_3 xmm5_3 xmm9_3;
(* vpsrld $0xb,%xmm14,%xmm1                        #! PC = 0x55555555a2c5 *)
split xmm1_0 dc xmm14_0 0xb; split xmm1_1 dc xmm14_1 0xb;
split xmm1_2 dc xmm14_2 0xb; split xmm1_3 dc xmm14_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a2cb *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm14,%xmm2                       #! PC = 0x55555555a2cf *)
split dc xmm2_0 xmm14_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm14_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm14_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm14_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x40(%rbp),%xmm5,%xmm5                   #! EA = L0x55555555d1c0; Value = 0xbef9a3f7bef9a3f7; PC = 0x55555555a2d5 *)
adds dc xmm5_0 xmm5_0 L0x55555555d1c0; adds dc xmm5_1 xmm5_1 L0x55555555d1c4;
adds dc xmm5_2 xmm5_2 L0x55555555d1c8; adds dc xmm5_3 xmm5_3 L0x55555555d1cc;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a2da *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm14,%xmm1                       #! PC = 0x55555555a2de *)
split xmm1_0 dc xmm14_0 0x19; split xmm1_1 dc xmm14_1 0x19;
split xmm1_2 dc xmm14_2 0x19; split xmm1_3 dc xmm14_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a2e4 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm14,%xmm2                        #! PC = 0x55555555a2e8 *)
split dc xmm2_0 xmm14_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm14_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm14_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm14_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm8,%xmm14,%xmm0                       #! PC = 0x55555555a2ee *)
not xmm14_0n@uint32 xmm14_0; and xmm0_0@uint32 xmm14_0n xmm8_0;
not xmm14_1n@uint32 xmm14_1; and xmm0_1@uint32 xmm14_1n xmm8_1;
not xmm14_2n@uint32 xmm14_2; and xmm0_2@uint32 xmm14_2n xmm8_2;
not xmm14_3n@uint32 xmm14_3; and xmm0_3@uint32 xmm14_3n xmm8_3;
(* vpand  %xmm15,%xmm14,%xmm3                      #! PC = 0x55555555a2f3 *)
and xmm3_0@uint32 xmm14_0 xmm15_0; and xmm3_1@uint32 xmm14_1 xmm15_1;
and xmm3_2@uint32 xmm14_2 xmm15_2; and xmm3_3@uint32 xmm14_3 xmm15_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a2f8 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm10,%xmm9                        #! PC = 0x55555555a2fc *)
split xmm9_0 dc xmm10_0 0x2; split xmm9_1 dc xmm10_1 0x2;
split xmm9_2 dc xmm10_2 0x2; split xmm9_3 dc xmm10_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a302 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm10,%xmm1                       #! PC = 0x55555555a306 *)
split dc xmm1_0 xmm10_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm10_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm10_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm10_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm3,%xmm0,%xmm0                        #! PC = 0x55555555a30c *)
xor xmm0_0@uint32 xmm0_0 xmm3_0; xor xmm0_1@uint32 xmm0_1 xmm3_1;
xor xmm0_2@uint32 xmm0_2 xmm3_2; xor xmm0_3@uint32 xmm0_3 xmm3_3;
(* vpxor  %xmm10,%xmm11,%xmm3                      #! PC = 0x55555555a310 *)
xor xmm3_0@uint32 xmm11_0 xmm10_0; xor xmm3_1@uint32 xmm11_1 xmm10_1;
xor xmm3_2@uint32 xmm11_2 xmm10_2; xor xmm3_3@uint32 xmm11_3 xmm10_3;
(* vpxor  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555555a315 *)
xor xmm9_0@uint32 xmm9_0 xmm1_0; xor xmm9_1@uint32 xmm9_1 xmm1_1;
xor xmm9_2@uint32 xmm9_2 xmm1_2; xor xmm9_3@uint32 xmm9_3 xmm1_3;
(* vpaddd %xmm7,%xmm5,%xmm5                        #! PC = 0x55555555a319 *)
adds dc xmm5_0 xmm5_0 xmm7_0; adds dc xmm5_1 xmm5_1 xmm7_1;
adds dc xmm5_2 xmm5_2 xmm7_2; adds dc xmm5_3 xmm5_3 xmm7_3;
(* vpsrld $0xd,%xmm10,%xmm1                        #! PC = 0x55555555a31d *)
split xmm1_0 dc xmm10_0 0xd; split xmm1_1 dc xmm10_1 0xd;
split xmm1_2 dc xmm10_2 0xd; split xmm1_3 dc xmm10_3 0xd;
(* vpslld $0x13,%xmm10,%xmm2                       #! PC = 0x55555555a323 *)
split dc xmm2_0 xmm10_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm10_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm10_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm10_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm5,%xmm5                        #! PC = 0x55555555a329 *)
adds dc xmm5_0 xmm5_0 xmm0_0; adds dc xmm5_1 xmm5_1 xmm0_1;
adds dc xmm5_2 xmm5_2 xmm0_2; adds dc xmm5_3 xmm5_3 xmm0_3;
(* vpand  %xmm3,%xmm4,%xmm4                        #! PC = 0x55555555a32d *)
and xmm4_0@uint32 xmm4_0 xmm3_0; and xmm4_1@uint32 xmm4_1 xmm3_1;
and xmm4_2@uint32 xmm4_2 xmm3_2; and xmm4_3@uint32 xmm4_3 xmm3_3;
(* vpxor  %xmm1,%xmm9,%xmm7                        #! PC = 0x55555555a331 *)
xor xmm7_0@uint32 xmm9_0 xmm1_0; xor xmm7_1@uint32 xmm9_1 xmm1_1;
xor xmm7_2@uint32 xmm9_2 xmm1_2; xor xmm7_3@uint32 xmm9_3 xmm1_3;
(* vpsrld $0x16,%xmm10,%xmm1                       #! PC = 0x55555555a335 *)
split xmm1_0 dc xmm10_0 0x16; split xmm1_1 dc xmm10_1 0x16;
split xmm1_2 dc xmm10_2 0x16; split xmm1_3 dc xmm10_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a33b *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm10,%xmm2                        #! PC = 0x55555555a33f *)
split dc xmm2_0 xmm10_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm10_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm10_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm10_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm4,%xmm11,%xmm9                       #! PC = 0x55555555a345 *)
xor xmm9_0@uint32 xmm11_0 xmm4_0; xor xmm9_1@uint32 xmm11_1 xmm4_1;
xor xmm9_2@uint32 xmm11_2 xmm4_2; xor xmm9_3@uint32 xmm11_3 xmm4_3;
(* vpaddd %xmm5,%xmm13,%xmm13                      #! PC = 0x55555555a349 *)
adds dc xmm13_0 xmm13_0 xmm5_0; adds dc xmm13_1 xmm13_1 xmm5_1;
adds dc xmm13_2 xmm13_2 xmm5_2; adds dc xmm13_3 xmm13_3 xmm5_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a34d *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a351 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm5,%xmm9,%xmm9                        #! PC = 0x55555555a355 *)
adds dc xmm9_0 xmm9_0 xmm5_0; adds dc xmm9_1 xmm9_1 xmm5_1;
adds dc xmm9_2 xmm9_2 xmm5_2; adds dc xmm9_3 xmm9_3 xmm5_3;
(* vpaddd %xmm7,%xmm9,%xmm9                        #! PC = 0x55555555a359 *)
adds dc xmm9_0 xmm9_0 xmm7_0; adds dc xmm9_1 xmm9_1 xmm7_1;
adds dc xmm9_2 xmm9_2 xmm7_2; adds dc xmm9_3 xmm9_3 xmm7_3;
(* vmovdqu -0x80(%rax),%xmm5                       #! EA = L0x7fffffffd700; Value = 0x4d418efb4d418efb; PC = 0x55555555a35d *)
mov xmm5_0 L0x7fffffffd700; mov xmm5_1 L0x7fffffffd704;
mov xmm5_2 L0x7fffffffd708; mov xmm5_3 L0x7fffffffd70c;
(* vpaddd (%rax),%xmm6,%xmm6                       #! EA = L0x7fffffffd780; Value = 0x8af1ec7e8af1ec7e; PC = 0x55555555a362 *)
adds dc xmm6_0 xmm6_0 L0x7fffffffd780; adds dc xmm6_1 xmm6_1 L0x7fffffffd784;
adds dc xmm6_2 xmm6_2 L0x7fffffffd788; adds dc xmm6_3 xmm6_3 L0x7fffffffd78c;
(* vpsrld $0x3,%xmm5,%xmm7                         #! PC = 0x55555555a366 *)
split xmm7_0 dc xmm5_0 0x3; split xmm7_1 dc xmm5_1 0x3;
split xmm7_2 dc xmm5_2 0x3; split xmm7_3 dc xmm5_3 0x3;
(* vpsrld $0x7,%xmm5,%xmm1                         #! PC = 0x55555555a36b *)
split xmm1_0 dc xmm5_0 0x7; split xmm1_1 dc xmm5_1 0x7;
split xmm1_2 dc xmm5_2 0x7; split xmm1_3 dc xmm5_3 0x7;
(* vpslld $0x19,%xmm5,%xmm2                        #! PC = 0x55555555a370 *)
split dc xmm2_0 xmm5_0 (32-0x19); shl xmm2_0 xmm2_0 0x19@uint32;
split dc xmm2_1 xmm5_1 (32-0x19); shl xmm2_1 xmm2_1 0x19@uint32;
split dc xmm2_2 xmm5_2 (32-0x19); shl xmm2_2 xmm2_2 0x19@uint32;
split dc xmm2_3 xmm5_3 (32-0x19); shl xmm2_3 xmm2_3 0x19@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a375 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x12,%xmm5,%xmm1                        #! PC = 0x55555555a379 *)
split xmm1_0 dc xmm5_0 0x12; split xmm1_1 dc xmm5_1 0x12;
split xmm1_2 dc xmm5_2 0x12; split xmm1_3 dc xmm5_3 0x12;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a37e *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xe,%xmm5,%xmm2                         #! PC = 0x55555555a382 *)
split dc xmm2_0 xmm5_0 (32-0xe); shl xmm2_0 xmm2_0 0xe@uint32;
split dc xmm2_1 xmm5_1 (32-0xe); shl xmm2_1 xmm2_1 0xe@uint32;
split dc xmm2_2 xmm5_2 (32-0xe); shl xmm2_2 xmm2_2 0xe@uint32;
split dc xmm2_3 xmm5_3 (32-0xe); shl xmm2_3 xmm2_3 0xe@uint32;
(* vmovdqu 0x50(%rax),%xmm0                        #! EA = L0x7fffffffd7d0; Value = 0x7ba50a527ba50a52; PC = 0x55555555a387 *)
mov xmm0_0 L0x7fffffffd7d0; mov xmm0_1 L0x7fffffffd7d4;
mov xmm0_2 L0x7fffffffd7d8; mov xmm0_3 L0x7fffffffd7dc;
(* vpsrld $0xa,%xmm0,%xmm4                         #! PC = 0x55555555a38c *)
split xmm4_0 dc xmm0_0 0xa; split xmm4_1 dc xmm0_1 0xa;
split xmm4_2 dc xmm0_2 0xa; split xmm4_3 dc xmm0_3 0xa;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a391 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x11,%xmm0,%xmm1                        #! PC = 0x55555555a395 *)
split xmm1_0 dc xmm0_0 0x11; split xmm1_1 dc xmm0_1 0x11;
split xmm1_2 dc xmm0_2 0x11; split xmm1_3 dc xmm0_3 0x11;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a39a *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xf,%xmm0,%xmm2                         #! PC = 0x55555555a39e *)
split dc xmm2_0 xmm0_0 (32-0xf); shl xmm2_0 xmm2_0 0xf@uint32;
split dc xmm2_1 xmm0_1 (32-0xf); shl xmm2_1 xmm2_1 0xf@uint32;
split dc xmm2_2 xmm0_2 (32-0xf); shl xmm2_2 xmm2_2 0xf@uint32;
split dc xmm2_3 xmm0_3 (32-0xf); shl xmm2_3 xmm2_3 0xf@uint32;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555a3a3 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpxor  %xmm1,%xmm4,%xmm7                        #! PC = 0x55555555a3a7 *)
xor xmm7_0@uint32 xmm4_0 xmm1_0; xor xmm7_1@uint32 xmm4_1 xmm1_1;
xor xmm7_2@uint32 xmm4_2 xmm1_2; xor xmm7_3@uint32 xmm4_3 xmm1_3;
(* vpsrld $0x13,%xmm0,%xmm1                        #! PC = 0x55555555a3ab *)
split xmm1_0 dc xmm0_0 0x13; split xmm1_1 dc xmm0_1 0x13;
split xmm1_2 dc xmm0_2 0x13; split xmm1_3 dc xmm0_3 0x13;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a3b0 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xd,%xmm0,%xmm2                         #! PC = 0x55555555a3b4 *)
split dc xmm2_0 xmm0_0 (32-0xd); shl xmm2_0 xmm2_0 0xd@uint32;
split dc xmm2_1 xmm0_1 (32-0xd); shl xmm2_1 xmm2_1 0xd@uint32;
split dc xmm2_2 xmm0_2 (32-0xd); shl xmm2_2 xmm2_2 0xd@uint32;
split dc xmm2_3 xmm0_3 (32-0xd); shl xmm2_3 xmm2_3 0xd@uint32;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a3b9 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a3bd *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555a3c1 *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0x6,%xmm13,%xmm7                        #! PC = 0x55555555a3c5 *)
split xmm7_0 dc xmm13_0 0x6; split xmm7_1 dc xmm13_1 0x6;
split xmm7_2 dc xmm13_2 0x6; split xmm7_3 dc xmm13_3 0x6;
(* vpslld $0x1a,%xmm13,%xmm2                       #! PC = 0x55555555a3cb *)
split dc xmm2_0 xmm13_0 (32-0x1a); shl xmm2_0 xmm2_0 0x1a@uint32;
split dc xmm2_1 xmm13_1 (32-0x1a); shl xmm2_1 xmm2_1 0x1a@uint32;
split dc xmm2_2 xmm13_2 (32-0x1a); shl xmm2_2 xmm2_2 0x1a@uint32;
split dc xmm2_3 xmm13_3 (32-0x1a); shl xmm2_3 xmm2_3 0x1a@uint32;
(* vmovdqu %xmm6,0x70(%rax)                        #! EA = L0x7fffffffd7f0; PC = 0x55555555a3d1 *)
mov L0x7fffffffd7f0 xmm6_0; mov L0x7fffffffd7f4 xmm6_1;
mov L0x7fffffffd7f8 xmm6_2; mov L0x7fffffffd7fc xmm6_3;
(* vpaddd %xmm8,%xmm6,%xmm6                        #! PC = 0x55555555a3d6 *)
adds dc xmm6_0 xmm6_0 xmm8_0; adds dc xmm6_1 xmm6_1 xmm8_1;
adds dc xmm6_2 xmm6_2 xmm8_2; adds dc xmm6_3 xmm6_3 xmm8_3;
(* vpsrld $0xb,%xmm13,%xmm1                        #! PC = 0x55555555a3db *)
split xmm1_0 dc xmm13_0 0xb; split xmm1_1 dc xmm13_1 0xb;
split xmm1_2 dc xmm13_2 0xb; split xmm1_3 dc xmm13_3 0xb;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a3e1 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x15,%xmm13,%xmm2                       #! PC = 0x55555555a3e5 *)
split dc xmm2_0 xmm13_0 (32-0x15); shl xmm2_0 xmm2_0 0x15@uint32;
split dc xmm2_1 xmm13_1 (32-0x15); shl xmm2_1 xmm2_1 0x15@uint32;
split dc xmm2_2 xmm13_2 (32-0x15); shl xmm2_2 xmm2_2 0x15@uint32;
split dc xmm2_3 xmm13_3 (32-0x15); shl xmm2_3 xmm2_3 0x15@uint32;
(* vpaddd 0x60(%rbp),%xmm6,%xmm6                   #! EA = L0x55555555d1e0; Value = 0xc67178f2c67178f2; PC = 0x55555555a3eb *)
adds dc xmm6_0 xmm6_0 L0x55555555d1e0; adds dc xmm6_1 xmm6_1 L0x55555555d1e4;
adds dc xmm6_2 xmm6_2 L0x55555555d1e8; adds dc xmm6_3 xmm6_3 L0x55555555d1ec;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a3f0 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x19,%xmm13,%xmm1                       #! PC = 0x55555555a3f4 *)
split xmm1_0 dc xmm13_0 0x19; split xmm1_1 dc xmm13_1 0x19;
split xmm1_2 dc xmm13_2 0x19; split xmm1_3 dc xmm13_3 0x19;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a3fa *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x7,%xmm13,%xmm2                        #! PC = 0x55555555a3fe *)
split dc xmm2_0 xmm13_0 (32-0x7); shl xmm2_0 xmm2_0 0x7@uint32;
split dc xmm2_1 xmm13_1 (32-0x7); shl xmm2_1 xmm2_1 0x7@uint32;
split dc xmm2_2 xmm13_2 (32-0x7); shl xmm2_2 xmm2_2 0x7@uint32;
split dc xmm2_3 xmm13_3 (32-0x7); shl xmm2_3 xmm2_3 0x7@uint32;
(* vpandn %xmm15,%xmm13,%xmm0                      #! PC = 0x55555555a404 *)
not xmm13_0n@uint32 xmm13_0; and xmm0_0@uint32 xmm13_0n xmm15_0;
not xmm13_1n@uint32 xmm13_1; and xmm0_1@uint32 xmm13_1n xmm15_1;
not xmm13_2n@uint32 xmm13_2; and xmm0_2@uint32 xmm13_2n xmm15_2;
not xmm13_3n@uint32 xmm13_3; and xmm0_3@uint32 xmm13_3n xmm15_3;
(* vpand  %xmm14,%xmm13,%xmm4                      #! PC = 0x55555555a409 *)
and xmm4_0@uint32 xmm13_0 xmm14_0; and xmm4_1@uint32 xmm13_1 xmm14_1;
and xmm4_2@uint32 xmm13_2 xmm14_2; and xmm4_3@uint32 xmm13_3 xmm14_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a40e *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpsrld $0x2,%xmm9,%xmm8                         #! PC = 0x55555555a412 *)
split xmm8_0 dc xmm9_0 0x2; split xmm8_1 dc xmm9_1 0x2;
split xmm8_2 dc xmm9_2 0x2; split xmm8_3 dc xmm9_3 0x2;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a418 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0x1e,%xmm9,%xmm1                        #! PC = 0x55555555a41c *)
split dc xmm1_0 xmm9_0 (32-0x1e); shl xmm1_0 xmm1_0 0x1e@uint32;
split dc xmm1_1 xmm9_1 (32-0x1e); shl xmm1_1 xmm1_1 0x1e@uint32;
split dc xmm1_2 xmm9_2 (32-0x1e); shl xmm1_2 xmm1_2 0x1e@uint32;
split dc xmm1_3 xmm9_3 (32-0x1e); shl xmm1_3 xmm1_3 0x1e@uint32;
(* vpxor  %xmm4,%xmm0,%xmm0                        #! PC = 0x55555555a422 *)
xor xmm0_0@uint32 xmm0_0 xmm4_0; xor xmm0_1@uint32 xmm0_1 xmm4_1;
xor xmm0_2@uint32 xmm0_2 xmm4_2; xor xmm0_3@uint32 xmm0_3 xmm4_3;
(* vpxor  %xmm9,%xmm10,%xmm4                       #! PC = 0x55555555a426 *)
xor xmm4_0@uint32 xmm10_0 xmm9_0; xor xmm4_1@uint32 xmm10_1 xmm9_1;
xor xmm4_2@uint32 xmm10_2 xmm9_2; xor xmm4_3@uint32 xmm10_3 xmm9_3;
(* vpxor  %xmm1,%xmm8,%xmm8                        #! PC = 0x55555555a42b *)
xor xmm8_0@uint32 xmm8_0 xmm1_0; xor xmm8_1@uint32 xmm8_1 xmm1_1;
xor xmm8_2@uint32 xmm8_2 xmm1_2; xor xmm8_3@uint32 xmm8_3 xmm1_3;
(* vpaddd %xmm7,%xmm6,%xmm6                        #! PC = 0x55555555a42f *)
adds dc xmm6_0 xmm6_0 xmm7_0; adds dc xmm6_1 xmm6_1 xmm7_1;
adds dc xmm6_2 xmm6_2 xmm7_2; adds dc xmm6_3 xmm6_3 xmm7_3;
(* vpsrld $0xd,%xmm9,%xmm1                         #! PC = 0x55555555a433 *)
split xmm1_0 dc xmm9_0 0xd; split xmm1_1 dc xmm9_1 0xd;
split xmm1_2 dc xmm9_2 0xd; split xmm1_3 dc xmm9_3 0xd;
(* vpslld $0x13,%xmm9,%xmm2                        #! PC = 0x55555555a439 *)
split dc xmm2_0 xmm9_0 (32-0x13); shl xmm2_0 xmm2_0 0x13@uint32;
split dc xmm2_1 xmm9_1 (32-0x13); shl xmm2_1 xmm2_1 0x13@uint32;
split dc xmm2_2 xmm9_2 (32-0x13); shl xmm2_2 xmm2_2 0x13@uint32;
split dc xmm2_3 xmm9_3 (32-0x13); shl xmm2_3 xmm2_3 0x13@uint32;
(* vpaddd %xmm0,%xmm6,%xmm6                        #! PC = 0x55555555a43f *)
adds dc xmm6_0 xmm6_0 xmm0_0; adds dc xmm6_1 xmm6_1 xmm0_1;
adds dc xmm6_2 xmm6_2 xmm0_2; adds dc xmm6_3 xmm6_3 xmm0_3;
(* vpand  %xmm4,%xmm3,%xmm3                        #! PC = 0x55555555a443 *)
and xmm3_0@uint32 xmm3_0 xmm4_0; and xmm3_1@uint32 xmm3_1 xmm4_1;
and xmm3_2@uint32 xmm3_2 xmm4_2; and xmm3_3@uint32 xmm3_3 xmm4_3;
(* vpxor  %xmm1,%xmm8,%xmm7                        #! PC = 0x55555555a447 *)
xor xmm7_0@uint32 xmm8_0 xmm1_0; xor xmm7_1@uint32 xmm8_1 xmm1_1;
xor xmm7_2@uint32 xmm8_2 xmm1_2; xor xmm7_3@uint32 xmm8_3 xmm1_3;
(* vpsrld $0x16,%xmm9,%xmm1                        #! PC = 0x55555555a44b *)
split xmm1_0 dc xmm9_0 0x16; split xmm1_1 dc xmm9_1 0x16;
split xmm1_2 dc xmm9_2 0x16; split xmm1_3 dc xmm9_3 0x16;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a451 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpslld $0xa,%xmm9,%xmm2                         #! PC = 0x55555555a455 *)
split dc xmm2_0 xmm9_0 (32-0xa); shl xmm2_0 xmm2_0 0xa@uint32;
split dc xmm2_1 xmm9_1 (32-0xa); shl xmm2_1 xmm2_1 0xa@uint32;
split dc xmm2_2 xmm9_2 (32-0xa); shl xmm2_2 xmm2_2 0xa@uint32;
split dc xmm2_3 xmm9_3 (32-0xa); shl xmm2_3 xmm2_3 0xa@uint32;
(* vpxor  %xmm3,%xmm10,%xmm8                       #! PC = 0x55555555a45b *)
xor xmm8_0@uint32 xmm10_0 xmm3_0; xor xmm8_1@uint32 xmm10_1 xmm3_1;
xor xmm8_2@uint32 xmm10_2 xmm3_2; xor xmm8_3@uint32 xmm10_3 xmm3_3;
(* vpaddd %xmm6,%xmm12,%xmm12                      #! PC = 0x55555555a45f *)
adds dc xmm12_0 xmm12_0 xmm6_0; adds dc xmm12_1 xmm12_1 xmm6_1;
adds dc xmm12_2 xmm12_2 xmm6_2; adds dc xmm12_3 xmm12_3 xmm6_3;
(* vpxor  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555555a463 *)
xor xmm7_0@uint32 xmm7_0 xmm1_0; xor xmm7_1@uint32 xmm7_1 xmm1_1;
xor xmm7_2@uint32 xmm7_2 xmm1_2; xor xmm7_3@uint32 xmm7_3 xmm1_3;
(* vpxor  %xmm2,%xmm7,%xmm7                        #! PC = 0x55555555a467 *)
xor xmm7_0@uint32 xmm7_0 xmm2_0; xor xmm7_1@uint32 xmm7_1 xmm2_1;
xor xmm7_2@uint32 xmm7_2 xmm2_2; xor xmm7_3@uint32 xmm7_3 xmm2_3;
(* vpaddd %xmm6,%xmm8,%xmm8                        #! PC = 0x55555555a46b *)
adds dc xmm8_0 xmm8_0 xmm6_0; adds dc xmm8_1 xmm8_1 xmm6_1;
adds dc xmm8_2 xmm8_2 xmm6_2; adds dc xmm8_3 xmm8_3 xmm6_3;
(* vpaddd %xmm7,%xmm8,%xmm8                        #! PC = 0x55555555a46f *)
adds dc xmm8_0 xmm8_0 xmm7_0; adds dc xmm8_1 xmm8_1 xmm7_1;
adds dc xmm8_2 xmm8_2 xmm7_2; adds dc xmm8_3 xmm8_3 xmm7_3;
(* add    $0x100,%rbp                              #! PC = 0x55555555a473 *)
(* add 0x100, rbp *)
nop;
(* dec    %ecx                                     #! PC = 0x55555555a47a *)
(* dec ecx *)
nop;
(* #jne    0x555555559300 <sha256_multi_block_avx+3680>#! PC = 0x55555555a47c *)
#jne    0x555555559300 <sha256_multi_block_avx+3680>#! 0x55555555a47c = 0x55555555a47c;
(* mov    $0x1,%ecx                                #! PC = 0x55555555a482 *)
mov ecx 0x1@uint32;
(* lea    0x25f2(%rip),%rbp        # 0x55555555ca80 <K256+128>#! PC = 0x55555555a487 *)
(* lea XXX, rbp *)
nop;
(* cmp    (%rbx),%ecx                              #! EA = L0x7fffffffd800; Value = 0x0000000100000001; PC = 0x55555555a48e *)
(* cmp L0x7fffffffd800, ecx *)
nop;
(* cmovge %rbp,%r8                                 #! PC = 0x55555555a490 *)
(* cmovge rbp, r8 *)
nop;
(* cmp    0x4(%rbx),%ecx                           #! EA = L0x7fffffffd804; Value = 0x0000000100000001; PC = 0x55555555a494 *)
(* cmp L0x7fffffffd804, ecx *)
nop;
(* cmovge %rbp,%r9                                 #! PC = 0x55555555a497 *)
(* cmovge rbp, r9 *)
nop;
(* cmp    0x8(%rbx),%ecx                           #! EA = L0x7fffffffd808; Value = 0x0000000100000001; PC = 0x55555555a49b *)
(* cmp L0x7fffffffd808, ecx *)
nop;
(* cmovge %rbp,%r10                                #! PC = 0x55555555a49e *)
(* cmovge rbp, r10 *)
nop;
(* cmp    0xc(%rbx),%ecx                           #! EA = L0x7fffffffd80c; Value = 0xffffd88800000001; PC = 0x55555555a4a2 *)
(* cmp L0x7fffffffd80c, ecx *)
nop;
(* cmovge %rbp,%r11                                #! PC = 0x55555555a4a5 *)
(* cmovge rbp, r11 *)
nop;
(* vmovdqa (%rbx),%xmm7                            #! EA = L0x7fffffffd800; Value = 0x0000000100000001; PC = 0x55555555a4a9 *)
mov xmm7_0 L0x7fffffffd800; mov xmm7_1 L0x7fffffffd804;
mov xmm7_2 L0x7fffffffd808; mov xmm7_3 L0x7fffffffd80c;
(* vpxor  %xmm0,%xmm0,%xmm0                        #! PC = 0x55555555a4ad *)
xor xmm0_0@uint32 xmm0_0 xmm0_0; xor xmm0_1@uint32 xmm0_1 xmm0_1;
xor xmm0_2@uint32 xmm0_2 xmm0_2; xor xmm0_3@uint32 xmm0_3 xmm0_3;
(* vmovdqa %xmm7,%xmm6                             #! PC = 0x55555555a4b1 *)
mov xmm6_0 xmm7_0; mov xmm6_1 xmm7_1; mov xmm6_2 xmm7_2; mov xmm6_3 xmm7_3;
(* vpcmpgtd %xmm0,%xmm6,%xmm6                      #! PC = 0x55555555a4b5 *)
subb c0 dc xmm0_0 xmm6_0; cmov xmm6_0 c0 0xffffffff@uint32 0@uint32;
subb c1 dc xmm0_1 xmm6_1; cmov xmm6_1 c1 0xffffffff@uint32 0@uint32;
subb c2 dc xmm0_2 xmm6_2; cmov xmm6_2 c2 0xffffffff@uint32 0@uint32;
subb c3 dc xmm0_3 xmm6_3; cmov xmm6_3 c3 0xffffffff@uint32 0@uint32;
(* vpaddd %xmm6,%xmm7,%xmm7                        #! PC = 0x55555555a4b9 *)
adds dc xmm7_0 xmm7_0 xmm6_0; adds dc xmm7_1 xmm7_1 xmm6_1;
adds dc xmm7_2 xmm7_2 xmm6_2; adds dc xmm7_3 xmm7_3 xmm6_3;
(* vmovdqu -0x80(%rdi),%xmm0                       #! EA = L0x7fffffffd920; Value = 0x6a09e6676a09e667; PC = 0x55555555a4bd *)
mov xmm0_0 L0x7fffffffd920; mov xmm0_1 L0x7fffffffd924;
mov xmm0_2 L0x7fffffffd928; mov xmm0_3 L0x7fffffffd92c;
(* vpand  %xmm6,%xmm8,%xmm8                        #! PC = 0x55555555a4c2 *)
and xmm8_0@uint32 xmm8_0 xmm6_0; and xmm8_1@uint32 xmm8_1 xmm6_1;
and xmm8_2@uint32 xmm8_2 xmm6_2; and xmm8_3@uint32 xmm8_3 xmm6_3;
(* vmovdqu -0x60(%rdi),%xmm1                       #! EA = L0x7fffffffd940; Value = 0xbb67ae85bb67ae85; PC = 0x55555555a4c6 *)
mov xmm1_0 L0x7fffffffd940; mov xmm1_1 L0x7fffffffd944;
mov xmm1_2 L0x7fffffffd948; mov xmm1_3 L0x7fffffffd94c;
(* vpand  %xmm6,%xmm9,%xmm9                        #! PC = 0x55555555a4cb *)
and xmm9_0@uint32 xmm9_0 xmm6_0; and xmm9_1@uint32 xmm9_1 xmm6_1;
and xmm9_2@uint32 xmm9_2 xmm6_2; and xmm9_3@uint32 xmm9_3 xmm6_3;
(* vmovdqu -0x40(%rdi),%xmm2                       #! EA = L0x7fffffffd960; Value = 0x3c6ef3723c6ef372; PC = 0x55555555a4cf *)
mov xmm2_0 L0x7fffffffd960; mov xmm2_1 L0x7fffffffd964;
mov xmm2_2 L0x7fffffffd968; mov xmm2_3 L0x7fffffffd96c;
(* vpand  %xmm6,%xmm10,%xmm10                      #! PC = 0x55555555a4d4 *)
and xmm10_0@uint32 xmm10_0 xmm6_0; and xmm10_1@uint32 xmm10_1 xmm6_1;
and xmm10_2@uint32 xmm10_2 xmm6_2; and xmm10_3@uint32 xmm10_3 xmm6_3;
(* vmovdqu -0x20(%rdi),%xmm5                       #! EA = L0x7fffffffd980; Value = 0xa54ff53aa54ff53a; PC = 0x55555555a4d8 *)
mov xmm5_0 L0x7fffffffd980; mov xmm5_1 L0x7fffffffd984;
mov xmm5_2 L0x7fffffffd988; mov xmm5_3 L0x7fffffffd98c;
(* vpand  %xmm6,%xmm11,%xmm11                      #! PC = 0x55555555a4dd *)
and xmm11_0@uint32 xmm11_0 xmm6_0; and xmm11_1@uint32 xmm11_1 xmm6_1;
and xmm11_2@uint32 xmm11_2 xmm6_2; and xmm11_3@uint32 xmm11_3 xmm6_3;
(* vpaddd %xmm0,%xmm8,%xmm8                        #! PC = 0x55555555a4e1 *)
adds dc xmm8_0 xmm8_0 xmm0_0; adds dc xmm8_1 xmm8_1 xmm0_1;
adds dc xmm8_2 xmm8_2 xmm0_2; adds dc xmm8_3 xmm8_3 xmm0_3;
(* vmovdqu (%rdi),%xmm0                            #! EA = L0x7fffffffd9a0; Value = 0x510e527f510e527f; PC = 0x55555555a4e5 *)
mov xmm0_0 L0x7fffffffd9a0; mov xmm0_1 L0x7fffffffd9a4;
mov xmm0_2 L0x7fffffffd9a8; mov xmm0_3 L0x7fffffffd9ac;
(* vpand  %xmm6,%xmm12,%xmm12                      #! PC = 0x55555555a4e9 *)
and xmm12_0@uint32 xmm12_0 xmm6_0; and xmm12_1@uint32 xmm12_1 xmm6_1;
and xmm12_2@uint32 xmm12_2 xmm6_2; and xmm12_3@uint32 xmm12_3 xmm6_3;
(* vpaddd %xmm1,%xmm9,%xmm9                        #! PC = 0x55555555a4ed *)
adds dc xmm9_0 xmm9_0 xmm1_0; adds dc xmm9_1 xmm9_1 xmm1_1;
adds dc xmm9_2 xmm9_2 xmm1_2; adds dc xmm9_3 xmm9_3 xmm1_3;
(* vmovdqu 0x20(%rdi),%xmm1                        #! EA = L0x7fffffffd9c0; Value = 0x9b05688c9b05688c; PC = 0x55555555a4f1 *)
mov xmm1_0 L0x7fffffffd9c0; mov xmm1_1 L0x7fffffffd9c4;
mov xmm1_2 L0x7fffffffd9c8; mov xmm1_3 L0x7fffffffd9cc;
(* vpand  %xmm6,%xmm13,%xmm13                      #! PC = 0x55555555a4f6 *)
and xmm13_0@uint32 xmm13_0 xmm6_0; and xmm13_1@uint32 xmm13_1 xmm6_1;
and xmm13_2@uint32 xmm13_2 xmm6_2; and xmm13_3@uint32 xmm13_3 xmm6_3;
(* vpaddd %xmm2,%xmm10,%xmm10                      #! PC = 0x55555555a4fa *)
adds dc xmm10_0 xmm10_0 xmm2_0; adds dc xmm10_1 xmm10_1 xmm2_1;
adds dc xmm10_2 xmm10_2 xmm2_2; adds dc xmm10_3 xmm10_3 xmm2_3;
(* vmovdqu 0x40(%rdi),%xmm2                        #! EA = L0x7fffffffd9e0; Value = 0x1f83d9ab1f83d9ab; PC = 0x55555555a4fe *)
mov xmm2_0 L0x7fffffffd9e0; mov xmm2_1 L0x7fffffffd9e4;
mov xmm2_2 L0x7fffffffd9e8; mov xmm2_3 L0x7fffffffd9ec;
(* vpand  %xmm6,%xmm14,%xmm14                      #! PC = 0x55555555a503 *)
and xmm14_0@uint32 xmm14_0 xmm6_0; and xmm14_1@uint32 xmm14_1 xmm6_1;
and xmm14_2@uint32 xmm14_2 xmm6_2; and xmm14_3@uint32 xmm14_3 xmm6_3;
(* vpaddd %xmm5,%xmm11,%xmm11                      #! PC = 0x55555555a507 *)
adds dc xmm11_0 xmm11_0 xmm5_0; adds dc xmm11_1 xmm11_1 xmm5_1;
adds dc xmm11_2 xmm11_2 xmm5_2; adds dc xmm11_3 xmm11_3 xmm5_3;
(* vmovdqu 0x60(%rdi),%xmm5                        #! EA = L0x7fffffffda00; Value = 0x5be0cd195be0cd19; PC = 0x55555555a50b *)
mov xmm5_0 L0x7fffffffda00; mov xmm5_1 L0x7fffffffda04;
mov xmm5_2 L0x7fffffffda08; mov xmm5_3 L0x7fffffffda0c;
(* vpand  %xmm6,%xmm15,%xmm15                      #! PC = 0x55555555a510 *)
and xmm15_0@uint32 xmm15_0 xmm6_0; and xmm15_1@uint32 xmm15_1 xmm6_1;
and xmm15_2@uint32 xmm15_2 xmm6_2; and xmm15_3@uint32 xmm15_3 xmm6_3;
(* vpaddd %xmm0,%xmm12,%xmm12                      #! PC = 0x55555555a514 *)
adds dc xmm12_0 xmm12_0 xmm0_0; adds dc xmm12_1 xmm12_1 xmm0_1;
adds dc xmm12_2 xmm12_2 xmm0_2; adds dc xmm12_3 xmm12_3 xmm0_3;
(* vpaddd %xmm1,%xmm13,%xmm13                      #! PC = 0x55555555a518 *)
adds dc xmm13_0 xmm13_0 xmm1_0; adds dc xmm13_1 xmm13_1 xmm1_1;
adds dc xmm13_2 xmm13_2 xmm1_2; adds dc xmm13_3 xmm13_3 xmm1_3;
(* vmovdqu %xmm8,-0x80(%rdi)                       #! EA = L0x7fffffffd920; PC = 0x55555555a51c *)
mov L0x7fffffffd920 xmm8_0; mov L0x7fffffffd924 xmm8_1;
mov L0x7fffffffd928 xmm8_2; mov L0x7fffffffd92c xmm8_3;
(* vpaddd %xmm2,%xmm14,%xmm14                      #! PC = 0x55555555a521 *)
adds dc xmm14_0 xmm14_0 xmm2_0; adds dc xmm14_1 xmm14_1 xmm2_1;
adds dc xmm14_2 xmm14_2 xmm2_2; adds dc xmm14_3 xmm14_3 xmm2_3;
(* vmovdqu %xmm9,-0x60(%rdi)                       #! EA = L0x7fffffffd940; PC = 0x55555555a525 *)
mov L0x7fffffffd940 xmm9_0; mov L0x7fffffffd944 xmm9_1;
mov L0x7fffffffd948 xmm9_2; mov L0x7fffffffd94c xmm9_3;
(* vpaddd %xmm5,%xmm15,%xmm15                      #! PC = 0x55555555a52a *)
adds dc xmm15_0 xmm15_0 xmm5_0; adds dc xmm15_1 xmm15_1 xmm5_1;
adds dc xmm15_2 xmm15_2 xmm5_2; adds dc xmm15_3 xmm15_3 xmm5_3;
(* vmovdqu %xmm10,-0x40(%rdi)                      #! EA = L0x7fffffffd960; PC = 0x55555555a52e *)
mov L0x7fffffffd960 xmm10_0; mov L0x7fffffffd964 xmm10_1;
mov L0x7fffffffd968 xmm10_2; mov L0x7fffffffd96c xmm10_3;
(* vmovdqu %xmm11,-0x20(%rdi)                      #! EA = L0x7fffffffd980; PC = 0x55555555a533 *)
mov L0x7fffffffd980 xmm11_0; mov L0x7fffffffd984 xmm11_1;
mov L0x7fffffffd988 xmm11_2; mov L0x7fffffffd98c xmm11_3;
(* vmovdqu %xmm12,(%rdi)                           #! EA = L0x7fffffffd9a0; PC = 0x55555555a538 *)
mov L0x7fffffffd9a0 xmm12_0; mov L0x7fffffffd9a4 xmm12_1;
mov L0x7fffffffd9a8 xmm12_2; mov L0x7fffffffd9ac xmm12_3;
(* vmovdqu %xmm13,0x20(%rdi)                       #! EA = L0x7fffffffd9c0; PC = 0x55555555a53c *)
mov L0x7fffffffd9c0 xmm13_0; mov L0x7fffffffd9c4 xmm13_1;
mov L0x7fffffffd9c8 xmm13_2; mov L0x7fffffffd9cc xmm13_3;
(* vmovdqu %xmm14,0x40(%rdi)                       #! EA = L0x7fffffffd9e0; PC = 0x55555555a541 *)
mov L0x7fffffffd9e0 xmm14_0; mov L0x7fffffffd9e4 xmm14_1;
mov L0x7fffffffd9e8 xmm14_2; mov L0x7fffffffd9ec xmm14_3;
(* vmovdqu %xmm15,0x60(%rdi)                       #! EA = L0x7fffffffda00; PC = 0x55555555a546 *)
mov L0x7fffffffda00 xmm15_0; mov L0x7fffffffda04 xmm15_1;
mov L0x7fffffffda08 xmm15_2; mov L0x7fffffffda0c xmm15_3;
(* vmovdqu %xmm7,(%rbx)                            #! EA = L0x7fffffffd800; PC = 0x55555555a54b *)
mov L0x7fffffffd800 xmm7_0; mov L0x7fffffffd804 xmm7_1;
mov L0x7fffffffd808 xmm7_2; mov L0x7fffffffd80c xmm7_3;
(* vmovdqu 0x2ca9(%rip),%xmm6        # 0x55555555d200 <K256+2048>#! EA = L0x55555555d200; Value = 0x0405060700010203; PC = 0x55555555a54f *)
mov xmm6_0 L0x55555555d200; mov xmm6_1 L0x55555555d204;
mov xmm6_2 L0x55555555d208; mov xmm6_3 L0x55555555d20c;
(* dec    %edx                                     #! PC = 0x55555555a557 *)
(* dec edx *)
nop;
(* #jne    0x5555555585a0 <sha256_multi_block_avx+256>#! PC = 0x55555555a559 *)
#jne    0x5555555585a0 <sha256_multi_block_avx+256>#! 0x55555555a559 = 0x55555555a559;
(* mov    0x118(%rsp),%edx                         #! EA = L0x7fffffffd818; Value = 0x0000000000000001; PC = 0x55555555a55f *)
(* mov 0x118(%rsp), edx *)
nop;
(* lea    0x10(%rdi),%rdi                          #! PC = 0x55555555a566 *)
(* lea XXX, %rdi *)
nop;
(* lea    0x40(%rsi),%rsi                          #! PC = 0x55555555a56a *)
(* lea XXX, %rsi *)
nop;
(* dec    %edx                                     #! PC = 0x55555555a56e *)
(* dec edx *)
nop;
(* #jne    0x5555555584f1 <sha256_multi_block_avx+81>#! PC = 0x55555555a570 *)
#jne    0x5555555584f1 <sha256_multi_block_avx+81>#! 0x55555555a570 = 0x55555555a570;
(* mov    0x110(%rsp),%rax                         #! EA = L0x7fffffffd810; Value = 0x00007fffffffd888; PC = 0x55555555a576 *)
(* mov 0x110(%rsp), rax *)
nop;
(* vzeroupper                                      #! PC = 0x55555555a57e *)
(* vzeroupper *)
nop;
(* mov    -0x10(%rax),%rbp                         #! EA = L0x7fffffffd878; Value = 0x00007fffffffda30; PC = 0x55555555a581 *)
mov rbp L0x7fffffffd878;
(* mov    -0x8(%rax),%rbx                          #! EA = L0x7fffffffd880; Value = 0x0000000000000000; PC = 0x55555555a585 *)
mov rbx L0x7fffffffd880;
(* lea    (%rax),%rsp                              #! PC = 0x55555555a589 *)
(* lea XXX, %rsp *)
nop;
(* #! <- SP = 0x7fffffffd888 *)
#! 0x7fffffffd888 = 0x7fffffffd888;
(* #repz ret                                       #! PC = 0x55555555a58c *)
#repz ret                                       #! 0x55555555a58c = 0x55555555a58c;

mov a0 L0x7fffffffd920; mov a1 L0x7fffffffd940;
mov a2 L0x7fffffffd960; mov a3 L0x7fffffffd980;
mov a4 L0x7fffffffd9a0; mov a5 L0x7fffffffd9c0;
mov a6 L0x7fffffffd9e0; mov a7 L0x7fffffffda00;
mov b0 L0x7fffffffd924; mov b1 L0x7fffffffd944;
mov b2 L0x7fffffffd964; mov b3 L0x7fffffffd984;
mov b4 L0x7fffffffd9a4; mov b5 L0x7fffffffd9c4;
mov b6 L0x7fffffffd9e4; mov b7 L0x7fffffffda04;
mov c0 L0x7fffffffd928; mov c1 L0x7fffffffd948;
mov c2 L0x7fffffffd968; mov c3 L0x7fffffffd988;
mov c4 L0x7fffffffd9a8; mov c5 L0x7fffffffd9c8;
mov c6 L0x7fffffffd9e8; mov c7 L0x7fffffffda08;
mov d0 L0x7fffffffd92c; mov d1 L0x7fffffffd94c;
mov d2 L0x7fffffffd96c; mov d3 L0x7fffffffd98c;
mov d4 L0x7fffffffd9ac; mov d5 L0x7fffffffd9cc;
mov d6 L0x7fffffffd9ec; mov d7 L0x7fffffffda0c;

{
  true
  &&
  true
}

