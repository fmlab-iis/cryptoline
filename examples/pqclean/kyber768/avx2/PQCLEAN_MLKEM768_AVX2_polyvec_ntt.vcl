proc main (
int16 A00,int16 A01,int16 A02,int16 A03,int16 A04,int16 A05,int16 A06,
int16 A07,int16 A08,int16 A09,int16 A0a,int16 A0b,int16 A0c,int16 A0d,
int16 A0e,int16 A0f,int16 A10,int16 A11,int16 A12,int16 A13,int16 A14,
int16 A15,int16 A16,int16 A17,int16 A18,int16 A19,int16 A1a,int16 A1b,
int16 A1c,int16 A1d,int16 A1e,int16 A1f,int16 A20,int16 A21,int16 A22,
int16 A23,int16 A24,int16 A25,int16 A26,int16 A27,int16 A28,int16 A29,
int16 A2a,int16 A2b,int16 A2c,int16 A2d,int16 A2e,int16 A2f,int16 A30,
int16 A31,int16 A32,int16 A33,int16 A34,int16 A35,int16 A36,int16 A37,
int16 A38,int16 A39,int16 A3a,int16 A3b,int16 A3c,int16 A3d,int16 A3e,
int16 A3f,int16 A40,int16 A41,int16 A42,int16 A43,int16 A44,int16 A45,
int16 A46,int16 A47,int16 A48,int16 A49,int16 A4a,int16 A4b,int16 A4c,
int16 A4d,int16 A4e,int16 A4f,int16 A50,int16 A51,int16 A52,int16 A53,
int16 A54,int16 A55,int16 A56,int16 A57,int16 A58,int16 A59,int16 A5a,
int16 A5b,int16 A5c,int16 A5d,int16 A5e,int16 A5f,int16 A60,int16 A61,
int16 A62,int16 A63,int16 A64,int16 A65,int16 A66,int16 A67,int16 A68,
int16 A69,int16 A6a,int16 A6b,int16 A6c,int16 A6d,int16 A6e,int16 A6f,
int16 A70,int16 A71,int16 A72,int16 A73,int16 A74,int16 A75,int16 A76,
int16 A77,int16 A78,int16 A79,int16 A7a,int16 A7b,int16 A7c,int16 A7d,
int16 A7e,int16 A7f,int16 A80,int16 A81,int16 A82,int16 A83,int16 A84,
int16 A85,int16 A86,int16 A87,int16 A88,int16 A89,int16 A8a,int16 A8b,
int16 A8c,int16 A8d,int16 A8e,int16 A8f,int16 A90,int16 A91,int16 A92,
int16 A93,int16 A94,int16 A95,int16 A96,int16 A97,int16 A98,int16 A99,
int16 A9a,int16 A9b,int16 A9c,int16 A9d,int16 A9e,int16 A9f,int16 Aa0,
int16 Aa1,int16 Aa2,int16 Aa3,int16 Aa4,int16 Aa5,int16 Aa6,int16 Aa7,
int16 Aa8,int16 Aa9,int16 Aaa,int16 Aab,int16 Aac,int16 Aad,int16 Aae,
int16 Aaf,int16 Ab0,int16 Ab1,int16 Ab2,int16 Ab3,int16 Ab4,int16 Ab5,
int16 Ab6,int16 Ab7,int16 Ab8,int16 Ab9,int16 Aba,int16 Abb,int16 Abc,
int16 Abd,int16 Abe,int16 Abf,int16 Ac0,int16 Ac1,int16 Ac2,int16 Ac3,
int16 Ac4,int16 Ac5,int16 Ac6,int16 Ac7,int16 Ac8,int16 Ac9,int16 Aca,
int16 Acb,int16 Acc,int16 Acd,int16 Ace,int16 Acf,int16 Ad0,int16 Ad1,
int16 Ad2,int16 Ad3,int16 Ad4,int16 Ad5,int16 Ad6,int16 Ad7,int16 Ad8,
int16 Ad9,int16 Ada,int16 Adb,int16 Adc,int16 Add,int16 Ade,int16 Adf,
int16 Ae0,int16 Ae1,int16 Ae2,int16 Ae3,int16 Ae4,int16 Ae5,int16 Ae6,
int16 Ae7,int16 Ae8,int16 Ae9,int16 Aea,int16 Aeb,int16 Aec,int16 Aed,
int16 Aee,int16 Aef,int16 Af0,int16 Af1,int16 Af2,int16 Af3,int16 Af4,
int16 Af5,int16 Af6,int16 Af7,int16 Af8,int16 Af9,int16 Afa,int16 Afb,
int16 Afc,int16 Afd,int16 Afe,int16 Aff,
int16 Q, int16 NQ, int16 Q2, int16 NQ2
) =
{
Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[A00,A01,A02,A03,A04,A05,A06,A07] /\
[A00,A01,A02,A03,A04,A05,A06,A07]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[A08,A09,A0a,A0b,A0c,A0d,A0e,A0f] /\
[A08,A09,A0a,A0b,A0c,A0d,A0e,A0f]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[A10,A11,A12,A13,A14,A15,A16,A17] /\
[A10,A11,A12,A13,A14,A15,A16,A17]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[A18,A19,A1a,A1b,A1c,A1d,A1e,A1f] /\
[A18,A19,A1a,A1b,A1c,A1d,A1e,A1f]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[A20,A21,A22,A23,A24,A25,A26,A27] /\
[A20,A21,A22,A23,A24,A25,A26,A27]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[A28,A29,A2a,A2b,A2c,A2d,A2e,A2f] /\
[A28,A29,A2a,A2b,A2c,A2d,A2e,A2f]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[A30,A31,A32,A33,A34,A35,A36,A37] /\
[A30,A31,A32,A33,A34,A35,A36,A37]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[A38,A39,A3a,A3b,A3c,A3d,A3e,A3f] /\
[A38,A39,A3a,A3b,A3c,A3d,A3e,A3f]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[A40,A41,A42,A43,A44,A45,A46,A47] /\
[A40,A41,A42,A43,A44,A45,A46,A47]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[A48,A49,A4a,A4b,A4c,A4d,A4e,A4f] /\
[A48,A49,A4a,A4b,A4c,A4d,A4e,A4f]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[A50,A51,A52,A53,A54,A55,A56,A57] /\
[A50,A51,A52,A53,A54,A55,A56,A57]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[A58,A59,A5a,A5b,A5c,A5d,A5e,A5f] /\
[A58,A59,A5a,A5b,A5c,A5d,A5e,A5f]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[A60,A61,A62,A63,A64,A65,A66,A67] /\
[A60,A61,A62,A63,A64,A65,A66,A67]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[A68,A69,A6a,A6b,A6c,A6d,A6e,A6f] /\
[A68,A69,A6a,A6b,A6c,A6d,A6e,A6f]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[A70,A71,A72,A73,A74,A75,A76,A77] /\
[A70,A71,A72,A73,A74,A75,A76,A77]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[A78,A79,A7a,A7b,A7c,A7d,A7e,A7f] /\
[A78,A79,A7a,A7b,A7c,A7d,A7e,A7f]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[A80,A81,A82,A83,A84,A85,A86,A87] /\
[A80,A81,A82,A83,A84,A85,A86,A87]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[A88,A89,A8a,A8b,A8c,A8d,A8e,A8f] /\
[A88,A89,A8a,A8b,A8c,A8d,A8e,A8f]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[A90,A91,A92,A93,A94,A95,A96,A97] /\
[A90,A91,A92,A93,A94,A95,A96,A97]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[A98,A99,A9a,A9b,A9c,A9d,A9e,A9f] /\
[A98,A99,A9a,A9b,A9c,A9d,A9e,A9f]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[Aa0,Aa1,Aa2,Aa3,Aa4,Aa5,Aa6,Aa7] /\
[Aa0,Aa1,Aa2,Aa3,Aa4,Aa5,Aa6,Aa7]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[Aa8,Aa9,Aaa,Aab,Aac,Aad,Aae,Aaf] /\
[Aa8,Aa9,Aaa,Aab,Aac,Aad,Aae,Aaf]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[Ab0,Ab1,Ab2,Ab3,Ab4,Ab5,Ab6,Ab7] /\
[Ab0,Ab1,Ab2,Ab3,Ab4,Ab5,Ab6,Ab7]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[Ab8,Ab9,Aba,Abb,Abc,Abd,Abe,Abf] /\
[Ab8,Ab9,Aba,Abb,Abc,Abd,Abe,Abf]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[Ac0,Ac1,Ac2,Ac3,Ac4,Ac5,Ac6,Ac7] /\
[Ac0,Ac1,Ac2,Ac3,Ac4,Ac5,Ac6,Ac7]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[Ac8,Ac9,Aca,Acb,Acc,Acd,Ace,Acf] /\
[Ac8,Ac9,Aca,Acb,Acc,Acd,Ace,Acf]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[Ad0,Ad1,Ad2,Ad3,Ad4,Ad5,Ad6,Ad7] /\
[Ad0,Ad1,Ad2,Ad3,Ad4,Ad5,Ad6,Ad7]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[Ad8,Ad9,Ada,Adb,Adc,Add,Ade,Adf] /\
[Ad8,Ad9,Ada,Adb,Adc,Add,Ade,Adf]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[Ae0,Ae1,Ae2,Ae3,Ae4,Ae5,Ae6,Ae7] /\
[Ae0,Ae1,Ae2,Ae3,Ae4,Ae5,Ae6,Ae7]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[Ae8,Ae9,Aea,Aeb,Aec,Aed,Aee,Aef] /\
[Ae8,Ae9,Aea,Aeb,Aec,Aed,Aee,Aef]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[Af0,Af1,Af2,Af3,Af4,Af5,Af6,Af7] /\
[Af0,Af1,Af2,Af3,Af4,Af5,Af6,Af7]<[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<[Af8,Af9,Afa,Afb,Afc,Afd,Afe,Aff] /\
[Af8,Af9,Afa,Afb,Afc,Afd,Afe,Aff]<[Q,Q,Q,Q,Q,Q,Q,Q]
&&
Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[A00,A01,A02,A03,A04,A05,A06,A07] /\
[A00,A01,A02,A03,A04,A05,A06,A07]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[A08,A09,A0a,A0b,A0c,A0d,A0e,A0f] /\
[A08,A09,A0a,A0b,A0c,A0d,A0e,A0f]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[A10,A11,A12,A13,A14,A15,A16,A17] /\
[A10,A11,A12,A13,A14,A15,A16,A17]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[A18,A19,A1a,A1b,A1c,A1d,A1e,A1f] /\
[A18,A19,A1a,A1b,A1c,A1d,A1e,A1f]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[A20,A21,A22,A23,A24,A25,A26,A27] /\
[A20,A21,A22,A23,A24,A25,A26,A27]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[A28,A29,A2a,A2b,A2c,A2d,A2e,A2f] /\
[A28,A29,A2a,A2b,A2c,A2d,A2e,A2f]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[A30,A31,A32,A33,A34,A35,A36,A37] /\
[A30,A31,A32,A33,A34,A35,A36,A37]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[A38,A39,A3a,A3b,A3c,A3d,A3e,A3f] /\
[A38,A39,A3a,A3b,A3c,A3d,A3e,A3f]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[A40,A41,A42,A43,A44,A45,A46,A47] /\
[A40,A41,A42,A43,A44,A45,A46,A47]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[A48,A49,A4a,A4b,A4c,A4d,A4e,A4f] /\
[A48,A49,A4a,A4b,A4c,A4d,A4e,A4f]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[A50,A51,A52,A53,A54,A55,A56,A57] /\
[A50,A51,A52,A53,A54,A55,A56,A57]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[A58,A59,A5a,A5b,A5c,A5d,A5e,A5f] /\
[A58,A59,A5a,A5b,A5c,A5d,A5e,A5f]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[A60,A61,A62,A63,A64,A65,A66,A67] /\
[A60,A61,A62,A63,A64,A65,A66,A67]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[A68,A69,A6a,A6b,A6c,A6d,A6e,A6f] /\
[A68,A69,A6a,A6b,A6c,A6d,A6e,A6f]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[A70,A71,A72,A73,A74,A75,A76,A77] /\
[A70,A71,A72,A73,A74,A75,A76,A77]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[A78,A79,A7a,A7b,A7c,A7d,A7e,A7f] /\
[A78,A79,A7a,A7b,A7c,A7d,A7e,A7f]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[A80,A81,A82,A83,A84,A85,A86,A87] /\
[A80,A81,A82,A83,A84,A85,A86,A87]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[A88,A89,A8a,A8b,A8c,A8d,A8e,A8f] /\
[A88,A89,A8a,A8b,A8c,A8d,A8e,A8f]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[A90,A91,A92,A93,A94,A95,A96,A97] /\
[A90,A91,A92,A93,A94,A95,A96,A97]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[A98,A99,A9a,A9b,A9c,A9d,A9e,A9f] /\
[A98,A99,A9a,A9b,A9c,A9d,A9e,A9f]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[Aa0,Aa1,Aa2,Aa3,Aa4,Aa5,Aa6,Aa7] /\
[Aa0,Aa1,Aa2,Aa3,Aa4,Aa5,Aa6,Aa7]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[Aa8,Aa9,Aaa,Aab,Aac,Aad,Aae,Aaf] /\
[Aa8,Aa9,Aaa,Aab,Aac,Aad,Aae,Aaf]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[Ab0,Ab1,Ab2,Ab3,Ab4,Ab5,Ab6,Ab7] /\
[Ab0,Ab1,Ab2,Ab3,Ab4,Ab5,Ab6,Ab7]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[Ab8,Ab9,Aba,Abb,Abc,Abd,Abe,Abf] /\
[Ab8,Ab9,Aba,Abb,Abc,Abd,Abe,Abf]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[Ac0,Ac1,Ac2,Ac3,Ac4,Ac5,Ac6,Ac7] /\
[Ac0,Ac1,Ac2,Ac3,Ac4,Ac5,Ac6,Ac7]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[Ac8,Ac9,Aca,Acb,Acc,Acd,Ace,Acf] /\
[Ac8,Ac9,Aca,Acb,Acc,Acd,Ace,Acf]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[Ad0,Ad1,Ad2,Ad3,Ad4,Ad5,Ad6,Ad7] /\
[Ad0,Ad1,Ad2,Ad3,Ad4,Ad5,Ad6,Ad7]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[Ad8,Ad9,Ada,Adb,Adc,Add,Ade,Adf] /\
[Ad8,Ad9,Ada,Adb,Adc,Add,Ade,Adf]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[Ae0,Ae1,Ae2,Ae3,Ae4,Ae5,Ae6,Ae7] /\
[Ae0,Ae1,Ae2,Ae3,Ae4,Ae5,Ae6,Ae7]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[Ae8,Ae9,Aea,Aeb,Aec,Aed,Aee,Aef] /\
[Ae8,Ae9,Aea,Aeb,Aec,Aed,Aee,Aef]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[Af0,Af1,Af2,Af3,Af4,Af5,Af6,Af7] /\
[Af0,Af1,Af2,Af3,Af4,Af5,Af6,Af7]<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s[Af8,Af9,Afa,Afb,Afc,Afd,Afe,Aff] /\
[Af8,Af9,Afa,Afb,Afc,Afd,Afe,Aff]<s[Q,Q,Q,Q,Q,Q,Q,Q]
}

(**************** input polynomial ****************)


ghost F@int16, X@int16: F**2 =
poly X [A00,A01,A02,A03,A04,A05,A06,A07,A08,A09,A0a,A0b,A0c,A0d,A0e,A0f,
        A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A1a,A1b,A1c,A1d,A1e,A1f,
        A20,A21,A22,A23,A24,A25,A26,A27,A28,A29,A2a,A2b,A2c,A2d,A2e,A2f,
        A30,A31,A32,A33,A34,A35,A36,A37,A38,A39,A3a,A3b,A3c,A3d,A3e,A3f,
        A40,A41,A42,A43,A44,A45,A46,A47,A48,A49,A4a,A4b,A4c,A4d,A4e,A4f,
        A50,A51,A52,A53,A54,A55,A56,A57,A58,A59,A5a,A5b,A5c,A5d,A5e,A5f,
        A60,A61,A62,A63,A64,A65,A66,A67,A68,A69,A6a,A6b,A6c,A6d,A6e,A6f,
        A70,A71,A72,A73,A74,A75,A76,A77,A78,A79,A7a,A7b,A7c,A7d,A7e,A7f,
        A80,A81,A82,A83,A84,A85,A86,A87,A88,A89,A8a,A8b,A8c,A8d,A8e,A8f,
        A90,A91,A92,A93,A94,A95,A96,A97,A98,A99,A9a,A9b,A9c,A9d,A9e,A9f,
        Aa0,Aa1,Aa2,Aa3,Aa4,Aa5,Aa6,Aa7,Aa8,Aa9,Aaa,Aab,Aac,Aad,Aae,Aaf,
        Ab0,Ab1,Ab2,Ab3,Ab4,Ab5,Ab6,Ab7,Ab8,Ab9,Aba,Abb,Abc,Abd,Abe,Abf,
        Ac0,Ac1,Ac2,Ac3,Ac4,Ac5,Ac6,Ac7,Ac8,Ac9,Aca,Acb,Acc,Acd,Ace,Acf,
        Ad0,Ad1,Ad2,Ad3,Ad4,Ad5,Ad6,Ad7,Ad8,Ad9,Ada,Adb,Adc,Add,Ade,Adf,
        Ae0,Ae1,Ae2,Ae3,Ae4,Ae5,Ae6,Ae7,Ae8,Ae9,Aea,Aeb,Aec,Aed,Aee,Aef,
        Af0,Af1,Af2,Af3,Af4,Af5,Af6,Af7,Af8,Af9,Afa,Afb,Afc,Afd,Afe,Aff]
   && true;


(**************** initialize ****************)


mov [L0x7fffffffb280,L0x7fffffffb282,L0x7fffffffb284] [A00,A01,A02];
mov [L0x7fffffffb286,L0x7fffffffb288,L0x7fffffffb28a] [A03,A04,A05];
mov [L0x7fffffffb28c,L0x7fffffffb28e,L0x7fffffffb290] [A06,A07,A08];
mov [L0x7fffffffb292,L0x7fffffffb294,L0x7fffffffb296] [A09,A0a,A0b];
mov [L0x7fffffffb298,L0x7fffffffb29a,L0x7fffffffb29c] [A0c,A0d,A0e];
mov [L0x7fffffffb29e,L0x7fffffffb2a0,L0x7fffffffb2a2] [A0f,A10,A11];
mov [L0x7fffffffb2a4,L0x7fffffffb2a6,L0x7fffffffb2a8] [A12,A13,A14];
mov [L0x7fffffffb2aa,L0x7fffffffb2ac,L0x7fffffffb2ae] [A15,A16,A17];
mov [L0x7fffffffb2b0,L0x7fffffffb2b2,L0x7fffffffb2b4] [A18,A19,A1a];
mov [L0x7fffffffb2b6,L0x7fffffffb2b8,L0x7fffffffb2ba] [A1b,A1c,A1d];
mov [L0x7fffffffb2bc,L0x7fffffffb2be,L0x7fffffffb2c0] [A1e,A1f,A20];
mov [L0x7fffffffb2c2,L0x7fffffffb2c4,L0x7fffffffb2c6] [A21,A22,A23];
mov [L0x7fffffffb2c8,L0x7fffffffb2ca,L0x7fffffffb2cc] [A24,A25,A26];
mov [L0x7fffffffb2ce,L0x7fffffffb2d0,L0x7fffffffb2d2] [A27,A28,A29];
mov [L0x7fffffffb2d4,L0x7fffffffb2d6,L0x7fffffffb2d8] [A2a,A2b,A2c];
mov [L0x7fffffffb2da,L0x7fffffffb2dc,L0x7fffffffb2de] [A2d,A2e,A2f];
mov [L0x7fffffffb2e0,L0x7fffffffb2e2,L0x7fffffffb2e4] [A30,A31,A32];
mov [L0x7fffffffb2e6,L0x7fffffffb2e8,L0x7fffffffb2ea] [A33,A34,A35];
mov [L0x7fffffffb2ec,L0x7fffffffb2ee,L0x7fffffffb2f0] [A36,A37,A38];
mov [L0x7fffffffb2f2,L0x7fffffffb2f4,L0x7fffffffb2f6] [A39,A3a,A3b];
mov [L0x7fffffffb2f8,L0x7fffffffb2fa,L0x7fffffffb2fc] [A3c,A3d,A3e];
mov [L0x7fffffffb2fe,L0x7fffffffb300,L0x7fffffffb302] [A3f,A40,A41];
mov [L0x7fffffffb304,L0x7fffffffb306,L0x7fffffffb308] [A42,A43,A44];
mov [L0x7fffffffb30a,L0x7fffffffb30c,L0x7fffffffb30e] [A45,A46,A47];
mov [L0x7fffffffb310,L0x7fffffffb312,L0x7fffffffb314] [A48,A49,A4a];
mov [L0x7fffffffb316,L0x7fffffffb318,L0x7fffffffb31a] [A4b,A4c,A4d];
mov [L0x7fffffffb31c,L0x7fffffffb31e,L0x7fffffffb320] [A4e,A4f,A50];
mov [L0x7fffffffb322,L0x7fffffffb324,L0x7fffffffb326] [A51,A52,A53];
mov [L0x7fffffffb328,L0x7fffffffb32a,L0x7fffffffb32c] [A54,A55,A56];
mov [L0x7fffffffb32e,L0x7fffffffb330,L0x7fffffffb332] [A57,A58,A59];
mov [L0x7fffffffb334,L0x7fffffffb336,L0x7fffffffb338] [A5a,A5b,A5c];
mov [L0x7fffffffb33a,L0x7fffffffb33c,L0x7fffffffb33e] [A5d,A5e,A5f];
mov [L0x7fffffffb340,L0x7fffffffb342,L0x7fffffffb344] [A60,A61,A62];
mov [L0x7fffffffb346,L0x7fffffffb348,L0x7fffffffb34a] [A63,A64,A65];
mov [L0x7fffffffb34c,L0x7fffffffb34e,L0x7fffffffb350] [A66,A67,A68];
mov [L0x7fffffffb352,L0x7fffffffb354,L0x7fffffffb356] [A69,A6a,A6b];
mov [L0x7fffffffb358,L0x7fffffffb35a,L0x7fffffffb35c] [A6c,A6d,A6e];
mov [L0x7fffffffb35e,L0x7fffffffb360,L0x7fffffffb362] [A6f,A70,A71];
mov [L0x7fffffffb364,L0x7fffffffb366,L0x7fffffffb368] [A72,A73,A74];
mov [L0x7fffffffb36a,L0x7fffffffb36c,L0x7fffffffb36e] [A75,A76,A77];
mov [L0x7fffffffb370,L0x7fffffffb372,L0x7fffffffb374] [A78,A79,A7a];
mov [L0x7fffffffb376,L0x7fffffffb378,L0x7fffffffb37a] [A7b,A7c,A7d];
mov [L0x7fffffffb37c,L0x7fffffffb37e,L0x7fffffffb380] [A7e,A7f,A80];
mov [L0x7fffffffb382,L0x7fffffffb384,L0x7fffffffb386] [A81,A82,A83];
mov [L0x7fffffffb388,L0x7fffffffb38a,L0x7fffffffb38c] [A84,A85,A86];
mov [L0x7fffffffb38e,L0x7fffffffb390,L0x7fffffffb392] [A87,A88,A89];
mov [L0x7fffffffb394,L0x7fffffffb396,L0x7fffffffb398] [A8a,A8b,A8c];
mov [L0x7fffffffb39a,L0x7fffffffb39c,L0x7fffffffb39e] [A8d,A8e,A8f];
mov [L0x7fffffffb3a0,L0x7fffffffb3a2,L0x7fffffffb3a4] [A90,A91,A92];
mov [L0x7fffffffb3a6,L0x7fffffffb3a8,L0x7fffffffb3aa] [A93,A94,A95];
mov [L0x7fffffffb3ac,L0x7fffffffb3ae,L0x7fffffffb3b0] [A96,A97,A98];
mov [L0x7fffffffb3b2,L0x7fffffffb3b4,L0x7fffffffb3b6] [A99,A9a,A9b];
mov [L0x7fffffffb3b8,L0x7fffffffb3ba,L0x7fffffffb3bc] [A9c,A9d,A9e];
mov [L0x7fffffffb3be,L0x7fffffffb3c0,L0x7fffffffb3c2] [A9f,Aa0,Aa1];
mov [L0x7fffffffb3c4,L0x7fffffffb3c6,L0x7fffffffb3c8] [Aa2,Aa3,Aa4];
mov [L0x7fffffffb3ca,L0x7fffffffb3cc,L0x7fffffffb3ce] [Aa5,Aa6,Aa7];
mov [L0x7fffffffb3d0,L0x7fffffffb3d2,L0x7fffffffb3d4] [Aa8,Aa9,Aaa];
mov [L0x7fffffffb3d6,L0x7fffffffb3d8,L0x7fffffffb3da] [Aab,Aac,Aad];
mov [L0x7fffffffb3dc,L0x7fffffffb3de,L0x7fffffffb3e0] [Aae,Aaf,Ab0];
mov [L0x7fffffffb3e2,L0x7fffffffb3e4,L0x7fffffffb3e6] [Ab1,Ab2,Ab3];
mov [L0x7fffffffb3e8,L0x7fffffffb3ea,L0x7fffffffb3ec] [Ab4,Ab5,Ab6];
mov [L0x7fffffffb3ee,L0x7fffffffb3f0,L0x7fffffffb3f2] [Ab7,Ab8,Ab9];
mov [L0x7fffffffb3f4,L0x7fffffffb3f6,L0x7fffffffb3f8] [Aba,Abb,Abc];
mov [L0x7fffffffb3fa,L0x7fffffffb3fc,L0x7fffffffb3fe] [Abd,Abe,Abf];
mov [L0x7fffffffb400,L0x7fffffffb402,L0x7fffffffb404] [Ac0,Ac1,Ac2];
mov [L0x7fffffffb406,L0x7fffffffb408,L0x7fffffffb40a] [Ac3,Ac4,Ac5];
mov [L0x7fffffffb40c,L0x7fffffffb40e,L0x7fffffffb410] [Ac6,Ac7,Ac8];
mov [L0x7fffffffb412,L0x7fffffffb414,L0x7fffffffb416] [Ac9,Aca,Acb];
mov [L0x7fffffffb418,L0x7fffffffb41a,L0x7fffffffb41c] [Acc,Acd,Ace];
mov [L0x7fffffffb41e,L0x7fffffffb420,L0x7fffffffb422] [Acf,Ad0,Ad1];
mov [L0x7fffffffb424,L0x7fffffffb426,L0x7fffffffb428] [Ad2,Ad3,Ad4];
mov [L0x7fffffffb42a,L0x7fffffffb42c,L0x7fffffffb42e] [Ad5,Ad6,Ad7];
mov [L0x7fffffffb430,L0x7fffffffb432,L0x7fffffffb434] [Ad8,Ad9,Ada];
mov [L0x7fffffffb436,L0x7fffffffb438,L0x7fffffffb43a] [Adb,Adc,Add];
mov [L0x7fffffffb43c,L0x7fffffffb43e,L0x7fffffffb440] [Ade,Adf,Ae0];
mov [L0x7fffffffb442,L0x7fffffffb444,L0x7fffffffb446] [Ae1,Ae2,Ae3];
mov [L0x7fffffffb448,L0x7fffffffb44a,L0x7fffffffb44c] [Ae4,Ae5,Ae6];
mov [L0x7fffffffb44e,L0x7fffffffb450,L0x7fffffffb452] [Ae7,Ae8,Ae9];
mov [L0x7fffffffb454,L0x7fffffffb456,L0x7fffffffb458] [Aea,Aeb,Aec];
mov [L0x7fffffffb45a,L0x7fffffffb45c,L0x7fffffffb45e] [Aed,Aee,Aef];
mov [L0x7fffffffb460,L0x7fffffffb462,L0x7fffffffb464] [Af0,Af1,Af2];
mov [L0x7fffffffb466,L0x7fffffffb468,L0x7fffffffb46a] [Af3,Af4,Af5];
mov [L0x7fffffffb46c,L0x7fffffffb46e,L0x7fffffffb470] [Af6,Af7,Af8];
mov [L0x7fffffffb472,L0x7fffffffb474,L0x7fffffffb476] [Af9,Afa,Afb];
mov [L0x7fffffffb478,L0x7fffffffb47a,L0x7fffffffb47c] [Afc,Afd,Afe];
mov L0x7fffffffb47e Aff;



(**************** constants ****************)


mov [L0x5555556384a0,L0x5555556384a2] [(  3329)@int16,(  3329)@int16];
mov [L0x5555556384a4,L0x5555556384a6] [(  3329)@int16,(  3329)@int16];
mov [L0x5555556384a8,L0x5555556384aa] [(  3329)@int16,(  3329)@int16];
mov [L0x5555556384ac,L0x5555556384ae] [(  3329)@int16,(  3329)@int16];
mov [L0x5555556384b0,L0x5555556384b2] [(  3329)@int16,(  3329)@int16];
mov [L0x5555556384b4,L0x5555556384b6] [(  3329)@int16,(  3329)@int16];
mov [L0x5555556384b8,L0x5555556384ba] [(  3329)@int16,(  3329)@int16];
mov [L0x5555556384bc,L0x5555556384be] [(  3329)@int16,(  3329)@int16];
mov [L0x5555556384c0,L0x5555556384c2] [( -3327)@int16,( -3327)@int16];
mov [L0x5555556384c4,L0x5555556384c6] [( -3327)@int16,( -3327)@int16];
mov [L0x5555556384c8,L0x5555556384ca] [( -3327)@int16,( -3327)@int16];
mov [L0x5555556384cc,L0x5555556384ce] [( -3327)@int16,( -3327)@int16];
mov [L0x5555556384d0,L0x5555556384d2] [( -3327)@int16,( -3327)@int16];
mov [L0x5555556384d4,L0x5555556384d6] [( -3327)@int16,( -3327)@int16];
mov [L0x5555556384d8,L0x5555556384da] [( -3327)@int16,( -3327)@int16];
mov [L0x5555556384dc,L0x5555556384de] [( -3327)@int16,( -3327)@int16];
mov [L0x5555556384e0,L0x5555556384e2] [( 20159)@int16,( 20159)@int16];
mov [L0x5555556384e4,L0x5555556384e6] [( 20159)@int16,( 20159)@int16];
mov [L0x5555556384e8,L0x5555556384ea] [( 20159)@int16,( 20159)@int16];
mov [L0x5555556384ec,L0x5555556384ee] [( 20159)@int16,( 20159)@int16];
mov [L0x5555556384f0,L0x5555556384f2] [( 20159)@int16,( 20159)@int16];
mov [L0x5555556384f4,L0x5555556384f6] [( 20159)@int16,( 20159)@int16];
mov [L0x5555556384f8,L0x5555556384fa] [( 20159)@int16,( 20159)@int16];
mov [L0x5555556384fc,L0x5555556384fe] [( 20159)@int16,( 20159)@int16];
mov [L0x555555638500,L0x555555638502] [(-10079)@int16,(-10079)@int16];
mov [L0x555555638504,L0x555555638506] [(-10079)@int16,(-10079)@int16];
mov [L0x555555638508,L0x55555563850a] [(-10079)@int16,(-10079)@int16];
mov [L0x55555563850c,L0x55555563850e] [(-10079)@int16,(-10079)@int16];
mov [L0x555555638510,L0x555555638512] [(-10079)@int16,(-10079)@int16];
mov [L0x555555638514,L0x555555638516] [(-10079)@int16,(-10079)@int16];
mov [L0x555555638518,L0x55555563851a] [(-10079)@int16,(-10079)@int16];
mov [L0x55555563851c,L0x55555563851e] [(-10079)@int16,(-10079)@int16];
mov [L0x555555638520,L0x555555638522] [(  1441)@int16,(  1441)@int16];
mov [L0x555555638524,L0x555555638526] [(  1441)@int16,(  1441)@int16];
mov [L0x555555638528,L0x55555563852a] [(  1441)@int16,(  1441)@int16];
mov [L0x55555563852c,L0x55555563852e] [(  1441)@int16,(  1441)@int16];
mov [L0x555555638530,L0x555555638532] [(  1441)@int16,(  1441)@int16];
mov [L0x555555638534,L0x555555638536] [(  1441)@int16,(  1441)@int16];
mov [L0x555555638538,L0x55555563853a] [(  1441)@int16,(  1441)@int16];
mov [L0x55555563853c,L0x55555563853e] [(  1441)@int16,(  1441)@int16];
mov [L0x555555638540,L0x555555638542] [( 20553)@int16,( 20553)@int16];
mov [L0x555555638544,L0x555555638546] [( 20553)@int16,( 20553)@int16];
mov [L0x555555638548,L0x55555563854a] [( 20553)@int16,( 20553)@int16];
mov [L0x55555563854c,L0x55555563854e] [( 20553)@int16,( 20553)@int16];
mov [L0x555555638550,L0x555555638552] [( 20553)@int16,( 20553)@int16];
mov [L0x555555638554,L0x555555638556] [( 20553)@int16,( 20553)@int16];
mov [L0x555555638558,L0x55555563855a] [( 20553)@int16,( 20553)@int16];
mov [L0x55555563855c,L0x55555563855e] [( 20553)@int16,( 20553)@int16];
mov [L0x555555638560,L0x555555638562] [(  1353)@int16,(  1353)@int16];
mov [L0x555555638564,L0x555555638566] [(  1353)@int16,(  1353)@int16];
mov [L0x555555638568,L0x55555563856a] [(  1353)@int16,(  1353)@int16];
mov [L0x55555563856c,L0x55555563856e] [(  1353)@int16,(  1353)@int16];
mov [L0x555555638570,L0x555555638572] [(  1353)@int16,(  1353)@int16];
mov [L0x555555638574,L0x555555638576] [(  1353)@int16,(  1353)@int16];
mov [L0x555555638578,L0x55555563857a] [(  1353)@int16,(  1353)@int16];
mov [L0x55555563857c,L0x55555563857e] [(  1353)@int16,(  1353)@int16];
mov [L0x555555638580,L0x555555638582] [(  4095)@int16,(  4095)@int16];
mov [L0x555555638584,L0x555555638586] [(  4095)@int16,(  4095)@int16];
mov [L0x555555638588,L0x55555563858a] [(  4095)@int16,(  4095)@int16];
mov [L0x55555563858c,L0x55555563858e] [(  4095)@int16,(  4095)@int16];
mov [L0x555555638590,L0x555555638592] [(  4095)@int16,(  4095)@int16];
mov [L0x555555638594,L0x555555638596] [(  4095)@int16,(  4095)@int16];
mov [L0x555555638598,L0x55555563859a] [(  4095)@int16,(  4095)@int16];
mov [L0x55555563859c,L0x55555563859e] [(  4095)@int16,(  4095)@int16];
mov [L0x5555556385a0,L0x5555556385a2] [(  3854)@int16,(  3340)@int16];
mov [L0x5555556385a4,L0x5555556385a6] [(  2826)@int16,(  2312)@int16];
mov [L0x5555556385a8,L0x5555556385aa] [(  1798)@int16,(  1284)@int16];
mov [L0x5555556385ac,L0x5555556385ae] [(   770)@int16,(   256)@int16];
mov [L0x5555556385b0,L0x5555556385b2] [(  3854)@int16,(  3340)@int16];
mov [L0x5555556385b4,L0x5555556385b6] [(  2826)@int16,(  2312)@int16];
mov [L0x5555556385b8,L0x5555556385ba] [(  1798)@int16,(  1284)@int16];
mov [L0x5555556385bc,L0x5555556385be] [(   770)@int16,(   256)@int16];
mov [L0x5555556385c0,L0x5555556385c2] [(     7)@int16,(     0)@int16];
mov [L0x5555556385c4,L0x5555556385c6] [(     6)@int16,(     0)@int16];
mov [L0x5555556385c8,L0x5555556385ca] [(     5)@int16,(     0)@int16];
mov [L0x5555556385cc,L0x5555556385ce] [(     4)@int16,(     0)@int16];
mov [L0x5555556385d0,L0x5555556385d2] [(     3)@int16,(     0)@int16];
mov [L0x5555556385d4,L0x5555556385d6] [(     2)@int16,(     0)@int16];
mov [L0x5555556385d8,L0x5555556385da] [(     1)@int16,(     0)@int16];
mov [L0x5555556385dc,L0x5555556385de] [(     0)@int16,(     0)@int16];
mov [L0x5555556385e0,L0x5555556385e2] [( 31498)@int16,( 31498)@int16];
mov [L0x5555556385e4,L0x5555556385e6] [( 31498)@int16,( 31498)@int16];
mov [L0x5555556385e8,L0x5555556385ea] [(  -758)@int16,(  -758)@int16];
mov [L0x5555556385ec,L0x5555556385ee] [(  -758)@int16,(  -758)@int16];
mov [L0x5555556385f0,L0x5555556385f2] [(  5237)@int16,(  5237)@int16];
mov [L0x5555556385f4,L0x5555556385f6] [(  5237)@int16,(  5237)@int16];
mov [L0x5555556385f8,L0x5555556385fa] [(  1397)@int16,(  1397)@int16];
mov [L0x5555556385fc,L0x5555556385fe] [(  1397)@int16,(  1397)@int16];
mov [L0x555555638600,L0x555555638602] [( 14745)@int16,( 14745)@int16];
mov [L0x555555638604,L0x555555638606] [( 14745)@int16,( 14745)@int16];
mov [L0x555555638608,L0x55555563860a] [( 14745)@int16,( 14745)@int16];
mov [L0x55555563860c,L0x55555563860e] [( 14745)@int16,( 14745)@int16];
mov [L0x555555638610,L0x555555638612] [( 14745)@int16,( 14745)@int16];
mov [L0x555555638614,L0x555555638616] [( 14745)@int16,( 14745)@int16];
mov [L0x555555638618,L0x55555563861a] [( 14745)@int16,( 14745)@int16];
mov [L0x55555563861c,L0x55555563861e] [( 14745)@int16,( 14745)@int16];
mov [L0x555555638620,L0x555555638622] [(  -359)@int16,(  -359)@int16];
mov [L0x555555638624,L0x555555638626] [(  -359)@int16,(  -359)@int16];
mov [L0x555555638628,L0x55555563862a] [(  -359)@int16,(  -359)@int16];
mov [L0x55555563862c,L0x55555563862e] [(  -359)@int16,(  -359)@int16];
mov [L0x555555638630,L0x555555638632] [(  -359)@int16,(  -359)@int16];
mov [L0x555555638634,L0x555555638636] [(  -359)@int16,(  -359)@int16];
mov [L0x555555638638,L0x55555563863a] [(  -359)@int16,(  -359)@int16];
mov [L0x55555563863c,L0x55555563863e] [(  -359)@int16,(  -359)@int16];
mov [L0x555555638640,L0x555555638642] [( 13525)@int16,( 13525)@int16];
mov [L0x555555638644,L0x555555638646] [( 13525)@int16,( 13525)@int16];
mov [L0x555555638648,L0x55555563864a] [( 13525)@int16,( 13525)@int16];
mov [L0x55555563864c,L0x55555563864e] [( 13525)@int16,( 13525)@int16];
mov [L0x555555638650,L0x555555638652] [(-12402)@int16,(-12402)@int16];
mov [L0x555555638654,L0x555555638656] [(-12402)@int16,(-12402)@int16];
mov [L0x555555638658,L0x55555563865a] [(-12402)@int16,(-12402)@int16];
mov [L0x55555563865c,L0x55555563865e] [(-12402)@int16,(-12402)@int16];
mov [L0x555555638660,L0x555555638662] [(  1493)@int16,(  1493)@int16];
mov [L0x555555638664,L0x555555638666] [(  1493)@int16,(  1493)@int16];
mov [L0x555555638668,L0x55555563866a] [(  1493)@int16,(  1493)@int16];
mov [L0x55555563866c,L0x55555563866e] [(  1493)@int16,(  1493)@int16];
mov [L0x555555638670,L0x555555638672] [(  1422)@int16,(  1422)@int16];
mov [L0x555555638674,L0x555555638676] [(  1422)@int16,(  1422)@int16];
mov [L0x555555638678,L0x55555563867a] [(  1422)@int16,(  1422)@int16];
mov [L0x55555563867c,L0x55555563867e] [(  1422)@int16,(  1422)@int16];
mov [L0x555555638680,L0x555555638682] [(-20907)@int16,(-20907)@int16];
mov [L0x555555638684,L0x555555638686] [(-20907)@int16,(-20907)@int16];
mov [L0x555555638688,L0x55555563868a] [( 27758)@int16,( 27758)@int16];
mov [L0x55555563868c,L0x55555563868e] [( 27758)@int16,( 27758)@int16];
mov [L0x555555638690,L0x555555638692] [( -3799)@int16,( -3799)@int16];
mov [L0x555555638694,L0x555555638696] [( -3799)@int16,( -3799)@int16];
mov [L0x555555638698,L0x55555563869a] [(-15690)@int16,(-15690)@int16];
mov [L0x55555563869c,L0x55555563869e] [(-15690)@int16,(-15690)@int16];
mov [L0x5555556386a0,L0x5555556386a2] [(  -171)@int16,(  -171)@int16];
mov [L0x5555556386a4,L0x5555556386a6] [(  -171)@int16,(  -171)@int16];
mov [L0x5555556386a8,L0x5555556386aa] [(   622)@int16,(   622)@int16];
mov [L0x5555556386ac,L0x5555556386ae] [(   622)@int16,(   622)@int16];
mov [L0x5555556386b0,L0x5555556386b2] [(  1577)@int16,(  1577)@int16];
mov [L0x5555556386b4,L0x5555556386b6] [(  1577)@int16,(  1577)@int16];
mov [L0x5555556386b8,L0x5555556386ba] [(   182)@int16,(   182)@int16];
mov [L0x5555556386bc,L0x5555556386be] [(   182)@int16,(   182)@int16];
mov [L0x5555556386c0,L0x5555556386c2] [( -5827)@int16,( -5827)@int16];
mov [L0x5555556386c4,L0x5555556386c6] [( 17363)@int16,( 17363)@int16];
mov [L0x5555556386c8,L0x5555556386ca] [(-26360)@int16,(-26360)@int16];
mov [L0x5555556386cc,L0x5555556386ce] [(-29057)@int16,(-29057)@int16];
mov [L0x5555556386d0,L0x5555556386d2] [(  5571)@int16,(  5571)@int16];
mov [L0x5555556386d4,L0x5555556386d6] [( -1102)@int16,( -1102)@int16];
mov [L0x5555556386d8,L0x5555556386da] [( 21438)@int16,( 21438)@int16];
mov [L0x5555556386dc,L0x5555556386de] [(-26242)@int16,(-26242)@int16];
mov [L0x5555556386e0,L0x5555556386e2] [(   573)@int16,(   573)@int16];
mov [L0x5555556386e4,L0x5555556386e6] [( -1325)@int16,( -1325)@int16];
mov [L0x5555556386e8,L0x5555556386ea] [(   264)@int16,(   264)@int16];
mov [L0x5555556386ec,L0x5555556386ee] [(   383)@int16,(   383)@int16];
mov [L0x5555556386f0,L0x5555556386f2] [(  -829)@int16,(  -829)@int16];
mov [L0x5555556386f4,L0x5555556386f6] [(  1458)@int16,(  1458)@int16];
mov [L0x5555556386f8,L0x5555556386fa] [( -1602)@int16,( -1602)@int16];
mov [L0x5555556386fc,L0x5555556386fe] [(  -130)@int16,(  -130)@int16];
mov [L0x555555638700,L0x555555638702] [( -5689)@int16,( -6516)@int16];
mov [L0x555555638704,L0x555555638706] [(  1496)@int16,( 30967)@int16];
mov [L0x555555638708,L0x55555563870a] [(-23565)@int16,( 20179)@int16];
mov [L0x55555563870c,L0x55555563870e] [( 20710)@int16,( 25080)@int16];
mov [L0x555555638710,L0x555555638712] [(-12796)@int16,( 26616)@int16];
mov [L0x555555638714,L0x555555638716] [( 16064)@int16,(-12442)@int16];
mov [L0x555555638718,L0x55555563871a] [(  9134)@int16,(  -650)@int16];
mov [L0x55555563871c,L0x55555563871e] [(-25986)@int16,( 27837)@int16];
mov [L0x555555638720,L0x555555638722] [(  1223)@int16,(   652)@int16];
mov [L0x555555638724,L0x555555638726] [(  -552)@int16,(  1015)@int16];
mov [L0x555555638728,L0x55555563872a] [( -1293)@int16,(  1491)@int16];
mov [L0x55555563872c,L0x55555563872e] [(  -282)@int16,( -1544)@int16];
mov [L0x555555638730,L0x555555638732] [(   516)@int16,(    -8)@int16];
mov [L0x555555638734,L0x555555638736] [(  -320)@int16,(  -666)@int16];
mov [L0x555555638738,L0x55555563873a] [( -1618)@int16,( -1162)@int16];
mov [L0x55555563873c,L0x55555563873e] [(   126)@int16,(  1469)@int16];
mov [L0x555555638740,L0x555555638742] [(  -335)@int16,(-11477)@int16];
mov [L0x555555638744,L0x555555638746] [(-32227)@int16,( 20494)@int16];
mov [L0x555555638748,L0x55555563874a] [(-27738)@int16,(   945)@int16];
mov [L0x55555563874c,L0x55555563874e] [(-14883)@int16,(  6182)@int16];
mov [L0x555555638750,L0x555555638752] [( 32010)@int16,( 10631)@int16];
mov [L0x555555638754,L0x555555638756] [( 29175)@int16,(-28762)@int16];
mov [L0x555555638758,L0x55555563875a] [(-18486)@int16,( 17560)@int16];
mov [L0x55555563875c,L0x55555563875e] [(-14430)@int16,( -5276)@int16];
mov [L0x555555638760,L0x555555638762] [( -1103)@int16,(   555)@int16];
mov [L0x555555638764,L0x555555638766] [( -1251)@int16,(  1550)@int16];
mov [L0x555555638768,L0x55555563876a] [(   422)@int16,(   177)@int16];
mov [L0x55555563876c,L0x55555563876e] [(  -291)@int16,(  1574)@int16];
mov [L0x555555638770,L0x555555638772] [(  -246)@int16,(  1159)@int16];
mov [L0x555555638774,L0x555555638776] [(  -777)@int16,(  -602)@int16];
mov [L0x555555638778,L0x55555563877a] [( -1590)@int16,(  -872)@int16];
mov [L0x55555563877c,L0x55555563877e] [(   418)@int16,(  -156)@int16];
mov [L0x555555638780,L0x555555638782] [( 11182)@int16,( 13387)@int16];
mov [L0x555555638784,L0x555555638786] [(-14233)@int16,(-21655)@int16];
mov [L0x555555638788,L0x55555563878a] [( 13131)@int16,( -4587)@int16];
mov [L0x55555563878c,L0x55555563878e] [( 23092)@int16,(  5493)@int16];
mov [L0x555555638790,L0x555555638792] [(-32502)@int16,( 30317)@int16];
mov [L0x555555638794,L0x555555638796] [(-18741)@int16,( 12639)@int16];
mov [L0x555555638798,L0x55555563879a] [( 20100)@int16,( 18525)@int16];
mov [L0x55555563879c,L0x55555563879e] [( 19529)@int16,(-12619)@int16];
mov [L0x5555556387a0,L0x5555556387a2] [(   430)@int16,(   843)@int16];
mov [L0x5555556387a4,L0x5555556387a6] [(   871)@int16,(   105)@int16];
mov [L0x5555556387a8,L0x5555556387aa] [(   587)@int16,(  -235)@int16];
mov [L0x5555556387ac,L0x5555556387ae] [(  -460)@int16,(  1653)@int16];
mov [L0x5555556387b0,L0x5555556387b2] [(   778)@int16,(  -147)@int16];
mov [L0x5555556387b4,L0x5555556387b6] [(  1483)@int16,(  1119)@int16];
mov [L0x5555556387b8,L0x5555556387ba] [(   644)@int16,(   349)@int16];
mov [L0x5555556387bc,L0x5555556387be] [(   329)@int16,(   -75)@int16];
mov [L0x5555556387c0,L0x5555556387c2] [(   787)@int16,(   787)@int16];
mov [L0x5555556387c4,L0x5555556387c6] [(   787)@int16,(   787)@int16];
mov [L0x5555556387c8,L0x5555556387ca] [(   787)@int16,(   787)@int16];
mov [L0x5555556387cc,L0x5555556387ce] [(   787)@int16,(   787)@int16];
mov [L0x5555556387d0,L0x5555556387d2] [(   787)@int16,(   787)@int16];
mov [L0x5555556387d4,L0x5555556387d6] [(   787)@int16,(   787)@int16];
mov [L0x5555556387d8,L0x5555556387da] [(   787)@int16,(   787)@int16];
mov [L0x5555556387dc,L0x5555556387de] [(   787)@int16,(   787)@int16];
mov [L0x5555556387e0,L0x5555556387e2] [( -1517)@int16,( -1517)@int16];
mov [L0x5555556387e4,L0x5555556387e6] [( -1517)@int16,( -1517)@int16];
mov [L0x5555556387e8,L0x5555556387ea] [( -1517)@int16,( -1517)@int16];
mov [L0x5555556387ec,L0x5555556387ee] [( -1517)@int16,( -1517)@int16];
mov [L0x5555556387f0,L0x5555556387f2] [( -1517)@int16,( -1517)@int16];
mov [L0x5555556387f4,L0x5555556387f6] [( -1517)@int16,( -1517)@int16];
mov [L0x5555556387f8,L0x5555556387fa] [( -1517)@int16,( -1517)@int16];
mov [L0x5555556387fc,L0x5555556387fe] [( -1517)@int16,( -1517)@int16];
mov [L0x555555638800,L0x555555638802] [( 28191)@int16,( 28191)@int16];
mov [L0x555555638804,L0x555555638806] [( 28191)@int16,( 28191)@int16];
mov [L0x555555638808,L0x55555563880a] [( 28191)@int16,( 28191)@int16];
mov [L0x55555563880c,L0x55555563880e] [( 28191)@int16,( 28191)@int16];
mov [L0x555555638810,L0x555555638812] [(-16694)@int16,(-16694)@int16];
mov [L0x555555638814,L0x555555638816] [(-16694)@int16,(-16694)@int16];
mov [L0x555555638818,L0x55555563881a] [(-16694)@int16,(-16694)@int16];
mov [L0x55555563881c,L0x55555563881e] [(-16694)@int16,(-16694)@int16];
mov [L0x555555638820,L0x555555638822] [(   287)@int16,(   287)@int16];
mov [L0x555555638824,L0x555555638826] [(   287)@int16,(   287)@int16];
mov [L0x555555638828,L0x55555563882a] [(   287)@int16,(   287)@int16];
mov [L0x55555563882c,L0x55555563882e] [(   287)@int16,(   287)@int16];
mov [L0x555555638830,L0x555555638832] [(   202)@int16,(   202)@int16];
mov [L0x555555638834,L0x555555638836] [(   202)@int16,(   202)@int16];
mov [L0x555555638838,L0x55555563883a] [(   202)@int16,(   202)@int16];
mov [L0x55555563883c,L0x55555563883e] [(   202)@int16,(   202)@int16];
mov [L0x555555638840,L0x555555638842] [( 10690)@int16,( 10690)@int16];
mov [L0x555555638844,L0x555555638846] [( 10690)@int16,( 10690)@int16];
mov [L0x555555638848,L0x55555563884a] [(  1358)@int16,(  1358)@int16];
mov [L0x55555563884c,L0x55555563884e] [(  1358)@int16,(  1358)@int16];
mov [L0x555555638850,L0x555555638852] [(-11202)@int16,(-11202)@int16];
mov [L0x555555638854,L0x555555638856] [(-11202)@int16,(-11202)@int16];
mov [L0x555555638858,L0x55555563885a] [( 31164)@int16,( 31164)@int16];
mov [L0x55555563885c,L0x55555563885e] [( 31164)@int16,( 31164)@int16];
mov [L0x555555638860,L0x555555638862] [(   962)@int16,(   962)@int16];
mov [L0x555555638864,L0x555555638866] [(   962)@int16,(   962)@int16];
mov [L0x555555638868,L0x55555563886a] [( -1202)@int16,( -1202)@int16];
mov [L0x55555563886c,L0x55555563886e] [( -1202)@int16,( -1202)@int16];
mov [L0x555555638870,L0x555555638872] [( -1474)@int16,( -1474)@int16];
mov [L0x555555638874,L0x555555638876] [( -1474)@int16,( -1474)@int16];
mov [L0x555555638878,L0x55555563887a] [(  1468)@int16,(  1468)@int16];
mov [L0x55555563887c,L0x55555563887e] [(  1468)@int16,(  1468)@int16];
mov [L0x555555638880,L0x555555638882] [(-28073)@int16,(-28073)@int16];
mov [L0x555555638884,L0x555555638886] [( 24313)@int16,( 24313)@int16];
mov [L0x555555638888,L0x55555563888a] [(-10532)@int16,(-10532)@int16];
mov [L0x55555563888c,L0x55555563888e] [(  8800)@int16,(  8800)@int16];
mov [L0x555555638890,L0x555555638892] [( 18426)@int16,( 18426)@int16];
mov [L0x555555638894,L0x555555638896] [(  8859)@int16,(  8859)@int16];
mov [L0x555555638898,L0x55555563889a] [( 26675)@int16,( 26675)@int16];
mov [L0x55555563889c,L0x55555563889e] [(-16163)@int16,(-16163)@int16];
mov [L0x5555556388a0,L0x5555556388a2] [(  -681)@int16,(  -681)@int16];
mov [L0x5555556388a4,L0x5555556388a6] [(  1017)@int16,(  1017)@int16];
mov [L0x5555556388a8,L0x5555556388aa] [(   732)@int16,(   732)@int16];
mov [L0x5555556388ac,L0x5555556388ae] [(   608)@int16,(   608)@int16];
mov [L0x5555556388b0,L0x5555556388b2] [( -1542)@int16,( -1542)@int16];
mov [L0x5555556388b4,L0x5555556388b6] [(   411)@int16,(   411)@int16];
mov [L0x5555556388b8,L0x5555556388ba] [(  -205)@int16,(  -205)@int16];
mov [L0x5555556388bc,L0x5555556388be] [( -1571)@int16,( -1571)@int16];
mov [L0x5555556388c0,L0x5555556388c2] [( 19883)@int16,(-28250)@int16];
mov [L0x5555556388c4,L0x5555556388c6] [(-15887)@int16,( -8898)@int16];
mov [L0x5555556388c8,L0x5555556388ca] [(-28309)@int16,(  9075)@int16];
mov [L0x5555556388cc,L0x5555556388ce] [(-30199)@int16,( 18249)@int16];
mov [L0x5555556388d0,L0x5555556388d2] [( 13426)@int16,( 14017)@int16];
mov [L0x5555556388d4,L0x5555556388d6] [(-29156)@int16,(-12757)@int16];
mov [L0x5555556388d8,L0x5555556388da] [( 16832)@int16,(  4311)@int16];
mov [L0x5555556388dc,L0x5555556388de] [(-24155)@int16,(-17915)@int16];
mov [L0x5555556388e0,L0x5555556388e2] [(  -853)@int16,(   -90)@int16];
mov [L0x5555556388e4,L0x5555556388e6] [(  -271)@int16,(   830)@int16];
mov [L0x5555556388e8,L0x5555556388ea] [(   107)@int16,( -1421)@int16];
mov [L0x5555556388ec,L0x5555556388ee] [(  -247)@int16,(  -951)@int16];
mov [L0x5555556388f0,L0x5555556388f2] [(  -398)@int16,(   961)@int16];
mov [L0x5555556388f4,L0x5555556388f6] [( -1508)@int16,(  -725)@int16];
mov [L0x5555556388f8,L0x5555556388fa] [(   448)@int16,( -1065)@int16];
mov [L0x5555556388fc,L0x5555556388fe] [(   677)@int16,( -1275)@int16];
mov [L0x555555638900,L0x555555638902] [(-31183)@int16,( 25435)@int16];
mov [L0x555555638904,L0x555555638906] [( -7382)@int16,( 24391)@int16];
mov [L0x555555638908,L0x55555563890a] [(-20927)@int16,( 10946)@int16];
mov [L0x55555563890c,L0x55555563890e] [( 24214)@int16,( 16989)@int16];
mov [L0x555555638910,L0x555555638912] [( 10335)@int16,( -7934)@int16];
mov [L0x555555638914,L0x555555638916] [(-22502)@int16,( 10906)@int16];
mov [L0x555555638918,L0x55555563891a] [( 31636)@int16,( 28644)@int16];
mov [L0x55555563891c,L0x55555563891e] [( 23998)@int16,(-17422)@int16];
mov [L0x555555638920,L0x555555638922] [(   817)@int16,(   603)@int16];
mov [L0x555555638924,L0x555555638926] [(  1322)@int16,( -1465)@int16];
mov [L0x555555638928,L0x55555563892a] [( -1215)@int16,(  1218)@int16];
mov [L0x55555563892c,L0x55555563892e] [(  -874)@int16,( -1187)@int16];
mov [L0x555555638930,L0x555555638932] [( -1185)@int16,( -1278)@int16];
mov [L0x555555638934,L0x555555638936] [( -1510)@int16,(  -870)@int16];
mov [L0x555555638938,L0x55555563893a] [(  -108)@int16,(   996)@int16];
mov [L0x55555563893c,L0x55555563893e] [(   958)@int16,(  1522)@int16];
mov [L0x555555638940,L0x555555638942] [( 20297)@int16,(  2146)@int16];
mov [L0x555555638944,L0x555555638946] [( 15355)@int16,(-32384)@int16];
mov [L0x555555638948,L0x55555563894a] [( -6280)@int16,(-14903)@int16];
mov [L0x55555563894c,L0x55555563894e] [(-11044)@int16,( 14469)@int16];
mov [L0x555555638950,L0x555555638952] [(-21498)@int16,(-20198)@int16];
mov [L0x555555638954,L0x555555638956] [( 23210)@int16,(-17442)@int16];
mov [L0x555555638958,L0x55555563895a] [(-23860)@int16,(-20257)@int16];
mov [L0x55555563895c,L0x55555563895e] [(  7756)@int16,( 23132)@int16];
mov [L0x555555638960,L0x555555638962] [(  1097)@int16,(   610)@int16];
mov [L0x555555638964,L0x555555638966] [( -1285)@int16,(   384)@int16];
mov [L0x555555638968,L0x55555563896a] [(  -136)@int16,( -1335)@int16];
mov [L0x55555563896c,L0x55555563896e] [(   220)@int16,( -1659)@int16];
mov [L0x555555638970,L0x555555638972] [( -1530)@int16,(   794)@int16];
mov [L0x555555638974,L0x555555638976] [(  -854)@int16,(   478)@int16];
mov [L0x555555638978,L0x55555563897a] [(  -308)@int16,(   991)@int16];
mov [L0x55555563897c,L0x55555563897e] [( -1460)@int16,(  1628)@int16];
mov [L0x555555638980,L0x555555638982] [(    32)@int16,(    32)@int16];
mov [L0x555555638984,L0x555555638986] [(    32)@int16,(    32)@int16];
mov [L0x555555638988,L0x55555563898a] [(    32)@int16,(    32)@int16];
mov [L0x55555563898c,L0x55555563898e] [(    32)@int16,(    32)@int16];
mov [L0x555555638990,L0x555555638992] [(    32)@int16,(    32)@int16];
mov [L0x555555638994,L0x555555638996] [(    32)@int16,(    32)@int16];
mov [L0x555555638998,L0x55555563899a] [(    32)@int16,(    32)@int16];
mov [L0x55555563899c,L0x55555563899e] [(    32)@int16,(    32)@int16];

(* #! -> SP = 0x7fffffffa658 *)
#! 0x7fffffffa658 = 0x7fffffffa658;
(* endbr64                                         #! PC = 0x55555556cbb0 *)
(* endbr64 *) nop;
(* push   %rbx                                     #! EA = L0x7fffffffa650; PC = 0x55555556cbb4 *)
(* push *) nop;
(* mov    %rdi,%rbx                                #! PC = 0x55555556cbb5 *)
(* mov %rdi, %rbx *) nop;
(* #call   0x55555556c3f0 <PQCLEAN_MLKEM768_AVX2_poly_ntt>#! PC = 0x55555556cbb8 *)
#call   0x55555556c3f0 <PQCLEAN_MLKEM768_AVX2_poly_ntt>#! 0x55555556cbb8 = 0x55555556cbb8;
(* #! -> SP = 0x7fffffffa648 *)
#! 0x7fffffffa648 = 0x7fffffffa648;
(* endbr64                                         #! PC = 0x55555556c3f0 *)
(* endbr64 *) nop;
(* lea    0xcc0a5(%rip),%rsi        # 0x5555556384a0 <PQCLEAN_MLKEM768_AVX2_qdata>#! PC = 0x55555556c3f4 *)
(* lea *) nop;
(* #jmp    0x55555556e4b9 <_PQCLEAN_MLKEM768_AVX2_ntt_avx>#! PC = 0x55555556c3fb *)
#jmp    0x55555556e4b9 <_PQCLEAN_MLKEM768_AVX2_ntt_avx>#! 0x55555556c3fb = 0x55555556c3fb;
(* vmovdqa (%rsi),%ymm0                            #! EA = L0x5555556384a0; Value = 0x0d010d010d010d01; PC = 0x55555556e4b9 *)
mov %ymm0
    [L0x5555556384a0, L0x5555556384a2, L0x5555556384a4, L0x5555556384a6,
     L0x5555556384a8, L0x5555556384aa, L0x5555556384ac, L0x5555556384ae,
     L0x5555556384b0, L0x5555556384b2, L0x5555556384b4, L0x5555556384b6,
     L0x5555556384b8, L0x5555556384ba, L0x5555556384bc, L0x5555556384be];
(* vpbroadcastq 0x140(%rsi),%ymm15                 #! EA = L0x5555556385e0; Value = 0x7b0a7b0a7b0a7b0a; PC = 0x55555556e4bd *)
broadcast %ymm15 16 [L0x5555556385e0, L0x5555556385e2];
(* vmovdqa 0x100(%rdi),%ymm8                       #! EA = L0x7fffffffb380; Value = 0x0002ffff0000ffff; PC = 0x55555556e4c6 *)
mov %ymm8
    [L0x7fffffffb380, L0x7fffffffb382, L0x7fffffffb384, L0x7fffffffb386,
     L0x7fffffffb388, L0x7fffffffb38a, L0x7fffffffb38c, L0x7fffffffb38e,
     L0x7fffffffb390, L0x7fffffffb392, L0x7fffffffb394, L0x7fffffffb396,
     L0x7fffffffb398, L0x7fffffffb39a, L0x7fffffffb39c, L0x7fffffffb39e];
(* vmovdqa 0x120(%rdi),%ymm9                       #! EA = L0x7fffffffb3a0; Value = 0x0000ffff00010000; PC = 0x55555556e4ce *)
mov %ymm9
    [L0x7fffffffb3a0, L0x7fffffffb3a2, L0x7fffffffb3a4, L0x7fffffffb3a6,
     L0x7fffffffb3a8, L0x7fffffffb3aa, L0x7fffffffb3ac, L0x7fffffffb3ae,
     L0x7fffffffb3b0, L0x7fffffffb3b2, L0x7fffffffb3b4, L0x7fffffffb3b6,
     L0x7fffffffb3b8, L0x7fffffffb3ba, L0x7fffffffb3bc, L0x7fffffffb3be];
(* vmovdqa 0x140(%rdi),%ymm10                      #! EA = L0x7fffffffb3c0; Value = 0xffff00000002ffff; PC = 0x55555556e4d6 *)
mov %ymm10
    [L0x7fffffffb3c0, L0x7fffffffb3c2, L0x7fffffffb3c4, L0x7fffffffb3c6,
     L0x7fffffffb3c8, L0x7fffffffb3ca, L0x7fffffffb3cc, L0x7fffffffb3ce,
     L0x7fffffffb3d0, L0x7fffffffb3d2, L0x7fffffffb3d4, L0x7fffffffb3d6,
     L0x7fffffffb3d8, L0x7fffffffb3da, L0x7fffffffb3dc, L0x7fffffffb3de];
(* vmovdqa 0x160(%rdi),%ymm11                      #! EA = L0x7fffffffb3e0; Value = 0x0000000000010000; PC = 0x55555556e4de *)
mov %ymm11
    [L0x7fffffffb3e0, L0x7fffffffb3e2, L0x7fffffffb3e4, L0x7fffffffb3e6,
     L0x7fffffffb3e8, L0x7fffffffb3ea, L0x7fffffffb3ec, L0x7fffffffb3ee,
     L0x7fffffffb3f0, L0x7fffffffb3f2, L0x7fffffffb3f4, L0x7fffffffb3f6,
     L0x7fffffffb3f8, L0x7fffffffb3fa, L0x7fffffffb3fc, L0x7fffffffb3fe];
(* vpbroadcastq 0x148(%rsi),%ymm2                  #! EA = L0x5555556385e8; Value = 0xfd0afd0afd0afd0a; PC = 0x55555556e4e6 *)
broadcast %ymm2 16 [L0x5555556385e8, L0x5555556385ea];
(* vpmullw %ymm15,%ymm8,%ymm12                     #! PC = 0x55555556e4ef *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm13                     #! PC = 0x55555556e4f4 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm14                    #! PC = 0x55555556e4f9 *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556e4fe *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556e503 *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556e507 *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556e50b *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556e50f *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vmovdqa (%rdi),%ymm4                            #! EA = L0x7fffffffb280; Value = 0x0001000000000000; PC = 0x55555556e513 *)
mov %ymm4
    [L0x7fffffffb280, L0x7fffffffb282, L0x7fffffffb284, L0x7fffffffb286,
     L0x7fffffffb288, L0x7fffffffb28a, L0x7fffffffb28c, L0x7fffffffb28e,
     L0x7fffffffb290, L0x7fffffffb292, L0x7fffffffb294, L0x7fffffffb296,
     L0x7fffffffb298, L0x7fffffffb29a, L0x7fffffffb29c, L0x7fffffffb29e];
(* vmovdqa 0x20(%rdi),%ymm5                        #! EA = L0x7fffffffb2a0; Value = 0x0001000000010001; PC = 0x55555556e517 *)
mov %ymm5
    [L0x7fffffffb2a0, L0x7fffffffb2a2, L0x7fffffffb2a4, L0x7fffffffb2a6,
     L0x7fffffffb2a8, L0x7fffffffb2aa, L0x7fffffffb2ac, L0x7fffffffb2ae,
     L0x7fffffffb2b0, L0x7fffffffb2b2, L0x7fffffffb2b4, L0x7fffffffb2b6,
     L0x7fffffffb2b8, L0x7fffffffb2ba, L0x7fffffffb2bc, L0x7fffffffb2be];
(* vmovdqa 0x40(%rdi),%ymm6                        #! EA = L0x7fffffffb2c0; Value = 0x0001000000010000; PC = 0x55555556e51c *)
mov %ymm6
    [L0x7fffffffb2c0, L0x7fffffffb2c2, L0x7fffffffb2c4, L0x7fffffffb2c6,
     L0x7fffffffb2c8, L0x7fffffffb2ca, L0x7fffffffb2cc, L0x7fffffffb2ce,
     L0x7fffffffb2d0, L0x7fffffffb2d2, L0x7fffffffb2d4, L0x7fffffffb2d6,
     L0x7fffffffb2d8, L0x7fffffffb2da, L0x7fffffffb2dc, L0x7fffffffb2de];
(* vmovdqa 0x60(%rdi),%ymm7                        #! EA = L0x7fffffffb2e0; Value = 0x0001ffffffffffff; PC = 0x55555556e521 *)
mov %ymm7
    [L0x7fffffffb2e0, L0x7fffffffb2e2, L0x7fffffffb2e4, L0x7fffffffb2e6,
     L0x7fffffffb2e8, L0x7fffffffb2ea, L0x7fffffffb2ec, L0x7fffffffb2ee,
     L0x7fffffffb2f0, L0x7fffffffb2f2, L0x7fffffffb2f4, L0x7fffffffb2f6,
     L0x7fffffffb2f8, L0x7fffffffb2fa, L0x7fffffffb2fc, L0x7fffffffb2fe];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556e526 *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm8;
assume %red = %mulLymm8 && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556e52a *)
smull %ymm13 %red %ymm13 %ymm0;
assert true && %red = %mulLymm9;
assume %red = %mulLymm9 && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556e52e *)
smull %ymm14 %red %ymm14 %ymm0;
assert true && %red = %mulLymm10;
assume %red = %mulLymm10 && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556e532 *)
smull %ymm15 %red %ymm15 %ymm0;
assert true && %red = %mulLymm11;
assume %red = %mulLymm11 && true;
(* vpaddw %ymm8,%ymm4,%ymm3                        #! PC = 0x55555556e536 *)
add %ymm3 %ymm8 %ymm4;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556e53b *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x55555556e540 *)
add %ymm4 %ymm9 %ymm5;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556e545 *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x55555556e54a *)
add %ymm5 %ymm10 %ymm6;
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x55555556e54f *)
sub %ymm10 %ymm6 %ymm10;
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x55555556e554 *)
add %ymm6 %ymm11 %ymm7;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556e559 *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556e55e *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556e563 *)
add %ymm8 %ymm12 %ymm8;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556e568 *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x55555556e56d *)
add %ymm9 %ymm13 %ymm9;
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556e572 *)
sub %ymm5 %ymm5 %ymm14;
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556e577 *)
add %ymm10 %ymm14 %ymm10;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556e57c *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556e581 *)
add %ymm11 %ymm15 %ymm11;
(* vmovdqa %ymm3,(%rdi)                            #! EA = L0x7fffffffb280; PC = 0x55555556e586 *)
mov [L0x7fffffffb280, L0x7fffffffb282, L0x7fffffffb284, L0x7fffffffb286,
     L0x7fffffffb288, L0x7fffffffb28a, L0x7fffffffb28c, L0x7fffffffb28e,
     L0x7fffffffb290, L0x7fffffffb292, L0x7fffffffb294, L0x7fffffffb296,
     L0x7fffffffb298, L0x7fffffffb29a, L0x7fffffffb29c, L0x7fffffffb29e]
    %ymm3;
(* vmovdqa %ymm4,0x20(%rdi)                        #! EA = L0x7fffffffb2a0; PC = 0x55555556e58a *)
mov [L0x7fffffffb2a0, L0x7fffffffb2a2, L0x7fffffffb2a4, L0x7fffffffb2a6,
     L0x7fffffffb2a8, L0x7fffffffb2aa, L0x7fffffffb2ac, L0x7fffffffb2ae,
     L0x7fffffffb2b0, L0x7fffffffb2b2, L0x7fffffffb2b4, L0x7fffffffb2b6,
     L0x7fffffffb2b8, L0x7fffffffb2ba, L0x7fffffffb2bc, L0x7fffffffb2be]
    %ymm4;
(* vmovdqa %ymm5,0x40(%rdi)                        #! EA = L0x7fffffffb2c0; PC = 0x55555556e58f *)
mov [L0x7fffffffb2c0, L0x7fffffffb2c2, L0x7fffffffb2c4, L0x7fffffffb2c6,
     L0x7fffffffb2c8, L0x7fffffffb2ca, L0x7fffffffb2cc, L0x7fffffffb2ce,
     L0x7fffffffb2d0, L0x7fffffffb2d2, L0x7fffffffb2d4, L0x7fffffffb2d6,
     L0x7fffffffb2d8, L0x7fffffffb2da, L0x7fffffffb2dc, L0x7fffffffb2de]
    %ymm5;
(* vmovdqa %ymm6,0x60(%rdi)                        #! EA = L0x7fffffffb2e0; PC = 0x55555556e594 *)
mov [L0x7fffffffb2e0, L0x7fffffffb2e2, L0x7fffffffb2e4, L0x7fffffffb2e6,
     L0x7fffffffb2e8, L0x7fffffffb2ea, L0x7fffffffb2ec, L0x7fffffffb2ee,
     L0x7fffffffb2f0, L0x7fffffffb2f2, L0x7fffffffb2f4, L0x7fffffffb2f6,
     L0x7fffffffb2f8, L0x7fffffffb2fa, L0x7fffffffb2fc, L0x7fffffffb2fe]
    %ymm6;
(* vmovdqa %ymm8,0x100(%rdi)                       #! EA = L0x7fffffffb380; PC = 0x55555556e599 *)
mov [L0x7fffffffb380, L0x7fffffffb382, L0x7fffffffb384, L0x7fffffffb386,
     L0x7fffffffb388, L0x7fffffffb38a, L0x7fffffffb38c, L0x7fffffffb38e,
     L0x7fffffffb390, L0x7fffffffb392, L0x7fffffffb394, L0x7fffffffb396,
     L0x7fffffffb398, L0x7fffffffb39a, L0x7fffffffb39c, L0x7fffffffb39e]
    %ymm8;
(* vmovdqa %ymm9,0x120(%rdi)                       #! EA = L0x7fffffffb3a0; PC = 0x55555556e5a1 *)
mov [L0x7fffffffb3a0, L0x7fffffffb3a2, L0x7fffffffb3a4, L0x7fffffffb3a6,
     L0x7fffffffb3a8, L0x7fffffffb3aa, L0x7fffffffb3ac, L0x7fffffffb3ae,
     L0x7fffffffb3b0, L0x7fffffffb3b2, L0x7fffffffb3b4, L0x7fffffffb3b6,
     L0x7fffffffb3b8, L0x7fffffffb3ba, L0x7fffffffb3bc, L0x7fffffffb3be]
    %ymm9;
(* vmovdqa %ymm10,0x140(%rdi)                      #! EA = L0x7fffffffb3c0; PC = 0x55555556e5a9 *)
mov [L0x7fffffffb3c0, L0x7fffffffb3c2, L0x7fffffffb3c4, L0x7fffffffb3c6,
     L0x7fffffffb3c8, L0x7fffffffb3ca, L0x7fffffffb3cc, L0x7fffffffb3ce,
     L0x7fffffffb3d0, L0x7fffffffb3d2, L0x7fffffffb3d4, L0x7fffffffb3d6,
     L0x7fffffffb3d8, L0x7fffffffb3da, L0x7fffffffb3dc, L0x7fffffffb3de]
    %ymm10;
(* vmovdqa %ymm11,0x160(%rdi)                      #! EA = L0x7fffffffb3e0; PC = 0x55555556e5b1 *)
mov [L0x7fffffffb3e0, L0x7fffffffb3e2, L0x7fffffffb3e4, L0x7fffffffb3e6,
     L0x7fffffffb3e8, L0x7fffffffb3ea, L0x7fffffffb3ec, L0x7fffffffb3ee,
     L0x7fffffffb3f0, L0x7fffffffb3f2, L0x7fffffffb3f4, L0x7fffffffb3f6,
     L0x7fffffffb3f8, L0x7fffffffb3fa, L0x7fffffffb3fc, L0x7fffffffb3fe]
    %ymm11;
(* vpbroadcastq 0x140(%rsi),%ymm15                 #! EA = L0x5555556385e0; Value = 0x7b0a7b0a7b0a7b0a; PC = 0x55555556e5b9 *)
broadcast %ymm15 16 [L0x5555556385e0, L0x5555556385e2];
(* vmovdqa 0x180(%rdi),%ymm8                       #! EA = L0x7fffffffb400; Value = 0x0000000000010001; PC = 0x55555556e5c2 *)
mov %ymm8
    [L0x7fffffffb400, L0x7fffffffb402, L0x7fffffffb404, L0x7fffffffb406,
     L0x7fffffffb408, L0x7fffffffb40a, L0x7fffffffb40c, L0x7fffffffb40e,
     L0x7fffffffb410, L0x7fffffffb412, L0x7fffffffb414, L0x7fffffffb416,
     L0x7fffffffb418, L0x7fffffffb41a, L0x7fffffffb41c, L0x7fffffffb41e];
(* vmovdqa 0x1a0(%rdi),%ymm9                       #! EA = L0x7fffffffb420; Value = 0xffff000100020001; PC = 0x55555556e5ca *)
mov %ymm9
    [L0x7fffffffb420, L0x7fffffffb422, L0x7fffffffb424, L0x7fffffffb426,
     L0x7fffffffb428, L0x7fffffffb42a, L0x7fffffffb42c, L0x7fffffffb42e,
     L0x7fffffffb430, L0x7fffffffb432, L0x7fffffffb434, L0x7fffffffb436,
     L0x7fffffffb438, L0x7fffffffb43a, L0x7fffffffb43c, L0x7fffffffb43e];
(* vmovdqa 0x1c0(%rdi),%ymm10                      #! EA = L0x7fffffffb440; Value = 0xfffe000000000000; PC = 0x55555556e5d2 *)
mov %ymm10
    [L0x7fffffffb440, L0x7fffffffb442, L0x7fffffffb444, L0x7fffffffb446,
     L0x7fffffffb448, L0x7fffffffb44a, L0x7fffffffb44c, L0x7fffffffb44e,
     L0x7fffffffb450, L0x7fffffffb452, L0x7fffffffb454, L0x7fffffffb456,
     L0x7fffffffb458, L0x7fffffffb45a, L0x7fffffffb45c, L0x7fffffffb45e];
(* vmovdqa 0x1e0(%rdi),%ymm11                      #! EA = L0x7fffffffb460; Value = 0xffff0000fffe0000; PC = 0x55555556e5da *)
mov %ymm11
    [L0x7fffffffb460, L0x7fffffffb462, L0x7fffffffb464, L0x7fffffffb466,
     L0x7fffffffb468, L0x7fffffffb46a, L0x7fffffffb46c, L0x7fffffffb46e,
     L0x7fffffffb470, L0x7fffffffb472, L0x7fffffffb474, L0x7fffffffb476,
     L0x7fffffffb478, L0x7fffffffb47a, L0x7fffffffb47c, L0x7fffffffb47e];
(* vpbroadcastq 0x148(%rsi),%ymm2                  #! EA = L0x5555556385e8; Value = 0xfd0afd0afd0afd0a; PC = 0x55555556e5e2 *)
broadcast %ymm2 16 [L0x5555556385e8, L0x5555556385ea];
(* vpmullw %ymm15,%ymm8,%ymm12                     #! PC = 0x55555556e5eb *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm13                     #! PC = 0x55555556e5f0 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm14                    #! PC = 0x55555556e5f5 *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556e5fa *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556e5ff *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556e603 *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556e607 *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556e60b *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vmovdqa 0x80(%rdi),%ymm4                        #! EA = L0x7fffffffb300; Value = 0x00000000ffff0000; PC = 0x55555556e60f *)
mov %ymm4
    [L0x7fffffffb300, L0x7fffffffb302, L0x7fffffffb304, L0x7fffffffb306,
     L0x7fffffffb308, L0x7fffffffb30a, L0x7fffffffb30c, L0x7fffffffb30e,
     L0x7fffffffb310, L0x7fffffffb312, L0x7fffffffb314, L0x7fffffffb316,
     L0x7fffffffb318, L0x7fffffffb31a, L0x7fffffffb31c, L0x7fffffffb31e];
(* vmovdqa 0xa0(%rdi),%ymm5                        #! EA = L0x7fffffffb320; Value = 0xffff000000000000; PC = 0x55555556e617 *)
mov %ymm5
    [L0x7fffffffb320, L0x7fffffffb322, L0x7fffffffb324, L0x7fffffffb326,
     L0x7fffffffb328, L0x7fffffffb32a, L0x7fffffffb32c, L0x7fffffffb32e,
     L0x7fffffffb330, L0x7fffffffb332, L0x7fffffffb334, L0x7fffffffb336,
     L0x7fffffffb338, L0x7fffffffb33a, L0x7fffffffb33c, L0x7fffffffb33e];
(* vmovdqa 0xc0(%rdi),%ymm6                        #! EA = L0x7fffffffb340; Value = 0xffff000200010001; PC = 0x55555556e61f *)
mov %ymm6
    [L0x7fffffffb340, L0x7fffffffb342, L0x7fffffffb344, L0x7fffffffb346,
     L0x7fffffffb348, L0x7fffffffb34a, L0x7fffffffb34c, L0x7fffffffb34e,
     L0x7fffffffb350, L0x7fffffffb352, L0x7fffffffb354, L0x7fffffffb356,
     L0x7fffffffb358, L0x7fffffffb35a, L0x7fffffffb35c, L0x7fffffffb35e];
(* vmovdqa 0xe0(%rdi),%ymm7                        #! EA = L0x7fffffffb360; Value = 0x0000ffff00000000; PC = 0x55555556e627 *)
mov %ymm7
    [L0x7fffffffb360, L0x7fffffffb362, L0x7fffffffb364, L0x7fffffffb366,
     L0x7fffffffb368, L0x7fffffffb36a, L0x7fffffffb36c, L0x7fffffffb36e,
     L0x7fffffffb370, L0x7fffffffb372, L0x7fffffffb374, L0x7fffffffb376,
     L0x7fffffffb378, L0x7fffffffb37a, L0x7fffffffb37c, L0x7fffffffb37e];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556e62f *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm8;
assume %red = %mulLymm8 && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556e633 *)
smull %ymm13 %red %ymm13 %ymm0;
assert true && %red = %mulLymm9;
assume %red = %mulLymm9 && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556e637 *)
smull %ymm14 %red %ymm14 %ymm0;
assert true && %red = %mulLymm10;
assume %red = %mulLymm10 && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556e63b *)
smull %ymm15 %red %ymm15 %ymm0;
assert true && %red = %mulLymm11;
assume %red = %mulLymm11 && true;
(* vpaddw %ymm8,%ymm4,%ymm3                        #! PC = 0x55555556e63f *)
add %ymm3 %ymm8 %ymm4;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556e644 *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x55555556e649 *)
add %ymm4 %ymm9 %ymm5;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556e64e *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x55555556e653 *)
add %ymm5 %ymm10 %ymm6;
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x55555556e658 *)
sub %ymm10 %ymm6 %ymm10;
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x55555556e65d *)
add %ymm6 %ymm11 %ymm7;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556e662 *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556e667 *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556e66c *)
add %ymm8 %ymm12 %ymm8;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556e671 *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x55555556e676 *)
add %ymm9 %ymm13 %ymm9;
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556e67b *)
sub %ymm5 %ymm5 %ymm14;
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556e680 *)
add %ymm10 %ymm14 %ymm10;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556e685 *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556e68a *)
add %ymm11 %ymm15 %ymm11;
(* vmovdqa %ymm3,0x80(%rdi)                        #! EA = L0x7fffffffb300; PC = 0x55555556e68f *)
mov [L0x7fffffffb300, L0x7fffffffb302, L0x7fffffffb304, L0x7fffffffb306,
     L0x7fffffffb308, L0x7fffffffb30a, L0x7fffffffb30c, L0x7fffffffb30e,
     L0x7fffffffb310, L0x7fffffffb312, L0x7fffffffb314, L0x7fffffffb316,
     L0x7fffffffb318, L0x7fffffffb31a, L0x7fffffffb31c, L0x7fffffffb31e]
    %ymm3;
(* vmovdqa %ymm4,0xa0(%rdi)                        #! EA = L0x7fffffffb320; PC = 0x55555556e697 *)
mov [L0x7fffffffb320, L0x7fffffffb322, L0x7fffffffb324, L0x7fffffffb326,
     L0x7fffffffb328, L0x7fffffffb32a, L0x7fffffffb32c, L0x7fffffffb32e,
     L0x7fffffffb330, L0x7fffffffb332, L0x7fffffffb334, L0x7fffffffb336,
     L0x7fffffffb338, L0x7fffffffb33a, L0x7fffffffb33c, L0x7fffffffb33e]
    %ymm4;
(* vmovdqa %ymm5,0xc0(%rdi)                        #! EA = L0x7fffffffb340; PC = 0x55555556e69f *)
mov [L0x7fffffffb340, L0x7fffffffb342, L0x7fffffffb344, L0x7fffffffb346,
     L0x7fffffffb348, L0x7fffffffb34a, L0x7fffffffb34c, L0x7fffffffb34e,
     L0x7fffffffb350, L0x7fffffffb352, L0x7fffffffb354, L0x7fffffffb356,
     L0x7fffffffb358, L0x7fffffffb35a, L0x7fffffffb35c, L0x7fffffffb35e]
    %ymm5;
(* vmovdqa %ymm6,0xe0(%rdi)                        #! EA = L0x7fffffffb360; PC = 0x55555556e6a7 *)
mov [L0x7fffffffb360, L0x7fffffffb362, L0x7fffffffb364, L0x7fffffffb366,
     L0x7fffffffb368, L0x7fffffffb36a, L0x7fffffffb36c, L0x7fffffffb36e,
     L0x7fffffffb370, L0x7fffffffb372, L0x7fffffffb374, L0x7fffffffb376,
     L0x7fffffffb378, L0x7fffffffb37a, L0x7fffffffb37c, L0x7fffffffb37e]
    %ymm6;
(* vmovdqa %ymm8,0x180(%rdi)                       #! EA = L0x7fffffffb400; PC = 0x55555556e6af *)
mov [L0x7fffffffb400, L0x7fffffffb402, L0x7fffffffb404, L0x7fffffffb406,
     L0x7fffffffb408, L0x7fffffffb40a, L0x7fffffffb40c, L0x7fffffffb40e,
     L0x7fffffffb410, L0x7fffffffb412, L0x7fffffffb414, L0x7fffffffb416,
     L0x7fffffffb418, L0x7fffffffb41a, L0x7fffffffb41c, L0x7fffffffb41e]
    %ymm8;
(* vmovdqa %ymm9,0x1a0(%rdi)                       #! EA = L0x7fffffffb420; PC = 0x55555556e6b7 *)
mov [L0x7fffffffb420, L0x7fffffffb422, L0x7fffffffb424, L0x7fffffffb426,
     L0x7fffffffb428, L0x7fffffffb42a, L0x7fffffffb42c, L0x7fffffffb42e,
     L0x7fffffffb430, L0x7fffffffb432, L0x7fffffffb434, L0x7fffffffb436,
     L0x7fffffffb438, L0x7fffffffb43a, L0x7fffffffb43c, L0x7fffffffb43e]
    %ymm9;
(* vmovdqa %ymm10,0x1c0(%rdi)                      #! EA = L0x7fffffffb440; PC = 0x55555556e6bf *)
mov [L0x7fffffffb440, L0x7fffffffb442, L0x7fffffffb444, L0x7fffffffb446,
     L0x7fffffffb448, L0x7fffffffb44a, L0x7fffffffb44c, L0x7fffffffb44e,
     L0x7fffffffb450, L0x7fffffffb452, L0x7fffffffb454, L0x7fffffffb456,
     L0x7fffffffb458, L0x7fffffffb45a, L0x7fffffffb45c, L0x7fffffffb45e]
    %ymm10;
(* vmovdqa %ymm11,0x1e0(%rdi)                      #! EA = L0x7fffffffb460; PC = 0x55555556e6c7 *)
mov [L0x7fffffffb460, L0x7fffffffb462, L0x7fffffffb464, L0x7fffffffb466,
     L0x7fffffffb468, L0x7fffffffb46a, L0x7fffffffb46c, L0x7fffffffb46e,
     L0x7fffffffb470, L0x7fffffffb472, L0x7fffffffb474, L0x7fffffffb476,
     L0x7fffffffb478, L0x7fffffffb47a, L0x7fffffffb47c, L0x7fffffffb47e]
    %ymm11;


(**************** LEVEL 0 ****************)
(* CUT default 0 *)

cut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (F**2)
    (poly X
     [L0x7fffffffb280,L0x7fffffffb282,L0x7fffffffb284,L0x7fffffffb286,
      L0x7fffffffb288,L0x7fffffffb28a,L0x7fffffffb28c,L0x7fffffffb28e,
      L0x7fffffffb290,L0x7fffffffb292,L0x7fffffffb294,L0x7fffffffb296,
      L0x7fffffffb298,L0x7fffffffb29a,L0x7fffffffb29c,L0x7fffffffb29e,
      L0x7fffffffb2a0,L0x7fffffffb2a2,L0x7fffffffb2a4,L0x7fffffffb2a6,
      L0x7fffffffb2a8,L0x7fffffffb2aa,L0x7fffffffb2ac,L0x7fffffffb2ae,
      L0x7fffffffb2b0,L0x7fffffffb2b2,L0x7fffffffb2b4,L0x7fffffffb2b6,
      L0x7fffffffb2b8,L0x7fffffffb2ba,L0x7fffffffb2bc,L0x7fffffffb2be,
      L0x7fffffffb2c0,L0x7fffffffb2c2,L0x7fffffffb2c4,L0x7fffffffb2c6,
      L0x7fffffffb2c8,L0x7fffffffb2ca,L0x7fffffffb2cc,L0x7fffffffb2ce,
      L0x7fffffffb2d0,L0x7fffffffb2d2,L0x7fffffffb2d4,L0x7fffffffb2d6,
      L0x7fffffffb2d8,L0x7fffffffb2da,L0x7fffffffb2dc,L0x7fffffffb2de,
      L0x7fffffffb2e0,L0x7fffffffb2e2,L0x7fffffffb2e4,L0x7fffffffb2e6,
      L0x7fffffffb2e8,L0x7fffffffb2ea,L0x7fffffffb2ec,L0x7fffffffb2ee,
      L0x7fffffffb2f0,L0x7fffffffb2f2,L0x7fffffffb2f4,L0x7fffffffb2f6,
      L0x7fffffffb2f8,L0x7fffffffb2fa,L0x7fffffffb2fc,L0x7fffffffb2fe,
      L0x7fffffffb300,L0x7fffffffb302,L0x7fffffffb304,L0x7fffffffb306,
      L0x7fffffffb308,L0x7fffffffb30a,L0x7fffffffb30c,L0x7fffffffb30e,
      L0x7fffffffb310,L0x7fffffffb312,L0x7fffffffb314,L0x7fffffffb316,
      L0x7fffffffb318,L0x7fffffffb31a,L0x7fffffffb31c,L0x7fffffffb31e,
      L0x7fffffffb320,L0x7fffffffb322,L0x7fffffffb324,L0x7fffffffb326,
      L0x7fffffffb328,L0x7fffffffb32a,L0x7fffffffb32c,L0x7fffffffb32e,
      L0x7fffffffb330,L0x7fffffffb332,L0x7fffffffb334,L0x7fffffffb336,
      L0x7fffffffb338,L0x7fffffffb33a,L0x7fffffffb33c,L0x7fffffffb33e,
      L0x7fffffffb340,L0x7fffffffb342,L0x7fffffffb344,L0x7fffffffb346,
      L0x7fffffffb348,L0x7fffffffb34a,L0x7fffffffb34c,L0x7fffffffb34e,
      L0x7fffffffb350,L0x7fffffffb352,L0x7fffffffb354,L0x7fffffffb356,
      L0x7fffffffb358,L0x7fffffffb35a,L0x7fffffffb35c,L0x7fffffffb35e,
      L0x7fffffffb360,L0x7fffffffb362,L0x7fffffffb364,L0x7fffffffb366,
      L0x7fffffffb368,L0x7fffffffb36a,L0x7fffffffb36c,L0x7fffffffb36e,
      L0x7fffffffb370,L0x7fffffffb372,L0x7fffffffb374,L0x7fffffffb376,
      L0x7fffffffb378,L0x7fffffffb37a,L0x7fffffffb37c,L0x7fffffffb37e])
    [Q, X**128 - 17** 64] /\
    eqmod (F**2)
    (poly X
     [L0x7fffffffb380,L0x7fffffffb382,L0x7fffffffb384,L0x7fffffffb386,
      L0x7fffffffb388,L0x7fffffffb38a,L0x7fffffffb38c,L0x7fffffffb38e,
      L0x7fffffffb390,L0x7fffffffb392,L0x7fffffffb394,L0x7fffffffb396,
      L0x7fffffffb398,L0x7fffffffb39a,L0x7fffffffb39c,L0x7fffffffb39e,
      L0x7fffffffb3a0,L0x7fffffffb3a2,L0x7fffffffb3a4,L0x7fffffffb3a6,
      L0x7fffffffb3a8,L0x7fffffffb3aa,L0x7fffffffb3ac,L0x7fffffffb3ae,
      L0x7fffffffb3b0,L0x7fffffffb3b2,L0x7fffffffb3b4,L0x7fffffffb3b6,
      L0x7fffffffb3b8,L0x7fffffffb3ba,L0x7fffffffb3bc,L0x7fffffffb3be,
      L0x7fffffffb3c0,L0x7fffffffb3c2,L0x7fffffffb3c4,L0x7fffffffb3c6,
      L0x7fffffffb3c8,L0x7fffffffb3ca,L0x7fffffffb3cc,L0x7fffffffb3ce,
      L0x7fffffffb3d0,L0x7fffffffb3d2,L0x7fffffffb3d4,L0x7fffffffb3d6,
      L0x7fffffffb3d8,L0x7fffffffb3da,L0x7fffffffb3dc,L0x7fffffffb3de,
      L0x7fffffffb3e0,L0x7fffffffb3e2,L0x7fffffffb3e4,L0x7fffffffb3e6,
      L0x7fffffffb3e8,L0x7fffffffb3ea,L0x7fffffffb3ec,L0x7fffffffb3ee,
      L0x7fffffffb3f0,L0x7fffffffb3f2,L0x7fffffffb3f4,L0x7fffffffb3f6,
      L0x7fffffffb3f8,L0x7fffffffb3fa,L0x7fffffffb3fc,L0x7fffffffb3fe,
      L0x7fffffffb400,L0x7fffffffb402,L0x7fffffffb404,L0x7fffffffb406,
      L0x7fffffffb408,L0x7fffffffb40a,L0x7fffffffb40c,L0x7fffffffb40e,
      L0x7fffffffb410,L0x7fffffffb412,L0x7fffffffb414,L0x7fffffffb416,
      L0x7fffffffb418,L0x7fffffffb41a,L0x7fffffffb41c,L0x7fffffffb41e,
      L0x7fffffffb420,L0x7fffffffb422,L0x7fffffffb424,L0x7fffffffb426,
      L0x7fffffffb428,L0x7fffffffb42a,L0x7fffffffb42c,L0x7fffffffb42e,
      L0x7fffffffb430,L0x7fffffffb432,L0x7fffffffb434,L0x7fffffffb436,
      L0x7fffffffb438,L0x7fffffffb43a,L0x7fffffffb43c,L0x7fffffffb43e,
      L0x7fffffffb440,L0x7fffffffb442,L0x7fffffffb444,L0x7fffffffb446,
      L0x7fffffffb448,L0x7fffffffb44a,L0x7fffffffb44c,L0x7fffffffb44e,
      L0x7fffffffb450,L0x7fffffffb452,L0x7fffffffb454,L0x7fffffffb456,
      L0x7fffffffb458,L0x7fffffffb45a,L0x7fffffffb45c,L0x7fffffffb45e,
      L0x7fffffffb460,L0x7fffffffb462,L0x7fffffffb464,L0x7fffffffb466,
      L0x7fffffffb468,L0x7fffffffb46a,L0x7fffffffb46c,L0x7fffffffb46e,
      L0x7fffffffb470,L0x7fffffffb472,L0x7fffffffb474,L0x7fffffffb476,
      L0x7fffffffb478,L0x7fffffffb47a,L0x7fffffffb47c,L0x7fffffffb47e])
    [Q, X**128 - 17**192] &&
    Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb280,L0x7fffffffb282,L0x7fffffffb284,L0x7fffffffb286] /\
    [L0x7fffffffb280,L0x7fffffffb282,L0x7fffffffb284,L0x7fffffffb286]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb288,L0x7fffffffb28a,L0x7fffffffb28c,L0x7fffffffb28e] /\
    [L0x7fffffffb288,L0x7fffffffb28a,L0x7fffffffb28c,L0x7fffffffb28e]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb290,L0x7fffffffb292,L0x7fffffffb294,L0x7fffffffb296] /\
    [L0x7fffffffb290,L0x7fffffffb292,L0x7fffffffb294,L0x7fffffffb296]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb298,L0x7fffffffb29a,L0x7fffffffb29c,L0x7fffffffb29e] /\
    [L0x7fffffffb298,L0x7fffffffb29a,L0x7fffffffb29c,L0x7fffffffb29e]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb2a0,L0x7fffffffb2a2,L0x7fffffffb2a4,L0x7fffffffb2a6] /\
    [L0x7fffffffb2a0,L0x7fffffffb2a2,L0x7fffffffb2a4,L0x7fffffffb2a6]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb2a8,L0x7fffffffb2aa,L0x7fffffffb2ac,L0x7fffffffb2ae] /\
    [L0x7fffffffb2a8,L0x7fffffffb2aa,L0x7fffffffb2ac,L0x7fffffffb2ae]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb2b0,L0x7fffffffb2b2,L0x7fffffffb2b4,L0x7fffffffb2b6] /\
    [L0x7fffffffb2b0,L0x7fffffffb2b2,L0x7fffffffb2b4,L0x7fffffffb2b6]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb2b8,L0x7fffffffb2ba,L0x7fffffffb2bc,L0x7fffffffb2be] /\
    [L0x7fffffffb2b8,L0x7fffffffb2ba,L0x7fffffffb2bc,L0x7fffffffb2be]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb2c0,L0x7fffffffb2c2,L0x7fffffffb2c4,L0x7fffffffb2c6] /\
    [L0x7fffffffb2c0,L0x7fffffffb2c2,L0x7fffffffb2c4,L0x7fffffffb2c6]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb2c8,L0x7fffffffb2ca,L0x7fffffffb2cc,L0x7fffffffb2ce] /\
    [L0x7fffffffb2c8,L0x7fffffffb2ca,L0x7fffffffb2cc,L0x7fffffffb2ce]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb2d0,L0x7fffffffb2d2,L0x7fffffffb2d4,L0x7fffffffb2d6] /\
    [L0x7fffffffb2d0,L0x7fffffffb2d2,L0x7fffffffb2d4,L0x7fffffffb2d6]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb2d8,L0x7fffffffb2da,L0x7fffffffb2dc,L0x7fffffffb2de] /\
    [L0x7fffffffb2d8,L0x7fffffffb2da,L0x7fffffffb2dc,L0x7fffffffb2de]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb2e0,L0x7fffffffb2e2,L0x7fffffffb2e4,L0x7fffffffb2e6] /\
    [L0x7fffffffb2e0,L0x7fffffffb2e2,L0x7fffffffb2e4,L0x7fffffffb2e6]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb2e8,L0x7fffffffb2ea,L0x7fffffffb2ec,L0x7fffffffb2ee] /\
    [L0x7fffffffb2e8,L0x7fffffffb2ea,L0x7fffffffb2ec,L0x7fffffffb2ee]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb2f0,L0x7fffffffb2f2,L0x7fffffffb2f4,L0x7fffffffb2f6] /\
    [L0x7fffffffb2f0,L0x7fffffffb2f2,L0x7fffffffb2f4,L0x7fffffffb2f6]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb2f8,L0x7fffffffb2fa,L0x7fffffffb2fc,L0x7fffffffb2fe] /\
    [L0x7fffffffb2f8,L0x7fffffffb2fa,L0x7fffffffb2fc,L0x7fffffffb2fe]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb300,L0x7fffffffb302,L0x7fffffffb304,L0x7fffffffb306] /\
    [L0x7fffffffb300,L0x7fffffffb302,L0x7fffffffb304,L0x7fffffffb306]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb308,L0x7fffffffb30a,L0x7fffffffb30c,L0x7fffffffb30e] /\
    [L0x7fffffffb308,L0x7fffffffb30a,L0x7fffffffb30c,L0x7fffffffb30e]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb310,L0x7fffffffb312,L0x7fffffffb314,L0x7fffffffb316] /\
    [L0x7fffffffb310,L0x7fffffffb312,L0x7fffffffb314,L0x7fffffffb316]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb318,L0x7fffffffb31a,L0x7fffffffb31c,L0x7fffffffb31e] /\
    [L0x7fffffffb318,L0x7fffffffb31a,L0x7fffffffb31c,L0x7fffffffb31e]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb320,L0x7fffffffb322,L0x7fffffffb324,L0x7fffffffb326] /\
    [L0x7fffffffb320,L0x7fffffffb322,L0x7fffffffb324,L0x7fffffffb326]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb328,L0x7fffffffb32a,L0x7fffffffb32c,L0x7fffffffb32e] /\
    [L0x7fffffffb328,L0x7fffffffb32a,L0x7fffffffb32c,L0x7fffffffb32e]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb330,L0x7fffffffb332,L0x7fffffffb334,L0x7fffffffb336] /\
    [L0x7fffffffb330,L0x7fffffffb332,L0x7fffffffb334,L0x7fffffffb336]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb338,L0x7fffffffb33a,L0x7fffffffb33c,L0x7fffffffb33e] /\
    [L0x7fffffffb338,L0x7fffffffb33a,L0x7fffffffb33c,L0x7fffffffb33e]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb340,L0x7fffffffb342,L0x7fffffffb344,L0x7fffffffb346] /\
    [L0x7fffffffb340,L0x7fffffffb342,L0x7fffffffb344,L0x7fffffffb346]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb348,L0x7fffffffb34a,L0x7fffffffb34c,L0x7fffffffb34e] /\
    [L0x7fffffffb348,L0x7fffffffb34a,L0x7fffffffb34c,L0x7fffffffb34e]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb350,L0x7fffffffb352,L0x7fffffffb354,L0x7fffffffb356] /\
    [L0x7fffffffb350,L0x7fffffffb352,L0x7fffffffb354,L0x7fffffffb356]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb358,L0x7fffffffb35a,L0x7fffffffb35c,L0x7fffffffb35e] /\
    [L0x7fffffffb358,L0x7fffffffb35a,L0x7fffffffb35c,L0x7fffffffb35e]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb360,L0x7fffffffb362,L0x7fffffffb364,L0x7fffffffb366] /\
    [L0x7fffffffb360,L0x7fffffffb362,L0x7fffffffb364,L0x7fffffffb366]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb368,L0x7fffffffb36a,L0x7fffffffb36c,L0x7fffffffb36e] /\
    [L0x7fffffffb368,L0x7fffffffb36a,L0x7fffffffb36c,L0x7fffffffb36e]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb370,L0x7fffffffb372,L0x7fffffffb374,L0x7fffffffb376] /\
    [L0x7fffffffb370,L0x7fffffffb372,L0x7fffffffb374,L0x7fffffffb376]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb378,L0x7fffffffb37a,L0x7fffffffb37c,L0x7fffffffb37e] /\
    [L0x7fffffffb378,L0x7fffffffb37a,L0x7fffffffb37c,L0x7fffffffb37e]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb380,L0x7fffffffb382,L0x7fffffffb384,L0x7fffffffb386] /\
    [L0x7fffffffb380,L0x7fffffffb382,L0x7fffffffb384,L0x7fffffffb386]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb388,L0x7fffffffb38a,L0x7fffffffb38c,L0x7fffffffb38e] /\
    [L0x7fffffffb388,L0x7fffffffb38a,L0x7fffffffb38c,L0x7fffffffb38e]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb390,L0x7fffffffb392,L0x7fffffffb394,L0x7fffffffb396] /\
    [L0x7fffffffb390,L0x7fffffffb392,L0x7fffffffb394,L0x7fffffffb396]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb398,L0x7fffffffb39a,L0x7fffffffb39c,L0x7fffffffb39e] /\
    [L0x7fffffffb398,L0x7fffffffb39a,L0x7fffffffb39c,L0x7fffffffb39e]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb3a0,L0x7fffffffb3a2,L0x7fffffffb3a4,L0x7fffffffb3a6] /\
    [L0x7fffffffb3a0,L0x7fffffffb3a2,L0x7fffffffb3a4,L0x7fffffffb3a6]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb3a8,L0x7fffffffb3aa,L0x7fffffffb3ac,L0x7fffffffb3ae] /\
    [L0x7fffffffb3a8,L0x7fffffffb3aa,L0x7fffffffb3ac,L0x7fffffffb3ae]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb3b0,L0x7fffffffb3b2,L0x7fffffffb3b4,L0x7fffffffb3b6] /\
    [L0x7fffffffb3b0,L0x7fffffffb3b2,L0x7fffffffb3b4,L0x7fffffffb3b6]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb3b8,L0x7fffffffb3ba,L0x7fffffffb3bc,L0x7fffffffb3be] /\
    [L0x7fffffffb3b8,L0x7fffffffb3ba,L0x7fffffffb3bc,L0x7fffffffb3be]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb3c0,L0x7fffffffb3c2,L0x7fffffffb3c4,L0x7fffffffb3c6] /\
    [L0x7fffffffb3c0,L0x7fffffffb3c2,L0x7fffffffb3c4,L0x7fffffffb3c6]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb3c8,L0x7fffffffb3ca,L0x7fffffffb3cc,L0x7fffffffb3ce] /\
    [L0x7fffffffb3c8,L0x7fffffffb3ca,L0x7fffffffb3cc,L0x7fffffffb3ce]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb3d0,L0x7fffffffb3d2,L0x7fffffffb3d4,L0x7fffffffb3d6] /\
    [L0x7fffffffb3d0,L0x7fffffffb3d2,L0x7fffffffb3d4,L0x7fffffffb3d6]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb3d8,L0x7fffffffb3da,L0x7fffffffb3dc,L0x7fffffffb3de] /\
    [L0x7fffffffb3d8,L0x7fffffffb3da,L0x7fffffffb3dc,L0x7fffffffb3de]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb3e0,L0x7fffffffb3e2,L0x7fffffffb3e4,L0x7fffffffb3e6] /\
    [L0x7fffffffb3e0,L0x7fffffffb3e2,L0x7fffffffb3e4,L0x7fffffffb3e6]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb3e8,L0x7fffffffb3ea,L0x7fffffffb3ec,L0x7fffffffb3ee] /\
    [L0x7fffffffb3e8,L0x7fffffffb3ea,L0x7fffffffb3ec,L0x7fffffffb3ee]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb3f0,L0x7fffffffb3f2,L0x7fffffffb3f4,L0x7fffffffb3f6] /\
    [L0x7fffffffb3f0,L0x7fffffffb3f2,L0x7fffffffb3f4,L0x7fffffffb3f6]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb3f8,L0x7fffffffb3fa,L0x7fffffffb3fc,L0x7fffffffb3fe] /\
    [L0x7fffffffb3f8,L0x7fffffffb3fa,L0x7fffffffb3fc,L0x7fffffffb3fe]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb400,L0x7fffffffb402,L0x7fffffffb404,L0x7fffffffb406] /\
    [L0x7fffffffb400,L0x7fffffffb402,L0x7fffffffb404,L0x7fffffffb406]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb408,L0x7fffffffb40a,L0x7fffffffb40c,L0x7fffffffb40e] /\
    [L0x7fffffffb408,L0x7fffffffb40a,L0x7fffffffb40c,L0x7fffffffb40e]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb410,L0x7fffffffb412,L0x7fffffffb414,L0x7fffffffb416] /\
    [L0x7fffffffb410,L0x7fffffffb412,L0x7fffffffb414,L0x7fffffffb416]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb418,L0x7fffffffb41a,L0x7fffffffb41c,L0x7fffffffb41e] /\
    [L0x7fffffffb418,L0x7fffffffb41a,L0x7fffffffb41c,L0x7fffffffb41e]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb420,L0x7fffffffb422,L0x7fffffffb424,L0x7fffffffb426] /\
    [L0x7fffffffb420,L0x7fffffffb422,L0x7fffffffb424,L0x7fffffffb426]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb428,L0x7fffffffb42a,L0x7fffffffb42c,L0x7fffffffb42e] /\
    [L0x7fffffffb428,L0x7fffffffb42a,L0x7fffffffb42c,L0x7fffffffb42e]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb430,L0x7fffffffb432,L0x7fffffffb434,L0x7fffffffb436] /\
    [L0x7fffffffb430,L0x7fffffffb432,L0x7fffffffb434,L0x7fffffffb436]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb438,L0x7fffffffb43a,L0x7fffffffb43c,L0x7fffffffb43e] /\
    [L0x7fffffffb438,L0x7fffffffb43a,L0x7fffffffb43c,L0x7fffffffb43e]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb440,L0x7fffffffb442,L0x7fffffffb444,L0x7fffffffb446] /\
    [L0x7fffffffb440,L0x7fffffffb442,L0x7fffffffb444,L0x7fffffffb446]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb448,L0x7fffffffb44a,L0x7fffffffb44c,L0x7fffffffb44e] /\
    [L0x7fffffffb448,L0x7fffffffb44a,L0x7fffffffb44c,L0x7fffffffb44e]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb450,L0x7fffffffb452,L0x7fffffffb454,L0x7fffffffb456] /\
    [L0x7fffffffb450,L0x7fffffffb452,L0x7fffffffb454,L0x7fffffffb456]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb458,L0x7fffffffb45a,L0x7fffffffb45c,L0x7fffffffb45e] /\
    [L0x7fffffffb458,L0x7fffffffb45a,L0x7fffffffb45c,L0x7fffffffb45e]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb460,L0x7fffffffb462,L0x7fffffffb464,L0x7fffffffb466] /\
    [L0x7fffffffb460,L0x7fffffffb462,L0x7fffffffb464,L0x7fffffffb466]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb468,L0x7fffffffb46a,L0x7fffffffb46c,L0x7fffffffb46e] /\
    [L0x7fffffffb468,L0x7fffffffb46a,L0x7fffffffb46c,L0x7fffffffb46e]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb470,L0x7fffffffb472,L0x7fffffffb474,L0x7fffffffb476] /\
    [L0x7fffffffb470,L0x7fffffffb472,L0x7fffffffb474,L0x7fffffffb476]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q] /\
    [2@16*NQ,2@16*NQ,2@16*NQ,2@16*NQ]<s
    [L0x7fffffffb478,L0x7fffffffb47a,L0x7fffffffb47c,L0x7fffffffb47e] /\
    [L0x7fffffffb478,L0x7fffffffb47a,L0x7fffffffb47c,L0x7fffffffb47e]<s
    [2@16*Q,2@16*Q,2@16*Q,2@16*Q];


(* vmovdqa 0x160(%rsi),%ymm15                      #! EA = L0x555555638600; Value = 0x3999399939993999; PC = 0x55555556e6cf *)
mov %ymm15
    [L0x555555638600, L0x555555638602, L0x555555638604, L0x555555638606,
     L0x555555638608, L0x55555563860a, L0x55555563860c, L0x55555563860e,
     L0x555555638610, L0x555555638612, L0x555555638614, L0x555555638616,
     L0x555555638618, L0x55555563861a, L0x55555563861c, L0x55555563861e];
(* vmovdqa 0x80(%rdi),%ymm8                        #! EA = L0x7fffffffb300; Value = 0x00000000f9bff9c0; PC = 0x55555556e6d7 *)
mov %ymm8
    [L0x7fffffffb300, L0x7fffffffb302, L0x7fffffffb304, L0x7fffffffb306,
     L0x7fffffffb308, L0x7fffffffb30a, L0x7fffffffb30c, L0x7fffffffb30e,
     L0x7fffffffb310, L0x7fffffffb312, L0x7fffffffb314, L0x7fffffffb316,
     L0x7fffffffb318, L0x7fffffffb31a, L0x7fffffffb31c, L0x7fffffffb31e];
(* vmovdqa 0xa0(%rdi),%ymm9                        #! EA = L0x7fffffffb320; Value = 0x063ff9c00081f9c0; PC = 0x55555556e6df *)
mov %ymm9
    [L0x7fffffffb320, L0x7fffffffb322, L0x7fffffffb324, L0x7fffffffb326,
     L0x7fffffffb328, L0x7fffffffb32a, L0x7fffffffb32c, L0x7fffffffb32e,
     L0x7fffffffb330, L0x7fffffffb332, L0x7fffffffb334, L0x7fffffffb336,
     L0x7fffffffb338, L0x7fffffffb33a, L0x7fffffffb33c, L0x7fffffffb33e];
(* vmovdqa 0xc0(%rdi),%ymm10                       #! EA = L0x7fffffffb340; Value = 0xff7e000200010001; PC = 0x55555556e6e7 *)
mov %ymm10
    [L0x7fffffffb340, L0x7fffffffb342, L0x7fffffffb344, L0x7fffffffb346,
     L0x7fffffffb348, L0x7fffffffb34a, L0x7fffffffb34c, L0x7fffffffb34e,
     L0x7fffffffb350, L0x7fffffffb352, L0x7fffffffb354, L0x7fffffffb356,
     L0x7fffffffb358, L0x7fffffffb35a, L0x7fffffffb35c, L0x7fffffffb35e];
(* vmovdqa 0xe0(%rdi),%ymm11                       #! EA = L0x7fffffffb360; Value = 0x0640ffffff7f0000; PC = 0x55555556e6ef *)
mov %ymm11
    [L0x7fffffffb360, L0x7fffffffb362, L0x7fffffffb364, L0x7fffffffb366,
     L0x7fffffffb368, L0x7fffffffb36a, L0x7fffffffb36c, L0x7fffffffb36e,
     L0x7fffffffb370, L0x7fffffffb372, L0x7fffffffb374, L0x7fffffffb376,
     L0x7fffffffb378, L0x7fffffffb37a, L0x7fffffffb37c, L0x7fffffffb37e];
(* vmovdqa 0x180(%rsi),%ymm2                       #! EA = L0x555555638620; Value = 0xfe99fe99fe99fe99; PC = 0x55555556e6f7 *)
mov %ymm2
    [L0x555555638620, L0x555555638622, L0x555555638624, L0x555555638626,
     L0x555555638628, L0x55555563862a, L0x55555563862c, L0x55555563862e,
     L0x555555638630, L0x555555638632, L0x555555638634, L0x555555638636,
     L0x555555638638, L0x55555563863a, L0x55555563863c, L0x55555563863e];
(* vpmullw %ymm15,%ymm8,%ymm12                     #! PC = 0x55555556e6ff *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm13                     #! PC = 0x55555556e704 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm14                    #! PC = 0x55555556e709 *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556e70e *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556e713 *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556e717 *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556e71b *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556e71f *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vmovdqa (%rdi),%ymm4                            #! EA = L0x7fffffffb280; Value = 0x0082064000000640; PC = 0x55555556e723 *)
mov %ymm4
    [L0x7fffffffb280, L0x7fffffffb282, L0x7fffffffb284, L0x7fffffffb286,
     L0x7fffffffb288, L0x7fffffffb28a, L0x7fffffffb28c, L0x7fffffffb28e,
     L0x7fffffffb290, L0x7fffffffb292, L0x7fffffffb294, L0x7fffffffb296,
     L0x7fffffffb298, L0x7fffffffb29a, L0x7fffffffb29c, L0x7fffffffb29e];
(* vmovdqa 0x20(%rdi),%ymm5                        #! EA = L0x7fffffffb2a0; Value = 0x00010640f9c10001; PC = 0x55555556e727 *)
mov %ymm5
    [L0x7fffffffb2a0, L0x7fffffffb2a2, L0x7fffffffb2a4, L0x7fffffffb2a6,
     L0x7fffffffb2a8, L0x7fffffffb2aa, L0x7fffffffb2ac, L0x7fffffffb2ae,
     L0x7fffffffb2b0, L0x7fffffffb2b2, L0x7fffffffb2b4, L0x7fffffffb2b6,
     L0x7fffffffb2b8, L0x7fffffffb2ba, L0x7fffffffb2bc, L0x7fffffffb2be];
(* vmovdqa 0x40(%rdi),%ymm6                        #! EA = L0x7fffffffb2c0; Value = 0x0641000000820640; PC = 0x55555556e72c *)
mov %ymm6
    [L0x7fffffffb2c0, L0x7fffffffb2c2, L0x7fffffffb2c4, L0x7fffffffb2c6,
     L0x7fffffffb2c8, L0x7fffffffb2ca, L0x7fffffffb2cc, L0x7fffffffb2ce,
     L0x7fffffffb2d0, L0x7fffffffb2d2, L0x7fffffffb2d4, L0x7fffffffb2d6,
     L0x7fffffffb2d8, L0x7fffffffb2da, L0x7fffffffb2dc, L0x7fffffffb2de];
(* vmovdqa 0x60(%rdi),%ymm7                        #! EA = L0x7fffffffb2e0; Value = 0x0001fffff9bfffff; PC = 0x55555556e731 *)
mov %ymm7
    [L0x7fffffffb2e0, L0x7fffffffb2e2, L0x7fffffffb2e4, L0x7fffffffb2e6,
     L0x7fffffffb2e8, L0x7fffffffb2ea, L0x7fffffffb2ec, L0x7fffffffb2ee,
     L0x7fffffffb2f0, L0x7fffffffb2f2, L0x7fffffffb2f4, L0x7fffffffb2f6,
     L0x7fffffffb2f8, L0x7fffffffb2fa, L0x7fffffffb2fc, L0x7fffffffb2fe];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556e736 *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm8;
assume %red = %mulLymm8 && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556e73a *)
smull %ymm13 %red %ymm13 %ymm0;
assert true && %red = %mulLymm9;
assume %red = %mulLymm9 && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556e73e *)
smull %ymm14 %red %ymm14 %ymm0;
assert true && %red = %mulLymm10;
assume %red = %mulLymm10 && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556e742 *)
smull %ymm15 %red %ymm15 %ymm0;
assert true && %red = %mulLymm11;
assume %red = %mulLymm11 && true;
(* vpaddw %ymm8,%ymm4,%ymm3                        #! PC = 0x55555556e746 *)
add %ymm3 %ymm8 %ymm4;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556e74b *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x55555556e750 *)
add %ymm4 %ymm9 %ymm5;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556e755 *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x55555556e75a *)
add %ymm5 %ymm10 %ymm6;
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x55555556e75f *)
sub %ymm10 %ymm6 %ymm10;
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x55555556e764 *)
add %ymm6 %ymm11 %ymm7;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556e769 *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556e76e *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556e773 *)
add %ymm8 %ymm12 %ymm8;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556e778 *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x55555556e77d *)
add %ymm9 %ymm13 %ymm9;
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556e782 *)
sub %ymm5 %ymm5 %ymm14;
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556e787 *)
add %ymm10 %ymm14 %ymm10;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556e78c *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556e791 *)
add %ymm11 %ymm15 %ymm11;

(**************** LEVEL 1 0 ****************)
(* CUT default 1 *)

cut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (F**2) (poly X [*%ymm3, *%ymm4, *%ymm5, *%ymm6])
          [Q, X**64 - 17** 32] /\
    eqmod (F**2) (poly X [*%ymm8, *%ymm9, *%ymm10, *%ymm11])
          [Q, X**64 - 17**160]
    prove with [cuts [0]]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,
     3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ]<s
    %ymm3 /\ %ymm3 <s
    [3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,
     3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q] /\
    [3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,
     3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ]<s
    %ymm4 /\ %ymm4 <s
    [3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,
     3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q] /\
    [3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,
     3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ]<s
    %ymm5 /\ %ymm5 <s
    [3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,
     3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q] /\
    [3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,
     3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ]<s
    %ymm6 /\ %ymm6 <s
    [3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,
     3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q] /\
    [3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,
     3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ]<s
    %ymm8 /\ %ymm8 <s
    [3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,
     3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q] /\
    [3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,
     3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ]<s
    %ymm9 /\ %ymm9 <s
    [3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,
     3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q] /\
    [3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,
     3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ]<s
    %ymm10 /\ %ymm10 <s
    [3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,
     3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q] /\
    [3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,
     3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ]<s
    %ymm11 /\ %ymm11 <s
    [3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,
     3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q]
    prove with [cuts [0]];
    

(* vperm2i128 $0x20,%ymm10,%ymm5,%ymm7             #! PC = 0x55555556e796 *)
mov %ymm7
    [%ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3],
     %ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7],
     %ymm10[0],%ymm10[1],%ymm10[2],%ymm10[3],
     %ymm10[4],%ymm10[5],%ymm10[6],%ymm10[7]];
(* vperm2i128 $0x31,%ymm10,%ymm5,%ymm10            #! PC = 0x55555556e79c *)
mov %ymm10
    [%ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11],
     %ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15],
     %ymm10[8],%ymm10[9],%ymm10[10],%ymm10[11],
     %ymm10[12],%ymm10[13],%ymm10[14],%ymm10[15]];
(* vperm2i128 $0x20,%ymm11,%ymm6,%ymm5             #! PC = 0x55555556e7a2 *)
mov %ymm5
    [%ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],
     %ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
     %ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3],
     %ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7]];
(* vperm2i128 $0x31,%ymm11,%ymm6,%ymm11            #! PC = 0x55555556e7a8 *)
mov %ymm11
    [%ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],
     %ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
     %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11],
     %ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15]];
(* vmovdqa 0x1a0(%rsi),%ymm15                      #! EA = L0x555555638640; Value = 0x34d534d534d534d5; PC = 0x55555556e7ae *)
mov %ymm15
    [L0x555555638640, L0x555555638642, L0x555555638644, L0x555555638646,
     L0x555555638648, L0x55555563864a, L0x55555563864c, L0x55555563864e,
     L0x555555638650, L0x555555638652, L0x555555638654, L0x555555638656,
     L0x555555638658, L0x55555563865a, L0x55555563865c, L0x55555563865e];
(* vmovdqa 0x1c0(%rsi),%ymm2                       #! EA = L0x555555638660; Value = 0x05d505d505d505d5; PC = 0x55555556e7b6 *)
mov %ymm2
    [L0x555555638660, L0x555555638662, L0x555555638664, L0x555555638666,
     L0x555555638668, L0x55555563866a, L0x55555563866c, L0x55555563866e,
     L0x555555638670, L0x555555638672, L0x555555638674, L0x555555638676,
     L0x555555638678, L0x55555563867a, L0x55555563867c, L0x55555563867e];
(* vpmullw %ymm15,%ymm7,%ymm12                     #! PC = 0x55555556e7be *)
smull %mulHymm7 %mulL %ymm15 %ymm7;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm13                    #! PC = 0x55555556e7c3 *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm5,%ymm14                     #! PC = 0x55555556e7c8 *)
smull %mulHymm5 %mulL %ymm15 %ymm5;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556e7cd *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556e7d2 *)
smull %ymm7 %mulLymm7 %ymm2 %ymm7;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556e7d6 *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556e7da *)
smull %ymm5 %mulLymm5 %ymm2 %ymm5;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556e7de *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vperm2i128 $0x20,%ymm8,%ymm3,%ymm6              #! PC = 0x55555556e7e2 *)
mov %ymm6
    [%ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],
     %ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7],
     %ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],
     %ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7]];
(* vperm2i128 $0x31,%ymm8,%ymm3,%ymm8              #! PC = 0x55555556e7e8 *)
mov %ymm8
    [%ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11],
     %ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15],
     %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],
     %ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15]];
(* vperm2i128 $0x20,%ymm9,%ymm4,%ymm3              #! PC = 0x55555556e7ee *)
mov %ymm3
    [%ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3],
     %ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7],
     %ymm9[0],%ymm9[1],%ymm9[2],%ymm9[3],
     %ymm9[4],%ymm9[5],%ymm9[6],%ymm9[7]];
(* vperm2i128 $0x31,%ymm9,%ymm4,%ymm9              #! PC = 0x55555556e7f4 *)
mov %ymm9
    [%ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11],
     %ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15],
     %ymm9[8],%ymm9[9],%ymm9[10],%ymm9[11],
     %ymm9[12],%ymm9[13],%ymm9[14],%ymm9[15]];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556e7fa *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm7;
assume %red = %mulLymm7 && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556e7fe *)
smull %ymm13 %red %ymm13 %ymm0;
assert true && %red = %mulLymm10;
assume %red = %mulLymm10 && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556e802 *)
smull %ymm14 %red %ymm14 %ymm0;
assert true && %red = %mulLymm5;
assume %red = %mulLymm5 && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556e806 *)
smull %ymm15 %red %ymm15 %ymm0;
assert true && %red = %mulLymm11;
assume %red = %mulLymm11 && true;
(* vpaddw %ymm7,%ymm6,%ymm4                        #! PC = 0x55555556e80a *)
add %ymm4 %ymm7 %ymm6;
(* vpsubw %ymm7,%ymm6,%ymm7                        #! PC = 0x55555556e80e *)
sub %ymm7 %ymm6 %ymm7;
(* vpaddw %ymm10,%ymm8,%ymm6                       #! PC = 0x55555556e812 *)
add %ymm6 %ymm10 %ymm8;
(* vpsubw %ymm10,%ymm8,%ymm10                      #! PC = 0x55555556e817 *)
sub %ymm10 %ymm8 %ymm10;
(* vpaddw %ymm5,%ymm3,%ymm8                        #! PC = 0x55555556e81c *)
add %ymm8 %ymm5 %ymm3;
(* vpsubw %ymm5,%ymm3,%ymm5                        #! PC = 0x55555556e820 *)
sub %ymm5 %ymm3 %ymm5;
(* vpaddw %ymm11,%ymm9,%ymm3                       #! PC = 0x55555556e824 *)
add %ymm3 %ymm11 %ymm9;
(* vpsubw %ymm11,%ymm9,%ymm11                      #! PC = 0x55555556e829 *)
sub %ymm11 %ymm9 %ymm11;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555556e82e *)
sub %ymm4 %ymm4 %ymm12;
(* vpaddw %ymm12,%ymm7,%ymm7                       #! PC = 0x55555556e833 *)
add %ymm7 %ymm12 %ymm7;
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x55555556e838 *)
sub %ymm6 %ymm6 %ymm13;
(* vpaddw %ymm13,%ymm10,%ymm10                     #! PC = 0x55555556e83d *)
add %ymm10 %ymm13 %ymm10;
(* vpsubw %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556e842 *)
sub %ymm8 %ymm8 %ymm14;
(* vpaddw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556e847 *)
add %ymm5 %ymm14 %ymm5;
(* vpsubw %ymm15,%ymm3,%ymm3                       #! PC = 0x55555556e84c *)
sub %ymm3 %ymm3 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556e851 *)
add %ymm11 %ymm15 %ymm11;

(**************** LEVEL 2 0 ****************)
(* CUT default 2 *)

cut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (F**2)
          (poly X [%ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3],
                   %ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7],
                   %ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],
                   %ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
                   %ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],
                   %ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
                   %ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],
                   %ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7]])
          [Q, X**32 - 17** 16] /\
    eqmod (F**2)
          (poly X [%ymm7[0],%ymm7[1],%ymm7[2],%ymm7[3],
                   %ymm7[4],%ymm7[5],%ymm7[6],%ymm7[7],
                   %ymm10[0],%ymm10[1],%ymm10[2],%ymm10[3],
                   %ymm10[4],%ymm10[5],%ymm10[6],%ymm10[7],
                   %ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3],
                   %ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7],
                   %ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3],
                   %ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7]])
          [Q, X**32 - 17**144] /\
    eqmod (F**2)
          (poly X [%ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11],
                   %ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15],
                   %ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],
                   %ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
                   %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],
                   %ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15],
                   %ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11],
                   %ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15]])
          [Q, X**32 - 17** 80] /\
    eqmod (F**2)
          (poly X [%ymm7[8],%ymm7[9],%ymm7[10],%ymm7[11],
                   %ymm7[12],%ymm7[13],%ymm7[14],%ymm7[15],
                   %ymm10[8],%ymm10[9],%ymm10[10],%ymm10[11],
                   %ymm10[12],%ymm10[13],%ymm10[14],%ymm10[15],
                   %ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11],
                   %ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15],
                   %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11],
                   %ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15]])
          [Q, X**32 - 17**208]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,
     4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s
    %ymm4 /\ %ymm4 <s
    [4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,
     4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,
     4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s
    %ymm6 /\ %ymm6 <s
    [4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,
     4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,
     4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s
    %ymm8 /\ %ymm8 <s
    [4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,
     4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,
     4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s
    %ymm3 /\ %ymm3 <s
    [4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,
     4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,
     4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s
    %ymm7 /\ %ymm7 <s
    [4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,
     4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,
     4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s
    %ymm10 /\ %ymm10 <s
    [4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,
     4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,
     4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s
    %ymm5 /\ %ymm5 <s
    [4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,
     4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,
     4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s
    %ymm11 /\ %ymm11 <s
    [4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,
     4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q];

(* vpunpcklqdq %ymm5,%ymm8,%ymm9                   #! PC = 0x55555556e856 *)
mov %ymm9
    [%ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],
     %ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3],
     %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],
     %ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11]];
(* vpunpckhqdq %ymm5,%ymm8,%ymm5                   #! PC = 0x55555556e85a *)
mov %ymm5
    [%ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
     %ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7],
     %ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15],
     %ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15]];
(* vpunpcklqdq %ymm11,%ymm3,%ymm8                  #! PC = 0x55555556e85e *)
mov %ymm8
    [%ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],
     %ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3],
     %ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11],
     %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11]];
(* vpunpckhqdq %ymm11,%ymm3,%ymm11                 #! PC = 0x55555556e863 *)
mov %ymm11
    [%ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7],
     %ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7],
     %ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15],
     %ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15]];
(* vmovdqa 0x1e0(%rsi),%ymm15                      #! EA = L0x555555638680; Value = 0xae55ae55ae55ae55; PC = 0x55555556e868 *)
mov %ymm15
    [L0x555555638680, L0x555555638682, L0x555555638684, L0x555555638686,
     L0x555555638688, L0x55555563868a, L0x55555563868c, L0x55555563868e,
     L0x555555638690, L0x555555638692, L0x555555638694, L0x555555638696,
     L0x555555638698, L0x55555563869a, L0x55555563869c, L0x55555563869e];
(* vmovdqa 0x200(%rsi),%ymm2                       #! EA = L0x5555556386a0; Value = 0xff55ff55ff55ff55; PC = 0x55555556e870 *)
mov %ymm2
    [L0x5555556386a0, L0x5555556386a2, L0x5555556386a4, L0x5555556386a6,
     L0x5555556386a8, L0x5555556386aa, L0x5555556386ac, L0x5555556386ae,
     L0x5555556386b0, L0x5555556386b2, L0x5555556386b4, L0x5555556386b6,
     L0x5555556386b8, L0x5555556386ba, L0x5555556386bc, L0x5555556386be];
(* vpmullw %ymm15,%ymm9,%ymm12                     #! PC = 0x55555556e878 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm5,%ymm13                     #! PC = 0x55555556e87d *)
smull %mulHymm5 %mulL %ymm15 %ymm5;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm8,%ymm14                     #! PC = 0x55555556e882 *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556e887 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556e88c *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556e890 *)
smull %ymm5 %mulLymm5 %ymm2 %ymm5;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556e894 *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556e898 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vpunpcklqdq %ymm7,%ymm4,%ymm3                   #! PC = 0x55555556e89c *)
mov %ymm3
    [%ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3],
     %ymm7[0],%ymm7[1],%ymm7[2],%ymm7[3],
     %ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11],
     %ymm7[8],%ymm7[9],%ymm7[10],%ymm7[11]];
(* vpunpckhqdq %ymm7,%ymm4,%ymm7                   #! PC = 0x55555556e8a0 *)
mov %ymm7
    [%ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7],
     %ymm7[4],%ymm7[5],%ymm7[6],%ymm7[7],
     %ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15],
     %ymm7[12],%ymm7[13],%ymm7[14],%ymm7[15]];
(* vpunpcklqdq %ymm10,%ymm6,%ymm4                  #! PC = 0x55555556e8a4 *)
mov %ymm4
    [%ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],
     %ymm10[0],%ymm10[1],%ymm10[2],%ymm10[3],
     %ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],
     %ymm10[8],%ymm10[9],%ymm10[10],%ymm10[11]];
(* vpunpckhqdq %ymm10,%ymm6,%ymm10                 #! PC = 0x55555556e8a9 *)
mov %ymm10
    [%ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
     %ymm10[4],%ymm10[5],%ymm10[6],%ymm10[7],
     %ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
     %ymm10[12],%ymm10[13],%ymm10[14],%ymm10[15]];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556e8ae *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm9;
assume %red = %mulLymm9 && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556e8b2 *)
smull %ymm13 %red %ymm13 %ymm0;
assert true && %red = %mulLymm5;
assume %red = %mulLymm5 && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556e8b6 *)
smull %ymm14 %red %ymm14 %ymm0;
assert true && %red = %mulLymm8;
assume %red = %mulLymm8 && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556e8ba *)
smull %ymm15 %red %ymm15 %ymm0;
assert true && %red = %mulLymm11;
assume %red = %mulLymm11 && true;
(* vpaddw %ymm9,%ymm3,%ymm6                        #! PC = 0x55555556e8be *)
add %ymm6 %ymm9 %ymm3;
(* vpsubw %ymm9,%ymm3,%ymm9                        #! PC = 0x55555556e8c3 *)
sub %ymm9 %ymm3 %ymm9;
(* vpaddw %ymm5,%ymm7,%ymm3                        #! PC = 0x55555556e8c8 *)
add %ymm3 %ymm5 %ymm7;
(* vpsubw %ymm5,%ymm7,%ymm5                        #! PC = 0x55555556e8cc *)
sub %ymm5 %ymm7 %ymm5;
(* vpaddw %ymm8,%ymm4,%ymm7                        #! PC = 0x55555556e8d0 *)
add %ymm7 %ymm8 %ymm4;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556e8d5 *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm11,%ymm10,%ymm4                      #! PC = 0x55555556e8da *)
add %ymm4 %ymm11 %ymm10;
(* vpsubw %ymm11,%ymm10,%ymm11                     #! PC = 0x55555556e8df *)
sub %ymm11 %ymm10 %ymm11;
(* vpsubw %ymm12,%ymm6,%ymm6                       #! PC = 0x55555556e8e4 *)
sub %ymm6 %ymm6 %ymm12;
(* vpaddw %ymm12,%ymm9,%ymm9                       #! PC = 0x55555556e8e9 *)
add %ymm9 %ymm12 %ymm9;
(* vpsubw %ymm13,%ymm3,%ymm3                       #! PC = 0x55555556e8ee *)
sub %ymm3 %ymm3 %ymm13;
(* vpaddw %ymm13,%ymm5,%ymm5                       #! PC = 0x55555556e8f3 *)
add %ymm5 %ymm13 %ymm5;
(* vpsubw %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556e8f8 *)
sub %ymm7 %ymm7 %ymm14;
(* vpaddw %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556e8fd *)
add %ymm8 %ymm14 %ymm8;
(* vpsubw %ymm15,%ymm4,%ymm4                       #! PC = 0x55555556e902 *)
sub %ymm4 %ymm4 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556e907 *)
add %ymm11 %ymm15 %ymm11;


(**************** LEVEL 3 0 ****************)
(* CUT default 3 *)

cut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (F**2)
          (poly X [%ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],
                   %ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],
                   %ymm7[0],%ymm7[1],%ymm7[2],%ymm7[3],
                   %ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3]])
          [Q, X**16 - 17**  8] /\
    eqmod (F**2)
          (poly X [%ymm9[0],%ymm9[1],%ymm9[2],%ymm9[3],
                   %ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3],
                   %ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],
                   %ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3]])
          [Q, X**16 - 17**136] /\
    eqmod (F**2)
          (poly X [%ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
                   %ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7],
                   %ymm7[4],%ymm7[5],%ymm7[6],%ymm7[7],
                   %ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7]])
          [Q, X**16 - 17** 72] /\
    eqmod (F**2)
          (poly X [%ymm9[4],%ymm9[5],%ymm9[6],%ymm9[7],
                   %ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7],
                   %ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
                   %ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7]])
          [Q, X**16 - 17**200] /\
    eqmod (F**2)
          (poly X [%ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],
                   %ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11],
                   %ymm7[8],%ymm7[9],%ymm7[10],%ymm7[11],
                   %ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11]])
          [Q, X**16 - 17** 40] /\
    eqmod (F**2)
          (poly X [%ymm9[8],%ymm9[9],%ymm9[10],%ymm9[11],
                   %ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11],
                   %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],
                   %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11]])
          [Q, X**16 - 17**168] /\
    eqmod (F**2)
          (poly X [%ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
                   %ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15],
                   %ymm7[12],%ymm7[13],%ymm7[14],%ymm7[15],
                   %ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15]])
          [Q, X**16 - 17**104] /\
    eqmod (F**2)
          (poly X [%ymm9[12],%ymm9[13],%ymm9[14],%ymm9[15],
                   %ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15],
                   %ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15],
                   %ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15]])
          [Q, X**16 - 17**232]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,
     5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ]<s
    %ymm6 /\ %ymm6 <s
    [5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,
     5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q] /\
    [5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,
     5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ]<s
    %ymm3 /\ %ymm3 <s
    [5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,
     5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q] /\
    [5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,
     5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ]<s
    %ymm7 /\ %ymm7 <s
    [5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,
     5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q] /\
    [5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,
     5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ]<s
    %ymm4 /\ %ymm4 <s
    [5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,
     5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q] /\
    [5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,
     5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ]<s
    %ymm9 /\ %ymm9 <s
    [5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,
     5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q] /\
    [5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,
     5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ]<s
    %ymm5 /\ %ymm5 <s
    [5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,
     5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q] /\
    [5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,
     5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ]<s
    %ymm8 /\ %ymm8 <s
    [5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,
     5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q] /\
    [5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,
     5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ]<s
    %ymm11 /\ %ymm11 <s
    [5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,
     5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q];

(* vmovsldup %ymm8,%ymm10                          #! PC = 0x55555556e90c *)
mov %ymm10
    [%ymm8[0],%ymm8[1],%ymm8[0],%ymm8[1],
     %ymm8[4],%ymm8[5],%ymm8[4],%ymm8[5],
     %ymm8[8],%ymm8[9],%ymm8[8],%ymm8[9],
     %ymm8[12],%ymm8[13],%ymm8[12],%ymm8[13]];
(* vpblendd $0xaa,%ymm10,%ymm7,%ymm10              #! PC = 0x55555556e911 *)
mov %ymm10
    [%ymm7[0],%ymm7[1],%ymm10[2],%ymm10[3],
     %ymm7[4],%ymm7[5],%ymm10[6],%ymm10[7],
     %ymm7[8],%ymm7[9],%ymm10[10],%ymm10[11],
     %ymm7[12],%ymm7[13],%ymm10[14],%ymm10[15]];
(* vpsrlq $0x20,%ymm7,%ymm7                        #! PC = 0x55555556e917 *)
mov %ymm7
    [%ymm7[2],%ymm7[3],0@int16,0@int16,
     %ymm7[6],%ymm7[7],0@int16,0@int16,
     %ymm7[10],%ymm7[11],0@int16,0@int16,
     %ymm7[14],%ymm7[15],0@int16,0@int16];
(* vpblendd $0xaa,%ymm8,%ymm7,%ymm8                #! PC = 0x55555556e91c *)
mov %ymm8
    [%ymm7[0],%ymm7[1],%ymm8[2],%ymm8[3],
     %ymm7[4],%ymm7[5],%ymm8[6],%ymm8[7],
     %ymm7[8],%ymm7[9],%ymm8[10],%ymm8[11],
     %ymm7[12],%ymm7[13],%ymm8[14],%ymm8[15]];
(* vmovsldup %ymm11,%ymm7                          #! PC = 0x55555556e922 *)
mov %ymm7
    [%ymm11[0],%ymm11[1],%ymm11[0],%ymm11[1],
     %ymm11[4],%ymm11[5],%ymm11[4],%ymm11[5],
     %ymm11[8],%ymm11[9],%ymm11[8],%ymm11[9],
     %ymm11[12],%ymm11[13],%ymm11[12],%ymm11[13]];
(* vpblendd $0xaa,%ymm7,%ymm4,%ymm7                #! PC = 0x55555556e927 *)
mov %ymm7
    [%ymm4[0],%ymm4[1],%ymm7[2],%ymm7[3],
     %ymm4[4],%ymm4[5],%ymm7[6],%ymm7[7],
     %ymm4[8],%ymm4[9],%ymm7[10],%ymm7[11],
     %ymm4[12],%ymm4[13],%ymm7[14],%ymm7[15]];
(* vpsrlq $0x20,%ymm4,%ymm4                        #! PC = 0x55555556e92d *)
mov %ymm4
    [%ymm4[2],%ymm4[3],0@int16,0@int16,
     %ymm4[6],%ymm4[7],0@int16,0@int16,
     %ymm4[10],%ymm4[11],0@int16,0@int16,
     %ymm4[14],%ymm4[15],0@int16,0@int16];
(* vpblendd $0xaa,%ymm11,%ymm4,%ymm11              #! PC = 0x55555556e932 *)
mov %ymm11
    [%ymm4[0],%ymm4[1],%ymm11[2],%ymm11[3],
     %ymm4[4],%ymm4[5],%ymm11[6],%ymm11[7],
     %ymm4[8],%ymm4[9],%ymm11[10],%ymm11[11],
     %ymm4[12],%ymm4[13],%ymm11[14],%ymm11[15]];
(* vmovdqa 0x220(%rsi),%ymm15                      #! EA = L0x5555556386c0; Value = 0x43d343d3e93de93d; PC = 0x55555556e938 *)
mov %ymm15
    [L0x5555556386c0, L0x5555556386c2, L0x5555556386c4, L0x5555556386c6,
     L0x5555556386c8, L0x5555556386ca, L0x5555556386cc, L0x5555556386ce,
     L0x5555556386d0, L0x5555556386d2, L0x5555556386d4, L0x5555556386d6,
     L0x5555556386d8, L0x5555556386da, L0x5555556386dc, L0x5555556386de];
(* vmovdqa 0x240(%rsi),%ymm2                       #! EA = L0x5555556386e0; Value = 0xfad3fad3023d023d; PC = 0x55555556e940 *)
mov %ymm2
    [L0x5555556386e0, L0x5555556386e2, L0x5555556386e4, L0x5555556386e6,
     L0x5555556386e8, L0x5555556386ea, L0x5555556386ec, L0x5555556386ee,
     L0x5555556386f0, L0x5555556386f2, L0x5555556386f4, L0x5555556386f6,
     L0x5555556386f8, L0x5555556386fa, L0x5555556386fc, L0x5555556386fe];
(* vpmullw %ymm15,%ymm10,%ymm12                    #! PC = 0x55555556e948 *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm8,%ymm13                     #! PC = 0x55555556e94d *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm7,%ymm14                     #! PC = 0x55555556e952 *)
smull %mulHymm7 %mulL %ymm15 %ymm7;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556e957 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556e95c *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556e960 *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556e964 *)
smull %ymm7 %mulLymm7 %ymm2 %ymm7;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556e968 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vmovsldup %ymm9,%ymm4                           #! PC = 0x55555556e96c *)
mov %ymm4
    [%ymm9[0],%ymm9[1],%ymm9[0],%ymm9[1],
     %ymm9[4],%ymm9[5],%ymm9[4],%ymm9[5],
     %ymm9[8],%ymm9[9],%ymm9[8],%ymm9[9],
     %ymm9[12],%ymm9[13],%ymm9[12],%ymm9[13]];
(* vpblendd $0xaa,%ymm4,%ymm6,%ymm4                #! PC = 0x55555556e971 *)
mov %ymm4
    [%ymm6[0],%ymm6[1],%ymm4[2],%ymm4[3],
     %ymm6[4],%ymm6[5],%ymm4[6],%ymm4[7],
     %ymm6[8],%ymm6[9],%ymm4[10],%ymm4[11],
     %ymm6[12],%ymm6[13],%ymm4[14],%ymm4[15]];
(* vpsrlq $0x20,%ymm6,%ymm6                        #! PC = 0x55555556e977 *)
mov %ymm6
    [%ymm6[2],%ymm6[3],0@int16,0@int16,
     %ymm6[6],%ymm6[7],0@int16,0@int16,
     %ymm6[10],%ymm6[11],0@int16,0@int16,
     %ymm6[14],%ymm6[15],0@int16,0@int16];
(* vpblendd $0xaa,%ymm9,%ymm6,%ymm9                #! PC = 0x55555556e97c *)
mov %ymm9
    [%ymm6[0],%ymm6[1],%ymm9[2],%ymm9[3],
     %ymm6[4],%ymm6[5],%ymm9[6],%ymm9[7],
     %ymm6[8],%ymm6[9],%ymm9[10],%ymm9[11],
     %ymm6[12],%ymm6[13],%ymm9[14],%ymm9[15]];
(* vmovsldup %ymm5,%ymm6                           #! PC = 0x55555556e982 *)
mov %ymm6
    [%ymm5[0],%ymm5[1],%ymm5[0],%ymm5[1],
     %ymm5[4],%ymm5[5],%ymm5[4],%ymm5[5],
     %ymm5[8],%ymm5[9],%ymm5[8],%ymm5[9],
     %ymm5[12],%ymm5[13],%ymm5[12],%ymm5[13]];
(* vpblendd $0xaa,%ymm6,%ymm3,%ymm6                #! PC = 0x55555556e986 *)
mov %ymm6
    [%ymm3[0],%ymm3[1],%ymm6[2],%ymm6[3],
     %ymm3[4],%ymm3[5],%ymm6[6],%ymm6[7],
     %ymm3[8],%ymm3[9],%ymm6[10],%ymm6[11],
     %ymm3[12],%ymm3[13],%ymm6[14],%ymm6[15]];
(* vpsrlq $0x20,%ymm3,%ymm3                        #! PC = 0x55555556e98c *)
mov %ymm3
    [%ymm3[2],%ymm3[3],0@int16,0@int16,
     %ymm3[6],%ymm3[7],0@int16,0@int16,
     %ymm3[10],%ymm3[11],0@int16,0@int16,
     %ymm3[14],%ymm3[15],0@int16,0@int16];
(* vpblendd $0xaa,%ymm5,%ymm3,%ymm5                #! PC = 0x55555556e991 *)
mov %ymm5
    [%ymm3[0],%ymm3[1],%ymm5[2],%ymm5[3],
     %ymm3[4],%ymm3[5],%ymm5[6],%ymm5[7],
     %ymm3[8],%ymm3[9],%ymm5[10],%ymm5[11],
     %ymm3[12],%ymm3[13],%ymm5[14],%ymm5[15]];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556e997 *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm10;
assume %red = %mulLymm10 && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556e99b *)
smull %ymm13 %red %ymm13 %ymm0;
assert true && %red = %mulLymm8;
assume %red = %mulLymm8 && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556e99f *)
smull %ymm14 %red %ymm14 %ymm0;
assert true && %red = %mulLymm7;
assume %red = %mulLymm7 && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556e9a3 *)
smull %ymm15 %red %ymm15 %ymm0;
assert true && %red = %mulLymm11;
assume %red = %mulLymm11 && true;
(* vpaddw %ymm10,%ymm4,%ymm3                       #! PC = 0x55555556e9a7 *)
add %ymm3 %ymm10 %ymm4;
(* vpsubw %ymm10,%ymm4,%ymm10                      #! PC = 0x55555556e9ac *)
sub %ymm10 %ymm4 %ymm10;
(* vpaddw %ymm8,%ymm9,%ymm4                        #! PC = 0x55555556e9b1 *)
add %ymm4 %ymm8 %ymm9;
(* vpsubw %ymm8,%ymm9,%ymm8                        #! PC = 0x55555556e9b6 *)
sub %ymm8 %ymm9 %ymm8;
(* vpaddw %ymm7,%ymm6,%ymm9                        #! PC = 0x55555556e9bb *)
add %ymm9 %ymm7 %ymm6;
(* vpsubw %ymm7,%ymm6,%ymm7                        #! PC = 0x55555556e9bf *)
sub %ymm7 %ymm6 %ymm7;
(* vpaddw %ymm11,%ymm5,%ymm6                       #! PC = 0x55555556e9c3 *)
add %ymm6 %ymm11 %ymm5;
(* vpsubw %ymm11,%ymm5,%ymm11                      #! PC = 0x55555556e9c8 *)
sub %ymm11 %ymm5 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556e9cd *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm10,%ymm10                     #! PC = 0x55555556e9d2 *)
add %ymm10 %ymm12 %ymm10;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556e9d7 *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm8,%ymm8                       #! PC = 0x55555556e9dc *)
add %ymm8 %ymm13 %ymm8;
(* vpsubw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556e9e1 *)
sub %ymm9 %ymm9 %ymm14;
(* vpaddw %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556e9e6 *)
add %ymm7 %ymm14 %ymm7;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556e9eb *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556e9f0 *)
add %ymm11 %ymm15 %ymm11;

(**************** LEVEL 4 0 ****************)
(* CUT default 4 *)

cut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (F**2)
          (poly X [%ymm3[0],%ymm3[1],%ymm4[0],%ymm4[1],
                   %ymm9[0],%ymm9[1],%ymm6[0],%ymm6[1]])
          [Q, X**8 - 17**  4] /\
    eqmod (F**2)
          (poly X [%ymm10[0],%ymm10[1],%ymm8[0],%ymm8[1],
                   %ymm7[0],%ymm7[1],%ymm11[0],%ymm11[1]])
          [Q, X**8 - 17**132] /\
    eqmod (F**2)
          (poly X [%ymm3[2],%ymm3[3],%ymm4[2],%ymm4[3],
                   %ymm9[2],%ymm9[3],%ymm6[2],%ymm6[3]])
          [Q, X**8 - 17** 68] /\
    eqmod (F**2)
          (poly X [%ymm10[2],%ymm10[3],%ymm8[2],%ymm8[3],
                   %ymm7[2],%ymm7[3],%ymm11[2],%ymm11[3]])
          [Q, X**8 - 17**196] /\
    eqmod (F**2)
          (poly X [%ymm3[4],%ymm3[5],%ymm4[4],%ymm4[5],
                   %ymm9[4],%ymm9[5],%ymm6[4],%ymm6[5]])
          [Q, X**8 - 17** 36] /\
    eqmod (F**2)
          (poly X [%ymm10[4],%ymm10[5],%ymm8[4],%ymm8[5],
                   %ymm7[4],%ymm7[5],%ymm11[4],%ymm11[5]])
          [Q, X**8 - 17**164] /\
    eqmod (F**2)
          (poly X [%ymm3[6],%ymm3[7],%ymm4[6],%ymm4[7],
                   %ymm9[6],%ymm9[7],%ymm6[6],%ymm6[7]])
          [Q, X**8 - 17**100] /\
    eqmod (F**2)
          (poly X [%ymm10[6],%ymm10[7],%ymm8[6],%ymm8[7],
                   %ymm7[6],%ymm7[7],%ymm11[6],%ymm11[7]])
          [Q, X**8 - 17**228] /\
    eqmod (F**2)
          (poly X [%ymm3[8],%ymm3[9],%ymm4[8],%ymm4[9],
                   %ymm9[8],%ymm9[9],%ymm6[8],%ymm6[9]])
          [Q, X**8 - 17** 20] /\
    eqmod (F**2)
          (poly X [%ymm10[8],%ymm10[9],%ymm8[8],%ymm8[9],
                   %ymm7[8],%ymm7[9],%ymm11[8],%ymm11[9]])
          [Q, X**8 - 17**148] /\
    eqmod (F**2)
          (poly X [%ymm3[10],%ymm3[11],%ymm4[10],%ymm4[11],
                   %ymm9[10],%ymm9[11],%ymm6[10],%ymm6[11]])
          [Q, X**8 - 17** 84] /\
    eqmod (F**2)
          (poly X [%ymm10[10],%ymm10[11],%ymm8[10],%ymm8[11],
                   %ymm7[10],%ymm7[11],%ymm11[10],%ymm11[11]])
          [Q, X**8 - 17**212] /\
    eqmod (F**2)
          (poly X [%ymm3[12],%ymm3[13],%ymm4[12],%ymm4[13],
                   %ymm9[12],%ymm9[13],%ymm6[12],%ymm6[13]])
          [Q, X**8 - 17** 52] /\
    eqmod (F**2)
          (poly X [%ymm10[12],%ymm10[13],%ymm8[12],%ymm8[13],
                   %ymm7[12],%ymm7[13],%ymm11[12],%ymm11[13]])
          [Q, X**8 - 17**180] /\
    eqmod (F**2)
          (poly X [%ymm3[14],%ymm3[15],%ymm4[14],%ymm4[15],
                   %ymm9[14],%ymm9[15],%ymm6[14],%ymm6[15]])
          [Q, X**8 - 17**116] /\
    eqmod (F**2)
          (poly X [%ymm10[14],%ymm10[15],%ymm8[14],%ymm8[15],
                   %ymm7[14],%ymm7[15],%ymm11[14],%ymm11[15]])
          [Q, X**8 - 17**244]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,
     6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ]<s
    %ymm3 /\ %ymm3 <s
    [6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,
     6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q] /\
    [6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,
     6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ]<s
    %ymm4 /\ %ymm4 <s
    [6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,
     6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q] /\
    [6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,
     6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ]<s
    %ymm9 /\ %ymm9 <s
    [6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,
     6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q] /\
    [6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,
     6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ]<s
    %ymm6 /\ %ymm6 <s
    [6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,
     6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q] /\
    [6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,
     6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ]<s
    %ymm10 /\ %ymm10 <s
    [6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,
     6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q] /\
    [6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,
     6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ]<s
    %ymm8 /\ %ymm8 <s
    [6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,
     6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q] /\
    [6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,
     6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ]<s
    %ymm7 /\ %ymm7 <s
    [6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,
     6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q] /\
    [6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,
     6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ]<s
    %ymm11 /\ %ymm11 <s
    [6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,
     6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q];

(* vpslld $0x10,%ymm7,%ymm5                        #! PC = 0x55555556e9f5 *)
mov %ymm5
    [0@int16,%ymm7[0],0@int16,%ymm7[2],
     0@int16,%ymm7[4],0@int16,%ymm7[6],
     0@int16,%ymm7[8],0@int16,%ymm7[10],
     0@int16,%ymm7[12],0@int16,%ymm7[14]];
(* vpblendw $0xaa,%ymm5,%ymm9,%ymm5                #! PC = 0x55555556e9fa *)
mov %ymm5
    [%ymm9[0],%ymm5[1],%ymm9[2],%ymm5[3],
     %ymm9[4],%ymm5[5],%ymm9[6],%ymm5[7],
     %ymm9[8],%ymm5[9],%ymm9[10],%ymm5[11],
     %ymm9[12],%ymm5[13],%ymm9[14],%ymm5[15]];
(* vpsrld $0x10,%ymm9,%ymm9                        #! PC = 0x55555556ea00 *)
mov %ymm9
    [%ymm9[1],0@int16,%ymm9[3],0@int16,
     %ymm9[5],0@int16,%ymm9[7],0@int16,
     %ymm9[9],0@int16,%ymm9[11],0@int16,
     %ymm9[13],0@int16,%ymm9[15],0@int16];
(* vpblendw $0xaa,%ymm7,%ymm9,%ymm7                #! PC = 0x55555556ea06 *)
mov %ymm7
    [%ymm9[0],%ymm7[1],%ymm9[2],%ymm7[3],
     %ymm9[4],%ymm7[5],%ymm9[6],%ymm7[7],
     %ymm9[8],%ymm7[9],%ymm9[10],%ymm7[11],
     %ymm9[12],%ymm7[13],%ymm9[14],%ymm7[15]];
(* vpslld $0x10,%ymm11,%ymm9                       #! PC = 0x55555556ea0c *)
mov %ymm9
    [0@int16,%ymm11[0],0@int16,%ymm11[2],
     0@int16,%ymm11[4],0@int16,%ymm11[6],
     0@int16,%ymm11[8],0@int16,%ymm11[10],
     0@int16,%ymm11[12],0@int16,%ymm11[14]];
(* vpblendw $0xaa,%ymm9,%ymm6,%ymm9                #! PC = 0x55555556ea12 *)
mov %ymm9
    [%ymm6[0],%ymm9[1],%ymm6[2],%ymm9[3],
     %ymm6[4],%ymm9[5],%ymm6[6],%ymm9[7],
     %ymm6[8],%ymm9[9],%ymm6[10],%ymm9[11],
     %ymm6[12],%ymm9[13],%ymm6[14],%ymm9[15]];
(* vpsrld $0x10,%ymm6,%ymm6                        #! PC = 0x55555556ea18 *)
mov %ymm6
    [%ymm6[1],0@int16,%ymm6[3],0@int16,
     %ymm6[5],0@int16,%ymm6[7],0@int16,
     %ymm6[9],0@int16,%ymm6[11],0@int16,
     %ymm6[13],0@int16,%ymm6[15],0@int16];
(* vpblendw $0xaa,%ymm11,%ymm6,%ymm11              #! PC = 0x55555556ea1d *)
mov %ymm11
    [%ymm6[0],%ymm11[1],%ymm6[2],%ymm11[3],
     %ymm6[4],%ymm11[5],%ymm6[6],%ymm11[7],
     %ymm6[8],%ymm11[9],%ymm6[10],%ymm11[11],
     %ymm6[12],%ymm11[13],%ymm6[14],%ymm11[15]];
(* vmovdqa 0x260(%rsi),%ymm15                      #! EA = L0x555555638700; Value = 0x78f705d8e68ce9c7; PC = 0x55555556ea23 *)
mov %ymm15
    [L0x555555638700, L0x555555638702, L0x555555638704, L0x555555638706,
     L0x555555638708, L0x55555563870a, L0x55555563870c, L0x55555563870e,
     L0x555555638710, L0x555555638712, L0x555555638714, L0x555555638716,
     L0x555555638718, L0x55555563871a, L0x55555563871c, L0x55555563871e];
(* vmovdqa 0x280(%rsi),%ymm2                       #! EA = L0x555555638720; Value = 0x03f7fdd8028c04c7; PC = 0x55555556ea2b *)
mov %ymm2
    [L0x555555638720, L0x555555638722, L0x555555638724, L0x555555638726,
     L0x555555638728, L0x55555563872a, L0x55555563872c, L0x55555563872e,
     L0x555555638730, L0x555555638732, L0x555555638734, L0x555555638736,
     L0x555555638738, L0x55555563873a, L0x55555563873c, L0x55555563873e];
(* vpmullw %ymm15,%ymm5,%ymm12                     #! PC = 0x55555556ea33 *)
smull %mulHymm5 %mulL %ymm15 %ymm5;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm7,%ymm13                     #! PC = 0x55555556ea38 *)
smull %mulHymm7 %mulL %ymm15 %ymm7;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm14                     #! PC = 0x55555556ea3d *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556ea42 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556ea47 *)
smull %ymm5 %mulLymm5 %ymm2 %ymm5;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556ea4b *)
smull %ymm7 %mulLymm7 %ymm2 %ymm7;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556ea4f *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556ea53 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vpslld $0x10,%ymm10,%ymm6                       #! PC = 0x55555556ea57 *)
mov %ymm6
    [0@int16,%ymm10[0],0@int16,%ymm10[2],
     0@int16,%ymm10[4],0@int16,%ymm10[6],
     0@int16,%ymm10[8],0@int16,%ymm10[10],
     0@int16,%ymm10[12],0@int16,%ymm10[14]];
(* vpblendw $0xaa,%ymm6,%ymm3,%ymm6                #! PC = 0x55555556ea5d *)
mov %ymm6
    [%ymm3[0],%ymm6[1],%ymm3[2],%ymm6[3],
     %ymm3[4],%ymm6[5],%ymm3[6],%ymm6[7],
     %ymm3[8],%ymm6[9],%ymm3[10],%ymm6[11],
     %ymm3[12],%ymm6[13],%ymm3[14],%ymm6[15]];
(* vpsrld $0x10,%ymm3,%ymm3                        #! PC = 0x55555556ea63 *)
mov %ymm3
    [%ymm3[1],0@int16,%ymm3[3],0@int16,
     %ymm3[5],0@int16,%ymm3[7],0@int16,
     %ymm3[9],0@int16,%ymm3[11],0@int16,
     %ymm3[13],0@int16,%ymm3[15],0@int16];
(* vpblendw $0xaa,%ymm10,%ymm3,%ymm10              #! PC = 0x55555556ea68 *)
mov %ymm10
    [%ymm3[0],%ymm10[1],%ymm3[2],%ymm10[3],
     %ymm3[4],%ymm10[5],%ymm3[6],%ymm10[7],
     %ymm3[8],%ymm10[9],%ymm3[10],%ymm10[11],
     %ymm3[12],%ymm10[13],%ymm3[14],%ymm10[15]];
(* vpslld $0x10,%ymm8,%ymm3                        #! PC = 0x55555556ea6e *)
mov %ymm3
    [0@int16,%ymm8[0],0@int16,%ymm8[2],
     0@int16,%ymm8[4],0@int16,%ymm8[6],
     0@int16,%ymm8[8],0@int16,%ymm8[10],
     0@int16,%ymm8[12],0@int16,%ymm8[14]];
(* vpblendw $0xaa,%ymm3,%ymm4,%ymm3                #! PC = 0x55555556ea74 *)
mov %ymm3
    [%ymm4[0],%ymm3[1],%ymm4[2],%ymm3[3],
     %ymm4[4],%ymm3[5],%ymm4[6],%ymm3[7],
     %ymm4[8],%ymm3[9],%ymm4[10],%ymm3[11],
     %ymm4[12],%ymm3[13],%ymm4[14],%ymm3[15]];
(* vpsrld $0x10,%ymm4,%ymm4                        #! PC = 0x55555556ea7a *)
mov %ymm4
    [%ymm4[1],0@int16,%ymm4[3],0@int16,
     %ymm4[5],0@int16,%ymm4[7],0@int16,
     %ymm4[9],0@int16,%ymm4[11],0@int16,
     %ymm4[13],0@int16,%ymm4[15],0@int16];
(* vpblendw $0xaa,%ymm8,%ymm4,%ymm8                #! PC = 0x55555556ea7f *)
mov %ymm8
    [%ymm4[0],%ymm8[1],%ymm4[2],%ymm8[3],
     %ymm4[4],%ymm8[5],%ymm4[6],%ymm8[7],
     %ymm4[8],%ymm8[9],%ymm4[10],%ymm8[11],
     %ymm4[12],%ymm8[13],%ymm4[14],%ymm8[15]];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556ea85 *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm5;
assume %red = %mulLymm5 && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556ea89 *)
smull %ymm13 %red %ymm13 %ymm0;
assert true && %red = %mulLymm7;
assume %red = %mulLymm7 && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556ea8d *)
smull %ymm14 %red %ymm14 %ymm0;
assert true && %red = %mulLymm9;
assume %red = %mulLymm9 && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556ea91 *)
smull %ymm15 %red %ymm15 %ymm0;
assert true && %red = %mulLymm11;
assume %red = %mulLymm11 && true;
(* vpaddw %ymm5,%ymm6,%ymm4                        #! PC = 0x55555556ea95 *)
add %ymm4 %ymm5 %ymm6;
(* vpsubw %ymm5,%ymm6,%ymm5                        #! PC = 0x55555556ea99 *)
sub %ymm5 %ymm6 %ymm5;
(* vpaddw %ymm7,%ymm10,%ymm6                       #! PC = 0x55555556ea9d *)
add %ymm6 %ymm7 %ymm10;
(* vpsubw %ymm7,%ymm10,%ymm7                       #! PC = 0x55555556eaa1 *)
sub %ymm7 %ymm10 %ymm7;
(* vpaddw %ymm9,%ymm3,%ymm10                       #! PC = 0x55555556eaa5 *)
add %ymm10 %ymm9 %ymm3;
(* vpsubw %ymm9,%ymm3,%ymm9                        #! PC = 0x55555556eaaa *)
sub %ymm9 %ymm3 %ymm9;
(* vpaddw %ymm11,%ymm8,%ymm3                       #! PC = 0x55555556eaaf *)
add %ymm3 %ymm11 %ymm8;
(* vpsubw %ymm11,%ymm8,%ymm11                      #! PC = 0x55555556eab4 *)
sub %ymm11 %ymm8 %ymm11;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555556eab9 *)
sub %ymm4 %ymm4 %ymm12;
(* vpaddw %ymm12,%ymm5,%ymm5                       #! PC = 0x55555556eabe *)
add %ymm5 %ymm12 %ymm5;
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x55555556eac3 *)
sub %ymm6 %ymm6 %ymm13;
(* vpaddw %ymm13,%ymm7,%ymm7                       #! PC = 0x55555556eac8 *)
add %ymm7 %ymm13 %ymm7;
(* vpsubw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556eacd *)
sub %ymm10 %ymm10 %ymm14;
(* vpaddw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556ead2 *)
add %ymm9 %ymm14 %ymm9;
(* vpsubw %ymm15,%ymm3,%ymm3                       #! PC = 0x55555556ead7 *)
sub %ymm3 %ymm3 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556eadc *)
add %ymm11 %ymm15 %ymm11;

(**************** LEVEL 5 0 ****************)
(* CUT default 5 *)

cut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (F**2)
          (poly X [%ymm4[0], %ymm6[0], %ymm10[0], %ymm3[0]])
          [3329, X**4 - 17**  2] /\
    eqmod (F**2)
          (poly X [%ymm5[0], %ymm7[0], %ymm9[0], %ymm11[0]])
          [3329, X**4 - 17**130] /\
    eqmod (F**2)
          (poly X [%ymm4[1], %ymm6[1], %ymm10[1], %ymm3[1]])
          [3329, X**4 - 17** 66] /\
    eqmod (F**2)
          (poly X [%ymm5[1], %ymm7[1], %ymm9[1], %ymm11[1]])
          [3329, X**4 - 17**194] /\
    eqmod (F**2)
          (poly X [%ymm4[2], %ymm6[2], %ymm10[2], %ymm3[2]])
          [3329, X**4 - 17** 34] /\
    eqmod (F**2)
          (poly X [%ymm5[2], %ymm7[2], %ymm9[2], %ymm11[2]])
          [3329, X**4 - 17**162] /\
    eqmod (F**2)
          (poly X [%ymm4[3], %ymm6[3], %ymm10[3], %ymm3[3]])
          [3329, X**4 - 17** 98] /\
    eqmod (F**2)
          (poly X [%ymm5[3], %ymm7[3], %ymm9[3], %ymm11[3]])
          [3329, X**4 - 17**226] /\
    eqmod (F**2)
          (poly X [%ymm4[4], %ymm6[4], %ymm10[4], %ymm3[4]])
          [3329, X**4 - 17** 18] /\
    eqmod (F**2)
          (poly X [%ymm5[4], %ymm7[4], %ymm9[4], %ymm11[4]])
          [3329, X**4 - 17**146] /\
    eqmod (F**2)
          (poly X [%ymm4[5], %ymm6[5], %ymm10[5], %ymm3[5]])
          [3329, X**4 - 17** 82] /\
    eqmod (F**2)
          (poly X [%ymm5[5], %ymm7[5], %ymm9[5], %ymm11[5]])
          [3329, X**4 - 17**210] /\
    eqmod (F**2)
          (poly X [%ymm4[6], %ymm6[6], %ymm10[6], %ymm3[6]])
          [3329, X**4 - 17** 50] /\
    eqmod (F**2)
          (poly X [%ymm5[6], %ymm7[6], %ymm9[6], %ymm11[6]])
          [3329, X**4 - 17**178] /\
    eqmod (F**2)
          (poly X [%ymm4[7], %ymm6[7], %ymm10[7], %ymm3[7]])
          [3329, X**4 - 17**114] /\
    eqmod (F**2)
          (poly X [%ymm5[7], %ymm7[7], %ymm9[7], %ymm11[7]])
          [3329, X**4 - 17**242] /\
    eqmod (F**2)
          (poly X [%ymm4[8], %ymm6[8], %ymm10[8], %ymm3[8]])
          [3329, X**4 - 17** 10] /\
    eqmod (F**2)
          (poly X [%ymm5[8], %ymm7[8], %ymm9[8], %ymm11[8]])
          [3329, X**4 - 17**138] /\
    eqmod (F**2)
          (poly X [%ymm4[9], %ymm6[9], %ymm10[9], %ymm3[9]])
          [3329, X**4 - 17** 74] /\
    eqmod (F**2)
          (poly X [%ymm5[9], %ymm7[9], %ymm9[9], %ymm11[9]])
          [3329, X**4 - 17**202] /\
    eqmod (F**2)
          (poly X [%ymm4[10], %ymm6[10], %ymm10[10], %ymm3[10]])
          [3329, X**4 - 17** 42] /\
    eqmod (F**2)
          (poly X [%ymm5[10], %ymm7[10], %ymm9[10], %ymm11[10]])
          [3329, X**4 - 17**170] /\
    eqmod (F**2)
          (poly X [%ymm4[11], %ymm6[11], %ymm10[11], %ymm3[11]])
          [3329, X**4 - 17**106] /\
    eqmod (F**2)
          (poly X [%ymm5[11], %ymm7[11], %ymm9[11], %ymm11[11]])
          [3329, X**4 - 17**234] /\
    eqmod (F**2)
          (poly X [%ymm4[12], %ymm6[12], %ymm10[12], %ymm3[12]])
          [3329, X**4 - 17** 26] /\
    eqmod (F**2)
          (poly X [%ymm5[12], %ymm7[12], %ymm9[12], %ymm11[12]])
          [3329, X**4 - 17**154] /\
    eqmod (F**2)
          (poly X [%ymm4[13], %ymm6[13], %ymm10[13], %ymm3[13]])
          [3329, X**4 - 17** 90] /\
    eqmod (F**2)
          (poly X [%ymm5[13], %ymm7[13], %ymm9[13], %ymm11[13]])
          [3329, X**4 - 17**218] /\
    eqmod (F**2)
          (poly X [%ymm4[14], %ymm6[14], %ymm10[14], %ymm3[14]])
          [3329, X**4 - 17** 58] /\
    eqmod (F**2)
          (poly X [%ymm5[14], %ymm7[14], %ymm9[14], %ymm11[14]])
          [3329, X**4 - 17**186] /\
    eqmod (F**2)
          (poly X [%ymm4[15], %ymm6[15], %ymm10[15], %ymm3[15]])
          [3329, X**4 - 17**122] /\
    eqmod (F**2)
          (poly X [%ymm5[15], %ymm7[15], %ymm9[15], %ymm11[15]])
          [3329, X**4 - 17**250]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,
     7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ]<s
    %ymm4 /\ %ymm4 <s
    [7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,
     7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q] /\
    [7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,
     7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ]<s
    %ymm6 /\ %ymm6 <s
    [7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,
     7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q] /\
    [7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,
     7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ]<s
    %ymm8 /\ %ymm8 <s
    [7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,
     7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q] /\
    [7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,
     7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ]<s
    %ymm3 /\ %ymm3 <s
    [7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,
     7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q] /\
    [7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,
     7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ]<s
    %ymm7 /\ %ymm7 <s
    [7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,
     7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q] /\
    [7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,
     7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ]<s
    %ymm10 /\ %ymm10 <s
    [7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,
     7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q] /\
    [7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,
     7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ]<s
    %ymm5 /\ %ymm5 <s
    [7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,
     7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q] /\
    [7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,
     7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ]<s
    %ymm11 /\ %ymm11 <s
    [7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,
     7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q];

(* vmovdqa 0x2a0(%rsi),%ymm14                      #! EA = L0x555555638740; Value = 0x500e821dd32bfeb1; PC = 0x55555556eae1 *)
mov %ymm14
    [L0x555555638740, L0x555555638742, L0x555555638744, L0x555555638746,
     L0x555555638748, L0x55555563874a, L0x55555563874c, L0x55555563874e,
     L0x555555638750, L0x555555638752, L0x555555638754, L0x555555638756,
     L0x555555638758, L0x55555563875a, L0x55555563875c, L0x55555563875e];
(* vmovdqa 0x2e0(%rsi),%ymm15                      #! EA = L0x555555638780; Value = 0xab69c867344b2bae; PC = 0x55555556eae9 *)
mov %ymm15
    [L0x555555638780, L0x555555638782, L0x555555638784, L0x555555638786,
     L0x555555638788, L0x55555563878a, L0x55555563878c, L0x55555563878e,
     L0x555555638790, L0x555555638792, L0x555555638794, L0x555555638796,
     L0x555555638798, L0x55555563879a, L0x55555563879c, L0x55555563879e];
(* vmovdqa 0x2c0(%rsi),%ymm8                       #! EA = L0x555555638760; Value = 0x060efb1d022bfbb1; PC = 0x55555556eaf1 *)
mov %ymm8
    [L0x555555638760, L0x555555638762, L0x555555638764, L0x555555638766,
     L0x555555638768, L0x55555563876a, L0x55555563876c, L0x55555563876e,
     L0x555555638770, L0x555555638772, L0x555555638774, L0x555555638776,
     L0x555555638778, L0x55555563877a, L0x55555563877c, L0x55555563877e];
(* vmovdqa 0x300(%rsi),%ymm2                       #! EA = L0x5555556387a0; Value = 0x00690367034b01ae; PC = 0x55555556eaf9 *)
mov %ymm2
    [L0x5555556387a0, L0x5555556387a2, L0x5555556387a4, L0x5555556387a6,
     L0x5555556387a8, L0x5555556387aa, L0x5555556387ac, L0x5555556387ae,
     L0x5555556387b0, L0x5555556387b2, L0x5555556387b4, L0x5555556387b6,
     L0x5555556387b8, L0x5555556387ba, L0x5555556387bc, L0x5555556387be];
(* vpmullw %ymm14,%ymm10,%ymm12                    #! PC = 0x55555556eb01 *)
smull %mulHymm10 %mulL %ymm14 %ymm10;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm14,%ymm3,%ymm13                     #! PC = 0x55555556eb06 *)
smull %mulHymm3 %mulL %ymm14 %ymm3;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm14                     #! PC = 0x55555556eb0b *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556eb10 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm8,%ymm10,%ymm10                     #! PC = 0x55555556eb15 *)
smull %ymm10 %mulLymm10 %ymm8 %ymm10;
(* vpmulhw %ymm8,%ymm3,%ymm3                       #! PC = 0x55555556eb1a *)
smull %ymm3 %mulLymm3 %ymm8 %ymm3;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556eb1f *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556eb23 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556eb27 *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm10;
assume %red = %mulLymm10 && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556eb2b *)
smull %ymm13 %red %ymm13 %ymm0;
assert true && %red = %mulLymm3;
assume %red = %mulLymm3 && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556eb2f *)
smull %ymm14 %red %ymm14 %ymm0;
assert true && %red = %mulLymm9;
assume %red = %mulLymm9 && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556eb33 *)
smull %ymm15 %red %ymm15 %ymm0;
assert true && %red = %mulLymm11;
assume %red = %mulLymm11 && true;
(* vpaddw %ymm10,%ymm4,%ymm8                       #! PC = 0x55555556eb37 *)
add %ymm8 %ymm10 %ymm4;
(* vpsubw %ymm10,%ymm4,%ymm10                      #! PC = 0x55555556eb3c *)
sub %ymm10 %ymm4 %ymm10;
(* vpaddw %ymm3,%ymm6,%ymm4                        #! PC = 0x55555556eb41 *)
add %ymm4 %ymm3 %ymm6;
(* vpsubw %ymm3,%ymm6,%ymm3                        #! PC = 0x55555556eb45 *)
sub %ymm3 %ymm6 %ymm3;
(* vpaddw %ymm9,%ymm5,%ymm6                        #! PC = 0x55555556eb49 *)
add %ymm6 %ymm9 %ymm5;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556eb4e *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm11,%ymm7,%ymm5                       #! PC = 0x55555556eb53 *)
add %ymm5 %ymm11 %ymm7;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556eb58 *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556eb5d *)
sub %ymm8 %ymm8 %ymm12;
(* vpaddw %ymm12,%ymm10,%ymm10                     #! PC = 0x55555556eb62 *)
add %ymm10 %ymm12 %ymm10;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556eb67 *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm3,%ymm3                       #! PC = 0x55555556eb6c *)
add %ymm3 %ymm13 %ymm3;
(* vpsubw %ymm14,%ymm6,%ymm6                       #! PC = 0x55555556eb71 *)
sub %ymm6 %ymm6 %ymm14;
(* vpaddw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556eb76 *)
add %ymm9 %ymm14 %ymm9;
(* vpsubw %ymm15,%ymm5,%ymm5                       #! PC = 0x55555556eb7b *)
sub %ymm5 %ymm5 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556eb80 *)
add %ymm11 %ymm15 %ymm11;
(* vmovdqa %ymm8,(%rdi)                            #! EA = L0x7fffffffb280; PC = 0x55555556eb85 *)
mov [L0x7fffffffb280, L0x7fffffffb282, L0x7fffffffb284, L0x7fffffffb286,
     L0x7fffffffb288, L0x7fffffffb28a, L0x7fffffffb28c, L0x7fffffffb28e,
     L0x7fffffffb290, L0x7fffffffb292, L0x7fffffffb294, L0x7fffffffb296,
     L0x7fffffffb298, L0x7fffffffb29a, L0x7fffffffb29c, L0x7fffffffb29e]
    %ymm8;
(* vmovdqa %ymm4,0x20(%rdi)                        #! EA = L0x7fffffffb2a0; PC = 0x55555556eb89 *)
mov [L0x7fffffffb2a0, L0x7fffffffb2a2, L0x7fffffffb2a4, L0x7fffffffb2a6,
     L0x7fffffffb2a8, L0x7fffffffb2aa, L0x7fffffffb2ac, L0x7fffffffb2ae,
     L0x7fffffffb2b0, L0x7fffffffb2b2, L0x7fffffffb2b4, L0x7fffffffb2b6,
     L0x7fffffffb2b8, L0x7fffffffb2ba, L0x7fffffffb2bc, L0x7fffffffb2be]
    %ymm4;
(* vmovdqa %ymm10,0x40(%rdi)                       #! EA = L0x7fffffffb2c0; PC = 0x55555556eb8e *)
mov [L0x7fffffffb2c0, L0x7fffffffb2c2, L0x7fffffffb2c4, L0x7fffffffb2c6,
     L0x7fffffffb2c8, L0x7fffffffb2ca, L0x7fffffffb2cc, L0x7fffffffb2ce,
     L0x7fffffffb2d0, L0x7fffffffb2d2, L0x7fffffffb2d4, L0x7fffffffb2d6,
     L0x7fffffffb2d8, L0x7fffffffb2da, L0x7fffffffb2dc, L0x7fffffffb2de]
    %ymm10;
(* vmovdqa %ymm3,0x60(%rdi)                        #! EA = L0x7fffffffb2e0; PC = 0x55555556eb93 *)
mov [L0x7fffffffb2e0, L0x7fffffffb2e2, L0x7fffffffb2e4, L0x7fffffffb2e6,
     L0x7fffffffb2e8, L0x7fffffffb2ea, L0x7fffffffb2ec, L0x7fffffffb2ee,
     L0x7fffffffb2f0, L0x7fffffffb2f2, L0x7fffffffb2f4, L0x7fffffffb2f6,
     L0x7fffffffb2f8, L0x7fffffffb2fa, L0x7fffffffb2fc, L0x7fffffffb2fe]
    %ymm3;
(* vmovdqa %ymm6,0x80(%rdi)                        #! EA = L0x7fffffffb300; PC = 0x55555556eb98 *)
mov [L0x7fffffffb300, L0x7fffffffb302, L0x7fffffffb304, L0x7fffffffb306,
     L0x7fffffffb308, L0x7fffffffb30a, L0x7fffffffb30c, L0x7fffffffb30e,
     L0x7fffffffb310, L0x7fffffffb312, L0x7fffffffb314, L0x7fffffffb316,
     L0x7fffffffb318, L0x7fffffffb31a, L0x7fffffffb31c, L0x7fffffffb31e]
    %ymm6;
(* vmovdqa %ymm5,0xa0(%rdi)                        #! EA = L0x7fffffffb320; PC = 0x55555556eba0 *)
mov [L0x7fffffffb320, L0x7fffffffb322, L0x7fffffffb324, L0x7fffffffb326,
     L0x7fffffffb328, L0x7fffffffb32a, L0x7fffffffb32c, L0x7fffffffb32e,
     L0x7fffffffb330, L0x7fffffffb332, L0x7fffffffb334, L0x7fffffffb336,
     L0x7fffffffb338, L0x7fffffffb33a, L0x7fffffffb33c, L0x7fffffffb33e]
    %ymm5;
(* vmovdqa %ymm9,0xc0(%rdi)                        #! EA = L0x7fffffffb340; PC = 0x55555556eba8 *)
mov [L0x7fffffffb340, L0x7fffffffb342, L0x7fffffffb344, L0x7fffffffb346,
     L0x7fffffffb348, L0x7fffffffb34a, L0x7fffffffb34c, L0x7fffffffb34e,
     L0x7fffffffb350, L0x7fffffffb352, L0x7fffffffb354, L0x7fffffffb356,
     L0x7fffffffb358, L0x7fffffffb35a, L0x7fffffffb35c, L0x7fffffffb35e]
    %ymm9;
(* vmovdqa %ymm11,0xe0(%rdi)                       #! EA = L0x7fffffffb360; PC = 0x55555556ebb0 *)
mov [L0x7fffffffb360, L0x7fffffffb362, L0x7fffffffb364, L0x7fffffffb366,
     L0x7fffffffb368, L0x7fffffffb36a, L0x7fffffffb36c, L0x7fffffffb36e,
     L0x7fffffffb370, L0x7fffffffb372, L0x7fffffffb374, L0x7fffffffb376,
     L0x7fffffffb378, L0x7fffffffb37a, L0x7fffffffb37c, L0x7fffffffb37e]
    %ymm11;

(**************** LEVEL 6 0 ****************)
(* CUT default 6 *)

cut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (F**2) (poly X [L0x7fffffffb280,L0x7fffffffb2a0])
          [Q, X**2 - 17**  1] /\
    eqmod (F**2) (poly X [L0x7fffffffb2c0,L0x7fffffffb2e0])
          [Q, X**2 - 17**129] /\
    eqmod (F**2) (poly X [L0x7fffffffb300,L0x7fffffffb320])
          [Q, X**2 - 17** 65] /\
    eqmod (F**2) (poly X [L0x7fffffffb340,L0x7fffffffb360])
          [Q, X**2 - 17**193] /\
    eqmod (F**2) (poly X [L0x7fffffffb282,L0x7fffffffb2a2])
          [Q, X**2 - 17** 33] /\
    eqmod (F**2) (poly X [L0x7fffffffb2c2,L0x7fffffffb2e2])
          [Q, X**2 - 17**161] /\
    eqmod (F**2) (poly X [L0x7fffffffb302,L0x7fffffffb322])
          [Q, X**2 - 17** 97] /\
    eqmod (F**2) (poly X [L0x7fffffffb342,L0x7fffffffb362])
          [Q, X**2 - 17**225] /\
    eqmod (F**2) (poly X [L0x7fffffffb284,L0x7fffffffb2a4])
          [Q, X**2 - 17** 17] /\
    eqmod (F**2) (poly X [L0x7fffffffb2c4,L0x7fffffffb2e4])
          [Q, X**2 - 17**145] /\
    eqmod (F**2) (poly X [L0x7fffffffb304,L0x7fffffffb324])
          [Q, X**2 - 17** 81] /\
    eqmod (F**2) (poly X [L0x7fffffffb344,L0x7fffffffb364])
          [Q, X**2 - 17**209] /\
    eqmod (F**2) (poly X [L0x7fffffffb286,L0x7fffffffb2a6])
          [Q, X**2 - 17** 49] /\
    eqmod (F**2) (poly X [L0x7fffffffb2c6,L0x7fffffffb2e6])
          [Q, X**2 - 17**177] /\
    eqmod (F**2) (poly X [L0x7fffffffb306,L0x7fffffffb326])
          [Q, X**2 - 17**113] /\
    eqmod (F**2) (poly X [L0x7fffffffb346,L0x7fffffffb366])
          [Q, X**2 - 17**241] /\
    eqmod (F**2) (poly X [L0x7fffffffb288,L0x7fffffffb2a8])
          [Q, X**2 - 17**  9] /\
    eqmod (F**2) (poly X [L0x7fffffffb2c8,L0x7fffffffb2e8])
          [Q, X**2 - 17**137] /\
    eqmod (F**2) (poly X [L0x7fffffffb308,L0x7fffffffb328])
          [Q, X**2 - 17** 73] /\
    eqmod (F**2) (poly X [L0x7fffffffb348,L0x7fffffffb368])
          [Q, X**2 - 17**201] /\
    eqmod (F**2) (poly X [L0x7fffffffb28a,L0x7fffffffb2aa])
          [Q, X**2 - 17** 41] /\
    eqmod (F**2) (poly X [L0x7fffffffb2ca,L0x7fffffffb2ea])
          [Q, X**2 - 17**169] /\
    eqmod (F**2) (poly X [L0x7fffffffb30a,L0x7fffffffb32a])
          [Q, X**2 - 17**105] /\
    eqmod (F**2) (poly X [L0x7fffffffb34a,L0x7fffffffb36a])
          [Q, X**2 - 17**233] /\
    eqmod (F**2) (poly X [L0x7fffffffb28c,L0x7fffffffb2ac])
          [Q, X**2 - 17** 25] /\
    eqmod (F**2) (poly X [L0x7fffffffb2cc,L0x7fffffffb2ec])
          [Q, X**2 - 17**153] /\
    eqmod (F**2) (poly X [L0x7fffffffb30c,L0x7fffffffb32c])
          [Q, X**2 - 17** 89] /\
    eqmod (F**2) (poly X [L0x7fffffffb34c,L0x7fffffffb36c])
          [Q, X**2 - 17**217] /\
    eqmod (F**2) (poly X [L0x7fffffffb28e,L0x7fffffffb2ae])
          [Q, X**2 - 17** 57] /\
    eqmod (F**2) (poly X [L0x7fffffffb2ce,L0x7fffffffb2ee])
          [Q, X**2 - 17**185] /\
    eqmod (F**2) (poly X [L0x7fffffffb30e,L0x7fffffffb32e])
          [Q, X**2 - 17**121] /\
    eqmod (F**2) (poly X [L0x7fffffffb34e,L0x7fffffffb36e])
          [Q, X**2 - 17**249] /\
    eqmod (F**2) (poly X [L0x7fffffffb290,L0x7fffffffb2b0])
          [Q, X**2 - 17**  5] /\
    eqmod (F**2) (poly X [L0x7fffffffb2d0,L0x7fffffffb2f0])
          [Q, X**2 - 17**133] /\
    eqmod (F**2) (poly X [L0x7fffffffb310,L0x7fffffffb330])
          [Q, X**2 - 17** 69] /\
    eqmod (F**2) (poly X [L0x7fffffffb350,L0x7fffffffb370])
          [Q, X**2 - 17**197] /\
    eqmod (F**2) (poly X [L0x7fffffffb292,L0x7fffffffb2b2])
          [Q, X**2 - 17** 37] /\
    eqmod (F**2) (poly X [L0x7fffffffb2d2,L0x7fffffffb2f2])
          [Q, X**2 - 17**165] /\
    eqmod (F**2) (poly X [L0x7fffffffb312,L0x7fffffffb332])
          [Q, X**2 - 17**101] /\
    eqmod (F**2) (poly X [L0x7fffffffb352,L0x7fffffffb372])
          [Q, X**2 - 17**229] /\
    eqmod (F**2) (poly X [L0x7fffffffb294,L0x7fffffffb2b4])
          [Q, X**2 - 17** 21] /\
    eqmod (F**2) (poly X [L0x7fffffffb2d4,L0x7fffffffb2f4])
          [Q, X**2 - 17**149] /\
    eqmod (F**2) (poly X [L0x7fffffffb314,L0x7fffffffb334])
          [Q, X**2 - 17** 85] /\
    eqmod (F**2) (poly X [L0x7fffffffb354,L0x7fffffffb374])
          [Q, X**2 - 17**213] /\
    eqmod (F**2) (poly X [L0x7fffffffb296,L0x7fffffffb2b6])
          [Q, X**2 - 17** 53] /\
    eqmod (F**2) (poly X [L0x7fffffffb2d6,L0x7fffffffb2f6])
          [Q, X**2 - 17**181] /\
    eqmod (F**2) (poly X [L0x7fffffffb316,L0x7fffffffb336])
          [Q, X**2 - 17**117] /\
    eqmod (F**2) (poly X [L0x7fffffffb356,L0x7fffffffb376])
          [Q, X**2 - 17**245] /\
    eqmod (F**2) (poly X [L0x7fffffffb298,L0x7fffffffb2b8])
          [Q, X**2 - 17** 13] /\
    eqmod (F**2) (poly X [L0x7fffffffb2d8,L0x7fffffffb2f8])
          [Q, X**2 - 17**141] /\
    eqmod (F**2) (poly X [L0x7fffffffb318,L0x7fffffffb338])
          [Q, X**2 - 17** 77] /\
    eqmod (F**2) (poly X [L0x7fffffffb358,L0x7fffffffb378])
          [Q, X**2 - 17**205] /\
    eqmod (F**2) (poly X [L0x7fffffffb29a,L0x7fffffffb2ba])
          [Q, X**2 - 17** 45] /\
    eqmod (F**2) (poly X [L0x7fffffffb2da,L0x7fffffffb2fa])
          [Q, X**2 - 17**173] /\
    eqmod (F**2) (poly X [L0x7fffffffb31a,L0x7fffffffb33a])
          [Q, X**2 - 17**109] /\
    eqmod (F**2) (poly X [L0x7fffffffb35a,L0x7fffffffb37a])
          [Q, X**2 - 17**237] /\
    eqmod (F**2) (poly X [L0x7fffffffb29c,L0x7fffffffb2bc])
          [Q, X**2 - 17** 29] /\
    eqmod (F**2) (poly X [L0x7fffffffb2dc,L0x7fffffffb2fc])
          [Q, X**2 - 17**157] /\
    eqmod (F**2) (poly X [L0x7fffffffb31c,L0x7fffffffb33c])
          [Q, X**2 - 17** 93] /\
    eqmod (F**2) (poly X [L0x7fffffffb35c,L0x7fffffffb37c])
          [Q, X**2 - 17**221] /\
    eqmod (F**2) (poly X [L0x7fffffffb29e,L0x7fffffffb2be])
          [Q, X**2 - 17** 61] /\
    eqmod (F**2) (poly X [L0x7fffffffb2de,L0x7fffffffb2fe])
          [Q, X**2 - 17**189] /\
    eqmod (F**2) (poly X [L0x7fffffffb31e,L0x7fffffffb33e])
          [Q, X**2 - 17**125] /\
    eqmod (F**2) (poly X [L0x7fffffffb35e,L0x7fffffffb37e])
          [Q, X**2 - 17**253]
&&  Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb280,L0x7fffffffb282,L0x7fffffffb284,L0x7fffffffb286] /\
    [L0x7fffffffb280,L0x7fffffffb282,L0x7fffffffb284,L0x7fffffffb286]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb288,L0x7fffffffb28a,L0x7fffffffb28c,L0x7fffffffb28e] /\
    [L0x7fffffffb288,L0x7fffffffb28a,L0x7fffffffb28c,L0x7fffffffb28e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb290,L0x7fffffffb292,L0x7fffffffb294,L0x7fffffffb296] /\
    [L0x7fffffffb290,L0x7fffffffb292,L0x7fffffffb294,L0x7fffffffb296]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb298,L0x7fffffffb29a,L0x7fffffffb29c,L0x7fffffffb29e] /\
    [L0x7fffffffb298,L0x7fffffffb29a,L0x7fffffffb29c,L0x7fffffffb29e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2a0,L0x7fffffffb2a2,L0x7fffffffb2a4,L0x7fffffffb2a6] /\
    [L0x7fffffffb2a0,L0x7fffffffb2a2,L0x7fffffffb2a4,L0x7fffffffb2a6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2a8,L0x7fffffffb2aa,L0x7fffffffb2ac,L0x7fffffffb2ae] /\
    [L0x7fffffffb2a8,L0x7fffffffb2aa,L0x7fffffffb2ac,L0x7fffffffb2ae]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2b0,L0x7fffffffb2b2,L0x7fffffffb2b4,L0x7fffffffb2b6] /\
    [L0x7fffffffb2b0,L0x7fffffffb2b2,L0x7fffffffb2b4,L0x7fffffffb2b6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2b8,L0x7fffffffb2ba,L0x7fffffffb2bc,L0x7fffffffb2be] /\
    [L0x7fffffffb2b8,L0x7fffffffb2ba,L0x7fffffffb2bc,L0x7fffffffb2be]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2c0,L0x7fffffffb2c2,L0x7fffffffb2c4,L0x7fffffffb2c6] /\
    [L0x7fffffffb2c0,L0x7fffffffb2c2,L0x7fffffffb2c4,L0x7fffffffb2c6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2c8,L0x7fffffffb2ca,L0x7fffffffb2cc,L0x7fffffffb2ce] /\
    [L0x7fffffffb2c8,L0x7fffffffb2ca,L0x7fffffffb2cc,L0x7fffffffb2ce]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2d0,L0x7fffffffb2d2,L0x7fffffffb2d4,L0x7fffffffb2d6] /\
    [L0x7fffffffb2d0,L0x7fffffffb2d2,L0x7fffffffb2d4,L0x7fffffffb2d6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2d8,L0x7fffffffb2da,L0x7fffffffb2dc,L0x7fffffffb2de] /\
    [L0x7fffffffb2d8,L0x7fffffffb2da,L0x7fffffffb2dc,L0x7fffffffb2de]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2e0,L0x7fffffffb2e2,L0x7fffffffb2e4,L0x7fffffffb2e6] /\
    [L0x7fffffffb2e0,L0x7fffffffb2e2,L0x7fffffffb2e4,L0x7fffffffb2e6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2e8,L0x7fffffffb2ea,L0x7fffffffb2ec,L0x7fffffffb2ee] /\
    [L0x7fffffffb2e8,L0x7fffffffb2ea,L0x7fffffffb2ec,L0x7fffffffb2ee]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2f0,L0x7fffffffb2f2,L0x7fffffffb2f4,L0x7fffffffb2f6] /\
    [L0x7fffffffb2f0,L0x7fffffffb2f2,L0x7fffffffb2f4,L0x7fffffffb2f6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2f8,L0x7fffffffb2fa,L0x7fffffffb2fc,L0x7fffffffb2fe] /\
    [L0x7fffffffb2f8,L0x7fffffffb2fa,L0x7fffffffb2fc,L0x7fffffffb2fe]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb300,L0x7fffffffb302,L0x7fffffffb304,L0x7fffffffb306] /\
    [L0x7fffffffb300,L0x7fffffffb302,L0x7fffffffb304,L0x7fffffffb306]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb308,L0x7fffffffb30a,L0x7fffffffb30c,L0x7fffffffb30e] /\
    [L0x7fffffffb308,L0x7fffffffb30a,L0x7fffffffb30c,L0x7fffffffb30e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb310,L0x7fffffffb312,L0x7fffffffb314,L0x7fffffffb316] /\
    [L0x7fffffffb310,L0x7fffffffb312,L0x7fffffffb314,L0x7fffffffb316]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb318,L0x7fffffffb31a,L0x7fffffffb31c,L0x7fffffffb31e] /\
    [L0x7fffffffb318,L0x7fffffffb31a,L0x7fffffffb31c,L0x7fffffffb31e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb320,L0x7fffffffb322,L0x7fffffffb324,L0x7fffffffb326] /\
    [L0x7fffffffb320,L0x7fffffffb322,L0x7fffffffb324,L0x7fffffffb326]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb328,L0x7fffffffb32a,L0x7fffffffb32c,L0x7fffffffb32e] /\
    [L0x7fffffffb328,L0x7fffffffb32a,L0x7fffffffb32c,L0x7fffffffb32e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb330,L0x7fffffffb332,L0x7fffffffb334,L0x7fffffffb336] /\
    [L0x7fffffffb330,L0x7fffffffb332,L0x7fffffffb334,L0x7fffffffb336]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb338,L0x7fffffffb33a,L0x7fffffffb33c,L0x7fffffffb33e] /\
    [L0x7fffffffb338,L0x7fffffffb33a,L0x7fffffffb33c,L0x7fffffffb33e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb340,L0x7fffffffb342,L0x7fffffffb344,L0x7fffffffb346] /\
    [L0x7fffffffb340,L0x7fffffffb342,L0x7fffffffb344,L0x7fffffffb346]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb348,L0x7fffffffb34a,L0x7fffffffb34c,L0x7fffffffb34e] /\
    [L0x7fffffffb348,L0x7fffffffb34a,L0x7fffffffb34c,L0x7fffffffb34e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb350,L0x7fffffffb352,L0x7fffffffb354,L0x7fffffffb356] /\
    [L0x7fffffffb350,L0x7fffffffb352,L0x7fffffffb354,L0x7fffffffb356]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb358,L0x7fffffffb35a,L0x7fffffffb35c,L0x7fffffffb35e] /\
    [L0x7fffffffb358,L0x7fffffffb35a,L0x7fffffffb35c,L0x7fffffffb35e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb360,L0x7fffffffb362,L0x7fffffffb364,L0x7fffffffb366] /\
    [L0x7fffffffb360,L0x7fffffffb362,L0x7fffffffb364,L0x7fffffffb366]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb368,L0x7fffffffb36a,L0x7fffffffb36c,L0x7fffffffb36e] /\
    [L0x7fffffffb368,L0x7fffffffb36a,L0x7fffffffb36c,L0x7fffffffb36e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb370,L0x7fffffffb372,L0x7fffffffb374,L0x7fffffffb376] /\
    [L0x7fffffffb370,L0x7fffffffb372,L0x7fffffffb374,L0x7fffffffb376]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb378,L0x7fffffffb37a,L0x7fffffffb37c,L0x7fffffffb37e] /\
    [L0x7fffffffb378,L0x7fffffffb37a,L0x7fffffffb37c,L0x7fffffffb37e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q];

(* vmovdqa 0x320(%rsi),%ymm15                      #! EA = L0x5555556387c0; Value = 0x0313031303130313; PC = 0x55555556ebb8 *)
mov %ymm15
    [L0x5555556387c0, L0x5555556387c2, L0x5555556387c4, L0x5555556387c6,
     L0x5555556387c8, L0x5555556387ca, L0x5555556387cc, L0x5555556387ce,
     L0x5555556387d0, L0x5555556387d2, L0x5555556387d4, L0x5555556387d6,
     L0x5555556387d8, L0x5555556387da, L0x5555556387dc, L0x5555556387de];
(* vmovdqa 0x180(%rdi),%ymm8                       #! EA = L0x7fffffffb400; Value = 0x00000000063f0640; PC = 0x55555556ebc0 *)
mov %ymm8
    [L0x7fffffffb400, L0x7fffffffb402, L0x7fffffffb404, L0x7fffffffb406,
     L0x7fffffffb408, L0x7fffffffb40a, L0x7fffffffb40c, L0x7fffffffb40e,
     L0x7fffffffb410, L0x7fffffffb412, L0x7fffffffb414, L0x7fffffffb416,
     L0x7fffffffb418, L0x7fffffffb41a, L0x7fffffffb41c, L0x7fffffffb41e];
(* vmovdqa 0x1a0(%rdi),%ymm9                       #! EA = L0x7fffffffb420; Value = 0xf9bf0640ff7f0640; PC = 0x55555556ebc8 *)
mov %ymm9
    [L0x7fffffffb420, L0x7fffffffb422, L0x7fffffffb424, L0x7fffffffb426,
     L0x7fffffffb428, L0x7fffffffb42a, L0x7fffffffb42c, L0x7fffffffb42e,
     L0x7fffffffb430, L0x7fffffffb432, L0x7fffffffb434, L0x7fffffffb436,
     L0x7fffffffb438, L0x7fffffffb43a, L0x7fffffffb43c, L0x7fffffffb43e];
(* vmovdqa 0x1c0(%rdi),%ymm10                      #! EA = L0x7fffffffb440; Value = 0x0080000200010001; PC = 0x55555556ebd0 *)
mov %ymm10
    [L0x7fffffffb440, L0x7fffffffb442, L0x7fffffffb444, L0x7fffffffb446,
     L0x7fffffffb448, L0x7fffffffb44a, L0x7fffffffb44c, L0x7fffffffb44e,
     L0x7fffffffb450, L0x7fffffffb452, L0x7fffffffb454, L0x7fffffffb456,
     L0x7fffffffb458, L0x7fffffffb45a, L0x7fffffffb45c, L0x7fffffffb45e];
(* vmovdqa 0x1e0(%rdi),%ymm11                      #! EA = L0x7fffffffb460; Value = 0xf9c0ffff00810000; PC = 0x55555556ebd8 *)
mov %ymm11
    [L0x7fffffffb460, L0x7fffffffb462, L0x7fffffffb464, L0x7fffffffb466,
     L0x7fffffffb468, L0x7fffffffb46a, L0x7fffffffb46c, L0x7fffffffb46e,
     L0x7fffffffb470, L0x7fffffffb472, L0x7fffffffb474, L0x7fffffffb476,
     L0x7fffffffb478, L0x7fffffffb47a, L0x7fffffffb47c, L0x7fffffffb47e];
(* vmovdqa 0x340(%rsi),%ymm2                       #! EA = L0x5555556387e0; Value = 0xfa13fa13fa13fa13; PC = 0x55555556ebe0 *)
mov %ymm2
    [L0x5555556387e0, L0x5555556387e2, L0x5555556387e4, L0x5555556387e6,
     L0x5555556387e8, L0x5555556387ea, L0x5555556387ec, L0x5555556387ee,
     L0x5555556387f0, L0x5555556387f2, L0x5555556387f4, L0x5555556387f6,
     L0x5555556387f8, L0x5555556387fa, L0x5555556387fc, L0x5555556387fe];
(* vpmullw %ymm15,%ymm8,%ymm12                     #! PC = 0x55555556ebe8 *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm13                     #! PC = 0x55555556ebed *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm14                    #! PC = 0x55555556ebf2 *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556ebf7 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556ebfc *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556ec00 *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556ec04 *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556ec08 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vmovdqa 0x100(%rdi),%ymm4                       #! EA = L0x7fffffffb380; Value = 0xff80f9c00000f9c0; PC = 0x55555556ec0c *)
mov %ymm4
    [L0x7fffffffb380, L0x7fffffffb382, L0x7fffffffb384, L0x7fffffffb386,
     L0x7fffffffb388, L0x7fffffffb38a, L0x7fffffffb38c, L0x7fffffffb38e,
     L0x7fffffffb390, L0x7fffffffb392, L0x7fffffffb394, L0x7fffffffb396,
     L0x7fffffffb398, L0x7fffffffb39a, L0x7fffffffb39c, L0x7fffffffb39e];
(* vmovdqa 0x120(%rdi),%ymm5                       #! EA = L0x7fffffffb3a0; Value = 0x0001f9c006410001; PC = 0x55555556ec14 *)
mov %ymm5
    [L0x7fffffffb3a0, L0x7fffffffb3a2, L0x7fffffffb3a4, L0x7fffffffb3a6,
     L0x7fffffffb3a8, L0x7fffffffb3aa, L0x7fffffffb3ac, L0x7fffffffb3ae,
     L0x7fffffffb3b0, L0x7fffffffb3b2, L0x7fffffffb3b4, L0x7fffffffb3b6,
     L0x7fffffffb3b8, L0x7fffffffb3ba, L0x7fffffffb3bc, L0x7fffffffb3be];
(* vmovdqa 0x140(%rdi),%ymm6                       #! EA = L0x7fffffffb3c0; Value = 0xf9c10000ff80f9c0; PC = 0x55555556ec1c *)
mov %ymm6
    [L0x7fffffffb3c0, L0x7fffffffb3c2, L0x7fffffffb3c4, L0x7fffffffb3c6,
     L0x7fffffffb3c8, L0x7fffffffb3ca, L0x7fffffffb3cc, L0x7fffffffb3ce,
     L0x7fffffffb3d0, L0x7fffffffb3d2, L0x7fffffffb3d4, L0x7fffffffb3d6,
     L0x7fffffffb3d8, L0x7fffffffb3da, L0x7fffffffb3dc, L0x7fffffffb3de];
(* vmovdqa 0x160(%rdi),%ymm7                       #! EA = L0x7fffffffb3e0; Value = 0x0001ffff063fffff; PC = 0x55555556ec24 *)
mov %ymm7
    [L0x7fffffffb3e0, L0x7fffffffb3e2, L0x7fffffffb3e4, L0x7fffffffb3e6,
     L0x7fffffffb3e8, L0x7fffffffb3ea, L0x7fffffffb3ec, L0x7fffffffb3ee,
     L0x7fffffffb3f0, L0x7fffffffb3f2, L0x7fffffffb3f4, L0x7fffffffb3f6,
     L0x7fffffffb3f8, L0x7fffffffb3fa, L0x7fffffffb3fc, L0x7fffffffb3fe];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556ec2c *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm8;
assume %red = %mulLymm8 && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556ec30 *)
smull %ymm13 %red %ymm13 %ymm0;
assert true && %red = %mulLymm9;
assume %red = %mulLymm9 && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556ec34 *)
smull %ymm14 %red %ymm14 %ymm0;
assert true && %red = %mulLymm10;
assume %red = %mulLymm10 && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556ec38 *)
smull %ymm15 %red %ymm15 %ymm0;
assert true && %red = %mulLymm11;
assume %red = %mulLymm11 && true;
(* vpaddw %ymm8,%ymm4,%ymm3                        #! PC = 0x55555556ec3c *)
add %ymm3 %ymm8 %ymm4;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556ec41 *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x55555556ec46 *)
add %ymm4 %ymm9 %ymm5;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556ec4b *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x55555556ec50 *)
add %ymm5 %ymm10 %ymm6;
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x55555556ec55 *)
sub %ymm10 %ymm6 %ymm10;
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x55555556ec5a *)
add %ymm6 %ymm11 %ymm7;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556ec5f *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556ec64 *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556ec69 *)
add %ymm8 %ymm12 %ymm8;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556ec6e *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x55555556ec73 *)
add %ymm9 %ymm13 %ymm9;
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556ec78 *)
sub %ymm5 %ymm5 %ymm14;
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556ec7d *)
add %ymm10 %ymm14 %ymm10;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556ec82 *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556ec87 *)
add %ymm11 %ymm15 %ymm11;

(**************** LEVEL 1 1 ****************)
(* CUT default 7 *)

cut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (F**2) (poly X [*%ymm3, *%ymm4, *%ymm5, *%ymm6])
          [Q, X**64 - 17** 96] /\
    eqmod (F**2) (poly X [*%ymm8, *%ymm9, *%ymm10, *%ymm11])
          [Q, X**64 - 17**224]
    prove with [cuts [0]]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,
     3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ]<s
    %ymm3 /\ %ymm3 <s
    [3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,
     3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q] /\
    [3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,
     3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ]<s
    %ymm4 /\ %ymm4 <s
    [3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,
     3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q] /\
    [3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,
     3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ]<s
    %ymm5 /\ %ymm5 <s
    [3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,
     3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q] /\
    [3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,
     3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ]<s
    %ymm6 /\ %ymm6 <s
    [3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,
     3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q] /\
    [3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,
     3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ]<s
    %ymm8 /\ %ymm8 <s
    [3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,
     3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q] /\
    [3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,
     3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ]<s
    %ymm9 /\ %ymm9 <s
    [3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,
     3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q] /\
    [3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,
     3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ]<s
    %ymm10 /\ %ymm10 <s
    [3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,
     3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q] /\
    [3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,
     3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ,3@16*NQ]<s
    %ymm11 /\ %ymm11 <s
    [3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,
     3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q,3@16*Q]
    prove with [cuts [0]];

(* vperm2i128 $0x20,%ymm10,%ymm5,%ymm7             #! PC = 0x55555556ec8c *)
mov %ymm7
    [%ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3],
     %ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7],
     %ymm10[0],%ymm10[1],%ymm10[2],%ymm10[3],
     %ymm10[4],%ymm10[5],%ymm10[6],%ymm10[7]];
(* vperm2i128 $0x31,%ymm10,%ymm5,%ymm10            #! PC = 0x55555556ec92 *)
mov %ymm10
    [%ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11],
     %ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15],
     %ymm10[8],%ymm10[9],%ymm10[10],%ymm10[11],
     %ymm10[12],%ymm10[13],%ymm10[14],%ymm10[15]];
(* vperm2i128 $0x20,%ymm11,%ymm6,%ymm5             #! PC = 0x55555556ec98 *)
mov %ymm5
    [%ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],
     %ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
     %ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3],
     %ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7]];
(* vperm2i128 $0x31,%ymm11,%ymm6,%ymm11            #! PC = 0x55555556ec9e *)
mov %ymm11
    [%ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],
     %ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
     %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11],
     %ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15]];
(* vmovdqa 0x360(%rsi),%ymm15                      #! EA = L0x555555638800; Value = 0x6e1f6e1f6e1f6e1f; PC = 0x55555556eca4 *)
mov %ymm15
    [L0x555555638800, L0x555555638802, L0x555555638804, L0x555555638806,
     L0x555555638808, L0x55555563880a, L0x55555563880c, L0x55555563880e,
     L0x555555638810, L0x555555638812, L0x555555638814, L0x555555638816,
     L0x555555638818, L0x55555563881a, L0x55555563881c, L0x55555563881e];
(* vmovdqa 0x380(%rsi),%ymm2                       #! EA = L0x555555638820; Value = 0x011f011f011f011f; PC = 0x55555556ecac *)
mov %ymm2
    [L0x555555638820, L0x555555638822, L0x555555638824, L0x555555638826,
     L0x555555638828, L0x55555563882a, L0x55555563882c, L0x55555563882e,
     L0x555555638830, L0x555555638832, L0x555555638834, L0x555555638836,
     L0x555555638838, L0x55555563883a, L0x55555563883c, L0x55555563883e];
(* vpmullw %ymm15,%ymm7,%ymm12                     #! PC = 0x55555556ecb4 *)
smull %mulHymm7 %mulL %ymm15 %ymm7;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm13                    #! PC = 0x55555556ecb9 *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm5,%ymm14                     #! PC = 0x55555556ecbe *)
smull %mulHymm5 %mulL %ymm15 %ymm5;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556ecc3 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556ecc8 *)
smull %ymm7 %mulLymm7 %ymm2 %ymm7;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556eccc *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556ecd0 *)
smull %ymm5 %mulLymm5 %ymm2 %ymm5;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556ecd4 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vperm2i128 $0x20,%ymm8,%ymm3,%ymm6              #! PC = 0x55555556ecd8 *)
mov %ymm6
    [%ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],
     %ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7],
     %ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],
     %ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7]];
(* vperm2i128 $0x31,%ymm8,%ymm3,%ymm8              #! PC = 0x55555556ecde *)
mov %ymm8
    [%ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11],
     %ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15],
     %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],
     %ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15]];
(* vperm2i128 $0x20,%ymm9,%ymm4,%ymm3              #! PC = 0x55555556ece4 *)
mov %ymm3
    [%ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3],
     %ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7],
     %ymm9[0],%ymm9[1],%ymm9[2],%ymm9[3],
     %ymm9[4],%ymm9[5],%ymm9[6],%ymm9[7]];
(* vperm2i128 $0x31,%ymm9,%ymm4,%ymm9              #! PC = 0x55555556ecea *)
mov %ymm9
    [%ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11],
     %ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15],
     %ymm9[8],%ymm9[9],%ymm9[10],%ymm9[11],
     %ymm9[12],%ymm9[13],%ymm9[14],%ymm9[15]];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556ecf0 *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm7;
assume %red = %mulLymm7 && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556ecf4 *)
smull %ymm13 %red %ymm13 %ymm0;
assert true && %red = %mulLymm10;
assume %red = %mulLymm10 && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556ecf8 *)
smull %ymm14 %red %ymm14 %ymm0;
assert true && %red = %mulLymm5;
assume %red = %mulLymm5 && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556ecfc *)
smull %ymm15 %red %ymm15 %ymm0;
assert true && %red = %mulLymm11;
assume %red = %mulLymm11 && true;
(* vpaddw %ymm7,%ymm6,%ymm4                        #! PC = 0x55555556ed00 *)
add %ymm4 %ymm7 %ymm6;
(* vpsubw %ymm7,%ymm6,%ymm7                        #! PC = 0x55555556ed04 *)
sub %ymm7 %ymm6 %ymm7;
(* vpaddw %ymm10,%ymm8,%ymm6                       #! PC = 0x55555556ed08 *)
add %ymm6 %ymm10 %ymm8;
(* vpsubw %ymm10,%ymm8,%ymm10                      #! PC = 0x55555556ed0d *)
sub %ymm10 %ymm8 %ymm10;
(* vpaddw %ymm5,%ymm3,%ymm8                        #! PC = 0x55555556ed12 *)
add %ymm8 %ymm5 %ymm3;
(* vpsubw %ymm5,%ymm3,%ymm5                        #! PC = 0x55555556ed16 *)
sub %ymm5 %ymm3 %ymm5;
(* vpaddw %ymm11,%ymm9,%ymm3                       #! PC = 0x55555556ed1a *)
add %ymm3 %ymm11 %ymm9;
(* vpsubw %ymm11,%ymm9,%ymm11                      #! PC = 0x55555556ed1f *)
sub %ymm11 %ymm9 %ymm11;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555556ed24 *)
sub %ymm4 %ymm4 %ymm12;
(* vpaddw %ymm12,%ymm7,%ymm7                       #! PC = 0x55555556ed29 *)
add %ymm7 %ymm12 %ymm7;
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x55555556ed2e *)
sub %ymm6 %ymm6 %ymm13;
(* vpaddw %ymm13,%ymm10,%ymm10                     #! PC = 0x55555556ed33 *)
add %ymm10 %ymm13 %ymm10;
(* vpsubw %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556ed38 *)
sub %ymm8 %ymm8 %ymm14;
(* vpaddw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556ed3d *)
add %ymm5 %ymm14 %ymm5;
(* vpsubw %ymm15,%ymm3,%ymm3                       #! PC = 0x55555556ed42 *)
sub %ymm3 %ymm3 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556ed47 *)
add %ymm11 %ymm15 %ymm11;

(**************** LEVEL 2 1 ****************)
(* CUT default 8 *)

cut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (F**2)
          (poly X [%ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3],
                   %ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7],
                   %ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],
                   %ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
                   %ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],
                   %ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
                   %ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],
                   %ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7]])
          [Q, X**32 - 17** 48] /\
    eqmod (F**2)
          (poly X [%ymm7[0],%ymm7[1],%ymm7[2],%ymm7[3],
                   %ymm7[4],%ymm7[5],%ymm7[6],%ymm7[7],
                   %ymm10[0],%ymm10[1],%ymm10[2],%ymm10[3],
                   %ymm10[4],%ymm10[5],%ymm10[6],%ymm10[7],
                   %ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3],
                   %ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7],
                   %ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3],
                   %ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7]])
          [Q, X**32 - 17**176] /\
    eqmod (F**2)
          (poly X [%ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11],
                   %ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15],
                   %ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],
                   %ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
                   %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],
                   %ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15],
                   %ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11],
                   %ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15]])
          [Q, X**32 - 17**112] /\
    eqmod (F**2)
          (poly X [%ymm7[8],%ymm7[9],%ymm7[10],%ymm7[11],
                   %ymm7[12],%ymm7[13],%ymm7[14],%ymm7[15],
                   %ymm10[8],%ymm10[9],%ymm10[10],%ymm10[11],
                   %ymm10[12],%ymm10[13],%ymm10[14],%ymm10[15],
                   %ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11],
                   %ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15],
                   %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11],
                   %ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15]])
          [Q, X**32 - 17**240]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,
     4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s
    %ymm4 /\ %ymm4 <s
    [4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,
     4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,
     4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s
    %ymm6 /\ %ymm6 <s
    [4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,
     4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,
     4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s
    %ymm8 /\ %ymm8 <s
    [4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,
     4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,
     4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s
    %ymm3 /\ %ymm3 <s
    [4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,
     4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,
     4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s
    %ymm7 /\ %ymm7 <s
    [4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,
     4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,
     4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s
    %ymm10 /\ %ymm10 <s
    [4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,
     4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,
     4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s
    %ymm5 /\ %ymm5 <s
    [4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,
     4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q] /\
    [4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,
     4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ,4@16*NQ]<s
    %ymm11 /\ %ymm11 <s
    [4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,
     4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q,4@16*Q];

(* vpunpcklqdq %ymm5,%ymm8,%ymm9                   #! PC = 0x55555556ed4c *)
mov %ymm9
    [%ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],
     %ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3],
     %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],
     %ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11]];
(* vpunpckhqdq %ymm5,%ymm8,%ymm5                   #! PC = 0x55555556ed50 *)
mov %ymm5
    [%ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
     %ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7],
     %ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15],
     %ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15]];
(* vpunpcklqdq %ymm11,%ymm3,%ymm8                  #! PC = 0x55555556ed54 *)
mov %ymm8
    [%ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],
     %ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3],
     %ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11],
     %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11]];
(* vpunpckhqdq %ymm11,%ymm3,%ymm11                 #! PC = 0x55555556ed59 *)
mov %ymm11
    [%ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7],
     %ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7],
     %ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15],
     %ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15]];
(* vmovdqa 0x3a0(%rsi),%ymm15                      #! EA = L0x555555638840; Value = 0x29c229c229c229c2; PC = 0x55555556ed5e *)
mov %ymm15
    [L0x555555638840, L0x555555638842, L0x555555638844, L0x555555638846,
     L0x555555638848, L0x55555563884a, L0x55555563884c, L0x55555563884e,
     L0x555555638850, L0x555555638852, L0x555555638854, L0x555555638856,
     L0x555555638858, L0x55555563885a, L0x55555563885c, L0x55555563885e];
(* vmovdqa 0x3c0(%rsi),%ymm2                       #! EA = L0x555555638860; Value = 0x03c203c203c203c2; PC = 0x55555556ed66 *)
mov %ymm2
    [L0x555555638860, L0x555555638862, L0x555555638864, L0x555555638866,
     L0x555555638868, L0x55555563886a, L0x55555563886c, L0x55555563886e,
     L0x555555638870, L0x555555638872, L0x555555638874, L0x555555638876,
     L0x555555638878, L0x55555563887a, L0x55555563887c, L0x55555563887e];
(* vpmullw %ymm15,%ymm9,%ymm12                     #! PC = 0x55555556ed6e *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm5,%ymm13                     #! PC = 0x55555556ed73 *)
smull %mulHymm5 %mulL %ymm15 %ymm5;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm8,%ymm14                     #! PC = 0x55555556ed78 *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556ed7d *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556ed82 *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556ed86 *)
smull %ymm5 %mulLymm5 %ymm2 %ymm5;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556ed8a *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556ed8e *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vpunpcklqdq %ymm7,%ymm4,%ymm3                   #! PC = 0x55555556ed92 *)
mov %ymm3
    [%ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3],
     %ymm7[0],%ymm7[1],%ymm7[2],%ymm7[3],
     %ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11],
     %ymm7[8],%ymm7[9],%ymm7[10],%ymm7[11]];
(* vpunpckhqdq %ymm7,%ymm4,%ymm7                   #! PC = 0x55555556ed96 *)
mov %ymm7
    [%ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7],
     %ymm7[4],%ymm7[5],%ymm7[6],%ymm7[7],
     %ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15],
     %ymm7[12],%ymm7[13],%ymm7[14],%ymm7[15]];
(* vpunpcklqdq %ymm10,%ymm6,%ymm4                  #! PC = 0x55555556ed9a *)
mov %ymm4
    [%ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],
     %ymm10[0],%ymm10[1],%ymm10[2],%ymm10[3],
     %ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],
     %ymm10[8],%ymm10[9],%ymm10[10],%ymm10[11]];
(* vpunpckhqdq %ymm10,%ymm6,%ymm10                 #! PC = 0x55555556ed9f *)
mov %ymm10
    [%ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
     %ymm10[4],%ymm10[5],%ymm10[6],%ymm10[7],
     %ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
     %ymm10[12],%ymm10[13],%ymm10[14],%ymm10[15]];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556eda4 *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm9;
assume %red = %mulLymm9 && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556eda8 *)
smull %ymm13 %red %ymm13 %ymm0;
assert true && %red = %mulLymm5;
assume %red = %mulLymm5 && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556edac *)
smull %ymm14 %red %ymm14 %ymm0;
assert true && %red = %mulLymm8;
assume %red = %mulLymm8 && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556edb0 *)
smull %ymm15 %red %ymm15 %ymm0;
assert true && %red = %mulLymm11;
assume %red = %mulLymm11 && true;
(* vpaddw %ymm9,%ymm3,%ymm6                        #! PC = 0x55555556edb4 *)
add %ymm6 %ymm9 %ymm3;
(* vpsubw %ymm9,%ymm3,%ymm9                        #! PC = 0x55555556edb9 *)
sub %ymm9 %ymm3 %ymm9;
(* vpaddw %ymm5,%ymm7,%ymm3                        #! PC = 0x55555556edbe *)
add %ymm3 %ymm5 %ymm7;
(* vpsubw %ymm5,%ymm7,%ymm5                        #! PC = 0x55555556edc2 *)
sub %ymm5 %ymm7 %ymm5;
(* vpaddw %ymm8,%ymm4,%ymm7                        #! PC = 0x55555556edc6 *)
add %ymm7 %ymm8 %ymm4;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556edcb *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm11,%ymm10,%ymm4                      #! PC = 0x55555556edd0 *)
add %ymm4 %ymm11 %ymm10;
(* vpsubw %ymm11,%ymm10,%ymm11                     #! PC = 0x55555556edd5 *)
sub %ymm11 %ymm10 %ymm11;
(* vpsubw %ymm12,%ymm6,%ymm6                       #! PC = 0x55555556edda *)
sub %ymm6 %ymm6 %ymm12;
(* vpaddw %ymm12,%ymm9,%ymm9                       #! PC = 0x55555556eddf *)
add %ymm9 %ymm12 %ymm9;
(* vpsubw %ymm13,%ymm3,%ymm3                       #! PC = 0x55555556ede4 *)
sub %ymm3 %ymm3 %ymm13;
(* vpaddw %ymm13,%ymm5,%ymm5                       #! PC = 0x55555556ede9 *)
add %ymm5 %ymm13 %ymm5;
(* vpsubw %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556edee *)
sub %ymm7 %ymm7 %ymm14;
(* vpaddw %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556edf3 *)
add %ymm8 %ymm14 %ymm8;
(* vpsubw %ymm15,%ymm4,%ymm4                       #! PC = 0x55555556edf8 *)
sub %ymm4 %ymm4 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556edfd *)
add %ymm11 %ymm15 %ymm11;

(**************** LEVEL 3 1 ****************)
(* CUT default 9 *)

cut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (F**2)
          (poly X [%ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],
                   %ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],
                   %ymm7[0],%ymm7[1],%ymm7[2],%ymm7[3],
                   %ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3]])
          [Q, X**16 - 17** 24] /\
    eqmod (F**2)
          (poly X [%ymm9[0],%ymm9[1],%ymm9[2],%ymm9[3],
                   %ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3],
                   %ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],
                   %ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3]])
          [Q, X**16 - 17**152] /\
    eqmod (F**2)
          (poly X [%ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
                   %ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7],
                   %ymm7[4],%ymm7[5],%ymm7[6],%ymm7[7],
                   %ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7]])
          [Q, X**16 - 17** 88] /\
    eqmod (F**2)
          (poly X [%ymm9[4],%ymm9[5],%ymm9[6],%ymm9[7],
                   %ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7],
                   %ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
                   %ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7]])
          [Q, X**16 - 17**216] /\
    eqmod (F**2)
          (poly X [%ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],
                   %ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11],
                   %ymm7[8],%ymm7[9],%ymm7[10],%ymm7[11],
                   %ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11]])
          [Q, X**16 - 17** 56] /\
    eqmod (F**2)
          (poly X [%ymm9[8],%ymm9[9],%ymm9[10],%ymm9[11],
                   %ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11],
                   %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],
                   %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11]])
          [Q, X**16 - 17**184] /\
    eqmod (F**2)
          (poly X [%ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
                   %ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15],
                   %ymm7[12],%ymm7[13],%ymm7[14],%ymm7[15],
                   %ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15]])
          [Q, X**16 - 17**120] /\
    eqmod (F**2)
          (poly X [%ymm9[12],%ymm9[13],%ymm9[14],%ymm9[15],
                   %ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15],
                   %ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15],
                   %ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15]])
          [Q, X**16 - 17**248]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,
     5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ]<s
    %ymm6 /\ %ymm6 <s
    [5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,
     5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q] /\
    [5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,
     5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ]<s
    %ymm3 /\ %ymm3 <s
    [5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,
     5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q] /\
    [5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,
     5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ]<s
    %ymm7 /\ %ymm7 <s
    [5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,
     5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q] /\
    [5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,
     5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ]<s
    %ymm4 /\ %ymm4 <s
    [5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,
     5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q] /\
    [5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,
     5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ]<s
    %ymm9 /\ %ymm9 <s
    [5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,
     5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q] /\
    [5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,
     5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ]<s
    %ymm5 /\ %ymm5 <s
    [5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,
     5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q] /\
    [5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,
     5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ]<s
    %ymm8 /\ %ymm8 <s
    [5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,
     5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q] /\
    [5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,
     5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ,5@16*NQ]<s
    %ymm11 /\ %ymm11 <s
    [5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,
     5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q,5@16*Q];

(* vmovsldup %ymm8,%ymm10                          #! PC = 0x55555556ee02 *)
mov %ymm10
    [%ymm8[0],%ymm8[1],%ymm8[0],%ymm8[1],
     %ymm8[4],%ymm8[5],%ymm8[4],%ymm8[5],
     %ymm8[8],%ymm8[9],%ymm8[8],%ymm8[9],
     %ymm8[12],%ymm8[13],%ymm8[12],%ymm8[13]];
(* vpblendd $0xaa,%ymm10,%ymm7,%ymm10              #! PC = 0x55555556ee07 *)
mov %ymm10
    [%ymm7[0],%ymm7[1],%ymm10[2],%ymm10[3],
     %ymm7[4],%ymm7[5],%ymm10[6],%ymm10[7],
     %ymm7[8],%ymm7[9],%ymm10[10],%ymm10[11],
     %ymm7[12],%ymm7[13],%ymm10[14],%ymm10[15]];
(* vpsrlq $0x20,%ymm7,%ymm7                        #! PC = 0x55555556ee0d *)
mov %ymm7
    [%ymm7[2],%ymm7[3],0@int16,0@int16,
     %ymm7[6],%ymm7[7],0@int16,0@int16,
     %ymm7[10],%ymm7[11],0@int16,0@int16,
     %ymm7[14],%ymm7[15],0@int16,0@int16];
(* vpblendd $0xaa,%ymm8,%ymm7,%ymm8                #! PC = 0x55555556ee12 *)
mov %ymm8
    [%ymm7[0],%ymm7[1],%ymm8[2],%ymm8[3],
     %ymm7[4],%ymm7[5],%ymm8[6],%ymm8[7],
     %ymm7[8],%ymm7[9],%ymm8[10],%ymm8[11],
     %ymm7[12],%ymm7[13],%ymm8[14],%ymm8[15]];
(* vmovsldup %ymm11,%ymm7                          #! PC = 0x55555556ee18 *)
mov %ymm7
    [%ymm11[0],%ymm11[1],%ymm11[0],%ymm11[1],
     %ymm11[4],%ymm11[5],%ymm11[4],%ymm11[5],
     %ymm11[8],%ymm11[9],%ymm11[8],%ymm11[9],
     %ymm11[12],%ymm11[13],%ymm11[12],%ymm11[13]];
(* vpblendd $0xaa,%ymm7,%ymm4,%ymm7                #! PC = 0x55555556ee1d *)
mov %ymm7
    [%ymm4[0],%ymm4[1],%ymm7[2],%ymm7[3],
     %ymm4[4],%ymm4[5],%ymm7[6],%ymm7[7],
     %ymm4[8],%ymm4[9],%ymm7[10],%ymm7[11],
     %ymm4[12],%ymm4[13],%ymm7[14],%ymm7[15]];
(* vpsrlq $0x20,%ymm4,%ymm4                        #! PC = 0x55555556ee23 *)
mov %ymm4
    [%ymm4[2],%ymm4[3],0@int16,0@int16,
     %ymm4[6],%ymm4[7],0@int16,0@int16,
     %ymm4[10],%ymm4[11],0@int16,0@int16,
     %ymm4[14],%ymm4[15],0@int16,0@int16];
(* vpblendd $0xaa,%ymm11,%ymm4,%ymm11              #! PC = 0x55555556ee28 *)
mov %ymm11
    [%ymm4[0],%ymm4[1],%ymm11[2],%ymm11[3],
     %ymm4[4],%ymm4[5],%ymm11[6],%ymm11[7],
     %ymm4[8],%ymm4[9],%ymm11[10],%ymm11[11],
     %ymm4[12],%ymm4[13],%ymm11[14],%ymm11[15]];
(* vmovdqa 0x3e0(%rsi),%ymm15                      #! EA = L0x555555638880; Value = 0x5ef95ef992579257; PC = 0x55555556ee2e *)
mov %ymm15
    [L0x555555638880, L0x555555638882, L0x555555638884, L0x555555638886,
     L0x555555638888, L0x55555563888a, L0x55555563888c, L0x55555563888e,
     L0x555555638890, L0x555555638892, L0x555555638894, L0x555555638896,
     L0x555555638898, L0x55555563889a, L0x55555563889c, L0x55555563889e];
(* vmovdqa 0x400(%rsi),%ymm2                       #! EA = L0x5555556388a0; Value = 0x03f903f9fd57fd57; PC = 0x55555556ee36 *)
mov %ymm2
    [L0x5555556388a0, L0x5555556388a2, L0x5555556388a4, L0x5555556388a6,
     L0x5555556388a8, L0x5555556388aa, L0x5555556388ac, L0x5555556388ae,
     L0x5555556388b0, L0x5555556388b2, L0x5555556388b4, L0x5555556388b6,
     L0x5555556388b8, L0x5555556388ba, L0x5555556388bc, L0x5555556388be];
(* vpmullw %ymm15,%ymm10,%ymm12                    #! PC = 0x55555556ee3e *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm8,%ymm13                     #! PC = 0x55555556ee43 *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm7,%ymm14                     #! PC = 0x55555556ee48 *)
smull %mulHymm7 %mulL %ymm15 %ymm7;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556ee4d *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556ee52 *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556ee56 *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556ee5a *)
smull %ymm7 %mulLymm7 %ymm2 %ymm7;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556ee5e *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vmovsldup %ymm9,%ymm4                           #! PC = 0x55555556ee62 *)
mov %ymm4
    [%ymm9[0],%ymm9[1],%ymm9[0],%ymm9[1],
     %ymm9[4],%ymm9[5],%ymm9[4],%ymm9[5],
     %ymm9[8],%ymm9[9],%ymm9[8],%ymm9[9],
     %ymm9[12],%ymm9[13],%ymm9[12],%ymm9[13]];
(* vpblendd $0xaa,%ymm4,%ymm6,%ymm4                #! PC = 0x55555556ee67 *)
mov %ymm4
    [%ymm6[0],%ymm6[1],%ymm4[2],%ymm4[3],
     %ymm6[4],%ymm6[5],%ymm4[6],%ymm4[7],
     %ymm6[8],%ymm6[9],%ymm4[10],%ymm4[11],
     %ymm6[12],%ymm6[13],%ymm4[14],%ymm4[15]];
(* vpsrlq $0x20,%ymm6,%ymm6                        #! PC = 0x55555556ee6d *)
mov %ymm6
    [%ymm6[2],%ymm6[3],0@int16,0@int16,
     %ymm6[6],%ymm6[7],0@int16,0@int16,
     %ymm6[10],%ymm6[11],0@int16,0@int16,
     %ymm6[14],%ymm6[15],0@int16,0@int16];
(* vpblendd $0xaa,%ymm9,%ymm6,%ymm9                #! PC = 0x55555556ee72 *)
mov %ymm9
    [%ymm6[0],%ymm6[1],%ymm9[2],%ymm9[3],
     %ymm6[4],%ymm6[5],%ymm9[6],%ymm9[7],
     %ymm6[8],%ymm6[9],%ymm9[10],%ymm9[11],
     %ymm6[12],%ymm6[13],%ymm9[14],%ymm9[15]];
(* vmovsldup %ymm5,%ymm6                           #! PC = 0x55555556ee78 *)
mov %ymm6
    [%ymm5[0],%ymm5[1],%ymm5[0],%ymm5[1],
     %ymm5[4],%ymm5[5],%ymm5[4],%ymm5[5],
     %ymm5[8],%ymm5[9],%ymm5[8],%ymm5[9],
     %ymm5[12],%ymm5[13],%ymm5[12],%ymm5[13]];
(* vpblendd $0xaa,%ymm6,%ymm3,%ymm6                #! PC = 0x55555556ee7c *)
mov %ymm6
    [%ymm3[0],%ymm3[1],%ymm6[2],%ymm6[3],
     %ymm3[4],%ymm3[5],%ymm6[6],%ymm6[7],
     %ymm3[8],%ymm3[9],%ymm6[10],%ymm6[11],
     %ymm3[12],%ymm3[13],%ymm6[14],%ymm6[15]];
(* vpsrlq $0x20,%ymm3,%ymm3                        #! PC = 0x55555556ee82 *)
mov %ymm3
    [%ymm3[2],%ymm3[3],0@int16,0@int16,
     %ymm3[6],%ymm3[7],0@int16,0@int16,
     %ymm3[10],%ymm3[11],0@int16,0@int16,
     %ymm3[14],%ymm3[15],0@int16,0@int16];
(* vpblendd $0xaa,%ymm5,%ymm3,%ymm5                #! PC = 0x55555556ee87 *)
mov %ymm5
    [%ymm3[0],%ymm3[1],%ymm5[2],%ymm5[3],
     %ymm3[4],%ymm3[5],%ymm5[6],%ymm5[7],
     %ymm3[8],%ymm3[9],%ymm5[10],%ymm5[11],
     %ymm3[12],%ymm3[13],%ymm5[14],%ymm5[15]];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556ee8d *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm10;
assume %red = %mulLymm10 && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556ee91 *)
smull %ymm13 %red %ymm13 %ymm0;
assert true && %red = %mulLymm8;
assume %red = %mulLymm8 && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556ee95 *)
smull %ymm14 %red %ymm14 %ymm0;
assert true && %red = %mulLymm7;
assume %red = %mulLymm7 && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556ee99 *)
smull %ymm15 %red %ymm15 %ymm0;
assert true && %red = %mulLymm11;
assume %red = %mulLymm11 && true;
(* vpaddw %ymm10,%ymm4,%ymm3                       #! PC = 0x55555556ee9d *)
add %ymm3 %ymm10 %ymm4;
(* vpsubw %ymm10,%ymm4,%ymm10                      #! PC = 0x55555556eea2 *)
sub %ymm10 %ymm4 %ymm10;
(* vpaddw %ymm8,%ymm9,%ymm4                        #! PC = 0x55555556eea7 *)
add %ymm4 %ymm8 %ymm9;
(* vpsubw %ymm8,%ymm9,%ymm8                        #! PC = 0x55555556eeac *)
sub %ymm8 %ymm9 %ymm8;
(* vpaddw %ymm7,%ymm6,%ymm9                        #! PC = 0x55555556eeb1 *)
add %ymm9 %ymm7 %ymm6;
(* vpsubw %ymm7,%ymm6,%ymm7                        #! PC = 0x55555556eeb5 *)
sub %ymm7 %ymm6 %ymm7;
(* vpaddw %ymm11,%ymm5,%ymm6                       #! PC = 0x55555556eeb9 *)
add %ymm6 %ymm11 %ymm5;
(* vpsubw %ymm11,%ymm5,%ymm11                      #! PC = 0x55555556eebe *)
sub %ymm11 %ymm5 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556eec3 *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm10,%ymm10                     #! PC = 0x55555556eec8 *)
add %ymm10 %ymm12 %ymm10;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556eecd *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm8,%ymm8                       #! PC = 0x55555556eed2 *)
add %ymm8 %ymm13 %ymm8;
(* vpsubw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556eed7 *)
sub %ymm9 %ymm9 %ymm14;
(* vpaddw %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556eedc *)
add %ymm7 %ymm14 %ymm7;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556eee1 *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556eee6 *)
add %ymm11 %ymm15 %ymm11;

(**************** LEVEL 4 1 ****************)
(* CUT default 10 *)

cut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (F**2)
          (poly X [%ymm3[0],%ymm3[1],%ymm4[0],%ymm4[1],
                   %ymm9[0],%ymm9[1],%ymm6[0],%ymm6[1]])
          [Q, X**8 - 17** 12] /\
    eqmod (F**2)
          (poly X [%ymm10[0],%ymm10[1],%ymm8[0],%ymm8[1],
                   %ymm7[0],%ymm7[1],%ymm11[0],%ymm11[1]])
          [Q, X**8 - 17**140] /\
    eqmod (F**2)
          (poly X [%ymm3[2],%ymm3[3],%ymm4[2],%ymm4[3],
                   %ymm9[2],%ymm9[3],%ymm6[2],%ymm6[3]])
          [Q, X**8 - 17** 76] /\
    eqmod (F**2)
          (poly X [%ymm10[2],%ymm10[3],%ymm8[2],%ymm8[3],
                   %ymm7[2],%ymm7[3],%ymm11[2],%ymm11[3]])
          [Q, X**8 - 17**204] /\
    eqmod (F**2)
          (poly X [%ymm3[4],%ymm3[5],%ymm4[4],%ymm4[5],
                   %ymm9[4],%ymm9[5],%ymm6[4],%ymm6[5]])
          [Q, X**8 - 17** 44] /\
    eqmod (F**2)
          (poly X [%ymm10[4],%ymm10[5],%ymm8[4],%ymm8[5],
                   %ymm7[4],%ymm7[5],%ymm11[4],%ymm11[5]])
          [Q, X**8 - 17**172] /\
    eqmod (F**2)
          (poly X [%ymm3[6],%ymm3[7],%ymm4[6],%ymm4[7],
                   %ymm9[6],%ymm9[7],%ymm6[6],%ymm6[7]])
          [Q, X**8 - 17**108] /\
    eqmod (F**2)
          (poly X [%ymm10[6],%ymm10[7],%ymm8[6],%ymm8[7],
                   %ymm7[6],%ymm7[7],%ymm11[6],%ymm11[7]])
          [Q, X**8 - 17**236] /\
    eqmod (F**2)
          (poly X [%ymm3[8],%ymm3[9],%ymm4[8],%ymm4[9],
                   %ymm9[8],%ymm9[9],%ymm6[8],%ymm6[9]])
          [Q, X**8 - 17** 28] /\
    eqmod (F**2)
          (poly X [%ymm10[8],%ymm10[9],%ymm8[8],%ymm8[9],
                   %ymm7[8],%ymm7[9],%ymm11[8],%ymm11[9]])
          [Q, X**8 - 17**156] /\
    eqmod (F**2)
          (poly X [%ymm3[10],%ymm3[11],%ymm4[10],%ymm4[11],
                   %ymm9[10],%ymm9[11],%ymm6[10],%ymm6[11]])
          [Q, X**8 - 17** 92] /\
    eqmod (F**2)
          (poly X [%ymm10[10],%ymm10[11],%ymm8[10],%ymm8[11],
                   %ymm7[10],%ymm7[11],%ymm11[10],%ymm11[11]])
          [Q, X**8 - 17**220] /\
    eqmod (F**2)
          (poly X [%ymm3[12],%ymm3[13],%ymm4[12],%ymm4[13],
                   %ymm9[12],%ymm9[13],%ymm6[12],%ymm6[13]])
          [Q, X**8 - 17** 60] /\
    eqmod (F**2)
          (poly X [%ymm10[12],%ymm10[13],%ymm8[12],%ymm8[13],
                   %ymm7[12],%ymm7[13],%ymm11[12],%ymm11[13]])
          [Q, X**8 - 17**188] /\
    eqmod (F**2)
          (poly X [%ymm3[14],%ymm3[15],%ymm4[14],%ymm4[15],
                   %ymm9[14],%ymm9[15],%ymm6[14],%ymm6[15]])
          [Q, X**8 - 17**124] /\
    eqmod (F**2)
          (poly X [%ymm10[14],%ymm10[15],%ymm8[14],%ymm8[15],
                   %ymm7[14],%ymm7[15],%ymm11[14],%ymm11[15]])
          [Q, X**8 - 17**252]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,
     6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ]<s
    %ymm3 /\ %ymm3 <s
    [6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,
     6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q] /\
    [6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,
     6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ]<s
    %ymm4 /\ %ymm4 <s
    [6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,
     6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q] /\
    [6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,
     6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ]<s
    %ymm9 /\ %ymm9 <s
    [6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,
     6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q] /\
    [6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,
     6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ]<s
    %ymm6 /\ %ymm6 <s
    [6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,
     6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q] /\
    [6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,
     6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ]<s
    %ymm10 /\ %ymm10 <s
    [6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,
     6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q] /\
    [6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,
     6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ]<s
    %ymm8 /\ %ymm8 <s
    [6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,
     6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q] /\
    [6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,
     6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ]<s
    %ymm7 /\ %ymm7 <s
    [6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,
     6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q] /\
    [6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,
     6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ,6@16*NQ]<s
    %ymm11 /\ %ymm11 <s
    [6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,
     6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q,6@16*Q];

(* vpslld $0x10,%ymm7,%ymm5                        #! PC = 0x55555556eeeb *)
mov %ymm5
    [0@int16,%ymm7[0],0@int16,%ymm7[2],
     0@int16,%ymm7[4],0@int16,%ymm7[6],
     0@int16,%ymm7[8],0@int16,%ymm7[10],
     0@int16,%ymm7[12],0@int16,%ymm7[14]];
(* vpblendw $0xaa,%ymm5,%ymm9,%ymm5                #! PC = 0x55555556eef0 *)
mov %ymm5
    [%ymm9[0],%ymm5[1],%ymm9[2],%ymm5[3],
     %ymm9[4],%ymm5[5],%ymm9[6],%ymm5[7],
     %ymm9[8],%ymm5[9],%ymm9[10],%ymm5[11],
     %ymm9[12],%ymm5[13],%ymm9[14],%ymm5[15]];
(* vpsrld $0x10,%ymm9,%ymm9                        #! PC = 0x55555556eef6 *)
mov %ymm9
    [%ymm9[1],0@int16,%ymm9[3],0@int16,
     %ymm9[5],0@int16,%ymm9[7],0@int16,
     %ymm9[9],0@int16,%ymm9[11],0@int16,
     %ymm9[13],0@int16,%ymm9[15],0@int16];
(* vpblendw $0xaa,%ymm7,%ymm9,%ymm7                #! PC = 0x55555556eefc *)
mov %ymm7
    [%ymm9[0],%ymm7[1],%ymm9[2],%ymm7[3],
     %ymm9[4],%ymm7[5],%ymm9[6],%ymm7[7],
     %ymm9[8],%ymm7[9],%ymm9[10],%ymm7[11],
     %ymm9[12],%ymm7[13],%ymm9[14],%ymm7[15]];
(* vpslld $0x10,%ymm11,%ymm9                       #! PC = 0x55555556ef02 *)
mov %ymm9
    [0@int16,%ymm11[0],0@int16,%ymm11[2],
     0@int16,%ymm11[4],0@int16,%ymm11[6],
     0@int16,%ymm11[8],0@int16,%ymm11[10],
     0@int16,%ymm11[12],0@int16,%ymm11[14]];
(* vpblendw $0xaa,%ymm9,%ymm6,%ymm9                #! PC = 0x55555556ef08 *)
mov %ymm9
    [%ymm6[0],%ymm9[1],%ymm6[2],%ymm9[3],
     %ymm6[4],%ymm9[5],%ymm6[6],%ymm9[7],
     %ymm6[8],%ymm9[9],%ymm6[10],%ymm9[11],
     %ymm6[12],%ymm9[13],%ymm6[14],%ymm9[15]];
(* vpsrld $0x10,%ymm6,%ymm6                        #! PC = 0x55555556ef0e *)
mov %ymm6
    [%ymm6[1],0@int16,%ymm6[3],0@int16,
     %ymm6[5],0@int16,%ymm6[7],0@int16,
     %ymm6[9],0@int16,%ymm6[11],0@int16,
     %ymm6[13],0@int16,%ymm6[15],0@int16];
(* vpblendw $0xaa,%ymm11,%ymm6,%ymm11              #! PC = 0x55555556ef13 *)
mov %ymm11
    [%ymm6[0],%ymm11[1],%ymm6[2],%ymm11[3],
     %ymm6[4],%ymm11[5],%ymm6[6],%ymm11[7],
     %ymm6[8],%ymm11[9],%ymm6[10],%ymm11[11],
     %ymm6[12],%ymm11[13],%ymm6[14],%ymm11[15]];
(* vmovdqa 0x420(%rsi),%ymm15                      #! EA = L0x5555556388c0; Value = 0xdd3ec1f191a64dab; PC = 0x55555556ef19 *)
mov %ymm15
    [L0x5555556388c0, L0x5555556388c2, L0x5555556388c4, L0x5555556388c6,
     L0x5555556388c8, L0x5555556388ca, L0x5555556388cc, L0x5555556388ce,
     L0x5555556388d0, L0x5555556388d2, L0x5555556388d4, L0x5555556388d6,
     L0x5555556388d8, L0x5555556388da, L0x5555556388dc, L0x5555556388de];
(* vmovdqa 0x440(%rsi),%ymm2                       #! EA = L0x5555556388e0; Value = 0x033efef1ffa6fcab; PC = 0x55555556ef21 *)
mov %ymm2
    [L0x5555556388e0, L0x5555556388e2, L0x5555556388e4, L0x5555556388e6,
     L0x5555556388e8, L0x5555556388ea, L0x5555556388ec, L0x5555556388ee,
     L0x5555556388f0, L0x5555556388f2, L0x5555556388f4, L0x5555556388f6,
     L0x5555556388f8, L0x5555556388fa, L0x5555556388fc, L0x5555556388fe];
(* vpmullw %ymm15,%ymm5,%ymm12                     #! PC = 0x55555556ef29 *)
smull %mulHymm5 %mulL %ymm15 %ymm5;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm7,%ymm13                     #! PC = 0x55555556ef2e *)
smull %mulHymm7 %mulL %ymm15 %ymm7;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm14                     #! PC = 0x55555556ef33 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556ef38 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556ef3d *)
smull %ymm5 %mulLymm5 %ymm2 %ymm5;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556ef41 *)
smull %ymm7 %mulLymm7 %ymm2 %ymm7;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556ef45 *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556ef49 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vpslld $0x10,%ymm10,%ymm6                       #! PC = 0x55555556ef4d *)
mov %ymm6
    [0@int16,%ymm10[0],0@int16,%ymm10[2],
     0@int16,%ymm10[4],0@int16,%ymm10[6],
     0@int16,%ymm10[8],0@int16,%ymm10[10],
     0@int16,%ymm10[12],0@int16,%ymm10[14]];
(* vpblendw $0xaa,%ymm6,%ymm3,%ymm6                #! PC = 0x55555556ef53 *)
mov %ymm6
    [%ymm3[0],%ymm6[1],%ymm3[2],%ymm6[3],
     %ymm3[4],%ymm6[5],%ymm3[6],%ymm6[7],
     %ymm3[8],%ymm6[9],%ymm3[10],%ymm6[11],
     %ymm3[12],%ymm6[13],%ymm3[14],%ymm6[15]];
(* vpsrld $0x10,%ymm3,%ymm3                        #! PC = 0x55555556ef59 *)
mov %ymm3
    [%ymm3[1],0@int16,%ymm3[3],0@int16,
     %ymm3[5],0@int16,%ymm3[7],0@int16,
     %ymm3[9],0@int16,%ymm3[11],0@int16,
     %ymm3[13],0@int16,%ymm3[15],0@int16];
(* vpblendw $0xaa,%ymm10,%ymm3,%ymm10              #! PC = 0x55555556ef5e *)
mov %ymm10
    [%ymm3[0],%ymm10[1],%ymm3[2],%ymm10[3],
     %ymm3[4],%ymm10[5],%ymm3[6],%ymm10[7],
     %ymm3[8],%ymm10[9],%ymm3[10],%ymm10[11],
     %ymm3[12],%ymm10[13],%ymm3[14],%ymm10[15]];
(* vpslld $0x10,%ymm8,%ymm3                        #! PC = 0x55555556ef64 *)
mov %ymm3
    [0@int16,%ymm8[0],0@int16,%ymm8[2],
     0@int16,%ymm8[4],0@int16,%ymm8[6],
     0@int16,%ymm8[8],0@int16,%ymm8[10],
     0@int16,%ymm8[12],0@int16,%ymm8[14]];
(* vpblendw $0xaa,%ymm3,%ymm4,%ymm3                #! PC = 0x55555556ef6a *)
mov %ymm3
    [%ymm4[0],%ymm3[1],%ymm4[2],%ymm3[3],
     %ymm4[4],%ymm3[5],%ymm4[6],%ymm3[7],
     %ymm4[8],%ymm3[9],%ymm4[10],%ymm3[11],
     %ymm4[12],%ymm3[13],%ymm4[14],%ymm3[15]];
(* vpsrld $0x10,%ymm4,%ymm4                        #! PC = 0x55555556ef70 *)
mov %ymm4
    [%ymm4[1],0@int16,%ymm4[3],0@int16,
     %ymm4[5],0@int16,%ymm4[7],0@int16,
     %ymm4[9],0@int16,%ymm4[11],0@int16,
     %ymm4[13],0@int16,%ymm4[15],0@int16];
(* vpblendw $0xaa,%ymm8,%ymm4,%ymm8                #! PC = 0x55555556ef75 *)
mov %ymm8
    [%ymm4[0],%ymm8[1],%ymm4[2],%ymm8[3],
     %ymm4[4],%ymm8[5],%ymm4[6],%ymm8[7],
     %ymm4[8],%ymm8[9],%ymm4[10],%ymm8[11],
     %ymm4[12],%ymm8[13],%ymm4[14],%ymm8[15]];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556ef7b *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm5;
assume %red = %mulLymm5 && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556ef7f *)
smull %ymm13 %red %ymm13 %ymm0;
assert true && %red = %mulLymm7;
assume %red = %mulLymm7 && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556ef83 *)
smull %ymm14 %red %ymm14 %ymm0;
assert true && %red = %mulLymm9;
assume %red = %mulLymm9 && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556ef87 *)
smull %ymm15 %red %ymm15 %ymm0;
assert true && %red = %mulLymm11;
assume %red = %mulLymm11 && true;
(* vpaddw %ymm5,%ymm6,%ymm4                        #! PC = 0x55555556ef8b *)
add %ymm4 %ymm5 %ymm6;
(* vpsubw %ymm5,%ymm6,%ymm5                        #! PC = 0x55555556ef8f *)
sub %ymm5 %ymm6 %ymm5;
(* vpaddw %ymm7,%ymm10,%ymm6                       #! PC = 0x55555556ef93 *)
add %ymm6 %ymm7 %ymm10;
(* vpsubw %ymm7,%ymm10,%ymm7                       #! PC = 0x55555556ef97 *)
sub %ymm7 %ymm10 %ymm7;
(* vpaddw %ymm9,%ymm3,%ymm10                       #! PC = 0x55555556ef9b *)
add %ymm10 %ymm9 %ymm3;
(* vpsubw %ymm9,%ymm3,%ymm9                        #! PC = 0x55555556efa0 *)
sub %ymm9 %ymm3 %ymm9;
(* vpaddw %ymm11,%ymm8,%ymm3                       #! PC = 0x55555556efa5 *)
add %ymm3 %ymm11 %ymm8;
(* vpsubw %ymm11,%ymm8,%ymm11                      #! PC = 0x55555556efaa *)
sub %ymm11 %ymm8 %ymm11;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555556efaf *)
sub %ymm4 %ymm4 %ymm12;
(* vpaddw %ymm12,%ymm5,%ymm5                       #! PC = 0x55555556efb4 *)
add %ymm5 %ymm12 %ymm5;
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x55555556efb9 *)
sub %ymm6 %ymm6 %ymm13;
(* vpaddw %ymm13,%ymm7,%ymm7                       #! PC = 0x55555556efbe *)
add %ymm7 %ymm13 %ymm7;
(* vpsubw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556efc3 *)
sub %ymm10 %ymm10 %ymm14;
(* vpaddw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556efc8 *)
add %ymm9 %ymm14 %ymm9;
(* vpsubw %ymm15,%ymm3,%ymm3                       #! PC = 0x55555556efcd *)
sub %ymm3 %ymm3 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556efd2 *)
add %ymm11 %ymm15 %ymm11;

(**************** LEVEL 5 1 ****************)
(* CUT default 11 *)

cut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (F**2)
          (poly X [%ymm4[0], %ymm6[0], %ymm10[0], %ymm3[0]])
          [3329, X**4 - 17**  6] /\
    eqmod (F**2)
          (poly X [%ymm5[0], %ymm7[0], %ymm9[0], %ymm11[0]])
          [3329, X**4 - 17**134] /\
    eqmod (F**2)
          (poly X [%ymm4[1], %ymm6[1], %ymm10[1], %ymm3[1]])
          [3329, X**4 - 17** 70] /\
    eqmod (F**2)
          (poly X [%ymm5[1], %ymm7[1], %ymm9[1], %ymm11[1]])
          [3329, X**4 - 17**198] /\
    eqmod (F**2)
          (poly X [%ymm4[2], %ymm6[2], %ymm10[2], %ymm3[2]])
          [3329, X**4 - 17** 38] /\
    eqmod (F**2)
          (poly X [%ymm5[2], %ymm7[2], %ymm9[2], %ymm11[2]])
          [3329, X**4 - 17**166] /\
    eqmod (F**2)
          (poly X [%ymm4[3], %ymm6[3], %ymm10[3], %ymm3[3]])
          [3329, X**4 - 17**102] /\
    eqmod (F**2)
          (poly X [%ymm5[3], %ymm7[3], %ymm9[3], %ymm11[3]])
          [3329, X**4 - 17**230] /\
    eqmod (F**2)
          (poly X [%ymm4[4], %ymm6[4], %ymm10[4], %ymm3[4]])
          [3329, X**4 - 17** 22] /\
    eqmod (F**2)
          (poly X [%ymm5[4], %ymm7[4], %ymm9[4], %ymm11[4]])
          [3329, X**4 - 17**150] /\
    eqmod (F**2)
          (poly X [%ymm4[5], %ymm6[5], %ymm10[5], %ymm3[5]])
          [3329, X**4 - 17** 86] /\
    eqmod (F**2)
          (poly X [%ymm5[5], %ymm7[5], %ymm9[5], %ymm11[5]])
          [3329, X**4 - 17**214] /\
    eqmod (F**2)
          (poly X [%ymm4[6], %ymm6[6], %ymm10[6], %ymm3[6]])
          [3329, X**4 - 17** 54] /\
    eqmod (F**2)
          (poly X [%ymm5[6], %ymm7[6], %ymm9[6], %ymm11[6]])
          [3329, X**4 - 17**182] /\
    eqmod (F**2)
          (poly X [%ymm4[7], %ymm6[7], %ymm10[7], %ymm3[7]])
          [3329, X**4 - 17**118] /\
    eqmod (F**2)
          (poly X [%ymm5[7], %ymm7[7], %ymm9[7], %ymm11[7]])
          [3329, X**4 - 17**246] /\
    eqmod (F**2)
          (poly X [%ymm4[8], %ymm6[8], %ymm10[8], %ymm3[8]])
          [3329, X**4 - 17** 14] /\
    eqmod (F**2)
          (poly X [%ymm5[8], %ymm7[8], %ymm9[8], %ymm11[8]])
          [3329, X**4 - 17**142] /\
    eqmod (F**2)
          (poly X [%ymm4[9], %ymm6[9], %ymm10[9], %ymm3[9]])
          [3329, X**4 - 17** 78] /\
    eqmod (F**2)
          (poly X [%ymm5[9], %ymm7[9], %ymm9[9], %ymm11[9]])
          [3329, X**4 - 17**206] /\
    eqmod (F**2)
          (poly X [%ymm4[10], %ymm6[10], %ymm10[10], %ymm3[10]])
          [3329, X**4 - 17** 46] /\
    eqmod (F**2)
          (poly X [%ymm5[10], %ymm7[10], %ymm9[10], %ymm11[10]])
          [3329, X**4 - 17**174] /\
    eqmod (F**2)
          (poly X [%ymm4[11], %ymm6[11], %ymm10[11], %ymm3[11]])
          [3329, X**4 - 17**110] /\
    eqmod (F**2)
          (poly X [%ymm5[11], %ymm7[11], %ymm9[11], %ymm11[11]])
          [3329, X**4 - 17**238] /\
    eqmod (F**2)
          (poly X [%ymm4[12], %ymm6[12], %ymm10[12], %ymm3[12]])
          [3329, X**4 - 17** 30] /\
    eqmod (F**2)
          (poly X [%ymm5[12], %ymm7[12], %ymm9[12], %ymm11[12]])
          [3329, X**4 - 17**158] /\
    eqmod (F**2)
          (poly X [%ymm4[13], %ymm6[13], %ymm10[13], %ymm3[13]])
          [3329, X**4 - 17** 94] /\
    eqmod (F**2)
          (poly X [%ymm5[13], %ymm7[13], %ymm9[13], %ymm11[13]])
          [3329, X**4 - 17**222] /\
    eqmod (F**2)
          (poly X [%ymm4[14], %ymm6[14], %ymm10[14], %ymm3[14]])
          [3329, X**4 - 17** 62] /\
    eqmod (F**2)
          (poly X [%ymm5[14], %ymm7[14], %ymm9[14], %ymm11[14]])
          [3329, X**4 - 17**190] /\
    eqmod (F**2)
          (poly X [%ymm4[15], %ymm6[15], %ymm10[15], %ymm3[15]])
          [3329, X**4 - 17**126] /\
    eqmod (F**2)
          (poly X [%ymm5[15], %ymm7[15], %ymm9[15], %ymm11[15]])
          [3329, X**4 - 17**254]
 && Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,
     7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ]<s
    %ymm4 /\ %ymm4 <s
    [7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,
     7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q] /\
    [7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,
     7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ]<s
    %ymm6 /\ %ymm6 <s
    [7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,
     7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q] /\
    [7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,
     7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ]<s
    %ymm8 /\ %ymm8 <s
    [7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,
     7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q] /\
    [7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,
     7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ]<s
    %ymm3 /\ %ymm3 <s
    [7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,
     7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q] /\
    [7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,
     7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ]<s
    %ymm7 /\ %ymm7 <s
    [7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,
     7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q] /\
    [7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,
     7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ]<s
    %ymm10 /\ %ymm10 <s
    [7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,
     7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q] /\
    [7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,
     7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ]<s
    %ymm5 /\ %ymm5 <s
    [7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,
     7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q] /\
    [7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,
     7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ,7@16*NQ]<s
    %ymm11 /\ %ymm11 <s
    [7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,
     7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q,7@16*Q];

(* vmovdqa 0x460(%rsi),%ymm14                      #! EA = L0x555555638900; Value = 0x5f47e32a635b8631; PC = 0x55555556efd7 *)
mov %ymm14
    [L0x555555638900, L0x555555638902, L0x555555638904, L0x555555638906,
     L0x555555638908, L0x55555563890a, L0x55555563890c, L0x55555563890e,
     L0x555555638910, L0x555555638912, L0x555555638914, L0x555555638916,
     L0x555555638918, L0x55555563891a, L0x55555563891c, L0x55555563891e];
(* vmovdqa 0x4a0(%rsi),%ymm15                      #! EA = L0x555555638940; Value = 0x81803bfb08624f49; PC = 0x55555556efdf *)
mov %ymm15
    [L0x555555638940, L0x555555638942, L0x555555638944, L0x555555638946,
     L0x555555638948, L0x55555563894a, L0x55555563894c, L0x55555563894e,
     L0x555555638950, L0x555555638952, L0x555555638954, L0x555555638956,
     L0x555555638958, L0x55555563895a, L0x55555563895c, L0x55555563895e];
(* vmovdqa 0x480(%rsi),%ymm8                       #! EA = L0x555555638920; Value = 0xfa47052a025b0331; PC = 0x55555556efe7 *)
mov %ymm8
    [L0x555555638920, L0x555555638922, L0x555555638924, L0x555555638926,
     L0x555555638928, L0x55555563892a, L0x55555563892c, L0x55555563892e,
     L0x555555638930, L0x555555638932, L0x555555638934, L0x555555638936,
     L0x555555638938, L0x55555563893a, L0x55555563893c, L0x55555563893e];
(* vmovdqa 0x4c0(%rsi),%ymm2                       #! EA = L0x555555638960; Value = 0x0180fafb02620449; PC = 0x55555556efef *)
mov %ymm2
    [L0x555555638960, L0x555555638962, L0x555555638964, L0x555555638966,
     L0x555555638968, L0x55555563896a, L0x55555563896c, L0x55555563896e,
     L0x555555638970, L0x555555638972, L0x555555638974, L0x555555638976,
     L0x555555638978, L0x55555563897a, L0x55555563897c, L0x55555563897e];
(* vpmullw %ymm14,%ymm10,%ymm12                    #! PC = 0x55555556eff7 *)
smull %mulHymm10 %mulL %ymm14 %ymm10;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm14,%ymm3,%ymm13                     #! PC = 0x55555556effc *)
smull %mulHymm3 %mulL %ymm14 %ymm3;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm14                     #! PC = 0x55555556f001 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f006 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm8,%ymm10,%ymm10                     #! PC = 0x55555556f00b *)
smull %ymm10 %mulLymm10 %ymm8 %ymm10;
(* vpmulhw %ymm8,%ymm3,%ymm3                       #! PC = 0x55555556f010 *)
smull %ymm3 %mulLymm3 %ymm8 %ymm3;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556f015 *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f019 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f01d *)
smull %ymm12 %red %ymm12 %ymm0;
assert true && %red = %mulLymm10;
assume %red = %mulLymm10 && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f021 *)
smull %ymm13 %red %ymm13 %ymm0;
assert true && %red = %mulLymm3;
assume %red = %mulLymm3 && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f025 *)
smull %ymm14 %red %ymm14 %ymm0;
assert true && %red = %mulLymm9;
assume %red = %mulLymm9 && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f029 *)
smull %ymm15 %red %ymm15 %ymm0;
assert true && %red = %mulLymm11;
assume %red = %mulLymm11 && true;
(* vpaddw %ymm10,%ymm4,%ymm8                       #! PC = 0x55555556f02d *)
add %ymm8 %ymm10 %ymm4;
(* vpsubw %ymm10,%ymm4,%ymm10                      #! PC = 0x55555556f032 *)
sub %ymm10 %ymm4 %ymm10;
(* vpaddw %ymm3,%ymm6,%ymm4                        #! PC = 0x55555556f037 *)
add %ymm4 %ymm3 %ymm6;
(* vpsubw %ymm3,%ymm6,%ymm3                        #! PC = 0x55555556f03b *)
sub %ymm3 %ymm6 %ymm3;
(* vpaddw %ymm9,%ymm5,%ymm6                        #! PC = 0x55555556f03f *)
add %ymm6 %ymm9 %ymm5;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556f044 *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm11,%ymm7,%ymm5                       #! PC = 0x55555556f049 *)
add %ymm5 %ymm11 %ymm7;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556f04e *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556f053 *)
sub %ymm8 %ymm8 %ymm12;
(* vpaddw %ymm12,%ymm10,%ymm10                     #! PC = 0x55555556f058 *)
add %ymm10 %ymm12 %ymm10;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556f05d *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm3,%ymm3                       #! PC = 0x55555556f062 *)
add %ymm3 %ymm13 %ymm3;
(* vpsubw %ymm14,%ymm6,%ymm6                       #! PC = 0x55555556f067 *)
sub %ymm6 %ymm6 %ymm14;
(* vpaddw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556f06c *)
add %ymm9 %ymm14 %ymm9;
(* vpsubw %ymm15,%ymm5,%ymm5                       #! PC = 0x55555556f071 *)
sub %ymm5 %ymm5 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f076 *)
add %ymm11 %ymm15 %ymm11;
(* vmovdqa %ymm8,0x100(%rdi)                       #! EA = L0x7fffffffb380; PC = 0x55555556f07b *)
mov [L0x7fffffffb380, L0x7fffffffb382, L0x7fffffffb384, L0x7fffffffb386,
     L0x7fffffffb388, L0x7fffffffb38a, L0x7fffffffb38c, L0x7fffffffb38e,
     L0x7fffffffb390, L0x7fffffffb392, L0x7fffffffb394, L0x7fffffffb396,
     L0x7fffffffb398, L0x7fffffffb39a, L0x7fffffffb39c, L0x7fffffffb39e]
    %ymm8;
(* vmovdqa %ymm4,0x120(%rdi)                       #! EA = L0x7fffffffb3a0; PC = 0x55555556f083 *)
mov [L0x7fffffffb3a0, L0x7fffffffb3a2, L0x7fffffffb3a4, L0x7fffffffb3a6,
     L0x7fffffffb3a8, L0x7fffffffb3aa, L0x7fffffffb3ac, L0x7fffffffb3ae,
     L0x7fffffffb3b0, L0x7fffffffb3b2, L0x7fffffffb3b4, L0x7fffffffb3b6,
     L0x7fffffffb3b8, L0x7fffffffb3ba, L0x7fffffffb3bc, L0x7fffffffb3be]
    %ymm4;
(* vmovdqa %ymm10,0x140(%rdi)                      #! EA = L0x7fffffffb3c0; PC = 0x55555556f08b *)
mov [L0x7fffffffb3c0, L0x7fffffffb3c2, L0x7fffffffb3c4, L0x7fffffffb3c6,
     L0x7fffffffb3c8, L0x7fffffffb3ca, L0x7fffffffb3cc, L0x7fffffffb3ce,
     L0x7fffffffb3d0, L0x7fffffffb3d2, L0x7fffffffb3d4, L0x7fffffffb3d6,
     L0x7fffffffb3d8, L0x7fffffffb3da, L0x7fffffffb3dc, L0x7fffffffb3de]
    %ymm10;
(* vmovdqa %ymm3,0x160(%rdi)                       #! EA = L0x7fffffffb3e0; PC = 0x55555556f093 *)
mov [L0x7fffffffb3e0, L0x7fffffffb3e2, L0x7fffffffb3e4, L0x7fffffffb3e6,
     L0x7fffffffb3e8, L0x7fffffffb3ea, L0x7fffffffb3ec, L0x7fffffffb3ee,
     L0x7fffffffb3f0, L0x7fffffffb3f2, L0x7fffffffb3f4, L0x7fffffffb3f6,
     L0x7fffffffb3f8, L0x7fffffffb3fa, L0x7fffffffb3fc, L0x7fffffffb3fe]
    %ymm3;
(* vmovdqa %ymm6,0x180(%rdi)                       #! EA = L0x7fffffffb400; PC = 0x55555556f09b *)
mov [L0x7fffffffb400, L0x7fffffffb402, L0x7fffffffb404, L0x7fffffffb406,
     L0x7fffffffb408, L0x7fffffffb40a, L0x7fffffffb40c, L0x7fffffffb40e,
     L0x7fffffffb410, L0x7fffffffb412, L0x7fffffffb414, L0x7fffffffb416,
     L0x7fffffffb418, L0x7fffffffb41a, L0x7fffffffb41c, L0x7fffffffb41e]
    %ymm6;
(* vmovdqa %ymm5,0x1a0(%rdi)                       #! EA = L0x7fffffffb420; PC = 0x55555556f0a3 *)
mov [L0x7fffffffb420, L0x7fffffffb422, L0x7fffffffb424, L0x7fffffffb426,
     L0x7fffffffb428, L0x7fffffffb42a, L0x7fffffffb42c, L0x7fffffffb42e,
     L0x7fffffffb430, L0x7fffffffb432, L0x7fffffffb434, L0x7fffffffb436,
     L0x7fffffffb438, L0x7fffffffb43a, L0x7fffffffb43c, L0x7fffffffb43e]
    %ymm5;
(* vmovdqa %ymm9,0x1c0(%rdi)                       #! EA = L0x7fffffffb440; PC = 0x55555556f0ab *)
mov [L0x7fffffffb440, L0x7fffffffb442, L0x7fffffffb444, L0x7fffffffb446,
     L0x7fffffffb448, L0x7fffffffb44a, L0x7fffffffb44c, L0x7fffffffb44e,
     L0x7fffffffb450, L0x7fffffffb452, L0x7fffffffb454, L0x7fffffffb456,
     L0x7fffffffb458, L0x7fffffffb45a, L0x7fffffffb45c, L0x7fffffffb45e]
    %ymm9;
(* vmovdqa %ymm11,0x1e0(%rdi)                      #! EA = L0x7fffffffb460; PC = 0x55555556f0b3 *)
mov [L0x7fffffffb460, L0x7fffffffb462, L0x7fffffffb464, L0x7fffffffb466,
     L0x7fffffffb468, L0x7fffffffb46a, L0x7fffffffb46c, L0x7fffffffb46e,
     L0x7fffffffb470, L0x7fffffffb472, L0x7fffffffb474, L0x7fffffffb476,
     L0x7fffffffb478, L0x7fffffffb47a, L0x7fffffffb47c, L0x7fffffffb47e]
    %ymm11;
(* #! <- SP = 0x7fffffffa648 *)
#! 0x7fffffffa648 = 0x7fffffffa648;
(* #ret                                            #! PC = 0x55555556f0bb *)
#ret                                            #! 0x55555556f0bb = 0x55555556f0bb;

(**************** LEVEL 6 1 ****************)
(* CUT default 12 *)

cut Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (F**2) (poly X [L0x7fffffffb380,L0x7fffffffb3a0])
          [Q, X**2 - 17**  3] /\
    eqmod (F**2) (poly X [L0x7fffffffb3c0,L0x7fffffffb3e0])
          [Q, X**2 - 17**131] /\
    eqmod (F**2) (poly X [L0x7fffffffb400,L0x7fffffffb420])
          [Q, X**2 - 17** 67] /\
    eqmod (F**2) (poly X [L0x7fffffffb440,L0x7fffffffb460])
          [Q, X**2 - 17**195] /\
    eqmod (F**2) (poly X [L0x7fffffffb382,L0x7fffffffb3a2])
          [Q, X**2 - 17** 35] /\
    eqmod (F**2) (poly X [L0x7fffffffb3c2,L0x7fffffffb3e2])
          [Q, X**2 - 17**163] /\
    eqmod (F**2) (poly X [L0x7fffffffb402,L0x7fffffffb422])
          [Q, X**2 - 17** 99] /\
    eqmod (F**2) (poly X [L0x7fffffffb442,L0x7fffffffb462])
          [Q, X**2 - 17**227] /\
    eqmod (F**2) (poly X [L0x7fffffffb384,L0x7fffffffb3a4])
          [Q, X**2 - 17** 19] /\
    eqmod (F**2) (poly X [L0x7fffffffb3c4,L0x7fffffffb3e4])
          [Q, X**2 - 17**147] /\
    eqmod (F**2) (poly X [L0x7fffffffb404,L0x7fffffffb424])
          [Q, X**2 - 17** 83] /\
    eqmod (F**2) (poly X [L0x7fffffffb444,L0x7fffffffb464])
          [Q, X**2 - 17**211] /\
    eqmod (F**2) (poly X [L0x7fffffffb386,L0x7fffffffb3a6])
          [Q, X**2 - 17** 51] /\
    eqmod (F**2) (poly X [L0x7fffffffb3c6,L0x7fffffffb3e6])
          [Q, X**2 - 17**179] /\
    eqmod (F**2) (poly X [L0x7fffffffb406,L0x7fffffffb426])
          [Q, X**2 - 17**115] /\
    eqmod (F**2) (poly X [L0x7fffffffb446,L0x7fffffffb466])
          [Q, X**2 - 17**243] /\
    eqmod (F**2) (poly X [L0x7fffffffb388,L0x7fffffffb3a8])
          [Q, X**2 - 17** 11] /\
    eqmod (F**2) (poly X [L0x7fffffffb3c8,L0x7fffffffb3e8])
          [Q, X**2 - 17**139] /\
    eqmod (F**2) (poly X [L0x7fffffffb408,L0x7fffffffb428])
          [Q, X**2 - 17** 75] /\
    eqmod (F**2) (poly X [L0x7fffffffb448,L0x7fffffffb468])
          [Q, X**2 - 17**203] /\
    eqmod (F**2) (poly X [L0x7fffffffb38a,L0x7fffffffb3aa])
          [Q, X**2 - 17** 43] /\
    eqmod (F**2) (poly X [L0x7fffffffb3ca,L0x7fffffffb3ea])
          [Q, X**2 - 17**171] /\
    eqmod (F**2) (poly X [L0x7fffffffb40a,L0x7fffffffb42a])
          [Q, X**2 - 17**107] /\
    eqmod (F**2) (poly X [L0x7fffffffb44a,L0x7fffffffb46a])
          [Q, X**2 - 17**235] /\
    eqmod (F**2) (poly X [L0x7fffffffb38c,L0x7fffffffb3ac])
          [Q, X**2 - 17** 27] /\
    eqmod (F**2) (poly X [L0x7fffffffb3cc,L0x7fffffffb3ec])
          [Q, X**2 - 17**155] /\
    eqmod (F**2) (poly X [L0x7fffffffb40c,L0x7fffffffb42c])
          [Q, X**2 - 17** 91] /\
    eqmod (F**2) (poly X [L0x7fffffffb44c,L0x7fffffffb46c])
          [Q, X**2 - 17**219] /\
    eqmod (F**2) (poly X [L0x7fffffffb38e,L0x7fffffffb3ae])
          [Q, X**2 - 17** 59] /\
    eqmod (F**2) (poly X [L0x7fffffffb3ce,L0x7fffffffb3ee])
          [Q, X**2 - 17**187] /\
    eqmod (F**2) (poly X [L0x7fffffffb40e,L0x7fffffffb42e])
          [Q, X**2 - 17**123] /\
    eqmod (F**2) (poly X [L0x7fffffffb44e,L0x7fffffffb46e])
          [Q, X**2 - 17**251] /\
    eqmod (F**2) (poly X [L0x7fffffffb390,L0x7fffffffb3b0])
          [Q, X**2 - 17**  7] /\
    eqmod (F**2) (poly X [L0x7fffffffb3d0,L0x7fffffffb3f0])
          [Q, X**2 - 17**135] /\
    eqmod (F**2) (poly X [L0x7fffffffb410,L0x7fffffffb430])
          [Q, X**2 - 17** 71] /\
    eqmod (F**2) (poly X [L0x7fffffffb450,L0x7fffffffb470])
          [Q, X**2 - 17**199] /\
    eqmod (F**2) (poly X [L0x7fffffffb392,L0x7fffffffb3b2])
          [Q, X**2 - 17** 39] /\
    eqmod (F**2) (poly X [L0x7fffffffb3d2,L0x7fffffffb3f2])
          [Q, X**2 - 17**167] /\
    eqmod (F**2) (poly X [L0x7fffffffb412,L0x7fffffffb432])
          [Q, X**2 - 17**103] /\
    eqmod (F**2) (poly X [L0x7fffffffb452,L0x7fffffffb472])
          [Q, X**2 - 17**231] /\
    eqmod (F**2) (poly X [L0x7fffffffb394,L0x7fffffffb3b4])
          [Q, X**2 - 17** 23] /\
    eqmod (F**2) (poly X [L0x7fffffffb3d4,L0x7fffffffb3f4])
          [Q, X**2 - 17**151] /\
    eqmod (F**2) (poly X [L0x7fffffffb414,L0x7fffffffb434])
          [Q, X**2 - 17** 87] /\
    eqmod (F**2) (poly X [L0x7fffffffb454,L0x7fffffffb474])
          [Q, X**2 - 17**215] /\
    eqmod (F**2) (poly X [L0x7fffffffb396,L0x7fffffffb3b6])
          [Q, X**2 - 17** 55] /\
    eqmod (F**2) (poly X [L0x7fffffffb3d6,L0x7fffffffb3f6])
          [Q, X**2 - 17**183] /\
    eqmod (F**2) (poly X [L0x7fffffffb416,L0x7fffffffb436])
          [Q, X**2 - 17**119] /\
    eqmod (F**2) (poly X [L0x7fffffffb456,L0x7fffffffb476])
          [Q, X**2 - 17**247] /\
    eqmod (F**2) (poly X [L0x7fffffffb398,L0x7fffffffb3b8])
          [Q, X**2 - 17** 15] /\
    eqmod (F**2) (poly X [L0x7fffffffb3d8,L0x7fffffffb3f8])
          [Q, X**2 - 17**143] /\
    eqmod (F**2) (poly X [L0x7fffffffb418,L0x7fffffffb438])
          [Q, X**2 - 17** 79] /\
    eqmod (F**2) (poly X [L0x7fffffffb458,L0x7fffffffb478])
          [Q, X**2 - 17**207] /\
    eqmod (F**2) (poly X [L0x7fffffffb39a,L0x7fffffffb3ba])
          [Q, X**2 - 17** 47] /\
    eqmod (F**2) (poly X [L0x7fffffffb3da,L0x7fffffffb3fa])
          [Q, X**2 - 17**175] /\
    eqmod (F**2) (poly X [L0x7fffffffb41a,L0x7fffffffb43a])
          [Q, X**2 - 17**111] /\
    eqmod (F**2) (poly X [L0x7fffffffb45a,L0x7fffffffb47a])
          [Q, X**2 - 17**239] /\
    eqmod (F**2) (poly X [L0x7fffffffb39c,L0x7fffffffb3bc])
          [Q, X**2 - 17** 31] /\
    eqmod (F**2) (poly X [L0x7fffffffb3dc,L0x7fffffffb3fc])
          [Q, X**2 - 17**159] /\
    eqmod (F**2) (poly X [L0x7fffffffb41c,L0x7fffffffb43c])
          [Q, X**2 - 17** 95] /\
    eqmod (F**2) (poly X [L0x7fffffffb45c,L0x7fffffffb47c])
          [Q, X**2 - 17**223] /\
    eqmod (F**2) (poly X [L0x7fffffffb39e,L0x7fffffffb3be])
          [Q, X**2 - 17** 63] /\
    eqmod (F**2) (poly X [L0x7fffffffb3de,L0x7fffffffb3fe])
          [Q, X**2 - 17**191] /\
    eqmod (F**2) (poly X [L0x7fffffffb41e,L0x7fffffffb43e])
          [Q, X**2 - 17**127] /\
    eqmod (F**2) (poly X [L0x7fffffffb45e,L0x7fffffffb47e])
          [Q, X**2 - 17**255]
&&
    Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb380,L0x7fffffffb382,L0x7fffffffb384,L0x7fffffffb386] /\
    [L0x7fffffffb380,L0x7fffffffb382,L0x7fffffffb384,L0x7fffffffb386]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb388,L0x7fffffffb38a,L0x7fffffffb38c,L0x7fffffffb38e] /\
    [L0x7fffffffb388,L0x7fffffffb38a,L0x7fffffffb38c,L0x7fffffffb38e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb390,L0x7fffffffb392,L0x7fffffffb394,L0x7fffffffb396] /\
    [L0x7fffffffb390,L0x7fffffffb392,L0x7fffffffb394,L0x7fffffffb396]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb398,L0x7fffffffb39a,L0x7fffffffb39c,L0x7fffffffb39e] /\
    [L0x7fffffffb398,L0x7fffffffb39a,L0x7fffffffb39c,L0x7fffffffb39e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3a0,L0x7fffffffb3a2,L0x7fffffffb3a4,L0x7fffffffb3a6] /\
    [L0x7fffffffb3a0,L0x7fffffffb3a2,L0x7fffffffb3a4,L0x7fffffffb3a6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3a8,L0x7fffffffb3aa,L0x7fffffffb3ac,L0x7fffffffb3ae] /\
    [L0x7fffffffb3a8,L0x7fffffffb3aa,L0x7fffffffb3ac,L0x7fffffffb3ae]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3b0,L0x7fffffffb3b2,L0x7fffffffb3b4,L0x7fffffffb3b6] /\
    [L0x7fffffffb3b0,L0x7fffffffb3b2,L0x7fffffffb3b4,L0x7fffffffb3b6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3b8,L0x7fffffffb3ba,L0x7fffffffb3bc,L0x7fffffffb3be] /\
    [L0x7fffffffb3b8,L0x7fffffffb3ba,L0x7fffffffb3bc,L0x7fffffffb3be]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3c0,L0x7fffffffb3c2,L0x7fffffffb3c4,L0x7fffffffb3c6] /\
    [L0x7fffffffb3c0,L0x7fffffffb3c2,L0x7fffffffb3c4,L0x7fffffffb3c6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3c8,L0x7fffffffb3ca,L0x7fffffffb3cc,L0x7fffffffb3ce] /\
    [L0x7fffffffb3c8,L0x7fffffffb3ca,L0x7fffffffb3cc,L0x7fffffffb3ce]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3d0,L0x7fffffffb3d2,L0x7fffffffb3d4,L0x7fffffffb3d6] /\
    [L0x7fffffffb3d0,L0x7fffffffb3d2,L0x7fffffffb3d4,L0x7fffffffb3d6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3d8,L0x7fffffffb3da,L0x7fffffffb3dc,L0x7fffffffb3de] /\
    [L0x7fffffffb3d8,L0x7fffffffb3da,L0x7fffffffb3dc,L0x7fffffffb3de]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3e0,L0x7fffffffb3e2,L0x7fffffffb3e4,L0x7fffffffb3e6] /\
    [L0x7fffffffb3e0,L0x7fffffffb3e2,L0x7fffffffb3e4,L0x7fffffffb3e6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3e8,L0x7fffffffb3ea,L0x7fffffffb3ec,L0x7fffffffb3ee] /\
    [L0x7fffffffb3e8,L0x7fffffffb3ea,L0x7fffffffb3ec,L0x7fffffffb3ee]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3f0,L0x7fffffffb3f2,L0x7fffffffb3f4,L0x7fffffffb3f6] /\
    [L0x7fffffffb3f0,L0x7fffffffb3f2,L0x7fffffffb3f4,L0x7fffffffb3f6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3f8,L0x7fffffffb3fa,L0x7fffffffb3fc,L0x7fffffffb3fe] /\
    [L0x7fffffffb3f8,L0x7fffffffb3fa,L0x7fffffffb3fc,L0x7fffffffb3fe]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb400,L0x7fffffffb402,L0x7fffffffb404,L0x7fffffffb406] /\
    [L0x7fffffffb400,L0x7fffffffb402,L0x7fffffffb404,L0x7fffffffb406]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb408,L0x7fffffffb40a,L0x7fffffffb40c,L0x7fffffffb40e] /\
    [L0x7fffffffb408,L0x7fffffffb40a,L0x7fffffffb40c,L0x7fffffffb40e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb410,L0x7fffffffb412,L0x7fffffffb414,L0x7fffffffb416] /\
    [L0x7fffffffb410,L0x7fffffffb412,L0x7fffffffb414,L0x7fffffffb416]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb418,L0x7fffffffb41a,L0x7fffffffb41c,L0x7fffffffb41e] /\
    [L0x7fffffffb418,L0x7fffffffb41a,L0x7fffffffb41c,L0x7fffffffb41e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb420,L0x7fffffffb422,L0x7fffffffb424,L0x7fffffffb426] /\
    [L0x7fffffffb420,L0x7fffffffb422,L0x7fffffffb424,L0x7fffffffb426]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb428,L0x7fffffffb42a,L0x7fffffffb42c,L0x7fffffffb42e] /\
    [L0x7fffffffb428,L0x7fffffffb42a,L0x7fffffffb42c,L0x7fffffffb42e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb430,L0x7fffffffb432,L0x7fffffffb434,L0x7fffffffb436] /\
    [L0x7fffffffb430,L0x7fffffffb432,L0x7fffffffb434,L0x7fffffffb436]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb438,L0x7fffffffb43a,L0x7fffffffb43c,L0x7fffffffb43e] /\
    [L0x7fffffffb438,L0x7fffffffb43a,L0x7fffffffb43c,L0x7fffffffb43e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb440,L0x7fffffffb442,L0x7fffffffb444,L0x7fffffffb446] /\
    [L0x7fffffffb440,L0x7fffffffb442,L0x7fffffffb444,L0x7fffffffb446]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb448,L0x7fffffffb44a,L0x7fffffffb44c,L0x7fffffffb44e] /\
    [L0x7fffffffb448,L0x7fffffffb44a,L0x7fffffffb44c,L0x7fffffffb44e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb450,L0x7fffffffb452,L0x7fffffffb454,L0x7fffffffb456] /\
    [L0x7fffffffb450,L0x7fffffffb452,L0x7fffffffb454,L0x7fffffffb456]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb458,L0x7fffffffb45a,L0x7fffffffb45c,L0x7fffffffb45e] /\
    [L0x7fffffffb458,L0x7fffffffb45a,L0x7fffffffb45c,L0x7fffffffb45e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb460,L0x7fffffffb462,L0x7fffffffb464,L0x7fffffffb466] /\
    [L0x7fffffffb460,L0x7fffffffb462,L0x7fffffffb464,L0x7fffffffb466]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb468,L0x7fffffffb46a,L0x7fffffffb46c,L0x7fffffffb46e] /\
    [L0x7fffffffb468,L0x7fffffffb46a,L0x7fffffffb46c,L0x7fffffffb46e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb470,L0x7fffffffb472,L0x7fffffffb474,L0x7fffffffb476] /\
    [L0x7fffffffb470,L0x7fffffffb472,L0x7fffffffb474,L0x7fffffffb476]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb478,L0x7fffffffb47a,L0x7fffffffb47c,L0x7fffffffb47e] /\
    [L0x7fffffffb478,L0x7fffffffb47a,L0x7fffffffb47c,L0x7fffffffb47e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q];

{
    Q = 3329 /\ NQ = -3329 /\ Q2 = 1665 /\ NQ2 = -1665 /\
    eqmod (F**2) (poly X [L0x7fffffffb280,L0x7fffffffb2a0])
          [Q, X**2 - 17**  1] /\
    eqmod (F**2) (poly X [L0x7fffffffb2c0,L0x7fffffffb2e0])
          [Q, X**2 - 17**129] /\
    eqmod (F**2) (poly X [L0x7fffffffb300,L0x7fffffffb320])
          [Q, X**2 - 17** 65] /\
    eqmod (F**2) (poly X [L0x7fffffffb340,L0x7fffffffb360])
          [Q, X**2 - 17**193] /\
    eqmod (F**2) (poly X [L0x7fffffffb282,L0x7fffffffb2a2])
          [Q, X**2 - 17** 33] /\
    eqmod (F**2) (poly X [L0x7fffffffb2c2,L0x7fffffffb2e2])
          [Q, X**2 - 17**161] /\
    eqmod (F**2) (poly X [L0x7fffffffb302,L0x7fffffffb322])
          [Q, X**2 - 17** 97] /\
    eqmod (F**2) (poly X [L0x7fffffffb342,L0x7fffffffb362])
          [Q, X**2 - 17**225] /\
    eqmod (F**2) (poly X [L0x7fffffffb284,L0x7fffffffb2a4])
          [Q, X**2 - 17** 17] /\
    eqmod (F**2) (poly X [L0x7fffffffb2c4,L0x7fffffffb2e4])
          [Q, X**2 - 17**145] /\
    eqmod (F**2) (poly X [L0x7fffffffb304,L0x7fffffffb324])
          [Q, X**2 - 17** 81] /\
    eqmod (F**2) (poly X [L0x7fffffffb344,L0x7fffffffb364])
          [Q, X**2 - 17**209] /\
    eqmod (F**2) (poly X [L0x7fffffffb286,L0x7fffffffb2a6])
          [Q, X**2 - 17** 49] /\
    eqmod (F**2) (poly X [L0x7fffffffb2c6,L0x7fffffffb2e6])
          [Q, X**2 - 17**177] /\
    eqmod (F**2) (poly X [L0x7fffffffb306,L0x7fffffffb326])
          [Q, X**2 - 17**113] /\
    eqmod (F**2) (poly X [L0x7fffffffb346,L0x7fffffffb366])
          [Q, X**2 - 17**241] /\
    eqmod (F**2) (poly X [L0x7fffffffb288,L0x7fffffffb2a8])
          [Q, X**2 - 17**  9] /\
    eqmod (F**2) (poly X [L0x7fffffffb2c8,L0x7fffffffb2e8])
          [Q, X**2 - 17**137] /\
    eqmod (F**2) (poly X [L0x7fffffffb308,L0x7fffffffb328])
          [Q, X**2 - 17** 73] /\
    eqmod (F**2) (poly X [L0x7fffffffb348,L0x7fffffffb368])
          [Q, X**2 - 17**201] /\
    eqmod (F**2) (poly X [L0x7fffffffb28a,L0x7fffffffb2aa])
          [Q, X**2 - 17** 41] /\
    eqmod (F**2) (poly X [L0x7fffffffb2ca,L0x7fffffffb2ea])
          [Q, X**2 - 17**169] /\
    eqmod (F**2) (poly X [L0x7fffffffb30a,L0x7fffffffb32a])
          [Q, X**2 - 17**105] /\
    eqmod (F**2) (poly X [L0x7fffffffb34a,L0x7fffffffb36a])
          [Q, X**2 - 17**233] /\
    eqmod (F**2) (poly X [L0x7fffffffb28c,L0x7fffffffb2ac])
          [Q, X**2 - 17** 25] /\
    eqmod (F**2) (poly X [L0x7fffffffb2cc,L0x7fffffffb2ec])
          [Q, X**2 - 17**153] /\
    eqmod (F**2) (poly X [L0x7fffffffb30c,L0x7fffffffb32c])
          [Q, X**2 - 17** 89] /\
    eqmod (F**2) (poly X [L0x7fffffffb34c,L0x7fffffffb36c])
          [Q, X**2 - 17**217] /\
    eqmod (F**2) (poly X [L0x7fffffffb28e,L0x7fffffffb2ae])
          [Q, X**2 - 17** 57] /\
    eqmod (F**2) (poly X [L0x7fffffffb2ce,L0x7fffffffb2ee])
          [Q, X**2 - 17**185] /\
    eqmod (F**2) (poly X [L0x7fffffffb30e,L0x7fffffffb32e])
          [Q, X**2 - 17**121] /\
    eqmod (F**2) (poly X [L0x7fffffffb34e,L0x7fffffffb36e])
          [Q, X**2 - 17**249] /\
    eqmod (F**2) (poly X [L0x7fffffffb290,L0x7fffffffb2b0])
          [Q, X**2 - 17**  5] /\
    eqmod (F**2) (poly X [L0x7fffffffb2d0,L0x7fffffffb2f0])
          [Q, X**2 - 17**133] /\
    eqmod (F**2) (poly X [L0x7fffffffb310,L0x7fffffffb330])
          [Q, X**2 - 17** 69] /\
    eqmod (F**2) (poly X [L0x7fffffffb350,L0x7fffffffb370])
          [Q, X**2 - 17**197] /\
    eqmod (F**2) (poly X [L0x7fffffffb292,L0x7fffffffb2b2])
          [Q, X**2 - 17** 37] /\
    eqmod (F**2) (poly X [L0x7fffffffb2d2,L0x7fffffffb2f2])
          [Q, X**2 - 17**165] /\
    eqmod (F**2) (poly X [L0x7fffffffb312,L0x7fffffffb332])
          [Q, X**2 - 17**101] /\
    eqmod (F**2) (poly X [L0x7fffffffb352,L0x7fffffffb372])
          [Q, X**2 - 17**229] /\
    eqmod (F**2) (poly X [L0x7fffffffb294,L0x7fffffffb2b4])
          [Q, X**2 - 17** 21] /\
    eqmod (F**2) (poly X [L0x7fffffffb2d4,L0x7fffffffb2f4])
          [Q, X**2 - 17**149] /\
    eqmod (F**2) (poly X [L0x7fffffffb314,L0x7fffffffb334])
          [Q, X**2 - 17** 85] /\
    eqmod (F**2) (poly X [L0x7fffffffb354,L0x7fffffffb374])
          [Q, X**2 - 17**213] /\
    eqmod (F**2) (poly X [L0x7fffffffb296,L0x7fffffffb2b6])
          [Q, X**2 - 17** 53] /\
    eqmod (F**2) (poly X [L0x7fffffffb2d6,L0x7fffffffb2f6])
          [Q, X**2 - 17**181] /\
    eqmod (F**2) (poly X [L0x7fffffffb316,L0x7fffffffb336])
          [Q, X**2 - 17**117] /\
    eqmod (F**2) (poly X [L0x7fffffffb356,L0x7fffffffb376])
          [Q, X**2 - 17**245] /\
    eqmod (F**2) (poly X [L0x7fffffffb298,L0x7fffffffb2b8])
          [Q, X**2 - 17** 13] /\
    eqmod (F**2) (poly X [L0x7fffffffb2d8,L0x7fffffffb2f8])
          [Q, X**2 - 17**141] /\
    eqmod (F**2) (poly X [L0x7fffffffb318,L0x7fffffffb338])
          [Q, X**2 - 17** 77] /\
    eqmod (F**2) (poly X [L0x7fffffffb358,L0x7fffffffb378])
          [Q, X**2 - 17**205] /\
    eqmod (F**2) (poly X [L0x7fffffffb29a,L0x7fffffffb2ba])
          [Q, X**2 - 17** 45] /\
    eqmod (F**2) (poly X [L0x7fffffffb2da,L0x7fffffffb2fa])
          [Q, X**2 - 17**173] /\
    eqmod (F**2) (poly X [L0x7fffffffb31a,L0x7fffffffb33a])
          [Q, X**2 - 17**109] /\
    eqmod (F**2) (poly X [L0x7fffffffb35a,L0x7fffffffb37a])
          [Q, X**2 - 17**237] /\
    eqmod (F**2) (poly X [L0x7fffffffb29c,L0x7fffffffb2bc])
          [Q, X**2 - 17** 29] /\
    eqmod (F**2) (poly X [L0x7fffffffb2dc,L0x7fffffffb2fc])
          [Q, X**2 - 17**157] /\
    eqmod (F**2) (poly X [L0x7fffffffb31c,L0x7fffffffb33c])
          [Q, X**2 - 17** 93] /\
    eqmod (F**2) (poly X [L0x7fffffffb35c,L0x7fffffffb37c])
          [Q, X**2 - 17**221] /\
    eqmod (F**2) (poly X [L0x7fffffffb29e,L0x7fffffffb2be])
          [Q, X**2 - 17** 61] /\
    eqmod (F**2) (poly X [L0x7fffffffb2de,L0x7fffffffb2fe])
          [Q, X**2 - 17**189] /\
    eqmod (F**2) (poly X [L0x7fffffffb31e,L0x7fffffffb33e])
          [Q, X**2 - 17**125] /\
    eqmod (F**2) (poly X [L0x7fffffffb35e,L0x7fffffffb37e])
          [Q, X**2 - 17**253] /\
    eqmod (F**2) (poly X [L0x7fffffffb380,L0x7fffffffb3a0])
          [Q, X**2 - 17**  3] /\
    eqmod (F**2) (poly X [L0x7fffffffb3c0,L0x7fffffffb3e0])
          [Q, X**2 - 17**131] /\
    eqmod (F**2) (poly X [L0x7fffffffb400,L0x7fffffffb420])
          [Q, X**2 - 17** 67] /\
    eqmod (F**2) (poly X [L0x7fffffffb440,L0x7fffffffb460])
          [Q, X**2 - 17**195] /\
    eqmod (F**2) (poly X [L0x7fffffffb382,L0x7fffffffb3a2])
          [Q, X**2 - 17** 35] /\
    eqmod (F**2) (poly X [L0x7fffffffb3c2,L0x7fffffffb3e2])
          [Q, X**2 - 17**163] /\
    eqmod (F**2) (poly X [L0x7fffffffb402,L0x7fffffffb422])
          [Q, X**2 - 17** 99] /\
    eqmod (F**2) (poly X [L0x7fffffffb442,L0x7fffffffb462])
          [Q, X**2 - 17**227] /\
    eqmod (F**2) (poly X [L0x7fffffffb384,L0x7fffffffb3a4])
          [Q, X**2 - 17** 19] /\
    eqmod (F**2) (poly X [L0x7fffffffb3c4,L0x7fffffffb3e4])
          [Q, X**2 - 17**147] /\
    eqmod (F**2) (poly X [L0x7fffffffb404,L0x7fffffffb424])
          [Q, X**2 - 17** 83] /\
    eqmod (F**2) (poly X [L0x7fffffffb444,L0x7fffffffb464])
          [Q, X**2 - 17**211] /\
    eqmod (F**2) (poly X [L0x7fffffffb386,L0x7fffffffb3a6])
          [Q, X**2 - 17** 51] /\
    eqmod (F**2) (poly X [L0x7fffffffb3c6,L0x7fffffffb3e6])
          [Q, X**2 - 17**179] /\
    eqmod (F**2) (poly X [L0x7fffffffb406,L0x7fffffffb426])
          [Q, X**2 - 17**115] /\
    eqmod (F**2) (poly X [L0x7fffffffb446,L0x7fffffffb466])
          [Q, X**2 - 17**243] /\
    eqmod (F**2) (poly X [L0x7fffffffb388,L0x7fffffffb3a8])
          [Q, X**2 - 17** 11] /\
    eqmod (F**2) (poly X [L0x7fffffffb3c8,L0x7fffffffb3e8])
          [Q, X**2 - 17**139] /\
    eqmod (F**2) (poly X [L0x7fffffffb408,L0x7fffffffb428])
          [Q, X**2 - 17** 75] /\
    eqmod (F**2) (poly X [L0x7fffffffb448,L0x7fffffffb468])
          [Q, X**2 - 17**203] /\
    eqmod (F**2) (poly X [L0x7fffffffb38a,L0x7fffffffb3aa])
          [Q, X**2 - 17** 43] /\
    eqmod (F**2) (poly X [L0x7fffffffb3ca,L0x7fffffffb3ea])
          [Q, X**2 - 17**171] /\
    eqmod (F**2) (poly X [L0x7fffffffb40a,L0x7fffffffb42a])
          [Q, X**2 - 17**107] /\
    eqmod (F**2) (poly X [L0x7fffffffb44a,L0x7fffffffb46a])
          [Q, X**2 - 17**235] /\
    eqmod (F**2) (poly X [L0x7fffffffb38c,L0x7fffffffb3ac])
          [Q, X**2 - 17** 27] /\
    eqmod (F**2) (poly X [L0x7fffffffb3cc,L0x7fffffffb3ec])
          [Q, X**2 - 17**155] /\
    eqmod (F**2) (poly X [L0x7fffffffb40c,L0x7fffffffb42c])
          [Q, X**2 - 17** 91] /\
    eqmod (F**2) (poly X [L0x7fffffffb44c,L0x7fffffffb46c])
          [Q, X**2 - 17**219] /\
    eqmod (F**2) (poly X [L0x7fffffffb38e,L0x7fffffffb3ae])
          [Q, X**2 - 17** 59] /\
    eqmod (F**2) (poly X [L0x7fffffffb3ce,L0x7fffffffb3ee])
          [Q, X**2 - 17**187] /\
    eqmod (F**2) (poly X [L0x7fffffffb40e,L0x7fffffffb42e])
          [Q, X**2 - 17**123] /\
    eqmod (F**2) (poly X [L0x7fffffffb44e,L0x7fffffffb46e])
          [Q, X**2 - 17**251] /\
    eqmod (F**2) (poly X [L0x7fffffffb390,L0x7fffffffb3b0])
          [Q, X**2 - 17**  7] /\
    eqmod (F**2) (poly X [L0x7fffffffb3d0,L0x7fffffffb3f0])
          [Q, X**2 - 17**135] /\
    eqmod (F**2) (poly X [L0x7fffffffb410,L0x7fffffffb430])
          [Q, X**2 - 17** 71] /\
    eqmod (F**2) (poly X [L0x7fffffffb450,L0x7fffffffb470])
          [Q, X**2 - 17**199] /\
    eqmod (F**2) (poly X [L0x7fffffffb392,L0x7fffffffb3b2])
          [Q, X**2 - 17** 39] /\
    eqmod (F**2) (poly X [L0x7fffffffb3d2,L0x7fffffffb3f2])
          [Q, X**2 - 17**167] /\
    eqmod (F**2) (poly X [L0x7fffffffb412,L0x7fffffffb432])
          [Q, X**2 - 17**103] /\
    eqmod (F**2) (poly X [L0x7fffffffb452,L0x7fffffffb472])
          [Q, X**2 - 17**231] /\
    eqmod (F**2) (poly X [L0x7fffffffb394,L0x7fffffffb3b4])
          [Q, X**2 - 17** 23] /\
    eqmod (F**2) (poly X [L0x7fffffffb3d4,L0x7fffffffb3f4])
          [Q, X**2 - 17**151] /\
    eqmod (F**2) (poly X [L0x7fffffffb414,L0x7fffffffb434])
          [Q, X**2 - 17** 87] /\
    eqmod (F**2) (poly X [L0x7fffffffb454,L0x7fffffffb474])
          [Q, X**2 - 17**215] /\
    eqmod (F**2) (poly X [L0x7fffffffb396,L0x7fffffffb3b6])
          [Q, X**2 - 17** 55] /\
    eqmod (F**2) (poly X [L0x7fffffffb3d6,L0x7fffffffb3f6])
          [Q, X**2 - 17**183] /\
    eqmod (F**2) (poly X [L0x7fffffffb416,L0x7fffffffb436])
          [Q, X**2 - 17**119] /\
    eqmod (F**2) (poly X [L0x7fffffffb456,L0x7fffffffb476])
          [Q, X**2 - 17**247] /\
    eqmod (F**2) (poly X [L0x7fffffffb398,L0x7fffffffb3b8])
          [Q, X**2 - 17** 15] /\
    eqmod (F**2) (poly X [L0x7fffffffb3d8,L0x7fffffffb3f8])
          [Q, X**2 - 17**143] /\
    eqmod (F**2) (poly X [L0x7fffffffb418,L0x7fffffffb438])
          [Q, X**2 - 17** 79] /\
    eqmod (F**2) (poly X [L0x7fffffffb458,L0x7fffffffb478])
          [Q, X**2 - 17**207] /\
    eqmod (F**2) (poly X [L0x7fffffffb39a,L0x7fffffffb3ba])
          [Q, X**2 - 17** 47] /\
    eqmod (F**2) (poly X [L0x7fffffffb3da,L0x7fffffffb3fa])
          [Q, X**2 - 17**175] /\
    eqmod (F**2) (poly X [L0x7fffffffb41a,L0x7fffffffb43a])
          [Q, X**2 - 17**111] /\
    eqmod (F**2) (poly X [L0x7fffffffb45a,L0x7fffffffb47a])
          [Q, X**2 - 17**239] /\
    eqmod (F**2) (poly X [L0x7fffffffb39c,L0x7fffffffb3bc])
          [Q, X**2 - 17** 31] /\
    eqmod (F**2) (poly X [L0x7fffffffb3dc,L0x7fffffffb3fc])
          [Q, X**2 - 17**159] /\
    eqmod (F**2) (poly X [L0x7fffffffb41c,L0x7fffffffb43c])
          [Q, X**2 - 17** 95] /\
    eqmod (F**2) (poly X [L0x7fffffffb45c,L0x7fffffffb47c])
          [Q, X**2 - 17**223] /\
    eqmod (F**2) (poly X [L0x7fffffffb39e,L0x7fffffffb3be])
          [Q, X**2 - 17** 63] /\
    eqmod (F**2) (poly X [L0x7fffffffb3de,L0x7fffffffb3fe])
          [Q, X**2 - 17**191] /\
    eqmod (F**2) (poly X [L0x7fffffffb41e,L0x7fffffffb43e])
          [Q, X**2 - 17**127] /\
    eqmod (F**2) (poly X [L0x7fffffffb45e,L0x7fffffffb47e])
          [Q, X**2 - 17**255]
    prove with [cuts [6, 12]]
&&
    Q = 3329@16 /\ NQ = (-3329)@16 /\ Q2 = 1665@16 /\ NQ2 = (-1665)@16 /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb280,L0x7fffffffb282,L0x7fffffffb284,L0x7fffffffb286] /\
    [L0x7fffffffb280,L0x7fffffffb282,L0x7fffffffb284,L0x7fffffffb286]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb288,L0x7fffffffb28a,L0x7fffffffb28c,L0x7fffffffb28e] /\
    [L0x7fffffffb288,L0x7fffffffb28a,L0x7fffffffb28c,L0x7fffffffb28e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb290,L0x7fffffffb292,L0x7fffffffb294,L0x7fffffffb296] /\
    [L0x7fffffffb290,L0x7fffffffb292,L0x7fffffffb294,L0x7fffffffb296]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb298,L0x7fffffffb29a,L0x7fffffffb29c,L0x7fffffffb29e] /\
    [L0x7fffffffb298,L0x7fffffffb29a,L0x7fffffffb29c,L0x7fffffffb29e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2a0,L0x7fffffffb2a2,L0x7fffffffb2a4,L0x7fffffffb2a6] /\
    [L0x7fffffffb2a0,L0x7fffffffb2a2,L0x7fffffffb2a4,L0x7fffffffb2a6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2a8,L0x7fffffffb2aa,L0x7fffffffb2ac,L0x7fffffffb2ae] /\
    [L0x7fffffffb2a8,L0x7fffffffb2aa,L0x7fffffffb2ac,L0x7fffffffb2ae]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2b0,L0x7fffffffb2b2,L0x7fffffffb2b4,L0x7fffffffb2b6] /\
    [L0x7fffffffb2b0,L0x7fffffffb2b2,L0x7fffffffb2b4,L0x7fffffffb2b6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2b8,L0x7fffffffb2ba,L0x7fffffffb2bc,L0x7fffffffb2be] /\
    [L0x7fffffffb2b8,L0x7fffffffb2ba,L0x7fffffffb2bc,L0x7fffffffb2be]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2c0,L0x7fffffffb2c2,L0x7fffffffb2c4,L0x7fffffffb2c6] /\
    [L0x7fffffffb2c0,L0x7fffffffb2c2,L0x7fffffffb2c4,L0x7fffffffb2c6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2c8,L0x7fffffffb2ca,L0x7fffffffb2cc,L0x7fffffffb2ce] /\
    [L0x7fffffffb2c8,L0x7fffffffb2ca,L0x7fffffffb2cc,L0x7fffffffb2ce]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2d0,L0x7fffffffb2d2,L0x7fffffffb2d4,L0x7fffffffb2d6] /\
    [L0x7fffffffb2d0,L0x7fffffffb2d2,L0x7fffffffb2d4,L0x7fffffffb2d6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2d8,L0x7fffffffb2da,L0x7fffffffb2dc,L0x7fffffffb2de] /\
    [L0x7fffffffb2d8,L0x7fffffffb2da,L0x7fffffffb2dc,L0x7fffffffb2de]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2e0,L0x7fffffffb2e2,L0x7fffffffb2e4,L0x7fffffffb2e6] /\
    [L0x7fffffffb2e0,L0x7fffffffb2e2,L0x7fffffffb2e4,L0x7fffffffb2e6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2e8,L0x7fffffffb2ea,L0x7fffffffb2ec,L0x7fffffffb2ee] /\
    [L0x7fffffffb2e8,L0x7fffffffb2ea,L0x7fffffffb2ec,L0x7fffffffb2ee]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2f0,L0x7fffffffb2f2,L0x7fffffffb2f4,L0x7fffffffb2f6] /\
    [L0x7fffffffb2f0,L0x7fffffffb2f2,L0x7fffffffb2f4,L0x7fffffffb2f6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb2f8,L0x7fffffffb2fa,L0x7fffffffb2fc,L0x7fffffffb2fe] /\
    [L0x7fffffffb2f8,L0x7fffffffb2fa,L0x7fffffffb2fc,L0x7fffffffb2fe]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb300,L0x7fffffffb302,L0x7fffffffb304,L0x7fffffffb306] /\
    [L0x7fffffffb300,L0x7fffffffb302,L0x7fffffffb304,L0x7fffffffb306]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb308,L0x7fffffffb30a,L0x7fffffffb30c,L0x7fffffffb30e] /\
    [L0x7fffffffb308,L0x7fffffffb30a,L0x7fffffffb30c,L0x7fffffffb30e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb310,L0x7fffffffb312,L0x7fffffffb314,L0x7fffffffb316] /\
    [L0x7fffffffb310,L0x7fffffffb312,L0x7fffffffb314,L0x7fffffffb316]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb318,L0x7fffffffb31a,L0x7fffffffb31c,L0x7fffffffb31e] /\
    [L0x7fffffffb318,L0x7fffffffb31a,L0x7fffffffb31c,L0x7fffffffb31e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb320,L0x7fffffffb322,L0x7fffffffb324,L0x7fffffffb326] /\
    [L0x7fffffffb320,L0x7fffffffb322,L0x7fffffffb324,L0x7fffffffb326]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb328,L0x7fffffffb32a,L0x7fffffffb32c,L0x7fffffffb32e] /\
    [L0x7fffffffb328,L0x7fffffffb32a,L0x7fffffffb32c,L0x7fffffffb32e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb330,L0x7fffffffb332,L0x7fffffffb334,L0x7fffffffb336] /\
    [L0x7fffffffb330,L0x7fffffffb332,L0x7fffffffb334,L0x7fffffffb336]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb338,L0x7fffffffb33a,L0x7fffffffb33c,L0x7fffffffb33e] /\
    [L0x7fffffffb338,L0x7fffffffb33a,L0x7fffffffb33c,L0x7fffffffb33e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb340,L0x7fffffffb342,L0x7fffffffb344,L0x7fffffffb346] /\
    [L0x7fffffffb340,L0x7fffffffb342,L0x7fffffffb344,L0x7fffffffb346]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb348,L0x7fffffffb34a,L0x7fffffffb34c,L0x7fffffffb34e] /\
    [L0x7fffffffb348,L0x7fffffffb34a,L0x7fffffffb34c,L0x7fffffffb34e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb350,L0x7fffffffb352,L0x7fffffffb354,L0x7fffffffb356] /\
    [L0x7fffffffb350,L0x7fffffffb352,L0x7fffffffb354,L0x7fffffffb356]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb358,L0x7fffffffb35a,L0x7fffffffb35c,L0x7fffffffb35e] /\
    [L0x7fffffffb358,L0x7fffffffb35a,L0x7fffffffb35c,L0x7fffffffb35e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb360,L0x7fffffffb362,L0x7fffffffb364,L0x7fffffffb366] /\
    [L0x7fffffffb360,L0x7fffffffb362,L0x7fffffffb364,L0x7fffffffb366]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb368,L0x7fffffffb36a,L0x7fffffffb36c,L0x7fffffffb36e] /\
    [L0x7fffffffb368,L0x7fffffffb36a,L0x7fffffffb36c,L0x7fffffffb36e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb370,L0x7fffffffb372,L0x7fffffffb374,L0x7fffffffb376] /\
    [L0x7fffffffb370,L0x7fffffffb372,L0x7fffffffb374,L0x7fffffffb376]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb378,L0x7fffffffb37a,L0x7fffffffb37c,L0x7fffffffb37e] /\
    [L0x7fffffffb378,L0x7fffffffb37a,L0x7fffffffb37c,L0x7fffffffb37e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb380,L0x7fffffffb382,L0x7fffffffb384,L0x7fffffffb386] /\
    [L0x7fffffffb380,L0x7fffffffb382,L0x7fffffffb384,L0x7fffffffb386]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb388,L0x7fffffffb38a,L0x7fffffffb38c,L0x7fffffffb38e] /\
    [L0x7fffffffb388,L0x7fffffffb38a,L0x7fffffffb38c,L0x7fffffffb38e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb390,L0x7fffffffb392,L0x7fffffffb394,L0x7fffffffb396] /\
    [L0x7fffffffb390,L0x7fffffffb392,L0x7fffffffb394,L0x7fffffffb396]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb398,L0x7fffffffb39a,L0x7fffffffb39c,L0x7fffffffb39e] /\
    [L0x7fffffffb398,L0x7fffffffb39a,L0x7fffffffb39c,L0x7fffffffb39e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3a0,L0x7fffffffb3a2,L0x7fffffffb3a4,L0x7fffffffb3a6] /\
    [L0x7fffffffb3a0,L0x7fffffffb3a2,L0x7fffffffb3a4,L0x7fffffffb3a6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3a8,L0x7fffffffb3aa,L0x7fffffffb3ac,L0x7fffffffb3ae] /\
    [L0x7fffffffb3a8,L0x7fffffffb3aa,L0x7fffffffb3ac,L0x7fffffffb3ae]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3b0,L0x7fffffffb3b2,L0x7fffffffb3b4,L0x7fffffffb3b6] /\
    [L0x7fffffffb3b0,L0x7fffffffb3b2,L0x7fffffffb3b4,L0x7fffffffb3b6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3b8,L0x7fffffffb3ba,L0x7fffffffb3bc,L0x7fffffffb3be] /\
    [L0x7fffffffb3b8,L0x7fffffffb3ba,L0x7fffffffb3bc,L0x7fffffffb3be]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3c0,L0x7fffffffb3c2,L0x7fffffffb3c4,L0x7fffffffb3c6] /\
    [L0x7fffffffb3c0,L0x7fffffffb3c2,L0x7fffffffb3c4,L0x7fffffffb3c6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3c8,L0x7fffffffb3ca,L0x7fffffffb3cc,L0x7fffffffb3ce] /\
    [L0x7fffffffb3c8,L0x7fffffffb3ca,L0x7fffffffb3cc,L0x7fffffffb3ce]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3d0,L0x7fffffffb3d2,L0x7fffffffb3d4,L0x7fffffffb3d6] /\
    [L0x7fffffffb3d0,L0x7fffffffb3d2,L0x7fffffffb3d4,L0x7fffffffb3d6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3d8,L0x7fffffffb3da,L0x7fffffffb3dc,L0x7fffffffb3de] /\
    [L0x7fffffffb3d8,L0x7fffffffb3da,L0x7fffffffb3dc,L0x7fffffffb3de]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3e0,L0x7fffffffb3e2,L0x7fffffffb3e4,L0x7fffffffb3e6] /\
    [L0x7fffffffb3e0,L0x7fffffffb3e2,L0x7fffffffb3e4,L0x7fffffffb3e6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3e8,L0x7fffffffb3ea,L0x7fffffffb3ec,L0x7fffffffb3ee] /\
    [L0x7fffffffb3e8,L0x7fffffffb3ea,L0x7fffffffb3ec,L0x7fffffffb3ee]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3f0,L0x7fffffffb3f2,L0x7fffffffb3f4,L0x7fffffffb3f6] /\
    [L0x7fffffffb3f0,L0x7fffffffb3f2,L0x7fffffffb3f4,L0x7fffffffb3f6]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb3f8,L0x7fffffffb3fa,L0x7fffffffb3fc,L0x7fffffffb3fe] /\
    [L0x7fffffffb3f8,L0x7fffffffb3fa,L0x7fffffffb3fc,L0x7fffffffb3fe]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb400,L0x7fffffffb402,L0x7fffffffb404,L0x7fffffffb406] /\
    [L0x7fffffffb400,L0x7fffffffb402,L0x7fffffffb404,L0x7fffffffb406]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb408,L0x7fffffffb40a,L0x7fffffffb40c,L0x7fffffffb40e] /\
    [L0x7fffffffb408,L0x7fffffffb40a,L0x7fffffffb40c,L0x7fffffffb40e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb410,L0x7fffffffb412,L0x7fffffffb414,L0x7fffffffb416] /\
    [L0x7fffffffb410,L0x7fffffffb412,L0x7fffffffb414,L0x7fffffffb416]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb418,L0x7fffffffb41a,L0x7fffffffb41c,L0x7fffffffb41e] /\
    [L0x7fffffffb418,L0x7fffffffb41a,L0x7fffffffb41c,L0x7fffffffb41e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb420,L0x7fffffffb422,L0x7fffffffb424,L0x7fffffffb426] /\
    [L0x7fffffffb420,L0x7fffffffb422,L0x7fffffffb424,L0x7fffffffb426]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb428,L0x7fffffffb42a,L0x7fffffffb42c,L0x7fffffffb42e] /\
    [L0x7fffffffb428,L0x7fffffffb42a,L0x7fffffffb42c,L0x7fffffffb42e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb430,L0x7fffffffb432,L0x7fffffffb434,L0x7fffffffb436] /\
    [L0x7fffffffb430,L0x7fffffffb432,L0x7fffffffb434,L0x7fffffffb436]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb438,L0x7fffffffb43a,L0x7fffffffb43c,L0x7fffffffb43e] /\
    [L0x7fffffffb438,L0x7fffffffb43a,L0x7fffffffb43c,L0x7fffffffb43e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb440,L0x7fffffffb442,L0x7fffffffb444,L0x7fffffffb446] /\
    [L0x7fffffffb440,L0x7fffffffb442,L0x7fffffffb444,L0x7fffffffb446]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb448,L0x7fffffffb44a,L0x7fffffffb44c,L0x7fffffffb44e] /\
    [L0x7fffffffb448,L0x7fffffffb44a,L0x7fffffffb44c,L0x7fffffffb44e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb450,L0x7fffffffb452,L0x7fffffffb454,L0x7fffffffb456] /\
    [L0x7fffffffb450,L0x7fffffffb452,L0x7fffffffb454,L0x7fffffffb456]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb458,L0x7fffffffb45a,L0x7fffffffb45c,L0x7fffffffb45e] /\
    [L0x7fffffffb458,L0x7fffffffb45a,L0x7fffffffb45c,L0x7fffffffb45e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb460,L0x7fffffffb462,L0x7fffffffb464,L0x7fffffffb466] /\
    [L0x7fffffffb460,L0x7fffffffb462,L0x7fffffffb464,L0x7fffffffb466]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb468,L0x7fffffffb46a,L0x7fffffffb46c,L0x7fffffffb46e] /\
    [L0x7fffffffb468,L0x7fffffffb46a,L0x7fffffffb46c,L0x7fffffffb46e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb470,L0x7fffffffb472,L0x7fffffffb474,L0x7fffffffb476] /\
    [L0x7fffffffb470,L0x7fffffffb472,L0x7fffffffb474,L0x7fffffffb476]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q] /\
    [8@16*NQ,8@16*NQ,8@16*NQ,8@16*NQ]<s
    [L0x7fffffffb478,L0x7fffffffb47a,L0x7fffffffb47c,L0x7fffffffb47e] /\
    [L0x7fffffffb478,L0x7fffffffb47a,L0x7fffffffb47c,L0x7fffffffb47e]<s
    [8@16*Q,8@16*Q,8@16*Q,8@16*Q]
    prove with [cuts [6, 12]]
}

