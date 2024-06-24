(* quine: cv.exe -v -isafety -slicing -enable_rewriting:eqmod -jobs 40 PQCLEAN_DILITHIUM3_AARCH64_ntt.cl
Parsing CryptoLine file:                    [OK]            0.2181 seconds
Checking well-formedness:                   [OK]            0.0654 seconds

Procedure main
--------------
Transforming to SSA form:                   [OK]            0.0524 seconds
Normalizing specification:                  [OK]            0.0441 seconds
Rewriting assignments:                      [OK]            0.0610 seconds
Verifying program safety:                   [OK]            189.9439 seconds
Verifying range assertions:                 [OK]            0.0177 seconds
Verifying range specification:              [OK]            4.5771 seconds
Rewriting value-preserved casting:          [OK]            0.0228 seconds
Verifying algebraic assertions:             [OK]            202.0065 seconds
Verifying algebraic specification:          [OK]            57.4965 seconds
Procedure verification:                     [OK]            454.2924 seconds

Summary
-------
Verification result:                        [OK]            454.6429 seconds


*)
proc main (
int32 c00,int32 c01,int32 c02,int32 c03,int32 c04,int32 c05,int32 c06,
int32 c07,int32 c08,int32 c09,int32 c0a,int32 c0b,int32 c0c,int32 c0d,
int32 c0e,int32 c0f,int32 c10,int32 c11,int32 c12,int32 c13,int32 c14,
int32 c15,int32 c16,int32 c17,int32 c18,int32 c19,int32 c1a,int32 c1b,
int32 c1c,int32 c1d,int32 c1e,int32 c1f,int32 c20,int32 c21,int32 c22,
int32 c23,int32 c24,int32 c25,int32 c26,int32 c27,int32 c28,int32 c29,
int32 c2a,int32 c2b,int32 c2c,int32 c2d,int32 c2e,int32 c2f,int32 c30,
int32 c31,int32 c32,int32 c33,int32 c34,int32 c35,int32 c36,int32 c37,
int32 c38,int32 c39,int32 c3a,int32 c3b,int32 c3c,int32 c3d,int32 c3e,
int32 c3f,int32 c40,int32 c41,int32 c42,int32 c43,int32 c44,int32 c45,
int32 c46,int32 c47,int32 c48,int32 c49,int32 c4a,int32 c4b,int32 c4c,
int32 c4d,int32 c4e,int32 c4f,int32 c50,int32 c51,int32 c52,int32 c53,
int32 c54,int32 c55,int32 c56,int32 c57,int32 c58,int32 c59,int32 c5a,
int32 c5b,int32 c5c,int32 c5d,int32 c5e,int32 c5f,int32 c60,int32 c61,
int32 c62,int32 c63,int32 c64,int32 c65,int32 c66,int32 c67,int32 c68,
int32 c69,int32 c6a,int32 c6b,int32 c6c,int32 c6d,int32 c6e,int32 c6f,
int32 c70,int32 c71,int32 c72,int32 c73,int32 c74,int32 c75,int32 c76,
int32 c77,int32 c78,int32 c79,int32 c7a,int32 c7b,int32 c7c,int32 c7d,
int32 c7e,int32 c7f,int32 c80,int32 c81,int32 c82,int32 c83,int32 c84,
int32 c85,int32 c86,int32 c87,int32 c88,int32 c89,int32 c8a,int32 c8b,
int32 c8c,int32 c8d,int32 c8e,int32 c8f,int32 c90,int32 c91,int32 c92,
int32 c93,int32 c94,int32 c95,int32 c96,int32 c97,int32 c98,int32 c99,
int32 c9a,int32 c9b,int32 c9c,int32 c9d,int32 c9e,int32 c9f,int32 ca0,
int32 ca1,int32 ca2,int32 ca3,int32 ca4,int32 ca5,int32 ca6,int32 ca7,
int32 ca8,int32 ca9,int32 caa,int32 cab,int32 cac,int32 cad,int32 cae,
int32 caf,int32 cb0,int32 cb1,int32 cb2,int32 cb3,int32 cb4,int32 cb5,
int32 cb6,int32 cb7,int32 cb8,int32 cb9,int32 cba,int32 cbb,int32 cbc,
int32 cbd,int32 cbe,int32 cbf,int32 cc0,int32 cc1,int32 cc2,int32 cc3,
int32 cc4,int32 cc5,int32 cc6,int32 cc7,int32 cc8,int32 cc9,int32 cca,
int32 ccb,int32 ccc,int32 ccd,int32 cce,int32 ccf,int32 cd0,int32 cd1,
int32 cd2,int32 cd3,int32 cd4,int32 cd5,int32 cd6,int32 cd7,int32 cd8,
int32 cd9,int32 cda,int32 cdb,int32 cdc,int32 cdd,int32 cde,int32 cdf,
int32 ce0,int32 ce1,int32 ce2,int32 ce3,int32 ce4,int32 ce5,int32 ce6,
int32 ce7,int32 ce8,int32 ce9,int32 cea,int32 ceb,int32 cec,int32 ced,
int32 cee,int32 cef,int32 cf0,int32 cf1,int32 cf2,int32 cf3,int32 cf4,
int32 cf5,int32 cf6,int32 cf7,int32 cf8,int32 cf9,int32 cfa,int32 cfb,
int32 cfc,int32 cfd,int32 cfe,int32 cff,
int32   Q,int32  NQ,int32  Q2,int32 NQ2,int32 X
) =
{
Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
[NQ2,NQ2,NQ2,NQ2]<[c00,c01,c02,c03]/\[c00,c01,c02,c03]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c04,c05,c06,c07]/\[c04,c05,c06,c07]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c08,c09,c0a,c0b]/\[c08,c09,c0a,c0b]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c0c,c0d,c0e,c0f]/\[c0c,c0d,c0e,c0f]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c10,c11,c12,c13]/\[c10,c11,c12,c13]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c14,c15,c16,c17]/\[c14,c15,c16,c17]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c18,c19,c1a,c1b]/\[c18,c19,c1a,c1b]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c1c,c1d,c1e,c1f]/\[c1c,c1d,c1e,c1f]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c20,c21,c22,c23]/\[c20,c21,c22,c23]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c24,c25,c26,c27]/\[c24,c25,c26,c27]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c28,c29,c2a,c2b]/\[c28,c29,c2a,c2b]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c2c,c2d,c2e,c2f]/\[c2c,c2d,c2e,c2f]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c30,c31,c32,c33]/\[c30,c31,c32,c33]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c34,c35,c36,c37]/\[c34,c35,c36,c37]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c38,c39,c3a,c3b]/\[c38,c39,c3a,c3b]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c3c,c3d,c3e,c3f]/\[c3c,c3d,c3e,c3f]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c40,c41,c42,c43]/\[c40,c41,c42,c43]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c44,c45,c46,c47]/\[c44,c45,c46,c47]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c48,c49,c4a,c4b]/\[c48,c49,c4a,c4b]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c4c,c4d,c4e,c4f]/\[c4c,c4d,c4e,c4f]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c50,c51,c52,c53]/\[c50,c51,c52,c53]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c54,c55,c56,c57]/\[c54,c55,c56,c57]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c58,c59,c5a,c5b]/\[c58,c59,c5a,c5b]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c5c,c5d,c5e,c5f]/\[c5c,c5d,c5e,c5f]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c60,c61,c62,c63]/\[c60,c61,c62,c63]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c64,c65,c66,c67]/\[c64,c65,c66,c67]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c68,c69,c6a,c6b]/\[c68,c69,c6a,c6b]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c6c,c6d,c6e,c6f]/\[c6c,c6d,c6e,c6f]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c70,c71,c72,c73]/\[c70,c71,c72,c73]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c74,c75,c76,c77]/\[c74,c75,c76,c77]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c78,c79,c7a,c7b]/\[c78,c79,c7a,c7b]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c7c,c7d,c7e,c7f]/\[c7c,c7d,c7e,c7f]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c80,c81,c82,c83]/\[c80,c81,c82,c83]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c84,c85,c86,c87]/\[c84,c85,c86,c87]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c88,c89,c8a,c8b]/\[c88,c89,c8a,c8b]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c8c,c8d,c8e,c8f]/\[c8c,c8d,c8e,c8f]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c90,c91,c92,c93]/\[c90,c91,c92,c93]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c94,c95,c96,c97]/\[c94,c95,c96,c97]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c98,c99,c9a,c9b]/\[c98,c99,c9a,c9b]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[c9c,c9d,c9e,c9f]/\[c9c,c9d,c9e,c9f]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[ca0,ca1,ca2,ca3]/\[ca0,ca1,ca2,ca3]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[ca4,ca5,ca6,ca7]/\[ca4,ca5,ca6,ca7]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[ca8,ca9,caa,cab]/\[ca8,ca9,caa,cab]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[cac,cad,cae,caf]/\[cac,cad,cae,caf]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[cb0,cb1,cb2,cb3]/\[cb0,cb1,cb2,cb3]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[cb4,cb5,cb6,cb7]/\[cb4,cb5,cb6,cb7]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[cb8,cb9,cba,cbb]/\[cb8,cb9,cba,cbb]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[cbc,cbd,cbe,cbf]/\[cbc,cbd,cbe,cbf]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[cc0,cc1,cc2,cc3]/\[cc0,cc1,cc2,cc3]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[cc4,cc5,cc6,cc7]/\[cc4,cc5,cc6,cc7]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[cc8,cc9,cca,ccb]/\[cc8,cc9,cca,ccb]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[ccc,ccd,cce,ccf]/\[ccc,ccd,cce,ccf]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[cd0,cd1,cd2,cd3]/\[cd0,cd1,cd2,cd3]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[cd4,cd5,cd6,cd7]/\[cd4,cd5,cd6,cd7]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[cd8,cd9,cda,cdb]/\[cd8,cd9,cda,cdb]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[cdc,cdd,cde,cdf]/\[cdc,cdd,cde,cdf]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[ce0,ce1,ce2,ce3]/\[ce0,ce1,ce2,ce3]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[ce4,ce5,ce6,ce7]/\[ce4,ce5,ce6,ce7]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[ce8,ce9,cea,ceb]/\[ce8,ce9,cea,ceb]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[cec,ced,cee,cef]/\[cec,ced,cee,cef]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[cf0,cf1,cf2,cf3]/\[cf0,cf1,cf2,cf3]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[cf4,cf5,cf6,cf7]/\[cf4,cf5,cf6,cf7]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[cf8,cf9,cfa,cfb]/\[cf8,cf9,cfa,cfb]<[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<[cfc,cfd,cfe,cff]/\[cfc,cfd,cfe,cff]<[Q2,Q2,Q2,Q2]
  &&
Q = 8380417@32  /\ NQ = (-8380417)@32 /\
Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
[NQ2,NQ2,NQ2,NQ2]<s[c00,c01,c02,c03]/\[c00,c01,c02,c03]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c04,c05,c06,c07]/\[c04,c05,c06,c07]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c08,c09,c0a,c0b]/\[c08,c09,c0a,c0b]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c0c,c0d,c0e,c0f]/\[c0c,c0d,c0e,c0f]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c10,c11,c12,c13]/\[c10,c11,c12,c13]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c14,c15,c16,c17]/\[c14,c15,c16,c17]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c18,c19,c1a,c1b]/\[c18,c19,c1a,c1b]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c1c,c1d,c1e,c1f]/\[c1c,c1d,c1e,c1f]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c20,c21,c22,c23]/\[c20,c21,c22,c23]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c24,c25,c26,c27]/\[c24,c25,c26,c27]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c28,c29,c2a,c2b]/\[c28,c29,c2a,c2b]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c2c,c2d,c2e,c2f]/\[c2c,c2d,c2e,c2f]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c30,c31,c32,c33]/\[c30,c31,c32,c33]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c34,c35,c36,c37]/\[c34,c35,c36,c37]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c38,c39,c3a,c3b]/\[c38,c39,c3a,c3b]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c3c,c3d,c3e,c3f]/\[c3c,c3d,c3e,c3f]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c40,c41,c42,c43]/\[c40,c41,c42,c43]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c44,c45,c46,c47]/\[c44,c45,c46,c47]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c48,c49,c4a,c4b]/\[c48,c49,c4a,c4b]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c4c,c4d,c4e,c4f]/\[c4c,c4d,c4e,c4f]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c50,c51,c52,c53]/\[c50,c51,c52,c53]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c54,c55,c56,c57]/\[c54,c55,c56,c57]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c58,c59,c5a,c5b]/\[c58,c59,c5a,c5b]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c5c,c5d,c5e,c5f]/\[c5c,c5d,c5e,c5f]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c60,c61,c62,c63]/\[c60,c61,c62,c63]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c64,c65,c66,c67]/\[c64,c65,c66,c67]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c68,c69,c6a,c6b]/\[c68,c69,c6a,c6b]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c6c,c6d,c6e,c6f]/\[c6c,c6d,c6e,c6f]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c70,c71,c72,c73]/\[c70,c71,c72,c73]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c74,c75,c76,c77]/\[c74,c75,c76,c77]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c78,c79,c7a,c7b]/\[c78,c79,c7a,c7b]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c7c,c7d,c7e,c7f]/\[c7c,c7d,c7e,c7f]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c80,c81,c82,c83]/\[c80,c81,c82,c83]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c84,c85,c86,c87]/\[c84,c85,c86,c87]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c88,c89,c8a,c8b]/\[c88,c89,c8a,c8b]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c8c,c8d,c8e,c8f]/\[c8c,c8d,c8e,c8f]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c90,c91,c92,c93]/\[c90,c91,c92,c93]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c94,c95,c96,c97]/\[c94,c95,c96,c97]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c98,c99,c9a,c9b]/\[c98,c99,c9a,c9b]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[c9c,c9d,c9e,c9f]/\[c9c,c9d,c9e,c9f]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[ca0,ca1,ca2,ca3]/\[ca0,ca1,ca2,ca3]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[ca4,ca5,ca6,ca7]/\[ca4,ca5,ca6,ca7]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[ca8,ca9,caa,cab]/\[ca8,ca9,caa,cab]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[cac,cad,cae,caf]/\[cac,cad,cae,caf]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[cb0,cb1,cb2,cb3]/\[cb0,cb1,cb2,cb3]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[cb4,cb5,cb6,cb7]/\[cb4,cb5,cb6,cb7]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[cb8,cb9,cba,cbb]/\[cb8,cb9,cba,cbb]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[cbc,cbd,cbe,cbf]/\[cbc,cbd,cbe,cbf]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[cc0,cc1,cc2,cc3]/\[cc0,cc1,cc2,cc3]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[cc4,cc5,cc6,cc7]/\[cc4,cc5,cc6,cc7]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[cc8,cc9,cca,ccb]/\[cc8,cc9,cca,ccb]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[ccc,ccd,cce,ccf]/\[ccc,ccd,cce,ccf]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[cd0,cd1,cd2,cd3]/\[cd0,cd1,cd2,cd3]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[cd4,cd5,cd6,cd7]/\[cd4,cd5,cd6,cd7]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[cd8,cd9,cda,cdb]/\[cd8,cd9,cda,cdb]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[cdc,cdd,cde,cdf]/\[cdc,cdd,cde,cdf]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[ce0,ce1,ce2,ce3]/\[ce0,ce1,ce2,ce3]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[ce4,ce5,ce6,ce7]/\[ce4,ce5,ce6,ce7]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[ce8,ce9,cea,ceb]/\[ce8,ce9,cea,ceb]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[cec,ced,cee,cef]/\[cec,ced,cee,cef]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[cf0,cf1,cf2,cf3]/\[cf0,cf1,cf2,cf3]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[cf4,cf5,cf6,cf7]/\[cf4,cf5,cf6,cf7]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[cf8,cf9,cfa,cfb]/\[cf8,cf9,cfa,cfb]<s[Q2,Q2,Q2,Q2]/\
[NQ2,NQ2,NQ2,NQ2]<s[cfc,cfd,cfe,cff]/\[cfc,cfd,cfe,cff]<s[Q2,Q2,Q2,Q2]
}



(**************** initialization ****************)

mov L0x7ffffed8d0 c00; mov L0x7ffffed8d4 c01; mov L0x7ffffed8d8 c02;
mov L0x7ffffed8dc c03; mov L0x7ffffed8e0 c04; mov L0x7ffffed8e4 c05;
mov L0x7ffffed8e8 c06; mov L0x7ffffed8ec c07; mov L0x7ffffed8f0 c08;
mov L0x7ffffed8f4 c09; mov L0x7ffffed8f8 c0a; mov L0x7ffffed8fc c0b;
mov L0x7ffffed900 c0c; mov L0x7ffffed904 c0d; mov L0x7ffffed908 c0e;
mov L0x7ffffed90c c0f; mov L0x7ffffed910 c10; mov L0x7ffffed914 c11;
mov L0x7ffffed918 c12; mov L0x7ffffed91c c13; mov L0x7ffffed920 c14;
mov L0x7ffffed924 c15; mov L0x7ffffed928 c16; mov L0x7ffffed92c c17;
mov L0x7ffffed930 c18; mov L0x7ffffed934 c19; mov L0x7ffffed938 c1a;
mov L0x7ffffed93c c1b; mov L0x7ffffed940 c1c; mov L0x7ffffed944 c1d;
mov L0x7ffffed948 c1e; mov L0x7ffffed94c c1f; mov L0x7ffffed950 c20;
mov L0x7ffffed954 c21; mov L0x7ffffed958 c22; mov L0x7ffffed95c c23;
mov L0x7ffffed960 c24; mov L0x7ffffed964 c25; mov L0x7ffffed968 c26;
mov L0x7ffffed96c c27; mov L0x7ffffed970 c28; mov L0x7ffffed974 c29;
mov L0x7ffffed978 c2a; mov L0x7ffffed97c c2b; mov L0x7ffffed980 c2c;
mov L0x7ffffed984 c2d; mov L0x7ffffed988 c2e; mov L0x7ffffed98c c2f;
mov L0x7ffffed990 c30; mov L0x7ffffed994 c31; mov L0x7ffffed998 c32;
mov L0x7ffffed99c c33; mov L0x7ffffed9a0 c34; mov L0x7ffffed9a4 c35;
mov L0x7ffffed9a8 c36; mov L0x7ffffed9ac c37; mov L0x7ffffed9b0 c38;
mov L0x7ffffed9b4 c39; mov L0x7ffffed9b8 c3a; mov L0x7ffffed9bc c3b;
mov L0x7ffffed9c0 c3c; mov L0x7ffffed9c4 c3d; mov L0x7ffffed9c8 c3e;
mov L0x7ffffed9cc c3f; mov L0x7ffffed9d0 c40; mov L0x7ffffed9d4 c41;
mov L0x7ffffed9d8 c42; mov L0x7ffffed9dc c43; mov L0x7ffffed9e0 c44;
mov L0x7ffffed9e4 c45; mov L0x7ffffed9e8 c46; mov L0x7ffffed9ec c47;
mov L0x7ffffed9f0 c48; mov L0x7ffffed9f4 c49; mov L0x7ffffed9f8 c4a;
mov L0x7ffffed9fc c4b; mov L0x7ffffeda00 c4c; mov L0x7ffffeda04 c4d;
mov L0x7ffffeda08 c4e; mov L0x7ffffeda0c c4f; mov L0x7ffffeda10 c50;
mov L0x7ffffeda14 c51; mov L0x7ffffeda18 c52; mov L0x7ffffeda1c c53;
mov L0x7ffffeda20 c54; mov L0x7ffffeda24 c55; mov L0x7ffffeda28 c56;
mov L0x7ffffeda2c c57; mov L0x7ffffeda30 c58; mov L0x7ffffeda34 c59;
mov L0x7ffffeda38 c5a; mov L0x7ffffeda3c c5b; mov L0x7ffffeda40 c5c;
mov L0x7ffffeda44 c5d; mov L0x7ffffeda48 c5e; mov L0x7ffffeda4c c5f;
mov L0x7ffffeda50 c60; mov L0x7ffffeda54 c61; mov L0x7ffffeda58 c62;
mov L0x7ffffeda5c c63; mov L0x7ffffeda60 c64; mov L0x7ffffeda64 c65;
mov L0x7ffffeda68 c66; mov L0x7ffffeda6c c67; mov L0x7ffffeda70 c68;
mov L0x7ffffeda74 c69; mov L0x7ffffeda78 c6a; mov L0x7ffffeda7c c6b;
mov L0x7ffffeda80 c6c; mov L0x7ffffeda84 c6d; mov L0x7ffffeda88 c6e;
mov L0x7ffffeda8c c6f; mov L0x7ffffeda90 c70; mov L0x7ffffeda94 c71;
mov L0x7ffffeda98 c72; mov L0x7ffffeda9c c73; mov L0x7ffffedaa0 c74;
mov L0x7ffffedaa4 c75; mov L0x7ffffedaa8 c76; mov L0x7ffffedaac c77;
mov L0x7ffffedab0 c78; mov L0x7ffffedab4 c79; mov L0x7ffffedab8 c7a;
mov L0x7ffffedabc c7b; mov L0x7ffffedac0 c7c; mov L0x7ffffedac4 c7d;
mov L0x7ffffedac8 c7e; mov L0x7ffffedacc c7f; mov L0x7ffffedad0 c80;
mov L0x7ffffedad4 c81; mov L0x7ffffedad8 c82; mov L0x7ffffedadc c83;
mov L0x7ffffedae0 c84; mov L0x7ffffedae4 c85; mov L0x7ffffedae8 c86;
mov L0x7ffffedaec c87; mov L0x7ffffedaf0 c88; mov L0x7ffffedaf4 c89;
mov L0x7ffffedaf8 c8a; mov L0x7ffffedafc c8b; mov L0x7ffffedb00 c8c;
mov L0x7ffffedb04 c8d; mov L0x7ffffedb08 c8e; mov L0x7ffffedb0c c8f;
mov L0x7ffffedb10 c90; mov L0x7ffffedb14 c91; mov L0x7ffffedb18 c92;
mov L0x7ffffedb1c c93; mov L0x7ffffedb20 c94; mov L0x7ffffedb24 c95;
mov L0x7ffffedb28 c96; mov L0x7ffffedb2c c97; mov L0x7ffffedb30 c98;
mov L0x7ffffedb34 c99; mov L0x7ffffedb38 c9a; mov L0x7ffffedb3c c9b;
mov L0x7ffffedb40 c9c; mov L0x7ffffedb44 c9d; mov L0x7ffffedb48 c9e;
mov L0x7ffffedb4c c9f; mov L0x7ffffedb50 ca0; mov L0x7ffffedb54 ca1;
mov L0x7ffffedb58 ca2; mov L0x7ffffedb5c ca3; mov L0x7ffffedb60 ca4;
mov L0x7ffffedb64 ca5; mov L0x7ffffedb68 ca6; mov L0x7ffffedb6c ca7;
mov L0x7ffffedb70 ca8; mov L0x7ffffedb74 ca9; mov L0x7ffffedb78 caa;
mov L0x7ffffedb7c cab; mov L0x7ffffedb80 cac; mov L0x7ffffedb84 cad;
mov L0x7ffffedb88 cae; mov L0x7ffffedb8c caf; mov L0x7ffffedb90 cb0;
mov L0x7ffffedb94 cb1; mov L0x7ffffedb98 cb2; mov L0x7ffffedb9c cb3;
mov L0x7ffffedba0 cb4; mov L0x7ffffedba4 cb5; mov L0x7ffffedba8 cb6;
mov L0x7ffffedbac cb7; mov L0x7ffffedbb0 cb8; mov L0x7ffffedbb4 cb9;
mov L0x7ffffedbb8 cba; mov L0x7ffffedbbc cbb; mov L0x7ffffedbc0 cbc;
mov L0x7ffffedbc4 cbd; mov L0x7ffffedbc8 cbe; mov L0x7ffffedbcc cbf;
mov L0x7ffffedbd0 cc0; mov L0x7ffffedbd4 cc1; mov L0x7ffffedbd8 cc2;
mov L0x7ffffedbdc cc3; mov L0x7ffffedbe0 cc4; mov L0x7ffffedbe4 cc5;
mov L0x7ffffedbe8 cc6; mov L0x7ffffedbec cc7; mov L0x7ffffedbf0 cc8;
mov L0x7ffffedbf4 cc9; mov L0x7ffffedbf8 cca; mov L0x7ffffedbfc ccb;
mov L0x7ffffedc00 ccc; mov L0x7ffffedc04 ccd; mov L0x7ffffedc08 cce;
mov L0x7ffffedc0c ccf; mov L0x7ffffedc10 cd0; mov L0x7ffffedc14 cd1;
mov L0x7ffffedc18 cd2; mov L0x7ffffedc1c cd3; mov L0x7ffffedc20 cd4;
mov L0x7ffffedc24 cd5; mov L0x7ffffedc28 cd6; mov L0x7ffffedc2c cd7;
mov L0x7ffffedc30 cd8; mov L0x7ffffedc34 cd9; mov L0x7ffffedc38 cda;
mov L0x7ffffedc3c cdb; mov L0x7ffffedc40 cdc; mov L0x7ffffedc44 cdd;
mov L0x7ffffedc48 cde; mov L0x7ffffedc4c cdf; mov L0x7ffffedc50 ce0;
mov L0x7ffffedc54 ce1; mov L0x7ffffedc58 ce2; mov L0x7ffffedc5c ce3;
mov L0x7ffffedc60 ce4; mov L0x7ffffedc64 ce5; mov L0x7ffffedc68 ce6;
mov L0x7ffffedc6c ce7; mov L0x7ffffedc70 ce8; mov L0x7ffffedc74 ce9;
mov L0x7ffffedc78 cea; mov L0x7ffffedc7c ceb; mov L0x7ffffedc80 cec;
mov L0x7ffffedc84 ced; mov L0x7ffffedc88 cee; mov L0x7ffffedc8c cef;
mov L0x7ffffedc90 cf0; mov L0x7ffffedc94 cf1; mov L0x7ffffedc98 cf2;
mov L0x7ffffedc9c cf3; mov L0x7ffffedca0 cf4; mov L0x7ffffedca4 cf5;
mov L0x7ffffedca8 cf6; mov L0x7ffffedcac cf7; mov L0x7ffffedcb0 cf8;
mov L0x7ffffedcb4 cf9; mov L0x7ffffedcb8 cfa; mov L0x7ffffedcbc cfb;
mov L0x7ffffedcc0 cfc; mov L0x7ffffedcc4 cfd; mov L0x7ffffedcc8 cfe;
mov L0x7ffffedccc cff;



(**************** nondet ****************)

nondet x0@uint64;nondet x19@uint64;nondet x20@uint64;nondet x21@uint64;
nondet x22@uint64;nondet x23@uint64;nondet x24@uint64;nondet x25@uint64;
nondet x26@uint64;nondet x27@uint64;nondet x28@uint64;nondet x29@uint64;
nondet x30@uint64;
nondet d8@uint64;nondet d9@uint64;nondet d10@uint64;nondet d11@uint64;
nondet d12@uint64;nondet d13@uint64;nondet d14@uint64;nondet d15@uint64;



(**************** constants ****************)

mov L0x5555565b20 0x007fe001@int32;
mov L0x5555565b60 (          0)@int32; mov L0x5555565b64 (          0)@int32;
mov L0x5555565b68 ( -915382907)@int32; mov L0x5555565b6c (   -3572223)@int32;
mov L0x5555565b70 (  964937599)@int32; mov L0x5555565b74 (    3765607)@int32;
mov L0x5555565b78 (  963888510)@int32; mov L0x5555565b7c (    3761513)@int32;
mov L0x5555565b80 ( -820383522)@int32; mov L0x5555565b84 (   -3201494)@int32;
mov L0x5555565b88 ( -738955404)@int32; mov L0x5555565b8c (   -2883726)@int32;
mov L0x5555565b90 ( -806080660)@int32; mov L0x5555565b94 (   -3145678)@int32;
mov L0x5555565b98 ( -820367122)@int32; mov L0x5555565b9c (   -3201430)@int32;
mov L0x5555565ba0 ( -154181397)@int32; mov L0x5555565ba4 (    -601683)@int32;
mov L0x5555565ba8 (  907762539)@int32; mov L0x5555565bac (    3542485)@int32;
mov L0x5555565bb0 (  687336873)@int32; mov L0x5555565bb4 (    2682288)@int32;
mov L0x5555565bb8 (  545785280)@int32; mov L0x5555565bbc (    2129892)@int32;
mov L0x5555565bc0 (  964747974)@int32; mov L0x5555565bc4 (    3764867)@int32;
mov L0x5555565bc8 ( -257592709)@int32; mov L0x5555565bcc (   -1005239)@int32;
mov L0x5555565bd0 (  142848732)@int32; mov L0x5555565bd4 (     557458)@int32;
mov L0x5555565bd8 ( -312926867)@int32; mov L0x5555565bdc (   -1221177)@int32;
mov L0x5555565be0 (          0)@int32; mov L0x5555565be4 (          0)@int32;
mov L0x5555565be8 ( -863652652)@int32; mov L0x5555565bec (   -3370349)@int32;
mov L0x5555565bf0 (  923069133)@int32; mov L0x5555565bf4 (    3602218)@int32;
mov L0x5555565bf8 (  815613168)@int32; mov L0x5555565bfc (    3182878)@int32;
mov L0x5555565c00 (  787459213)@int32; mov L0x5555565c04 (    3073009)@int32;
mov L0x5555565c08 (  327391679)@int32; mov L0x5555565c0c (    1277625)@int32;
mov L0x5555565c10 ( -675340520)@int32; mov L0x5555565c14 (   -2635473)@int32;
mov L0x5555565c18 (  987079667)@int32; mov L0x5555565c1c (    3852015)@int32;
mov L0x5555565c20 (     449207)@int32; mov L0x5555565c24 (       1753)@int32;
mov L0x5555565c28 ( -495951789)@int32; mov L0x5555565c2c (   -1935420)@int32;
mov L0x5555565c30 ( -681503850)@int32; mov L0x5555565c34 (   -2659525)@int32;
mov L0x5555565c38 ( -373072124)@int32; mov L0x5555565c3c (   -1455890)@int32;
mov L0x5555565c40 (  681730119)@int32; mov L0x5555565c44 (    2660408)@int32;
mov L0x5555565c48 ( -456183549)@int32; mov L0x5555565c4c (   -1780227)@int32;
mov L0x5555565c50 (  -15156688)@int32; mov L0x5555565c54 (     -59148)@int32;
mov L0x5555565c58 (  710479343)@int32; mov L0x5555565c5c (    2772600)@int32;
mov L0x5555565c60 (          0)@int32; mov L0x5555565c64 (          0)@int32;
mov L0x5555565c68 (-1041158200)@int32; mov L0x5555565c6c (   -4063053)@int32;
mov L0x5555565c70 (  702264730)@int32; mov L0x5555565c74 (    2740543)@int32;
mov L0x5555565c78 ( -919027554)@int32; mov L0x5555565c7c (   -3586446)@int32;
mov L0x5555565c80 ( 1071989969)@int32; mov L0x5555565c84 (    4183372)@int32;
mov L0x5555565c88 ( -825844983)@int32; mov L0x5555565c8c (   -3222807)@int32;
mov L0x5555565c90 ( -799869667)@int32; mov L0x5555565c94 (   -3121440)@int32;
mov L0x5555565c98 (  -70227934)@int32; mov L0x5555565c9c (    -274060)@int32;
mov L0x5555565ca0 (  302950022)@int32; mov L0x5555565ca4 (    1182243)@int32;
mov L0x5555565ca8 (   22347069)@int32; mov L0x5555565cac (      87208)@int32;
mov L0x5555565cb0 (  163212680)@int32; mov L0x5555565cb4 (     636927)@int32;
mov L0x5555565cb8 (-1016110510)@int32; mov L0x5555565cbc (   -3965306)@int32;
mov L0x5555565cc0 (-1013916752)@int32; mov L0x5555565cc4 (   -3956745)@int32;
mov L0x5555565cc8 ( -588452222)@int32; mov L0x5555565ccc (   -2296397)@int32;
mov L0x5555565cd0 ( -841760171)@int32; mov L0x5555565cd4 (   -3284915)@int32;
mov L0x5555565cd8 ( -952468207)@int32; mov L0x5555565cdc (   -3716946)@int32;
mov L0x5555565ce0 (          0)@int32; mov L0x5555565ce4 (          0)@int32;
mov L0x5555565ce8 (  682491182)@int32; mov L0x5555565cec (    2663378)@int32;
mov L0x5555565cf0 ( -797147778)@int32; mov L0x5555565cf4 (   -3110818)@int32;
mov L0x5555565cf8 (  538486762)@int32; mov L0x5555565cfc (    2101410)@int32;
mov L0x5555565d00 (  642926661)@int32; mov L0x5555565d04 (    2508980)@int32;
mov L0x5555565d08 (  519705671)@int32; mov L0x5555565d0c (    2028118)@int32;
mov L0x5555565d10 (  496502727)@int32; mov L0x5555565d14 (    1937570)@int32;
mov L0x5555565d18 ( -977780347)@int32; mov L0x5555565d1c (   -3815725)@int32;
mov L0x5555565d20 (   -7126831)@int32; mov L0x5555565d24 (     -27812)@int32;
mov L0x5555565d28 (  210776307)@int32; mov L0x5555565d2c (     822541)@int32;
mov L0x5555565d30 (  258649997)@int32; mov L0x5555565d34 (    1009365)@int32;
mov L0x5555565d38 ( -628875181)@int32; mov L0x5555565d3c (   -2454145)@int32;
mov L0x5555565d40 ( -507246529)@int32; mov L0x5555565d44 (   -1979497)@int32;
mov L0x5555565d48 (  409185979)@int32; mov L0x5555565d4c (    1596822)@int32;
mov L0x5555565d50 (-1013967746)@int32; mov L0x5555565d54 (   -3956944)@int32;
mov L0x5555565d58 ( -963363710)@int32; mov L0x5555565d5c (   -3759465)@int32;
mov L0x5555565d60 (          0)@int32; mov L0x5555565d64 (          0)@int32;
mov L0x5555565d68 ( -429120452)@int32; mov L0x5555565d6c (   -1674615)@int32;
mov L0x5555565d70 (  949361686)@int32; mov L0x5555565d74 (    3704823)@int32;
mov L0x5555565d78 (  297218217)@int32; mov L0x5555565d7c (    1159875)@int32;
mov L0x5555565d80 (  720393920)@int32; mov L0x5555565d84 (    2811291)@int32;
mov L0x5555565d88 ( -764594519)@int32; mov L0x5555565d8c (   -2983781)@int32;
mov L0x5555565d90 ( -284313712)@int32; mov L0x5555565d94 (   -1109516)@int32;
mov L0x5555565d98 ( 1065510939)@int32; mov L0x5555565d9c (    4158088)@int32;
mov L0x5555565da0 ( -431820817)@int32; mov L0x5555565da4 (   -1685153)@int32;
mov L0x5555565da8 ( -873958779)@int32; mov L0x5555565dac (   -3410568)@int32;
mov L0x5555565db0 (  686309310)@int32; mov L0x5555565db4 (    2678278)@int32;
mov L0x5555565db8 ( -965793731)@int32; mov L0x5555565dbc (   -3768948)@int32;
mov L0x5555565dc0 ( -909946047)@int32; mov L0x5555565dc4 (   -3551006)@int32;
mov L0x5555565dc8 (  162963861)@int32; mov L0x5555565dcc (     635956)@int32;
mov L0x5555565dd0 (  -64176841)@int32; mov L0x5555565dd4 (    -250446)@int32;
mov L0x5555565dd8 ( -629190881)@int32; mov L0x5555565ddc (   -2455377)@int32;
mov L0x5555565de0 (          0)@int32; mov L0x5555565de4 (          0)@int32;
mov L0x5555565de8 ( -903139016)@int32; mov L0x5555565dec (   -3524442)@int32;
mov L0x5555565df0 (  101000509)@int32; mov L0x5555565df4 (     394148)@int32;
mov L0x5555565df8 (  237992130)@int32; mov L0x5555565dfc (     928749)@int32;
mov L0x5555565e00 (  391567239)@int32; mov L0x5555565e04 (    1528066)@int32;
mov L0x5555565e08 (  123678909)@int32; mov L0x5555565e0c (     482649)@int32;
mov L0x5555565e10 (  294395108)@int32; mov L0x5555565e14 (    1148858)@int32;
mov L0x5555565e18 ( -759080783)@int32; mov L0x5555565e1c (   -2962264)@int32;
mov L0x5555565e20 (-1062481036)@int32; mov L0x5555565e24 (   -4146264)@int32;
mov L0x5555565e28 ( -454226054)@int32; mov L0x5555565e2c (   -1772588)@int32;
mov L0x5555565e30 (  561940831)@int32; mov L0x5555565e34 (    2192938)@int32;
mov L0x5555565e38 ( -442566669)@int32; mov L0x5555565e3c (   -1727088)@int32;
mov L0x5555565e40 (  611800717)@int32; mov L0x5555565e44 (    2387513)@int32;
mov L0x5555565e48 ( -925511710)@int32; mov L0x5555565e4c (   -3611750)@int32;
mov L0x5555565e50 (  -68791907)@int32; mov L0x5555565e54 (    -268456)@int32;
mov L0x5555565e58 ( -814992530)@int32; mov L0x5555565e5c (   -3180456)@int32;
mov L0x5555565e60 (          0)@int32; mov L0x5555565e64 (          0)@int32;
mov L0x5555565e68 ( -111244624)@int32; mov L0x5555565e6c (    -434125)@int32;
mov L0x5555565e70 (  280713909)@int32; mov L0x5555565e74 (    1095468)@int32;
mov L0x5555565e78 ( -898510625)@int32; mov L0x5555565e7c (   -3506380)@int32;
mov L0x5555565e80 ( -144935890)@int32; mov L0x5555565e84 (    -565603)@int32;
mov L0x5555565e88 (   43482586)@int32; mov L0x5555565e8c (     169688)@int32;
mov L0x5555565e90 (  631001801)@int32; mov L0x5555565e94 (    2462444)@int32;
mov L0x5555565e98 ( -854436357)@int32; mov L0x5555565e9c (   -3334383)@int32;
mov L0x5555565ea0 (  960233614)@int32; mov L0x5555565ea4 (    3747250)@int32;
mov L0x5555565ea8 (  588375860)@int32; mov L0x5555565eac (    2296099)@int32;
mov L0x5555565eb0 (  317727459)@int32; mov L0x5555565eb4 (    1239911)@int32;
mov L0x5555565eb8 ( -983611064)@int32; mov L0x5555565ebc (   -3838479)@int32;
mov L0x5555565ec0 (  818892658)@int32; mov L0x5555565ec4 (    3195676)@int32;
mov L0x5555565ec8 (  677264190)@int32; mov L0x5555565ecc (    2642980)@int32;
mov L0x5555565ed0 (  321386456)@int32; mov L0x5555565ed4 (    1254190)@int32;
mov L0x5555565ed8 (   -3181859)@int32; mov L0x5555565edc (     -12417)@int32;
mov L0x5555565ee0 (          0)@int32; mov L0x5555565ee4 (          0)@int32;
mov L0x5555565ee8 (  173376332)@int32; mov L0x5555565eec (     676590)@int32;
mov L0x5555565ef0 (  530906624)@int32; mov L0x5555565ef4 (    2071829)@int32;
mov L0x5555565ef8 (-1029866791)@int32; mov L0x5555565efc (   -4018989)@int32;
mov L0x5555565f00 (-1067647297)@int32; mov L0x5555565f04 (   -4166425)@int32;
mov L0x5555565f08 ( -893898890)@int32; mov L0x5555565f0c (   -3488383)@int32;
mov L0x5555565f10 (  509377762)@int32; mov L0x5555565f14 (    1987814)@int32;
mov L0x5555565f18 ( -819295484)@int32; mov L0x5555565f1c (   -3197248)@int32;
mov L0x5555565f20 (  768294260)@int32; mov L0x5555565f24 (    2998219)@int32;
mov L0x5555565f28 (   36345249)@int32; mov L0x5555565f2c (     141835)@int32;
mov L0x5555565f30 (  -22883400)@int32; mov L0x5555565f34 (     -89301)@int32;
mov L0x5555565f38 (  643961400)@int32; mov L0x5555565f3c (    2513018)@int32;
mov L0x5555565f40 ( -347191365)@int32; mov L0x5555565f44 (   -1354892)@int32;
mov L0x5555565f48 (  157142369)@int32; mov L0x5555565f4c (     613238)@int32;
mov L0x5555565f50 ( -335754661)@int32; mov L0x5555565f54 (   -1310261)@int32;
mov L0x5555565f58 ( -568482643)@int32; mov L0x5555565f5c (   -2218467)@int32;
mov L0x5555565f60 (          0)@int32; mov L0x5555565f64 (          0)@int32;
mov L0x5555565f68 ( -342333886)@int32; mov L0x5555565f6c (   -1335936)@int32;
mov L0x5555565f70 (  830756018)@int32; mov L0x5555565f74 (    3241972)@int32;
mov L0x5555565f78 (  552488273)@int32; mov L0x5555565f7c (    2156050)@int32;
mov L0x5555565f80 (  444930577)@int32; mov L0x5555565f84 (    1736313)@int32;
mov L0x5555565f88 (   60323094)@int32; mov L0x5555565f8c (     235407)@int32;
mov L0x5555565f90 ( -832852657)@int32; mov L0x5555565f94 (   -3250154)@int32;
mov L0x5555565f98 (  834980303)@int32; mov L0x5555565f9c (    3258457)@int32;
mov L0x5555565fa0 ( -117552223)@int32; mov L0x5555565fa4 (    -458740)@int32;
mov L0x5555565fa8 ( -492511373)@int32; mov L0x5555565fac (   -1921994)@int32;
mov L0x5555565fb0 ( 1035301089)@int32; mov L0x5555565fb4 (    4040196)@int32;
mov L0x5555565fb8 ( -889718424)@int32; mov L0x5555565fbc (   -3472069)@int32;
mov L0x5555565fc0 (  522531086)@int32; mov L0x5555565fc4 (    2039144)@int32;
mov L0x5555565fc8 ( -481719139)@int32; mov L0x5555565fcc (   -1879878)@int32;
mov L0x5555565fd0 ( -209807681)@int32; mov L0x5555565fd4 (    -818761)@int32;
mov L0x5555565fd8 ( -558360247)@int32; mov L0x5555565fdc (   -2178965)@int32;
mov L0x5555565fe0 (          0)@int32; mov L0x5555565fe4 (          0)@int32;
mov L0x5555565fe8 ( -827143915)@int32; mov L0x5555565fec (   -3227876)@int32;
mov L0x5555565ff0 (  875112161)@int32; mov L0x5555565ff4 (    3415069)@int32;
mov L0x5555565ff8 (  450833045)@int32; mov L0x5555565ffc (    1759347)@int32;
mov L0x5555566000 ( -660934133)@int32; mov L0x5555566004 (   -2579253)@int32;
mov L0x5555566008 (  458160776)@int32; mov L0x555556600c (    1787943)@int32;
mov L0x5555566010 ( -612717067)@int32; mov L0x5555566014 (   -2391089)@int32;
mov L0x5555566018 ( -577774276)@int32; mov L0x555556601c (   -2254727)@int32;
mov L0x5555566020 ( -415984810)@int32; mov L0x5555566024 (   -1623354)@int32;
mov L0x5555566028 (  539479988)@int32; mov L0x555556602c (    2105286)@int32;
mov L0x5555566030 ( -608441020)@int32; mov L0x5555566034 (   -2374402)@int32;
mov L0x5555566038 ( -521163479)@int32; mov L0x555556603c (   -2033807)@int32;
mov L0x5555566040 (  150224382)@int32; mov L0x5555566044 (     586241)@int32;
mov L0x5555566048 ( -302276083)@int32; mov L0x555556604c (   -1179613)@int32;
mov L0x5555566050 (  135295244)@int32; mov L0x5555566054 (     527981)@int32;
mov L0x5555566058 ( -702999655)@int32; mov L0x555556605c (   -2743411)@int32;
mov L0x5555566060 (          0)@int32; mov L0x5555566064 (          0)@int32;
mov L0x5555566068 (  439288460)@int32; mov L0x555556606c (    1714295)@int32;
mov L0x5555566070 ( -209493775)@int32; mov L0x5555566074 (    -817536)@int32;
mov L0x5555566078 ( -915957677)@int32; mov L0x555556607c (   -3574466)@int32;
mov L0x5555566080 (  892316032)@int32; mov L0x5555566084 (    3482206)@int32;
mov L0x5555566088 (-1071872863)@int32; mov L0x555556608c (   -4182915)@int32;
mov L0x5555566090 ( -333129378)@int32; mov L0x5555566094 (   -1300016)@int32;
mov L0x5555566098 ( -605279149)@int32; mov L0x555556609c (   -2362063)@int32;
mov L0x55555660a0 ( -378477722)@int32; mov L0x55555660a4 (   -1476985)@int32;
mov L0x55555660a8 (  510974714)@int32; mov L0x55555660ac (    1994046)@int32;
mov L0x55555660b0 (  638402564)@int32; mov L0x55555660b4 (    2491325)@int32;
mov L0x55555660b8 ( -356997292)@int32; mov L0x55555660bc (   -1393159)@int32;
mov L0x55555660c0 (  130156402)@int32; mov L0x55555660c4 (     507927)@int32;
mov L0x55555660c8 ( -304395785)@int32; mov L0x55555660cc (   -1187885)@int32;
mov L0x55555660d0 ( -185731180)@int32; mov L0x55555660d4 (    -724804)@int32;
mov L0x55555660d8 ( -470097680)@int32; mov L0x55555660dc (   -1834526)@int32;
mov L0x55555660e0 (          0)@int32; mov L0x55555660e4 (          0)@int32;
mov L0x55555660e8 (  628833668)@int32; mov L0x55555660ec (    2453983)@int32;
mov L0x55555660f0 (  962678241)@int32; mov L0x55555660f4 (    3756790)@int32;
mov L0x55555660f8 ( -496048908)@int32; mov L0x55555660fc (   -1935799)@int32;
mov L0x5555566100 ( -337655269)@int32; mov L0x5555566104 (   -1317678)@int32;
mov L0x5555566108 (  630730945)@int32; mov L0x555556610c (    2461387)@int32;
mov L0x5555566110 (  777970524)@int32; mov L0x5555566114 (    3035980)@int32;
mov L0x5555566118 (  159173408)@int32; mov L0x555556611c (     621164)@int32;
mov L0x5555566120 ( -777397036)@int32; mov L0x5555566124 (   -3033742)@int32;
mov L0x5555566128 (  -86720197)@int32; mov L0x555556612c (    -338420)@int32;
mov L0x5555566130 (  678549029)@int32; mov L0x5555566134 (    2647994)@int32;
mov L0x5555566138 (  771248568)@int32; mov L0x555556613c (    3009748)@int32;
mov L0x5555566140 ( -669544140)@int32; mov L0x5555566144 (   -2612853)@int32;
mov L0x5555566148 ( 1063046068)@int32; mov L0x555556614c (    4148469)@int32;
mov L0x5555566150 (  192079267)@int32; mov L0x5555566154 (     749577)@int32;
mov L0x5555566158 (-1030830548)@int32; mov L0x555556615c (   -4022750)@int32;
mov L0x5555566160 (          0)@int32; mov L0x5555566164 (          0)@int32;
mov L0x5555566168 (  374309300)@int32; mov L0x555556616c (    1460718)@int32;
mov L0x5555566170 ( -439978542)@int32; mov L0x5555566174 (   -1716988)@int32;
mov L0x5555566178 (-1012201926)@int32; mov L0x555556617c (   -3950053)@int32;
mov L0x5555566180 (  999753034)@int32; mov L0x5555566184 (    3901472)@int32;
mov L0x5555566188 ( -314332144)@int32; mov L0x555556618c (   -1226661)@int32;
mov L0x5555566190 (  749740976)@int32; mov L0x5555566194 (    2925816)@int32;
mov L0x5555566198 (  864652284)@int32; mov L0x555556619c (    3374250)@int32;
mov L0x55555661a0 ( 1020029345)@int32; mov L0x55555661a4 (    3980599)@int32;
mov L0x55555661a8 (  658309618)@int32; mov L0x55555661ac (    2569011)@int32;
mov L0x55555661b0 ( -413979908)@int32; mov L0x55555661b4 (   -1615530)@int32;
mov L0x55555661b8 (  441577800)@int32; mov L0x55555661bc (    1723229)@int32;
mov L0x55555661c0 (  426738094)@int32; mov L0x55555661c4 (    1665318)@int32;
mov L0x55555661c8 (  519685171)@int32; mov L0x55555661cc (    2028038)@int32;
mov L0x55555661d0 (  298172236)@int32; mov L0x55555661d4 (    1163598)@int32;
mov L0x55555661d8 ( -863376927)@int32; mov L0x55555661dc (   -3369273)@int32;
mov L0x55555661e0 (          0)@int32; mov L0x55555661e4 (          0)@int32;
mov L0x55555661e8 ( -164673562)@int32; mov L0x55555661ec (    -642628)@int32;
mov L0x55555661f0 ( -742437332)@int32; mov L0x55555661f4 (   -2897314)@int32;
mov L0x55555661f8 (  818041395)@int32; mov L0x55555661fc (    3192354)@int32;
mov L0x5555566200 (  347590090)@int32; mov L0x5555566204 (    1356448)@int32;
mov L0x5555566208 ( -711287812)@int32; mov L0x555556620c (   -2775755)@int32;
mov L0x5555566210 (  687588511)@int32; mov L0x5555566214 (    2683270)@int32;
mov L0x5555566218 ( -712065019)@int32; mov L0x555556621c (   -2778788)@int32;
mov L0x5555566220 ( 1023635298)@int32; mov L0x5555566224 (    3994671)@int32;
mov L0x5555566228 (   -3043996)@int32; mov L0x555556622c (     -11879)@int32;
mov L0x5555566230 ( -351195274)@int32; mov L0x5555566234 (   -1370517)@int32;
mov L0x5555566238 (  773976352)@int32; mov L0x555556623c (    3020393)@int32;
mov L0x5555566240 (  861908357)@int32; mov L0x5555566244 (    3363542)@int32;
mov L0x5555566248 (   55063046)@int32; mov L0x555556624c (     214880)@int32;
mov L0x5555566250 (  139752717)@int32; mov L0x5555566254 (     545376)@int32;
mov L0x5555566258 ( -197425671)@int32; mov L0x555556625c (    -770441)@int32;
mov L0x5555566260 (          0)@int32; mov L0x5555566264 (          0)@int32;
mov L0x5555566268 ( -918682129)@int32; mov L0x555556626c (   -3585098)@int32;
mov L0x5555566270 (  142694469)@int32; mov L0x5555566274 (     556856)@int32;
mov L0x5555566278 (  991769559)@int32; mov L0x555556627c (    3870317)@int32;
mov L0x5555566280 ( -888589898)@int32; mov L0x5555566284 (   -3467665)@int32;
mov L0x5555566288 (  592665232)@int32; mov L0x555556628c (    2312838)@int32;
mov L0x5555566290 ( -167401858)@int32; mov L0x5555566294 (    -653275)@int32;
mov L0x5555566298 ( -117660617)@int32; mov L0x555556629c (    -459163)@int32;
mov L0x55555662a0 (  795799901)@int32; mov L0x55555662a4 (    3105558)@int32;
mov L0x55555662a8 ( -282732136)@int32; mov L0x55555662ac (   -1103344)@int32;
mov L0x55555662b0 (  130212265)@int32; mov L0x55555662b4 (     508145)@int32;
mov L0x55555662b8 ( -141890356)@int32; mov L0x55555662bc (    -553718)@int32;
mov L0x55555662c0 (  220412084)@int32; mov L0x55555662c4 (     860144)@int32;
mov L0x55555662c8 (  879049958)@int32; mov L0x55555662cc (    3430436)@int32;
mov L0x55555662d0 (   35937555)@int32; mov L0x55555662d4 (     140244)@int32;
mov L0x55555662d8 ( -388001774)@int32; mov L0x55555662dc (   -1514152)@int32;
mov L0x55555662e0 (          0)@int32; mov L0x55555662e4 (          0)@int32;
mov L0x55555662e8 (  721508096)@int32; mov L0x55555662ec (    2815639)@int32;
mov L0x55555662f0 (  747568486)@int32; mov L0x55555662f4 (    2917338)@int32;
mov L0x55555662f8 (  475038184)@int32; mov L0x55555662fc (    1853806)@int32;
mov L0x5555566300 (   89383150)@int32; mov L0x5555566304 (     348812)@int32;
mov L0x5555566308 (  -84011120)@int32; mov L0x555556630c (    -327848)@int32;
mov L0x5555566310 (  259126110)@int32; mov L0x5555566314 (    1011223)@int32;
mov L0x5555566318 ( -603268097)@int32; mov L0x555556631c (   -2354215)@int32;
mov L0x5555566320 ( -559928242)@int32; mov L0x5555566324 (   -2185084)@int32;
mov L0x5555566328 (  800464680)@int32; mov L0x555556632c (    3123762)@int32;
mov L0x5555566330 (  604333585)@int32; mov L0x5555566334 (    2358373)@int32;
mov L0x5555566338 ( -561979013)@int32; mov L0x555556633c (   -2193087)@int32;
mov L0x5555566340 ( -772445769)@int32; mov L0x5555566344 (   -3014420)@int32;
mov L0x5555566348 ( -439933955)@int32; mov L0x555556634c (   -1716814)@int32;
mov L0x5555566350 (  749801963)@int32; mov L0x5555566354 (    2926054)@int32;
mov L0x5555566358 ( -100631253)@int32; mov L0x555556635c (    -392707)@int32;
mov L0x5555566360 (          0)@int32; mov L0x5555566364 (          0)@int32;
mov L0x5555566368 (  585207070)@int32; mov L0x555556636c (    2283733)@int32;
mov L0x5555566370 (  857403734)@int32; mov L0x5555566374 (    3345963)@int32;
mov L0x5555566378 (  476219497)@int32; mov L0x555556637c (    1858416)@int32;
mov L0x5555566380 ( -978523985)@int32; mov L0x5555566384 (   -3818627)@int32;
mov L0x5555566388 ( -492577742)@int32; mov L0x555556638c (   -1922253)@int32;
mov L0x5555566390 ( -573161516)@int32; mov L0x5555566394 (   -2236726)@int32;
mov L0x5555566398 (  447030292)@int32; mov L0x555556639c (    1744507)@int32;
mov L0x55555663a0 (  -77645096)@int32; mov L0x55555663a4 (    -303005)@int32;
mov L0x55555663a8 (  904878186)@int32; mov L0x55555663ac (    3531229)@int32;
mov L0x55555663b0 (-1018462631)@int32; mov L0x55555663b4 (   -3974485)@int32;
mov L0x55555663b8 ( -967019376)@int32; mov L0x55555663bc (   -3773731)@int32;
mov L0x55555663c0 (  486888731)@int32; mov L0x55555663c4 (    1900052)@int32;
mov L0x55555663c8 ( -200355636)@int32; mov L0x55555663cc (    -781875)@int32;
mov L0x55555663d0 (  270210213)@int32; mov L0x55555663d4 (    1054478)@int32;
mov L0x55555663d8 ( -187430119)@int32; mov L0x55555663dc (    -731434)@int32;
mov L0x55555663e0 (          0)@int32; mov L0x55555663e4 (          0)@int32;

(**************** input function ****************)

ghost F@int32,F0@int32,F1@int32,F2@int32,F3@int32 :
F0**2 =
c00*X**  0+c01*X**  1+c02*X**  2+c03*X**  3+c10*X** 16+c11*X** 17+c12*X** 18+
c13*X** 19+c20*X** 32+c21*X** 33+c22*X** 34+c23*X** 35+c30*X** 48+c31*X** 49+
c32*X** 50+c33*X** 51+c40*X** 64+c41*X** 65+c42*X** 66+c43*X** 67+c50*X** 80+
c51*X** 81+c52*X** 82+c53*X** 83+c60*X** 96+c61*X** 97+c62*X** 98+c63*X** 99+
c70*X**112+c71*X**113+c72*X**114+c73*X**115+c80*X**128+c81*X**129+c82*X**130+
c83*X**131+c90*X**144+c91*X**145+c92*X**146+c93*X**147+ca0*X**160+ca1*X**161+
ca2*X**162+ca3*X**163+cb0*X**176+cb1*X**177+cb2*X**178+cb3*X**179+cc0*X**192+
cc1*X**193+cc2*X**194+cc3*X**195+cd0*X**208+cd1*X**209+cd2*X**210+cd3*X**211+
ce0*X**224+ce1*X**225+ce2*X**226+ce3*X**227+cf0*X**240+cf1*X**241+cf2*X**242+
cf3*X**243 /\
F1**2 =
c04*X**  4+c05*X**  5+c06*X**  6+c07*X**  7+c14*X** 20+c15*X** 21+c16*X** 22+
c17*X** 23+c24*X** 36+c25*X** 37+c26*X** 38+c27*X** 39+c34*X** 52+c35*X** 53+
c36*X** 54+c37*X** 55+c44*X** 68+c45*X** 69+c46*X** 70+c47*X** 71+c54*X** 84+
c55*X** 85+c56*X** 86+c57*X** 87+c64*X**100+c65*X**101+c66*X**102+c67*X**103+
c74*X**116+c75*X**117+c76*X**118+c77*X**119+c84*X**132+c85*X**133+c86*X**134+
c87*X**135+c94*X**148+c95*X**149+c96*X**150+c97*X**151+ca4*X**164+ca5*X**165+
ca6*X**166+ca7*X**167+cb4*X**180+cb5*X**181+cb6*X**182+cb7*X**183+cc4*X**196+
cc5*X**197+cc6*X**198+cc7*X**199+cd4*X**212+cd5*X**213+cd6*X**214+cd7*X**215+
ce4*X**228+ce5*X**229+ce6*X**230+ce7*X**231+cf4*X**244+cf5*X**245+cf6*X**246+
cf7*X**247 /\
F2**2 =
c08*X**  8+c09*X**  9+c0a*X** 10+c0b*X** 11+c18*X** 24+c19*X** 25+c1a*X** 26+
c1b*X** 27+c28*X** 40+c29*X** 41+c2a*X** 42+c2b*X** 43+c38*X** 56+c39*X** 57+
c3a*X** 58+c3b*X** 59+c48*X** 72+c49*X** 73+c4a*X** 74+c4b*X** 75+c58*X** 88+
c59*X** 89+c5a*X** 90+c5b*X** 91+c68*X**104+c69*X**105+c6a*X**106+c6b*X**107+
c78*X**120+c79*X**121+c7a*X**122+c7b*X**123+c88*X**136+c89*X**137+c8a*X**138+
c8b*X**139+c98*X**152+c99*X**153+c9a*X**154+c9b*X**155+ca8*X**168+ca9*X**169+
caa*X**170+cab*X**171+cb8*X**184+cb9*X**185+cba*X**186+cbb*X**187+cc8*X**200+
cc9*X**201+cca*X**202+ccb*X**203+cd8*X**216+cd9*X**217+cda*X**218+cdb*X**219+
ce8*X**232+ce9*X**233+cea*X**234+ceb*X**235+cf8*X**248+cf9*X**249+cfa*X**250+
cfb*X**251 /\
F3**2 =
c0c*X** 12+c0d*X** 13+c0e*X** 14+c0f*X** 15+c1c*X** 28+c1d*X** 29+c1e*X** 30+
c1f*X** 31+c2c*X** 44+c2d*X** 45+c2e*X** 46+c2f*X** 47+c3c*X** 60+c3d*X** 61+
c3e*X** 62+c3f*X** 63+c4c*X** 76+c4d*X** 77+c4e*X** 78+c4f*X** 79+c5c*X** 92+
c5d*X** 93+c5e*X** 94+c5f*X** 95+c6c*X**108+c6d*X**109+c6e*X**110+c6f*X**111+
c7c*X**124+c7d*X**125+c7e*X**126+c7f*X**127+c8c*X**140+c8d*X**141+c8e*X**142+
c8f*X**143+c9c*X**156+c9d*X**157+c9e*X**158+c9f*X**159+cac*X**172+cad*X**173+
cae*X**174+caf*X**175+cbc*X**188+cbd*X**189+cbe*X**190+cbf*X**191+ccc*X**204+
ccd*X**205+cce*X**206+ccf*X**207+cdc*X**220+cdd*X**221+cde*X**222+cdf*X**223+
cec*X**236+ced*X**237+cee*X**238+cef*X**239+cfc*X**252+cfd*X**253+cfe*X**254+
cff*X**255 /\
F**2 = F0**2+F1**2+F2**2+F3**2 && true;



(* #! -> SP = 0x7ffffec3c0 *)
#! 0x7ffffec3c0 = 0x7ffffec3c0;
(* stp	x29, x30, [sp, #-48]!                       #! EA = L0x7ffffec390; PC = 0x55555641e0 *)
mov L0x7ffffec390 x29; mov L0x7ffffec398 x30;
(* stp	x19, x20, [sp, #16]                         #! EA = L0x7ffffec3a0; PC = 0x55555641e8 *)
mov L0x7ffffec3a0 x19; mov L0x7ffffec3a8 x20;
(* add	x19, x19, #0xb20                            #! PC = 0x55555641f0 *)
adds dc x19 x19 (0xb20)@uint64;
(* str	x21, [sp, #32]                              #! EA = L0x7ffffec3b0; PC = 0x55555641f4 *)
mov L0x7ffffec3b0 x21;
(* add	x21, x19, #0x40                             #! PC = 0x55555641f8 *)
adds dc x21 x19 (0x40)@uint64;
(* mov	x2, x19                                     #! PC = 0x55555641fc *)
mov x2 x19;
(* mov	x20, x0                                     #! PC = 0x5555564200 *)
mov x20 x0;
(* mov	x1, x21                                     #! PC = 0x5555564204 *)
mov x1 x21;
(* #bl	0x5555564e84 <_PQCLEAN_DILITHIUM3_AARCH64__asm_ntt_SIMD_top>#! PC = 0x5555564208 *)
#bl	0x5555564e84 <_PQCLEAN_DILITHIUM3_AARCH64__asm_ntt_SIMD_top>#! 0x5555564208 = 0x5555564208;
(* #! -> SP = 0x7ffffec390 *)
#! 0x7ffffec390 = 0x7ffffec390;
(* stp	x19, x20, [sp]                              #! EA = L0x7ffffec300; PC = 0x5555564e88 *)
mov L0x7ffffec300 x19; mov L0x7ffffec308 x20;
(* stp	x21, x22, [sp, #16]                         #! EA = L0x7ffffec310; PC = 0x5555564e8c *)
mov L0x7ffffec310 x21; mov L0x7ffffec318 x22;
(* stp	x23, x24, [sp, #32]                         #! EA = L0x7ffffec320; PC = 0x5555564e90 *)
mov L0x7ffffec320 x23; mov L0x7ffffec328 x24;
(* stp	x25, x26, [sp, #48]                         #! EA = L0x7ffffec330; PC = 0x5555564e94 *)
mov L0x7ffffec330 x25; mov L0x7ffffec338 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0x7ffffec340; PC = 0x5555564e98 *)
mov L0x7ffffec340 x27; mov L0x7ffffec348 x28;
(* stp	d8, d9, [sp, #80]                           #! EA = L0x7ffffec350; PC = 0x5555564e9c *)
mov L0x7ffffec350 d8; mov L0x7ffffec358 d9;
(* stp	d10, d11, [sp, #96]                         #! EA = L0x7ffffec360; PC = 0x5555564ea0 *)
mov L0x7ffffec360 d10; mov L0x7ffffec368 d11;
(* stp	d12, d13, [sp, #112]                        #! EA = L0x7ffffec370; PC = 0x5555564ea4 *)
mov L0x7ffffec370 d12; mov L0x7ffffec378 d13;
(* stp	d14, d15, [sp, #128]                        #! EA = L0x7ffffec380; PC = 0x5555564ea8 *)
mov L0x7ffffec380 d14; mov L0x7ffffec388 d15;
(* ldr	w20, [x2]                                   #! EA = L0x5555565b20; Value = 0xfc7fdfff007fe001; PC = 0x5555564eac *)
mov w20 L0x5555565b20;
(* mov	x28, x1                                     #! PC = 0x5555564eb0 *)
mov x28 x1;
(* add	x1, x0, #0x40                               #! PC = 0x5555564eb4 *)
adds dc x1 x0 (0x40)@uint64;
(* add	x2, x0, #0x80                               #! PC = 0x5555564eb8 *)
adds dc x2 x0 (0x80)@uint64;
(* add	x3, x0, #0xc0                               #! PC = 0x5555564ebc *)
adds dc x3 x0 (0xc0)@uint64;
(* add	x4, x0, #0x100                              #! PC = 0x5555564ec0 *)
adds dc x4 x0 (0x100)@uint64;
(* add	x5, x0, #0x140                              #! PC = 0x5555564ec4 *)
adds dc x5 x0 (0x140)@uint64;
(* add	x6, x0, #0x180                              #! PC = 0x5555564ec8 *)
adds dc x6 x0 (0x180)@uint64;
(* add	x7, x0, #0x1c0                              #! PC = 0x5555564ecc *)
adds dc x7 x0 (0x1c0)@uint64;
(* add	x8, x0, #0x200                              #! PC = 0x5555564ed0 *)
adds dc x8 x0 (0x200)@uint64;
(* add	x9, x0, #0x240                              #! PC = 0x5555564ed4 *)
adds dc x9 x0 (0x240)@uint64;
(* add	x10, x0, #0x280                             #! PC = 0x5555564ed8 *)
adds dc x10 x0 (0x280)@uint64;
(* add	x11, x0, #0x2c0                             #! PC = 0x5555564edc *)
adds dc x11 x0 (0x2c0)@uint64;
(* add	x12, x0, #0x300                             #! PC = 0x5555564ee0 *)
adds dc x12 x0 (0x300)@uint64;
(* add	x13, x0, #0x340                             #! PC = 0x5555564ee4 *)
adds dc x13 x0 (0x340)@uint64;
(* add	x14, x0, #0x380                             #! PC = 0x5555564ee8 *)
adds dc x14 x0 (0x380)@uint64;
(* add	x15, x0, #0x3c0                             #! PC = 0x5555564eec *)
adds dc x15 x0 (0x3c0)@uint64;
(* ld1	{v20.4s-v23.4s}, [x28], #64                 #! EA = L0x5555565b60; Value = 0x0000000000000000; PC = 0x5555564ef0 *)
mov %v20 [L0x5555565b60, L0x5555565b64, L0x5555565b68, L0x5555565b6c];
mov %v21 [L0x5555565b70, L0x5555565b74, L0x5555565b78, L0x5555565b7c];
mov %v22 [L0x5555565b80, L0x5555565b84, L0x5555565b88, L0x5555565b8c];
mov %v23 [L0x5555565b90, L0x5555565b94, L0x5555565b98, L0x5555565b9c];
(* ld1	{v24.4s-v27.4s}, [x28], #64                 #! EA = L0x5555565ba0; Value = 0xfff6d1adf6cf60eb; PC = 0x5555564ef4 *)
mov %v24 [L0x5555565ba0, L0x5555565ba4, L0x5555565ba8, L0x5555565bac];
mov %v25 [L0x5555565bb0, L0x5555565bb4, L0x5555565bb8, L0x5555565bbc];
mov %v26 [L0x5555565bc0, L0x5555565bc4, L0x5555565bc8, L0x5555565bcc];
mov %v27 [L0x5555565bd0, L0x5555565bd4, L0x5555565bd8, L0x5555565bdc];
(* mov	v20.s[0], w20                               #! PC = 0x5555564ef8 *)
mov [_, m1, m2, m3] %v20; mov %v20 [w20, m1, m2, m3];
(* ld1	{v1.4s}, [x1]                               #! EA = L0x7ffffed910; Value = 0x0000000000000004; PC = 0x5555564efc *)
mov %v1 [L0x7ffffed910, L0x7ffffed914, L0x7ffffed918, L0x7ffffed91c];
(* ld1	{v3.4s}, [x3]                               #! EA = L0x7ffffed990; Value = 0x0000000100000000; PC = 0x5555564f00 *)
mov %v3 [L0x7ffffed990, L0x7ffffed994, L0x7ffffed998, L0x7ffffed99c];
(* ld1	{v5.4s}, [x5]                               #! EA = L0x7ffffeda10; Value = 0x0000000100000003; PC = 0x5555564f04 *)
mov %v5 [L0x7ffffeda10, L0x7ffffeda14, L0x7ffffeda18, L0x7ffffeda1c];
(* ld1	{v7.4s}, [x7]                               #! EA = L0x7ffffeda90; Value = 0x0000000200000004; PC = 0x5555564f08 *)
mov %v7 [L0x7ffffeda90, L0x7ffffeda94, L0x7ffffeda98, L0x7ffffeda9c];
(* ld1	{v9.4s}, [x9]                               #! EA = L0x7ffffedb10; Value = 0x0000000000000003; PC = 0x5555564f0c *)
mov %v9 [L0x7ffffedb10, L0x7ffffedb14, L0x7ffffedb18, L0x7ffffedb1c];
(* ld1	{v11.4s}, [x11]                             #! EA = L0x7ffffedb90; Value = 0x0000000300000000; PC = 0x5555564f10 *)
mov %v11 [L0x7ffffedb90, L0x7ffffedb94, L0x7ffffedb98, L0x7ffffedb9c];
(* ld1	{v13.4s}, [x13]                             #! EA = L0x7ffffedc10; Value = 0xfffffffc00000004; PC = 0x5555564f14 *)
mov %v13 [L0x7ffffedc10, L0x7ffffedc14, L0x7ffffedc18, L0x7ffffedc1c];
(* ld1	{v15.4s}, [x15]                             #! EA = L0x7ffffedc90; Value = 0xfffffffd00000000; PC = 0x5555564f18 *)
mov %v15 [L0x7ffffedc90, L0x7ffffedc94, L0x7ffffedc98, L0x7ffffedc9c];
(* ld1	{v0.4s}, [x0]                               #! EA = L0x7ffffed8d0; Value = 0xfffffffdfffffffc; PC = 0x5555564f1c *)
mov %v0 [L0x7ffffed8d0, L0x7ffffed8d4, L0x7ffffed8d8, L0x7ffffed8dc];
(* ld1	{v2.4s}, [x2]                               #! EA = L0x7ffffed950; Value = 0xfffffffcffffffff; PC = 0x5555564f20 *)
mov %v2 [L0x7ffffed950, L0x7ffffed954, L0x7ffffed958, L0x7ffffed95c];
(* ld1	{v4.4s}, [x4]                               #! EA = L0x7ffffed9d0; Value = 0xfffffffefffffffc; PC = 0x5555564f24 *)
mov %v4 [L0x7ffffed9d0, L0x7ffffed9d4, L0x7ffffed9d8, L0x7ffffed9dc];
(* ld1	{v6.4s}, [x6]                               #! EA = L0x7ffffeda50; Value = 0x0000000100000003; PC = 0x5555564f28 *)
mov %v6 [L0x7ffffeda50, L0x7ffffeda54, L0x7ffffeda58, L0x7ffffeda5c];
(* ld1	{v8.4s}, [x8]                               #! EA = L0x7ffffedad0; Value = 0xfffffffc00000004; PC = 0x5555564f2c *)
mov %v8 [L0x7ffffedad0, L0x7ffffedad4, L0x7ffffedad8, L0x7ffffedadc];
(* ld1	{v10.4s}, [x10]                             #! EA = L0x7ffffedb50; Value = 0x0000000000000001; PC = 0x5555564f30 *)
mov %v10 [L0x7ffffedb50, L0x7ffffedb54, L0x7ffffedb58, L0x7ffffedb5c];
(* ld1	{v12.4s}, [x12]                             #! EA = L0x7ffffedbd0; Value = 0x00000001ffffffff; PC = 0x5555564f34 *)
mov %v12 [L0x7ffffedbd0, L0x7ffffedbd4, L0x7ffffedbd8, L0x7ffffedbdc];
(* ld1	{v14.4s}, [x14]                             #! EA = L0x7ffffedc50; Value = 0x00000000fffffffc; PC = 0x5555564f38 *)
mov %v14 [L0x7ffffedc50, L0x7ffffedc54, L0x7ffffedc58, L0x7ffffedc5c];
(* mul	v16.4s, v9.4s, v20.s[3]                     #! PC = 0x5555564f3c *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v16 %v9 %mm; cast [] %v16@int32[4] %v16;
(* mul	v17.4s, v11.4s, v20.s[3]                    #! PC = 0x5555564f40 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v17 %v11 %mm; cast [] %v17@int32[4] %v17;
(* mul	v18.4s, v13.4s, v20.s[3]                    #! PC = 0x5555564f44 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v18 %v13 %mm; cast [] %v18@int32[4] %v18;
(* mul	v19.4s, v15.4s, v20.s[3]                    #! PC = 0x5555564f48 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v19 %v15 %mm; cast [] %v19@int32[4] %v19;
(* sqrdmulh	v9.4s, v9.4s, v20.s[2]                 #! PC = 0x5555564f4c *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v9 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v9 %dc %mm 1;
(* sqrdmulh	v11.4s, v11.4s, v20.s[2]               #! PC = 0x5555564f50 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v11 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v11 %dc %mm 1;
(* sqrdmulh	v13.4s, v13.4s, v20.s[2]               #! PC = 0x5555564f54 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v13 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v13 %dc %mm 1;
(* sqrdmulh	v15.4s, v15.4s, v20.s[2]               #! PC = 0x5555564f58 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v15 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v15 %dc %mm 1;
(* mls	v16.4s, v9.4s, v20.s[0]                     #! PC = 0x5555564f5c *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v9 %mm; cast [] %mm@int32[4] %mm; subs %dc %v16 %v16 %mm;
(* mls	v17.4s, v11.4s, v20.s[0]                    #! PC = 0x5555564f60 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v11 %mm; cast [] %mm@int32[4] %mm; subs %dc %v17 %v17 %mm;
(* mls	v18.4s, v13.4s, v20.s[0]                    #! PC = 0x5555564f64 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v13 %mm; cast [] %mm@int32[4] %mm; subs %dc %v18 %v18 %mm;
(* mls	v19.4s, v15.4s, v20.s[0]                    #! PC = 0x5555564f68 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v15 %mm; cast [] %mm@int32[4] %mm; subs %dc %v19 %v19 %mm;
(**************** mls ****************)

assert eqmod %v16 ([c90,c91,c92,c93]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v17 ([cb0,cb1,cb2,cb3]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v18 ([cd0,cd1,cd2,cd3]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v19 ([cf0,cf1,cf2,cf3]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v16 ([c90,c91,c92,c93]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v17 ([cb0,cb1,cb2,cb3]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v18 ([cd0,cd1,cd2,cd3]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v19 ([cf0,cf1,cf2,cf3]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q]
       prove with [algebra solver isl] && true;
assume [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q];


(**************** CUT 0, 0 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod %v16 ([c90,c91,c92,c93]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v17 ([cb0,cb1,cb2,cb3]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v18 ([cd0,cd1,cd2,cd3]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v19 ([cf0,cf1,cf2,cf3]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q];

ghost  %v1o0@int32[4], %v3o0@int32[4], %v5o0@int32[4], %v7o0@int32[4]:
       %v1o0 =  %v1 /\  %v3o0 =  %v3 /\  %v5o0 =  %v5 /\  %v7o0 =  %v7
   &&  %v1o0 =  %v1 /\  %v3o0 =  %v3 /\  %v5o0 =  %v5 /\  %v7o0 =  %v7;

(* sub	v9.4s, v1.4s, v16.4s                        #! PC = 0x5555564f6c *)
sub %v9 %v1 %v16;
(* mul	v28.4s, v8.4s, v20.s[3]                     #! PC = 0x5555564f70 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v28 %v8 %mm; cast [] %v28@int32[4] %v28;
(* sub	v11.4s, v3.4s, v17.4s                       #! PC = 0x5555564f74 *)
sub %v11 %v3 %v17;
(* mul	v29.4s, v10.4s, v20.s[3]                    #! PC = 0x5555564f78 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v29 %v10 %mm; cast [] %v29@int32[4] %v29;
(* sub	v13.4s, v5.4s, v18.4s                       #! PC = 0x5555564f7c *)
sub %v13 %v5 %v18;
(* mul	v30.4s, v12.4s, v20.s[3]                    #! PC = 0x5555564f80 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v30 %v12 %mm; cast [] %v30@int32[4] %v30;
(* sub	v15.4s, v7.4s, v19.4s                       #! PC = 0x5555564f84 *)
sub %v15 %v7 %v19;
(* mul	v31.4s, v14.4s, v20.s[3]                    #! PC = 0x5555564f88 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v31 %v14 %mm; cast [] %v31@int32[4] %v31;
(* add	v1.4s, v1.4s, v16.4s                        #! PC = 0x5555564f8c *)
add %v1 %v1 %v16;
(* sqrdmulh	v8.4s, v8.4s, v20.s[2]                 #! PC = 0x5555564f90 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v8 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v8 %dc %mm 1;
(* add	v3.4s, v3.4s, v17.4s                        #! PC = 0x5555564f94 *)
add %v3 %v3 %v17;
(* sqrdmulh	v10.4s, v10.4s, v20.s[2]               #! PC = 0x5555564f98 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v10 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v10 %dc %mm 1;
(* add	v5.4s, v5.4s, v18.4s                        #! PC = 0x5555564f9c *)
add %v5 %v5 %v18;
(* sqrdmulh	v12.4s, v12.4s, v20.s[2]               #! PC = 0x5555564fa0 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v12 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v12 %dc %mm 1;
(* add	v7.4s, v7.4s, v19.4s                        #! PC = 0x5555564fa4 *)
add %v7 %v7 %v19;
(* sqrdmulh	v14.4s, v14.4s, v20.s[2]               #! PC = 0x5555564fa8 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v14 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v14 %dc %mm 1;
(* mls	v28.4s, v8.4s, v20.s[0]                     #! PC = 0x5555564fac *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v8 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v10.4s, v20.s[0]                    #! PC = 0x5555564fb0 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v10 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;
(* mls	v30.4s, v12.4s, v20.s[0]                    #! PC = 0x5555564fb4 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v12 %mm; cast [] %mm@int32[4] %mm; subs %dc %v30 %v30 %mm;
(* mls	v31.4s, v14.4s, v20.s[0]                    #! PC = 0x5555564fb8 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v14 %mm; cast [] %mm@int32[4] %mm; subs %dc %v31 %v31 %mm;


(**************** mls ****************)

assert eqmod %v28 ([c80,c81,c82,c83]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v29 ([ca0,ca1,ca2,ca3]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v30 ([cc0,cc1,cc2,cc3]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v31 ([ce0,ce1,ce2,ce3]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 ([c80,c81,c82,c83]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v29 ([ca0,ca1,ca2,ca3]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v30 ([cc0,cc1,cc2,cc3]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v31 ([ce0,ce1,ce2,ce3]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v1 /\  %v1 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v3 /\  %v3 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v5 /\  %v5 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v7 /\  %v7 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v9 /\  %v9 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v11 /\ %v11 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v13 /\ %v13 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v15 /\ %v15 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
       prove with [ algebra solver isl, precondition ] && true;
assume [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v1 /\  %v1 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v3 /\  %v3 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v5 /\  %v5 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v7 /\  %v7 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v9 /\  %v9 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v11 /\ %v11 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v13 /\ %v13 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v15 /\ %v15 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v1 /\  %v1 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v3 /\  %v3 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v5 /\  %v5 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v7 /\  %v7 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v9 /\  %v9 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v11 /\ %v11 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v13 /\ %v13 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v15 /\ %v15 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2];

(**************** CUT 1, 1 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v1 =  %v1o0 + %v16 /\  %v9 =  %v1o0 - %v16 /\
     %v3 =  %v3o0 + %v17 /\ %v11 =  %v3o0 - %v17 /\
     %v5 =  %v5o0 + %v18 /\ %v13 =  %v5o0 - %v18 /\
     %v7 =  %v7o0 + %v19 /\ %v15 =  %v7o0 - %v19 /\
    eqmod %v28 ([c80,c81,c82,c83]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v29 ([ca0,ca1,ca2,ca3]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v30 ([cc0,cc1,cc2,cc3]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v31 ([ce0,ce1,ce2,ce3]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v1 /\  %v1 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v3 /\  %v3 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v5 /\  %v5 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v7 /\  %v7 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v9 /\  %v9 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v11 /\ %v11 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v13 /\ %v13 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v15 /\ %v15 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v1 /\  %v1 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v3 /\  %v3 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v5 /\  %v5 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v7 /\  %v7 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v9 /\  %v9 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v11 /\ %v11 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v13 /\ %v13 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v15 /\ %v15 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
    prove with [precondition];

ghost  %v0o1@int32[4], %v2o1@int32[4], %v4o1@int32[4], %v6o1@int32[4],
       %v5o1@int32[4], %v7o1@int32[4],%v13o1@int32[4],%v15o1@int32[4]:
       %v0o1 =  %v0 /\  %v2o1 =  %v2 /\  %v4o1 =  %v4 /\  %v6o1 =  %v6 /\
       %v5o1 =  %v5 /\  %v7o1 =  %v7 /\ %v13o1 = %v13 /\ %v15o1 = %v15
   &&  %v0o1 =  %v0 /\  %v2o1 =  %v2 /\  %v4o1 =  %v4 /\  %v6o1 =  %v6 /\
       %v5o1 =  %v5 /\  %v7o1 =  %v7 /\ %v13o1 = %v13 /\ %v15o1 = %v15;

(* sub	v8.4s, v0.4s, v28.4s                        #! PC = 0x5555564fbc *)
sub %v8 %v0 %v28;
(* mul	v16.4s, v5.4s, v21.s[1]                     #! PC = 0x5555564fc0 *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v16 %v5 %mm; cast [] %v16@int32[4] %v16;
(* sub	v10.4s, v2.4s, v29.4s                       #! PC = 0x5555564fc4 *)
sub %v10 %v2 %v29;
(* mul	v17.4s, v7.4s, v21.s[1]                     #! PC = 0x5555564fc8 *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v17 %v7 %mm; cast [] %v17@int32[4] %v17;
(* sub	v12.4s, v4.4s, v30.4s                       #! PC = 0x5555564fcc *)
sub %v12 %v4 %v30;
(* mul	v18.4s, v13.4s, v21.s[3]                    #! PC = 0x5555564fd0 *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v18 %v13 %mm; cast [] %v18@int32[4] %v18;
(* sub	v14.4s, v6.4s, v31.4s                       #! PC = 0x5555564fd4 *)
sub %v14 %v6 %v31;
(* mul	v19.4s, v15.4s, v21.s[3]                    #! PC = 0x5555564fd8 *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v19 %v15 %mm; cast [] %v19@int32[4] %v19;
(* add	v0.4s, v0.4s, v28.4s                        #! PC = 0x5555564fdc *)
add %v0 %v0 %v28;
(* sqrdmulh	v5.4s, v5.4s, v21.s[0]                 #! PC = 0x5555564fe0 *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v5 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v5 %dc %mm 1;
(* add	v2.4s, v2.4s, v29.4s                        #! PC = 0x5555564fe4 *)
add %v2 %v2 %v29;
(* sqrdmulh	v7.4s, v7.4s, v21.s[0]                 #! PC = 0x5555564fe8 *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v7 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v7 %dc %mm 1;
(* add	v4.4s, v4.4s, v30.4s                        #! PC = 0x5555564fec *)
add %v4 %v4 %v30;
(* sqrdmulh	v13.4s, v13.4s, v21.s[2]               #! PC = 0x5555564ff0 *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v13 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v13 %dc %mm 1;
(* add	v6.4s, v6.4s, v31.4s                        #! PC = 0x5555564ff4 *)
add %v6 %v6 %v31;
(* sqrdmulh	v15.4s, v15.4s, v21.s[2]               #! PC = 0x5555564ff8 *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v15 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v15 %dc %mm 1;
(* mls	v16.4s, v5.4s, v20.s[0]                     #! PC = 0x5555564ffc *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v5 %mm; cast [] %mm@int32[4] %mm; subs %dc %v16 %v16 %mm;
(* mls	v17.4s, v7.4s, v20.s[0]                     #! PC = 0x5555565000 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v7 %mm; cast [] %mm@int32[4] %mm; subs %dc %v17 %v17 %mm;
(* mls	v18.4s, v13.4s, v20.s[0]                    #! PC = 0x5555565004 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v13 %mm; cast [] %mm@int32[4] %mm; subs %dc %v18 %v18 %mm;
(* mls	v19.4s, v15.4s, v20.s[0]                    #! PC = 0x5555565008 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v15 %mm; cast [] %mm@int32[4] %mm; subs %dc %v19 %v19 %mm;



(**************** mls ****************)

assert eqmod %v16 ( %v5o1*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v7o1*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v18 (%v13o1*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] /\
       eqmod %v19 (%v15o1*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v16 ( %v5o1*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v7o1*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v18 (%v13o1*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] /\
       eqmod %v19 (%v15o1*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v0 /\  %v0 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v2 /\  %v2 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v4 /\  %v4 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v6 /\  %v6 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v8 /\  %v8 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v10 /\ %v10 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v12 /\ %v12 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v14 /\ %v14 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
       prove with [ algebra solver isl, precondition] && true;
assume [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v0 /\  %v0 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v2 /\  %v2 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v4 /\  %v4 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v6 /\  %v6 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v8 /\  %v8 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v10 /\ %v10 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v12 /\ %v12 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v14 /\ %v14 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v0 /\  %v0 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v2 /\  %v2 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v4 /\  %v4 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v6 /\  %v6 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v8 /\  %v8 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v10 /\ %v10 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v12 /\ %v12 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v14 /\ %v14 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2];

(**************** CUT 2, 2 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o1 + %v28 /\  %v8 =  %v0o1 - %v28 /\
     %v2 =  %v2o1 + %v29 /\ %v10 =  %v2o1 - %v29 /\
     %v4 =  %v4o1 + %v30 /\ %v12 =  %v4o1 - %v30 /\
     %v6 =  %v6o1 + %v31 /\ %v14 =  %v6o1 - %v31 /\
    eqmod %v16 ( %v5o1*[3765607,3765607,3765607,3765607])
          [Q, Q, Q, Q] /\
    eqmod %v17 ( %v7o1*[3765607,3765607,3765607,3765607])
          [Q, Q, Q, Q] /\
    eqmod %v18 (%v13o1*[3761513,3761513,3761513,3761513])
          [Q, Q, Q, Q] /\
    eqmod %v19 (%v15o1*[3761513,3761513,3761513,3761513])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v0 /\  %v0 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v2 /\  %v2 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v4 /\  %v4 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v6 /\  %v6 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v8 /\  %v8 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v10 /\ %v10 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v12 /\ %v12 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v14 /\ %v14 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v0 /\  %v0 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v2 /\  %v2 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v4 /\  %v4 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v6 /\  %v6 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v8 /\  %v8 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v10 /\ %v10 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v12 /\ %v12 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v14 /\ %v14 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
    prove with [precondition, cuts [0]];

ghost  %v1o2@int32[4], %v3o2@int32[4], %v9o2@int32[4],%v11o2@int32[4],
       %v4o2@int32[4], %v6o2@int32[4],%v12o2@int32[4],%v14o2@int32[4]:
       %v1o2 =  %v1 /\  %v3o2 =  %v3 /\  %v9o2 =  %v9 /\ %v11o2 = %v11 /\
       %v4o2 =  %v4 /\  %v6o2 =  %v6 /\ %v12o2 = %v12 /\ %v14o2 = %v14
   &&  %v1o2 =  %v1 /\  %v3o2 =  %v3 /\  %v9o2 =  %v9 /\ %v11o2 = %v11 /\
       %v4o2 =  %v4 /\  %v6o2 =  %v6 /\ %v12o2 = %v12 /\ %v14o2 = %v14;

(* sub	v5.4s, v1.4s, v16.4s                        #! PC = 0x555556500c *)
sub %v5 %v1 %v16;
(* mul	v28.4s, v4.4s, v21.s[1]                     #! PC = 0x5555565010 *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v28 %v4 %mm; cast [] %v28@int32[4] %v28;
(* sub	v7.4s, v3.4s, v17.4s                        #! PC = 0x5555565014 *)
sub %v7 %v3 %v17;
(* mul	v29.4s, v6.4s, v21.s[1]                     #! PC = 0x5555565018 *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v29 %v6 %mm; cast [] %v29@int32[4] %v29;
(* sub	v13.4s, v9.4s, v18.4s                       #! PC = 0x555556501c *)
sub %v13 %v9 %v18;
(* mul	v30.4s, v12.4s, v21.s[3]                    #! PC = 0x5555565020 *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v30 %v12 %mm; cast [] %v30@int32[4] %v30;
(* sub	v15.4s, v11.4s, v19.4s                      #! PC = 0x5555565024 *)
sub %v15 %v11 %v19;
(* mul	v31.4s, v14.4s, v21.s[3]                    #! PC = 0x5555565028 *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v31 %v14 %mm; cast [] %v31@int32[4] %v31;
(* add	v1.4s, v1.4s, v16.4s                        #! PC = 0x555556502c *)
add %v1 %v1 %v16;
(* sqrdmulh	v4.4s, v4.4s, v21.s[0]                 #! PC = 0x5555565030 *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v4 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v4 %dc %mm 1;
(* add	v3.4s, v3.4s, v17.4s                        #! PC = 0x5555565034 *)
add %v3 %v3 %v17;
(* sqrdmulh	v6.4s, v6.4s, v21.s[0]                 #! PC = 0x5555565038 *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v6 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v6 %dc %mm 1;
(* add	v9.4s, v9.4s, v18.4s                        #! PC = 0x555556503c *)
add %v9 %v9 %v18;
(* sqrdmulh	v12.4s, v12.4s, v21.s[2]               #! PC = 0x5555565040 *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v12 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v12 %dc %mm 1;
(* add	v11.4s, v11.4s, v19.4s                      #! PC = 0x5555565044 *)
add %v11 %v11 %v19;
(* sqrdmulh	v14.4s, v14.4s, v21.s[2]               #! PC = 0x5555565048 *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v14 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v14 %dc %mm 1;
(* mls	v28.4s, v4.4s, v20.s[0]                     #! PC = 0x555556504c *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v4 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v6.4s, v20.s[0]                     #! PC = 0x5555565050 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v6 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;
(* mls	v30.4s, v12.4s, v20.s[0]                    #! PC = 0x5555565054 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v12 %mm; cast [] %mm@int32[4] %mm; subs %dc %v30 %v30 %mm;
(* mls	v31.4s, v14.4s, v20.s[0]                    #! PC = 0x5555565058 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v14 %mm; cast [] %mm@int32[4] %mm; subs %dc %v31 %v31 %mm;



(**************** mls ****************)

assert eqmod %v28 ( %v4o2*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v29 ( %v6o2*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v30 ( %v12o2*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] /\
       eqmod %v31 ( %v14o2*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 ( %v4o2*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v29 ( %v6o2*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v30 ( %v12o2*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] /\
       eqmod %v31 ( %v14o2*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v1 /\
        %v1 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v3 /\
        %v3 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v5 /\
        %v5 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v7 /\
        %v7 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v9 /\
        %v9 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v11 /\
       %v11 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v13 /\
       %v13 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v15 /\
       %v15 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
       prove with [algebra solver isl, cuts [1]] && true;
assume [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v1 /\
        %v1 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v3 /\
        %v3 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v5 /\
        %v5 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v7 /\
        %v7 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v9 /\
        %v9 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v11 /\
       %v11 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v13 /\
       %v13 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v15 /\
       %v15 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v1 /\
        %v1 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v3 /\
        %v3 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v5 /\
        %v5 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v7 /\
        %v7 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v9 /\
        %v9 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v11 /\
       %v11 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v13 /\
       %v13 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v15 /\
       %v15 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2];

(**************** CUT 3, 3 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v1 =  %v1o2 + %v16 /\  %v5 =  %v1o2 - %v16 /\
     %v3 =  %v3o2 + %v17 /\  %v7 =  %v3o2 - %v17 /\
     %v9 =  %v9o2 + %v18 /\ %v13 =  %v9o2 - %v18 /\
    %v11 = %v11o2 + %v19 /\ %v15 = %v11o2 - %v19 /\
    eqmod %v28 ( %v4o2*[3765607,3765607,3765607,3765607])
          [Q, Q, Q, Q] /\
    eqmod %v29 ( %v6o2*[3765607,3765607,3765607,3765607])
          [Q, Q, Q, Q] /\
    eqmod %v30 (%v12o2*[3761513,3761513,3761513,3761513])
          [Q, Q, Q, Q] /\
    eqmod %v31 (%v14o2*[3761513,3761513,3761513,3761513])
          [Q, Q, Q, Q]  /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v1 /\
     %v1 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v3 /\
     %v3 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v5 /\
     %v5 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v7 /\
     %v7 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v9 /\
     %v9 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v11 /\
    %v11 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v13 /\
    %v13 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v15 /\
    %v15 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v1 /\
     %v1 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v3 /\
     %v3 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v5 /\
     %v5 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v7 /\
     %v7 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v9 /\
     %v9 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v11 /\
    %v11 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v13 /\
    %v13 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v15 /\
    %v15 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2]
    prove with [cuts[1]];

ghost  %v0o3@int32[4], %v2o3@int32[4], %v8o3@int32[4],%v10o3@int32[4],
       %v3o3@int32[4], %v7o3@int32[4],%v11o3@int32[4],%v15o3@int32[4]:
       %v0o3 =  %v0 /\  %v2o3 =  %v2 /\  %v8o3 =  %v8 /\ %v10o3 = %v10 /\
       %v3o3 =  %v3 /\  %v7o3 =  %v7 /\ %v11o3 = %v11 /\ %v15o3 = %v15
   &&  %v0o3 =  %v0 /\  %v2o3 =  %v2 /\  %v8o3 =  %v8 /\ %v10o3 = %v10 /\
       %v3o3 =  %v3 /\  %v7o3 =  %v7 /\ %v11o3 = %v11 /\ %v15o3 = %v15;

(* sub	v4.4s, v0.4s, v28.4s                        #! PC = 0x555556505c *)
sub %v4 %v0 %v28;
(* mul	v16.4s, v3.4s, v22.s[1]                     #! PC = 0x5555565060 *)
mov [_, m, _, _] %v22; mov %mm [m, m, m, m];
mull %dc %v16 %v3 %mm; cast [] %v16@int32[4] %v16;
(* sub	v6.4s, v2.4s, v29.4s                        #! PC = 0x5555565064 *)
sub %v6 %v2 %v29;
(* mul	v17.4s, v7.4s, v22.s[3]                     #! PC = 0x5555565068 *)
mov [_, _, _, m] %v22; mov %mm [m, m, m, m];
mull %dc %v17 %v7 %mm; cast [] %v17@int32[4] %v17;
(* sub	v12.4s, v8.4s, v30.4s                       #! PC = 0x555556506c *)
sub %v12 %v8 %v30;
(* mul	v18.4s, v11.4s, v23.s[1]                    #! PC = 0x5555565070 *)
mov [_, m, _, _] %v23; mov %mm [m, m, m, m];
mull %dc %v18 %v11 %mm; cast [] %v18@int32[4] %v18;
(* sub	v14.4s, v10.4s, v31.4s                      #! PC = 0x5555565074 *)
sub %v14 %v10 %v31;
(* mul	v19.4s, v15.4s, v23.s[3]                    #! PC = 0x5555565078 *)
mov [_, _, _, m] %v23; mov %mm [m, m, m, m];
mull %dc %v19 %v15 %mm; cast [] %v19@int32[4] %v19;
(* add	v0.4s, v0.4s, v28.4s                        #! PC = 0x555556507c *)
add %v0 %v0 %v28;
(* sqrdmulh	v3.4s, v3.4s, v22.s[0]                 #! PC = 0x5555565080 *)
mov [m, _, _, _] %v22; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* add	v2.4s, v2.4s, v29.4s                        #! PC = 0x5555565084 *)
add %v2 %v2 %v29;
(* sqrdmulh	v7.4s, v7.4s, v22.s[2]                 #! PC = 0x5555565088 *)
mov [_, _, m, _] %v22; mov %mm [m, m, m, m];
mulj %mm %v7 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v7 %dc %mm 1;
(* add	v8.4s, v8.4s, v30.4s                        #! PC = 0x555556508c *)
add %v8 %v8 %v30;
(* sqrdmulh	v11.4s, v11.4s, v23.s[0]               #! PC = 0x5555565090 *)
mov [m, _, _, _] %v23; mov %mm [m, m, m, m];
mulj %mm %v11 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v11 %dc %mm 1;
(* add	v10.4s, v10.4s, v31.4s                      #! PC = 0x5555565094 *)
add %v10 %v10 %v31;
(* sqrdmulh	v15.4s, v15.4s, v23.s[2]               #! PC = 0x5555565098 *)
mov [_, _, m, _] %v23; mov %mm [m, m, m, m];
mulj %mm %v15 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v15 %dc %mm 1;
(* mls	v16.4s, v3.4s, v20.s[0]                     #! PC = 0x555556509c *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v16 %v16 %mm;
(* mls	v17.4s, v7.4s, v20.s[0]                     #! PC = 0x55555650a0 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v7 %mm; cast [] %mm@int32[4] %mm; subs %dc %v17 %v17 %mm;
(* mls	v18.4s, v11.4s, v20.s[0]                    #! PC = 0x55555650a4 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v11 %mm; cast [] %mm@int32[4] %mm; subs %dc %v18 %v18 %mm;
(* mls	v19.4s, v15.4s, v20.s[0]                    #! PC = 0x55555650a8 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v15 %mm; cast [] %mm@int32[4] %mm; subs %dc %v19 %v19 %mm;



(**************** mls ****************)

assert eqmod %v16 ( %v3o3*[-3201494,-3201494,-3201494,-3201494])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v7o3*[-2883726,-2883726,-2883726,-2883726])
             [Q, Q, Q, Q] /\
       eqmod %v18 (%v11o3*[-3145678,-3145678,-3145678,-3145678])
             [Q, Q, Q, Q] /\
       eqmod %v19 (%v15o3*[-3201430,-3201430,-3201430,-3201430])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v16 ( %v3o3*[-3201494,-3201494,-3201494,-3201494])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v7o3*[-2883726,-2883726,-2883726,-2883726])
             [Q, Q, Q, Q] /\
       eqmod %v18 (%v11o3*[-3145678,-3145678,-3145678,-3145678])
             [Q, Q, Q, Q] /\
       eqmod %v19 (%v15o3*[-3201430,-3201430,-3201430,-3201430])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v0 /\
        %v0 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v2 /\
        %v2 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v4 /\
        %v4 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v6 /\
        %v6 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v8 /\
        %v8 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v10 /\
       %v10 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v12 /\
       %v12 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v14 /\
       %v14 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
       prove with [algebra solver isl, cuts [2]] && true;
assume [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v0 /\
        %v0 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v2 /\
        %v2 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v4 /\
        %v4 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v6 /\
        %v6 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v8 /\
        %v8 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v10 /\
       %v10 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v12 /\
       %v12 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v14 /\
       %v14 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v0 /\
        %v0 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v2 /\
        %v2 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v4 /\
        %v4 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v6 /\
        %v6 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v8 /\
        %v8 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v10 /\
       %v10 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v12 /\
       %v12 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v14 /\
       %v14 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2];

(**************** CUT 4, 4 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o3 + %v28 /\  %v4 =  %v0o3 - %v28 /\
     %v2 =  %v2o3 + %v29 /\  %v6 =  %v2o3 - %v29 /\
     %v8 =  %v8o3 + %v30 /\ %v12 =  %v8o3 - %v30 /\
    %v10 = %v10o3 + %v31 /\ %v14 = %v10o3 - %v31 /\
    eqmod %v16 ( %v3o3*[-3201494,-3201494,-3201494,-3201494])
          [Q, Q, Q, Q] /\
    eqmod %v17 ( %v7o3*[-2883726,-2883726,-2883726,-2883726])
          [Q, Q, Q, Q] /\
    eqmod %v18 (%v11o3*[-3145678,-3145678,-3145678,-3145678])
          [Q, Q, Q, Q] /\
    eqmod %v19 (%v15o3*[-3201430,-3201430,-3201430,-3201430])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v0 /\
     %v0 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v2 /\
     %v2 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v4 /\
     %v4 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v6 /\
     %v6 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v8 /\
     %v8 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v10 /\
    %v10 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v12 /\
    %v12 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v14 /\
    %v14 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v0 /\
     %v0 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v2 /\
     %v2 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v4 /\
     %v4 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v6 /\
     %v6 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v8 /\
     %v8 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v10 /\
    %v10 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v12 /\
    %v12 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v14 /\
    %v14 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2]
    prove with [cuts [2]];

ghost  %v1o4@int32[4], %v5o4@int32[4], %v9o4@int32[4],%v13o4@int32[4],
       %v2o4@int32[4], %v6o4@int32[4],%v10o4@int32[4],%v14o4@int32[4]:
       %v1o4 =  %v1 /\  %v5o4 =  %v5 /\  %v9o4 =  %v9 /\ %v13o4 = %v13 /\
       %v2o4 =  %v2 /\  %v6o4 =  %v6 /\ %v10o4 = %v10 /\ %v14o4 = %v14
   &&  %v1o4 =  %v1 /\  %v5o4 =  %v5 /\  %v9o4 =  %v9 /\ %v13o4 = %v13 /\
       %v2o4 =  %v2 /\  %v6o4 =  %v6 /\ %v10o4 = %v10 /\ %v14o4 = %v14;

(* sub	v3.4s, v1.4s, v16.4s                        #! PC = 0x55555650ac *)
sub %v3 %v1 %v16;
(* mul	v28.4s, v2.4s, v22.s[1]                     #! PC = 0x55555650b0 *)
mov [_, m, _, _] %v22; mov %mm [m, m, m, m];
mull %dc %v28 %v2 %mm; cast [] %v28@int32[4] %v28;
(* sub	v7.4s, v5.4s, v17.4s                        #! PC = 0x55555650b4 *)
sub %v7 %v5 %v17;
(* mul	v29.4s, v6.4s, v22.s[3]                     #! PC = 0x55555650b8 *)
mov [_, _, _, m] %v22; mov %mm [m, m, m, m];
mull %dc %v29 %v6 %mm; cast [] %v29@int32[4] %v29;
(* sub	v11.4s, v9.4s, v18.4s                       #! PC = 0x55555650bc *)
sub %v11 %v9 %v18;
(* mul	v30.4s, v10.4s, v23.s[1]                    #! PC = 0x55555650c0 *)
mov [_, m, _, _] %v23; mov %mm [m, m, m, m];
mull %dc %v30 %v10 %mm; cast [] %v30@int32[4] %v30;
(* sub	v15.4s, v13.4s, v19.4s                      #! PC = 0x55555650c4 *)
sub %v15 %v13 %v19;
(* mul	v31.4s, v14.4s, v23.s[3]                    #! PC = 0x55555650c8 *)
mov [_, _, _, m] %v23; mov %mm [m, m, m, m];
mull %dc %v31 %v14 %mm; cast [] %v31@int32[4] %v31;
(* add	v1.4s, v1.4s, v16.4s                        #! PC = 0x55555650cc *)
add %v1 %v1 %v16;
(* sqrdmulh	v2.4s, v2.4s, v22.s[0]                 #! PC = 0x55555650d0 *)
mov [m, _, _, _] %v22; mov %mm [m, m, m, m];
mulj %mm %v2 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v2 %dc %mm 1;
(* add	v5.4s, v5.4s, v17.4s                        #! PC = 0x55555650d4 *)
add %v5 %v5 %v17;
(* sqrdmulh	v6.4s, v6.4s, v22.s[2]                 #! PC = 0x55555650d8 *)
mov [_, _, m, _] %v22; mov %mm [m, m, m, m];
mulj %mm %v6 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v6 %dc %mm 1;
(* add	v9.4s, v9.4s, v18.4s                        #! PC = 0x55555650dc *)
add %v9 %v9 %v18;
(* sqrdmulh	v10.4s, v10.4s, v23.s[0]               #! PC = 0x55555650e0 *)
mov [m, _, _, _] %v23; mov %mm [m, m, m, m];
mulj %mm %v10 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v10 %dc %mm 1;
(* add	v13.4s, v13.4s, v19.4s                      #! PC = 0x55555650e4 *)
add %v13 %v13 %v19;
(* sqrdmulh	v14.4s, v14.4s, v23.s[2]               #! PC = 0x55555650e8 *)
mov [_, _, m, _] %v23; mov %mm [m, m, m, m];
mulj %mm %v14 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v14 %dc %mm 1;
(* mls	v28.4s, v2.4s, v20.s[0]                     #! PC = 0x55555650ec *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v2 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v6.4s, v20.s[0]                     #! PC = 0x55555650f0 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v6 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;
(* mls	v30.4s, v10.4s, v20.s[0]                    #! PC = 0x55555650f4 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v10 %mm; cast [] %mm@int32[4] %mm; subs %dc %v30 %v30 %mm;
(* mls	v31.4s, v14.4s, v20.s[0]                    #! PC = 0x55555650f8 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v14 %mm; cast [] %mm@int32[4] %mm; subs %dc %v31 %v31 %mm;




(**************** mls ****************)

assert eqmod %v28 ( %v2o4*[-3201494,-3201494,-3201494,-3201494])
             [Q, Q, Q, Q] /\
       eqmod %v29 ( %v6o4*[-2883726,-2883726,-2883726,-2883726])
             [Q, Q, Q, Q] /\
       eqmod %v30 (%v10o4*[-3145678,-3145678,-3145678,-3145678])
             [Q, Q, Q, Q] /\
       eqmod %v31 (%v14o4*[-3201430,-3201430,-3201430,-3201430])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 ( %v2o4*[-3201494,-3201494,-3201494,-3201494])
             [Q, Q, Q, Q] /\
       eqmod %v29 ( %v6o4*[-2883726,-2883726,-2883726,-2883726])
             [Q, Q, Q, Q] /\
       eqmod %v30 (%v10o4*[-3145678,-3145678,-3145678,-3145678])
             [Q, Q, Q, Q] /\
       eqmod %v31 (%v14o4*[-3201430,-3201430,-3201430,-3201430])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v1 /\
        %v1 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v3 /\
        %v3 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v5 /\
        %v5 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v7 /\
        %v7 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v9 /\
        %v9 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v11 /\
       %v11 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v13 /\
       %v13 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v15 /\
       %v15 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
       prove with [algebra solver isl, cuts [3]] && true;
assume [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v1 /\
        %v1 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v3 /\
        %v3 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v5 /\
        %v5 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v7 /\
        %v7 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v9 /\
        %v9 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v11 /\
       %v11 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v13 /\
       %v13 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v15 /\
       %v15 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v1 /\
        %v1 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v3 /\
        %v3 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v5 /\
        %v5 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v7 /\
        %v7 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v9 /\
        %v9 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v11 /\
       %v11 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v13 /\
       %v13 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v15 /\
       %v15 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2];


(**************** CUT 5, 5 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v1 =  %v1o4 + %v16 /\  %v3 =  %v1o4 - %v16 /\
     %v5 =  %v5o4 + %v17 /\  %v7 =  %v5o4 - %v17 /\
     %v9 =  %v9o4 + %v18 /\ %v11 =  %v9o4 - %v18 /\
    %v13 = %v13o4 + %v19 /\ %v15 = %v13o4 - %v19 /\
    eqmod %v28 ( %v2o4*[-3201494,-3201494,-3201494,-3201494])
          [Q, Q, Q, Q] /\
    eqmod %v29 ( %v6o4*[-2883726,-2883726,-2883726,-2883726])
          [Q, Q, Q, Q] /\
    eqmod %v30 (%v10o4*[-3145678,-3145678,-3145678,-3145678])
          [Q, Q, Q, Q] /\
    eqmod %v31 (%v14o4*[-3201430,-3201430,-3201430,-3201430])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v1 /\
     %v1 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v3 /\
     %v3 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v5 /\
     %v5 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v7 /\
     %v7 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v9 /\
     %v9 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v11 /\
    %v11 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v13 /\
    %v13 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v15 /\
    %v15 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v1 /\
     %v1 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v3 /\
     %v3 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v5 /\
     %v5 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v7 /\
     %v7 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v9 /\
     %v9 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v11 /\
    %v11 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v13 /\
    %v13 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v15 /\
    %v15 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2]
    prove with [cuts [3]];

ghost  %v0o5@int32[4], %v4o5@int32[4], %v8o5@int32[4],%v12o5@int32[4],
       %v1o5@int32[4], %v3o5@int32[4], %v5o5@int32[4], %v7o5@int32[4]:
       %v0o5 =  %v0 /\  %v4o5 =  %v4 /\  %v8o5 =  %v8 /\ %v12o5 = %v12 /\
       %v1o5 =  %v1 /\  %v3o5 =  %v3 /\  %v5o5 =  %v5 /\  %v7o5 =  %v7
   &&  %v0o5 =  %v0 /\  %v4o5 =  %v4 /\  %v8o5 =  %v8 /\ %v12o5 = %v12 /\
       %v1o5 =  %v1 /\  %v3o5 =  %v3 /\  %v5o5 =  %v5 /\  %v7o5 =  %v7;

(* sub	v2.4s, v0.4s, v28.4s                        #! PC = 0x55555650fc *)
sub %v2 %v0 %v28;
(* mul	v16.4s, v1.4s, v24.s[1]                     #! PC = 0x5555565100 *)
mov [_, m, _, _] %v24; mov %mm [m, m, m, m];
mull %dc %v16 %v1 %mm; cast [] %v16@int32[4] %v16;
(* sub	v6.4s, v4.4s, v29.4s                        #! PC = 0x5555565104 *)
sub %v6 %v4 %v29;
(* mul	v17.4s, v3.4s, v24.s[3]                     #! PC = 0x5555565108 *)
mov [_, _, _, m] %v24; mov %mm [m, m, m, m];
mull %dc %v17 %v3 %mm; cast [] %v17@int32[4] %v17;
(* sub	v10.4s, v8.4s, v30.4s                       #! PC = 0x555556510c *)
sub %v10 %v8 %v30;
(* mul	v18.4s, v5.4s, v25.s[1]                     #! PC = 0x5555565110 *)
mov [_, m, _, _] %v25; mov %mm [m, m, m, m];
mull %dc %v18 %v5 %mm; cast [] %v18@int32[4] %v18;
(* sub	v14.4s, v12.4s, v31.4s                      #! PC = 0x5555565114 *)
sub %v14 %v12 %v31;
(* mul	v19.4s, v7.4s, v25.s[3]                     #! PC = 0x5555565118 *)
mov [_, _, _, m] %v25; mov %mm [m, m, m, m];
mull %dc %v19 %v7 %mm; cast [] %v19@int32[4] %v19;
(* add	v0.4s, v0.4s, v28.4s                        #! PC = 0x555556511c *)
add %v0 %v0 %v28;
(* sqrdmulh	v1.4s, v1.4s, v24.s[0]                 #! PC = 0x5555565120 *)
mov [m, _, _, _] %v24; mov %mm [m, m, m, m];
mulj %mm %v1 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v1 %dc %mm 1;
(* add	v4.4s, v4.4s, v29.4s                        #! PC = 0x5555565124 *)
add %v4 %v4 %v29;
(* sqrdmulh	v3.4s, v3.4s, v24.s[2]                 #! PC = 0x5555565128 *)
mov [_, _, m, _] %v24; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* add	v8.4s, v8.4s, v30.4s                        #! PC = 0x555556512c *)
add %v8 %v8 %v30;
(* sqrdmulh	v5.4s, v5.4s, v25.s[0]                 #! PC = 0x5555565130 *)
mov [m, _, _, _] %v25; mov %mm [m, m, m, m];
mulj %mm %v5 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v5 %dc %mm 1;
(* add	v12.4s, v12.4s, v31.4s                      #! PC = 0x5555565134 *)
add %v12 %v12 %v31;
(* sqrdmulh	v7.4s, v7.4s, v25.s[2]                 #! PC = 0x5555565138 *)
mov [_, _, m, _] %v25; mov %mm [m, m, m, m];
mulj %mm %v7 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v7 %dc %mm 1;
(* mls	v16.4s, v1.4s, v20.s[0]                     #! PC = 0x555556513c *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v1 %mm; cast [] %mm@int32[4] %mm; subs %dc %v16 %v16 %mm;
(* mls	v17.4s, v3.4s, v20.s[0]                     #! PC = 0x5555565140 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v17 %v17 %mm;
(* mls	v18.4s, v5.4s, v20.s[0]                     #! PC = 0x5555565144 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v5 %mm; cast [] %mm@int32[4] %mm; subs %dc %v18 %v18 %mm;
(* mls	v19.4s, v7.4s, v20.s[0]                     #! PC = 0x5555565148 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v7 %mm; cast [] %mm@int32[4] %mm; subs %dc %v19 %v19 %mm;




(**************** mls ****************)

assert eqmod %v16 ( %v1o5*[-601683,-601683,-601683,-601683])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v3o5*[3542485,3542485,3542485,3542485])
             [Q, Q, Q, Q] /\
       eqmod %v18 ( %v5o5*[2682288,2682288,2682288,2682288])
             [Q, Q, Q, Q] /\
       eqmod %v19 ( %v7o5*[2129892,2129892,2129892,2129892])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v16 ( %v1o5*[-601683,-601683,-601683,-601683])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v3o5*[3542485,3542485,3542485,3542485])
             [Q, Q, Q, Q] /\
       eqmod %v18 ( %v5o5*[2682288,2682288,2682288,2682288])
             [Q, Q, Q, Q] /\
       eqmod %v19 ( %v7o5*[2129892,2129892,2129892,2129892])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v0 /\
        %v0 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v2 /\
        %v2 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v4 /\
        %v4 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v6 /\
        %v6 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v8 /\
        %v8 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v10 /\
       %v10 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v12 /\
       %v12 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v14 /\
       %v14 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
       prove with [algebra solver isl, cuts [4]] && true;
assume [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v0 /\
        %v0 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v2 /\
        %v2 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v4 /\
        %v4 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v6 /\
        %v6 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v8 /\
        %v8 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v10 /\
       %v10 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v12 /\
       %v12 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v14 /\
       %v14 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v0 /\
        %v0 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v2 /\
        %v2 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v4 /\
        %v4 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v6 /\
        %v6 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v8 /\
        %v8 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v10 /\
       %v10 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v12 /\
       %v12 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v14 /\
       %v14 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2];

(**************** CUT 6, 6 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o5 + %v28 /\  %v2 =  %v0o5 - %v28 /\
     %v4 =  %v4o5 + %v29 /\  %v6 =  %v4o5 - %v29 /\
     %v8 =  %v8o5 + %v30 /\ %v10 =  %v8o5 - %v30 /\
    %v12 = %v12o5 + %v31 /\ %v14 = %v12o5 - %v31 /\
    eqmod %v16 ( %v1o5*[-601683,-601683,-601683,-601683])
          [Q, Q, Q, Q] /\
    eqmod %v17 ( %v3o5*[3542485,3542485,3542485,3542485])
          [Q, Q, Q, Q] /\
    eqmod %v18 ( %v5o5*[2682288,2682288,2682288,2682288])
          [Q, Q, Q, Q] /\
    eqmod %v19 ( %v7o5*[2129892,2129892,2129892,2129892])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v0 /\
     %v0 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v2 /\
     %v2 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v4 /\
     %v4 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v6 /\
     %v6 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v8 /\
    %v8 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v10 /\
    %v10 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v12 /\
    %v12 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v14 /\
    %v14 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v0 /\
     %v0 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v2 /\
     %v2 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v4 /\
     %v4 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v6 /\
     %v6 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v8 /\
     %v8 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v10 /\
    %v10 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v12 /\
    %v12 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v14 /\
    %v14 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2]
    prove with [cuts [4]];

ghost  %v0o6@int32[4], %v2o6@int32[4], %v4o6@int32[4], %v6o6@int32[4],
       %v9o6@int32[4],%v11o6@int32[4],%v13o6@int32[4],%v15o6@int32[4]:
       %v0o6 =  %v0 /\  %v2o6 =  %v2 /\  %v4o6 =  %v4 /\  %v6o6 =  %v6 /\
       %v9o6 =  %v9 /\ %v11o6 = %v11 /\ %v13o6 = %v13 /\ %v15o6 = %v15
   &&  %v0o6 =  %v0 /\  %v2o6 =  %v2 /\  %v4o6 =  %v4 /\  %v6o6 =  %v6 /\
       %v9o6 =  %v9 /\ %v11o6 = %v11 /\ %v13o6 = %v13 /\ %v15o6 = %v15;

(* sub	v1.4s, v0.4s, v16.4s                        #! PC = 0x555556514c *)
sub %v1 %v0 %v16;
(* mul	v28.4s, v9.4s, v26.s[1]                     #! PC = 0x5555565150 *)
mov [_, m, _, _] %v26; mov %mm [m, m, m, m];
mull %dc %v28 %v9 %mm; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v2.4s, v17.4s                        #! PC = 0x5555565154 *)
sub %v3 %v2 %v17;
(* mul	v29.4s, v11.4s, v26.s[3]                    #! PC = 0x5555565158 *)
mov [_, _, _, m] %v26; mov %mm [m, m, m, m];
mull %dc %v29 %v11 %mm; cast [] %v29@int32[4] %v29;
(* sub	v5.4s, v4.4s, v18.4s                        #! PC = 0x555556515c *)
sub %v5 %v4 %v18;
(* mul	v30.4s, v13.4s, v27.s[1]                    #! PC = 0x5555565160 *)
mov [_, m, _, _] %v27; mov %mm [m, m, m, m];
mull %dc %v30 %v13 %mm; cast [] %v30@int32[4] %v30;
(* sub	v7.4s, v6.4s, v19.4s                        #! PC = 0x5555565164 *)
sub %v7 %v6 %v19;
(* mul	v31.4s, v15.4s, v27.s[3]                    #! PC = 0x5555565168 *)
mov [_, _, _, m] %v27; mov %mm [m, m, m, m];
mull %dc %v31 %v15 %mm; cast [] %v31@int32[4] %v31;
(* add	v0.4s, v0.4s, v16.4s                        #! PC = 0x555556516c *)
add %v0 %v0 %v16;
(* sqrdmulh	v9.4s, v9.4s, v26.s[0]                 #! PC = 0x5555565170 *)
mov [m, _, _, _] %v26; mov %mm [m, m, m, m];
mulj %mm %v9 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v9 %dc %mm 1;
(* add	v2.4s, v2.4s, v17.4s                        #! PC = 0x5555565174 *)
add %v2 %v2 %v17;
(* sqrdmulh	v11.4s, v11.4s, v26.s[2]               #! PC = 0x5555565178 *)
mov [_, _, m, _] %v26; mov %mm [m, m, m, m];
mulj %mm %v11 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v11 %dc %mm 1;
(* add	v4.4s, v4.4s, v18.4s                        #! PC = 0x555556517c *)
add %v4 %v4 %v18;
(* sqrdmulh	v13.4s, v13.4s, v27.s[0]               #! PC = 0x5555565180 *)
mov [m, _, _, _] %v27; mov %mm [m, m, m, m];
mulj %mm %v13 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v13 %dc %mm 1;
(* add	v6.4s, v6.4s, v19.4s                        #! PC = 0x5555565184 *)
add %v6 %v6 %v19;
(* sqrdmulh	v15.4s, v15.4s, v27.s[2]               #! PC = 0x5555565188 *)
mov [_, _, m, _] %v27; mov %mm [m, m, m, m];
mulj %mm %v15 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v15 %dc %mm 1;
(* mls	v28.4s, v9.4s, v20.s[0]                     #! PC = 0x555556518c *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v9 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v11.4s, v20.s[0]                    #! PC = 0x5555565190 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v11 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;
(* mls	v30.4s, v13.4s, v20.s[0]                    #! PC = 0x5555565194 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v13 %mm; cast [] %mm@int32[4] %mm; subs %dc %v30 %v30 %mm;
(* mls	v31.4s, v15.4s, v20.s[0]                    #! PC = 0x5555565198 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v15 %mm; cast [] %mm@int32[4] %mm; subs %dc %v31 %v31 %mm;



(**************** mls ****************)

assert eqmod %v28 ( %v9o6*[3764867,3764867,3764867,3764867])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v11o6*[-1005239,-1005239,-1005239,-1005239])
             [Q, Q, Q, Q] /\
       eqmod %v30 (%v13o6*[557458,557458,557458,557458])
             [Q, Q, Q, Q] /\
       eqmod %v31 (%v15o6*[-1221177,-1221177,-1221177,-1221177])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 ( %v9o6*[3764867,3764867,3764867,3764867])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v11o6*[-1005239,-1005239,-1005239,-1005239])
             [Q, Q, Q, Q] /\
       eqmod %v30 (%v13o6*[557458,557458,557458,557458])
             [Q, Q, Q, Q] /\
       eqmod %v31 (%v15o6*[-1221177,-1221177,-1221177,-1221177])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v0 /\
        %v0 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v1 /\
        %v1 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v2 /\
        %v2 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v3 /\
       %v3 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v4 /\
       %v4 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v5 /\
       %v5 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v6 /\
       %v6 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v7 /\
       %v7 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2]
       prove with [algebra solver isl, cuts [5]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\
       %v28 < [Q,Q,Q,Q] /\ [NQ,NQ,NQ,NQ] <  %v29 /\
       %v29 < [Q,Q,Q,Q] /\ [NQ,NQ,NQ,NQ] <  %v30 /\
       %v30 < [Q,Q,Q,Q] /\ [NQ,NQ,NQ,NQ] <  %v31 /\
       %v31 < [Q,Q,Q,Q] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v0 /\
        %v0 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v1 /\
        %v1 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v2 /\
        %v2 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v3 /\
        %v3 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v4 /\
        %v4 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v5 /\
        %v5 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v6 /\
        %v6 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v7 /\
        %v7 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v0 /\
        %v0 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v1 /\
        %v1 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v2 /\
        %v2 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v3 /\
        %v3 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v4 /\
        %v4 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v5 /\
        %v5 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v6 /\
        %v6 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v7 /\
        %v7 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2];

(**************** CUT 7, 7 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o6 + %v16 /\  %v1 =  %v0o6 - %v16 /\
     %v2 =  %v2o6 + %v17 /\  %v3 =  %v2o6 - %v17 /\
     %v4 =  %v4o6 + %v18 /\  %v5 =  %v4o6 - %v18 /\
     %v6 =  %v6o6 + %v19 /\  %v7 =  %v6o6 - %v19 /\
    eqmod %v28 ( %v9o6*[3764867,3764867,3764867,3764867])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v11o6*[-1005239,-1005239,-1005239,-1005239])
          [Q, Q, Q, Q] /\
    eqmod %v30 (%v13o6*[557458,557458,557458,557458])
          [Q, Q, Q, Q] /\
    eqmod %v31 (%v15o6*[-1221177,-1221177,-1221177,-1221177])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v0 /\
     %v0 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v1 /\
     %v1 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v2 /\
     %v2 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v3 /\
     %v3 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v4 /\
     %v4 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v5 /\
     %v5 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v6 /\
     %v6 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v7 /\
     %v7 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v0 /\
     %v0 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v1 /\
     %v1 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v2 /\
     %v2 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v3 /\
     %v3 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v4 /\
     %v4 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v5 /\
     %v5 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v6 /\
     %v6 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v7 /\
     %v7 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2]
    prove with [cuts [5]];



(* sub	v9.4s, v8.4s, v28.4s                        #! PC = 0x555556519c *)
sub %v9 %v8 %v28;
(* sub	v11.4s, v10.4s, v29.4s                      #! PC = 0x55555651a0 *)
sub %v11 %v10 %v29;
(* sub	v13.4s, v12.4s, v30.4s                      #! PC = 0x55555651a4 *)
sub %v13 %v12 %v30;
(* sub	v15.4s, v14.4s, v31.4s                      #! PC = 0x55555651a8 *)
sub %v15 %v14 %v31;
(* add	v8.4s, v8.4s, v28.4s                        #! PC = 0x55555651ac *)
add %v8 %v8 %v28;
(* add	v10.4s, v10.4s, v29.4s                      #! PC = 0x55555651b0 *)
add %v10 %v10 %v29;
(* add	v12.4s, v12.4s, v30.4s                      #! PC = 0x55555651b4 *)
add %v12 %v12 %v30;
(* add	v14.4s, v14.4s, v31.4s                      #! PC = 0x55555651b8 *)
add %v14 %v14 %v31;
(* mov	x19, #0x3                   	// #3          #! PC = 0x55555651bc *)
mov x19 (0x3)@uint64;
(* st1	{v1.4s}, [x1], #16                          #! EA = L0x7ffffed910; PC = 0x55555651c0 *)
mov [L0x7ffffed910, L0x7ffffed914, L0x7ffffed918, L0x7ffffed91c] %v1;
(* ld1	{v1.4s}, [x1]                               #! EA = L0x7ffffed920; Value = 0x00000003ffffffff; PC = 0x55555651c4 *)
mov %v1 [L0x7ffffed920, L0x7ffffed924, L0x7ffffed928, L0x7ffffed92c];
(* st1	{v3.4s}, [x3], #16                          #! EA = L0x7ffffed990; PC = 0x55555651c8 *)
mov [L0x7ffffed990, L0x7ffffed994, L0x7ffffed998, L0x7ffffed99c] %v3;
(* ld1	{v3.4s}, [x3]                               #! EA = L0x7ffffed9a0; Value = 0x00000001fffffffe; PC = 0x55555651cc *)
mov %v3 [L0x7ffffed9a0, L0x7ffffed9a4, L0x7ffffed9a8, L0x7ffffed9ac];
(* st1	{v5.4s}, [x5], #16                          #! EA = L0x7ffffeda10; PC = 0x55555651d0 *)
mov [L0x7ffffeda10, L0x7ffffeda14, L0x7ffffeda18, L0x7ffffeda1c] %v5;
(* ld1	{v5.4s}, [x5]                               #! EA = L0x7ffffeda20; Value = 0xfffffffffffffffc; PC = 0x55555651d4 *)
mov %v5 [L0x7ffffeda20, L0x7ffffeda24, L0x7ffffeda28, L0x7ffffeda2c];
(* st1	{v7.4s}, [x7], #16                          #! EA = L0x7ffffeda90; PC = 0x55555651d8 *)
mov [L0x7ffffeda90, L0x7ffffeda94, L0x7ffffeda98, L0x7ffffeda9c] %v7;
(* ld1	{v7.4s}, [x7]                               #! EA = L0x7ffffedaa0; Value = 0x00000004fffffffc; PC = 0x55555651dc *)
mov %v7 [L0x7ffffedaa0, L0x7ffffedaa4, L0x7ffffedaa8, L0x7ffffedaac];
(* st1	{v9.4s}, [x9], #16                          #! EA = L0x7ffffedb10; PC = 0x55555651e0 *)
mov [L0x7ffffedb10, L0x7ffffedb14, L0x7ffffedb18, L0x7ffffedb1c] %v9;
(* ld1	{v9.4s}, [x9]                               #! EA = L0x7ffffedb20; Value = 0x0000000400000002; PC = 0x55555651e4 *)
mov %v9 [L0x7ffffedb20, L0x7ffffedb24, L0x7ffffedb28, L0x7ffffedb2c];
(* st1	{v11.4s}, [x11], #16                        #! EA = L0x7ffffedb90; PC = 0x55555651e8 *)
mov [L0x7ffffedb90, L0x7ffffedb94, L0x7ffffedb98, L0x7ffffedb9c] %v11;
(* ld1	{v11.4s}, [x11]                             #! EA = L0x7ffffedba0; Value = 0x00000004ffffffff; PC = 0x55555651ec *)
mov %v11 [L0x7ffffedba0, L0x7ffffedba4, L0x7ffffedba8, L0x7ffffedbac];
(* st1	{v13.4s}, [x13], #16                        #! EA = L0x7ffffedc10; PC = 0x55555651f0 *)
mov [L0x7ffffedc10, L0x7ffffedc14, L0x7ffffedc18, L0x7ffffedc1c] %v13;
(* ld1	{v13.4s}, [x13]                             #! EA = L0x7ffffedc20; Value = 0x0000000400000004; PC = 0x55555651f4 *)
mov %v13 [L0x7ffffedc20, L0x7ffffedc24, L0x7ffffedc28, L0x7ffffedc2c];
(* st1	{v15.4s}, [x15], #16                        #! EA = L0x7ffffedc90; PC = 0x55555651f8 *)
mov [L0x7ffffedc90, L0x7ffffedc94, L0x7ffffedc98, L0x7ffffedc9c] %v15;
(* ld1	{v15.4s}, [x15]                             #! EA = L0x7ffffedca0; Value = 0x00000004fffffffe; PC = 0x55555651fc *)
mov %v15 [L0x7ffffedca0, L0x7ffffedca4, L0x7ffffedca8, L0x7ffffedcac];
(* st1	{v0.4s}, [x0], #16                          #! EA = L0x7ffffed8d0; PC = 0x5555565200 *)
mov [L0x7ffffed8d0, L0x7ffffed8d4, L0x7ffffed8d8, L0x7ffffed8dc] %v0;
(* ld1	{v0.4s}, [x0]                               #! EA = L0x7ffffed8e0; Value = 0x00000000fffffffc; PC = 0x5555565204 *)
mov %v0 [L0x7ffffed8e0, L0x7ffffed8e4, L0x7ffffed8e8, L0x7ffffed8ec];
(* st1	{v2.4s}, [x2], #16                          #! EA = L0x7ffffed950; PC = 0x5555565208 *)
mov [L0x7ffffed950, L0x7ffffed954, L0x7ffffed958, L0x7ffffed95c] %v2;
(* ld1	{v2.4s}, [x2]                               #! EA = L0x7ffffed960; Value = 0x00000000fffffffc; PC = 0x555556520c *)
mov %v2 [L0x7ffffed960, L0x7ffffed964, L0x7ffffed968, L0x7ffffed96c];
(* st1	{v4.4s}, [x4], #16                          #! EA = L0x7ffffed9d0; PC = 0x5555565210 *)
mov [L0x7ffffed9d0, L0x7ffffed9d4, L0x7ffffed9d8, L0x7ffffed9dc] %v4;
(* ld1	{v4.4s}, [x4]                               #! EA = L0x7ffffed9e0; Value = 0x00000001ffffffff; PC = 0x5555565214 *)
mov %v4 [L0x7ffffed9e0, L0x7ffffed9e4, L0x7ffffed9e8, L0x7ffffed9ec];
(* st1	{v6.4s}, [x6], #16                          #! EA = L0x7ffffeda50; PC = 0x5555565218 *)
mov [L0x7ffffeda50, L0x7ffffeda54, L0x7ffffeda58, L0x7ffffeda5c] %v6;
(* ld1	{v6.4s}, [x6]                               #! EA = L0x7ffffeda60; Value = 0x00000002fffffffd; PC = 0x555556521c *)
mov %v6 [L0x7ffffeda60, L0x7ffffeda64, L0x7ffffeda68, L0x7ffffeda6c];
(* st1	{v8.4s}, [x8], #16                          #! EA = L0x7ffffedad0; PC = 0x5555565220 *)
mov [L0x7ffffedad0, L0x7ffffedad4, L0x7ffffedad8, L0x7ffffedadc] %v8;
(* ld1	{v8.4s}, [x8]                               #! EA = L0x7ffffedae0; Value = 0x0000000300000004; PC = 0x5555565224 *)
mov %v8 [L0x7ffffedae0, L0x7ffffedae4, L0x7ffffedae8, L0x7ffffedaec];
(* st1	{v10.4s}, [x10], #16                        #! EA = L0x7ffffedb50; PC = 0x5555565228 *)
mov [L0x7ffffedb50, L0x7ffffedb54, L0x7ffffedb58, L0x7ffffedb5c] %v10;
(* ld1	{v10.4s}, [x10]                             #! EA = L0x7ffffedb60; Value = 0xfffffffe00000004; PC = 0x555556522c *)
mov %v10 [L0x7ffffedb60, L0x7ffffedb64, L0x7ffffedb68, L0x7ffffedb6c];
(* st1	{v12.4s}, [x12], #16                        #! EA = L0x7ffffedbd0; PC = 0x5555565230 *)
mov [L0x7ffffedbd0, L0x7ffffedbd4, L0x7ffffedbd8, L0x7ffffedbdc] %v12;
(* ld1	{v12.4s}, [x12]                             #! EA = L0x7ffffedbe0; Value = 0xfffffffcfffffffe; PC = 0x5555565234 *)
mov %v12 [L0x7ffffedbe0, L0x7ffffedbe4, L0x7ffffedbe8, L0x7ffffedbec];
(* st1	{v14.4s}, [x14], #16                        #! EA = L0x7ffffedc50; PC = 0x5555565238 *)
mov [L0x7ffffedc50, L0x7ffffedc54, L0x7ffffedc58, L0x7ffffedc5c] %v14;




(**************** CUT 8, 8 ****************)

(**************** level 3/0 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod (F0**2) (L0x7ffffed8d0*X**0+L0x7ffffed8d4*X**1+L0x7ffffed8d8*X**2+
          L0x7ffffed8dc*X**3) [ Q, X**16 - 7778734 ] /\
    eqmod (F0**2) (L0x7ffffed910*X**0+L0x7ffffed914*X**1+L0x7ffffed918*X**2+
          L0x7ffffed91c*X**3) [ Q, X**16 -  601683 ] /\
    eqmod (F0**2) (L0x7ffffed950*X**0+L0x7ffffed954*X**1+L0x7ffffed958*X**2+
          L0x7ffffed95c*X**3) [ Q, X**16 - 3542485 ] /\
    eqmod (F0**2) (L0x7ffffed990*X**0+L0x7ffffed994*X**1+L0x7ffffed998*X**2+
          L0x7ffffed99c*X**3) [ Q, X**16 - 4837932 ] /\
    eqmod (F0**2) (L0x7ffffed9d0*X**0+L0x7ffffed9d4*X**1+L0x7ffffed9d8*X**2+
          L0x7ffffed9dc*X**3) [ Q, X**16 - 2682288 ] /\
    eqmod (F0**2) (L0x7ffffeda10*X**0+L0x7ffffeda14*X**1+L0x7ffffeda18*X**2+
          L0x7ffffeda1c*X**3) [ Q, X**16 - 5698129 ] /\
    eqmod (F0**2) (L0x7ffffeda50*X**0+L0x7ffffeda54*X**1+L0x7ffffeda58*X**2+
          L0x7ffffeda5c*X**3) [ Q, X**16 - 2129892 ] /\
    eqmod (F0**2) (L0x7ffffeda90*X**0+L0x7ffffeda94*X**1+L0x7ffffeda98*X**2+
          L0x7ffffeda9c*X**3) [ Q, X**16 - 6250525 ] /\
    eqmod (F0**2) (L0x7ffffedad0*X**0+L0x7ffffedad4*X**1+L0x7ffffedad8*X**2+
          L0x7ffffedadc*X**3) [ Q, X**16 - 3764867 ] /\
    eqmod (F0**2) (L0x7ffffedb10*X**0+L0x7ffffedb14*X**1+L0x7ffffedb18*X**2+
          L0x7ffffedb1c*X**3) [ Q, X**16 - 4615550 ] /\
    eqmod (F0**2) (L0x7ffffedb50*X**0+L0x7ffffedb54*X**1+L0x7ffffedb58*X**2+
          L0x7ffffedb5c*X**3) [ Q, X**16 - 7375178 ] /\
    eqmod (F0**2) (L0x7ffffedb90*X**0+L0x7ffffedb94*X**1+L0x7ffffedb98*X**2+
          L0x7ffffedb9c*X**3) [ Q, X**16 - 1005239 ] /\
    eqmod (F0**2) (L0x7ffffedbd0*X**0+L0x7ffffedbd4*X**1+L0x7ffffedbd8*X**2+
          L0x7ffffedbdc*X**3) [ Q, X**16 -  557458 ] /\
    eqmod (F0**2) (L0x7ffffedc10*X**0+L0x7ffffedc14*X**1+L0x7ffffedc18*X**2+
          L0x7ffffedc1c*X**3) [ Q, X**16 - 7822959 ] /\
    eqmod (F0**2) (L0x7ffffedc50*X**0+L0x7ffffedc54*X**1+L0x7ffffedc58*X**2+
          L0x7ffffedc5c*X**3) [ Q, X**16 - 7159240 ] /\
    eqmod (F0**2) (L0x7ffffedc90*X**0+L0x7ffffedc94*X**1+L0x7ffffedc98*X**2+
          L0x7ffffedc9c*X**3) [ Q, X**16 - 1221177 ]
    prove with [all ghosts, cuts [0,1,2,3,4,5,6]],
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed8d0,L0x7ffffed8d4,L0x7ffffed8d8,L0x7ffffed8dc] /\
    [L0x7ffffed8d0,L0x7ffffed8d4,L0x7ffffed8d8,L0x7ffffed8dc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed910,L0x7ffffed914,L0x7ffffed918,L0x7ffffed91c] /\
    [L0x7ffffed910,L0x7ffffed914,L0x7ffffed918,L0x7ffffed91c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed950,L0x7ffffed954,L0x7ffffed958,L0x7ffffed95c] /\
    [L0x7ffffed950,L0x7ffffed954,L0x7ffffed958,L0x7ffffed95c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed990,L0x7ffffed994,L0x7ffffed998,L0x7ffffed99c] /\
    [L0x7ffffed990,L0x7ffffed994,L0x7ffffed998,L0x7ffffed99c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed9d0,L0x7ffffed9d4,L0x7ffffed9d8,L0x7ffffed9dc] /\
    [L0x7ffffed9d0,L0x7ffffed9d4,L0x7ffffed9d8,L0x7ffffed9dc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffeda10,L0x7ffffeda14,L0x7ffffeda18,L0x7ffffeda1c] /\
    [L0x7ffffeda10,L0x7ffffeda14,L0x7ffffeda18,L0x7ffffeda1c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffeda50,L0x7ffffeda54,L0x7ffffeda58,L0x7ffffeda5c] /\
    [L0x7ffffeda50,L0x7ffffeda54,L0x7ffffeda58,L0x7ffffeda5c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffeda90,L0x7ffffeda94,L0x7ffffeda98,L0x7ffffeda9c] /\
    [L0x7ffffeda90,L0x7ffffeda94,L0x7ffffeda98,L0x7ffffeda9c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedad0,L0x7ffffedad4,L0x7ffffedad8,L0x7ffffedadc] /\
    [L0x7ffffedad0,L0x7ffffedad4,L0x7ffffedad8,L0x7ffffedadc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedb10,L0x7ffffedb14,L0x7ffffedb18,L0x7ffffedb1c] /\
    [L0x7ffffedb10,L0x7ffffedb14,L0x7ffffedb18,L0x7ffffedb1c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedb50,L0x7ffffedb54,L0x7ffffedb58,L0x7ffffedb5c] /\
    [L0x7ffffedb50,L0x7ffffedb54,L0x7ffffedb58,L0x7ffffedb5c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedb90,L0x7ffffedb94,L0x7ffffedb98,L0x7ffffedb9c] /\
    [L0x7ffffedb90,L0x7ffffedb94,L0x7ffffedb98,L0x7ffffedb9c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedbd0,L0x7ffffedbd4,L0x7ffffedbd8,L0x7ffffedbdc] /\
    [L0x7ffffedbd0,L0x7ffffedbd4,L0x7ffffedbd8,L0x7ffffedbdc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedc10,L0x7ffffedc14,L0x7ffffedc18,L0x7ffffedc1c] /\
    [L0x7ffffedc10,L0x7ffffedc14,L0x7ffffedc18,L0x7ffffedc1c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedc50,L0x7ffffedc54,L0x7ffffedc58,L0x7ffffedc5c] /\
    [L0x7ffffedc50,L0x7ffffedc54,L0x7ffffedc58,L0x7ffffedc5c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedc90,L0x7ffffedc94,L0x7ffffedc98,L0x7ffffedc9c] /\
    [L0x7ffffedc90,L0x7ffffedc94,L0x7ffffedc98,L0x7ffffedc9c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2]
    prove with [algebra solver isl, cuts [6]]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed8d0,L0x7ffffed8d4,L0x7ffffed8d8,L0x7ffffed8dc] /\
    [L0x7ffffed8d0,L0x7ffffed8d4,L0x7ffffed8d8,L0x7ffffed8dc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed910,L0x7ffffed914,L0x7ffffed918,L0x7ffffed91c] /\
    [L0x7ffffed910,L0x7ffffed914,L0x7ffffed918,L0x7ffffed91c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed950,L0x7ffffed954,L0x7ffffed958,L0x7ffffed95c] /\
    [L0x7ffffed950,L0x7ffffed954,L0x7ffffed958,L0x7ffffed95c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed990,L0x7ffffed994,L0x7ffffed998,L0x7ffffed99c] /\
    [L0x7ffffed990,L0x7ffffed994,L0x7ffffed998,L0x7ffffed99c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed9d0,L0x7ffffed9d4,L0x7ffffed9d8,L0x7ffffed9dc] /\
    [L0x7ffffed9d0,L0x7ffffed9d4,L0x7ffffed9d8,L0x7ffffed9dc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffeda10,L0x7ffffeda14,L0x7ffffeda18,L0x7ffffeda1c] /\
    [L0x7ffffeda10,L0x7ffffeda14,L0x7ffffeda18,L0x7ffffeda1c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffeda50,L0x7ffffeda54,L0x7ffffeda58,L0x7ffffeda5c] /\
    [L0x7ffffeda50,L0x7ffffeda54,L0x7ffffeda58,L0x7ffffeda5c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffeda90,L0x7ffffeda94,L0x7ffffeda98,L0x7ffffeda9c] /\
    [L0x7ffffeda90,L0x7ffffeda94,L0x7ffffeda98,L0x7ffffeda9c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedad0,L0x7ffffedad4,L0x7ffffedad8,L0x7ffffedadc] /\
    [L0x7ffffedad0,L0x7ffffedad4,L0x7ffffedad8,L0x7ffffedadc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedb10,L0x7ffffedb14,L0x7ffffedb18,L0x7ffffedb1c] /\
    [L0x7ffffedb10,L0x7ffffedb14,L0x7ffffedb18,L0x7ffffedb1c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedb50,L0x7ffffedb54,L0x7ffffedb58,L0x7ffffedb5c] /\
    [L0x7ffffedb50,L0x7ffffedb54,L0x7ffffedb58,L0x7ffffedb5c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedb90,L0x7ffffedb94,L0x7ffffedb98,L0x7ffffedb9c] /\
    [L0x7ffffedb90,L0x7ffffedb94,L0x7ffffedb98,L0x7ffffedb9c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedbd0,L0x7ffffedbd4,L0x7ffffedbd8,L0x7ffffedbdc] /\
    [L0x7ffffedbd0,L0x7ffffedbd4,L0x7ffffedbd8,L0x7ffffedbdc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedc10,L0x7ffffedc14,L0x7ffffedc18,L0x7ffffedc1c] /\
    [L0x7ffffedc10,L0x7ffffedc14,L0x7ffffedc18,L0x7ffffedc1c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedc50,L0x7ffffedc54,L0x7ffffedc58,L0x7ffffedc5c] /\
    [L0x7ffffedc50,L0x7ffffedc54,L0x7ffffedc58,L0x7ffffedc5c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedc90,L0x7ffffedc94,L0x7ffffedc98,L0x7ffffedc9c] /\
    [L0x7ffffedc90,L0x7ffffedc94,L0x7ffffedc98,L0x7ffffedc9c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2]
prove with [cuts [6]];



(* ld1	{v14.4s}, [x14]                             #! EA = L0x7ffffedc60; Value = 0x00000001ffffffff; PC = 0x555556523c *)
mov %v14 [L0x7ffffedc60, L0x7ffffedc64, L0x7ffffedc68, L0x7ffffedc6c];
(* mul	v16.4s, v9.4s, v20.s[3]                     #! PC = 0x5555565240 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v16 %v9 %mm; cast [] %v16@int32[4] %v16;
(* mul	v17.4s, v11.4s, v20.s[3]                    #! PC = 0x5555565244 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v17 %v11 %mm; cast [] %v17@int32[4] %v17;
(* mul	v18.4s, v13.4s, v20.s[3]                    #! PC = 0x5555565248 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v18 %v13 %mm; cast [] %v18@int32[4] %v18;
(* mul	v19.4s, v15.4s, v20.s[3]                    #! PC = 0x555556524c *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v19 %v15 %mm; cast [] %v19@int32[4] %v19;
(* sqrdmulh	v9.4s, v9.4s, v20.s[2]                 #! PC = 0x5555565250 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v9 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v9 %dc %mm 1;
(* sqrdmulh	v11.4s, v11.4s, v20.s[2]               #! PC = 0x5555565254 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v11 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v11 %dc %mm 1;
(* sqrdmulh	v13.4s, v13.4s, v20.s[2]               #! PC = 0x5555565258 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v13 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v13 %dc %mm 1;
(* sqrdmulh	v15.4s, v15.4s, v20.s[2]               #! PC = 0x555556525c *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v15 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v15 %dc %mm 1;
(* mls	v16.4s, v9.4s, v20.s[0]                     #! PC = 0x5555565260 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v9 %mm; cast [] %mm@int32[4] %mm; subs %dc %v16 %v16 %mm;
(* mls	v17.4s, v11.4s, v20.s[0]                    #! PC = 0x5555565264 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v11 %mm; cast [] %mm@int32[4] %mm; subs %dc %v17 %v17 %mm;
(* mls	v18.4s, v13.4s, v20.s[0]                    #! PC = 0x5555565268 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v13 %mm; cast [] %mm@int32[4] %mm; subs %dc %v18 %v18 %mm;
(* mls	v19.4s, v15.4s, v20.s[0]                    #! PC = 0x555556526c *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v15 %mm; cast [] %mm@int32[4] %mm; subs %dc %v19 %v19 %mm;



(**************** mls ****************)

assert eqmod %v16 ([c94,c95,c96,c97]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v17 ([cb4,cb5,cb6,cb7]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v18 ([cd4,cd5,cd6,cd7]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v19 ([cf4,cf5,cf6,cf7]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q]
       prove with [algebra solver isl, precondition] && true;
assume eqmod %v16 ([c94,c95,c96,c97]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v17 ([cb4,cb5,cb6,cb7]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v18 ([cd4,cd5,cd6,cd7]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v19 ([cf4,cf5,cf6,cf7]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q]
       prove with [algebra solver isl, precondition] && true;
assume [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ] <s  %v16 /\ %v16 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v17 /\ %v17 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v18 /\ %v18 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v19 /\ %v19 <s [Q,Q,Q,Q];

(**************** CUT 9, 9 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod %v16 ([c94,c95,c96,c97]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v17 ([cb4,cb5,cb6,cb7]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v18 ([cd4,cd5,cd6,cd7]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v19 ([cf4,cf5,cf6,cf7]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q]
    prove with [precondition];

ghost  %v1o7@int32[4], %v3o7@int32[4], %v5o7@int32[4], %v7o7@int32[4]:
       %v1o7 =  %v1 /\  %v3o7 =  %v3 /\  %v5o7 =  %v5 /\  %v7o7 =  %v7
   &&  %v1o7 =  %v1 /\  %v3o7 =  %v3 /\  %v5o7 =  %v5 /\  %v7o7 =  %v7;

(* sub	v9.4s, v1.4s, v16.4s                        #! PC = 0x5555565270 *)
sub %v9 %v1 %v16;
(* mul	v28.4s, v8.4s, v20.s[3]                     #! PC = 0x5555565274 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v28 %v8 %mm; cast [] %v28@int32[4] %v28;
(* sub	v11.4s, v3.4s, v17.4s                       #! PC = 0x5555565278 *)
sub %v11 %v3 %v17;
(* mul	v29.4s, v10.4s, v20.s[3]                    #! PC = 0x555556527c *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v29 %v10 %mm; cast [] %v29@int32[4] %v29;
(* sub	v13.4s, v5.4s, v18.4s                       #! PC = 0x5555565280 *)
sub %v13 %v5 %v18;
(* mul	v30.4s, v12.4s, v20.s[3]                    #! PC = 0x5555565284 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v30 %v12 %mm; cast [] %v30@int32[4] %v30;
(* sub	v15.4s, v7.4s, v19.4s                       #! PC = 0x5555565288 *)
sub %v15 %v7 %v19;
(* mul	v31.4s, v14.4s, v20.s[3]                    #! PC = 0x555556528c *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v31 %v14 %mm; cast [] %v31@int32[4] %v31;
(* add	v1.4s, v1.4s, v16.4s                        #! PC = 0x5555565290 *)
add %v1 %v1 %v16;
(* sqrdmulh	v8.4s, v8.4s, v20.s[2]                 #! PC = 0x5555565294 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v8 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v8 %dc %mm 1;
(* add	v3.4s, v3.4s, v17.4s                        #! PC = 0x5555565298 *)
add %v3 %v3 %v17;
(* sqrdmulh	v10.4s, v10.4s, v20.s[2]               #! PC = 0x555556529c *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v10 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v10 %dc %mm 1;
(* add	v5.4s, v5.4s, v18.4s                        #! PC = 0x55555652a0 *)
add %v5 %v5 %v18;
(* sqrdmulh	v12.4s, v12.4s, v20.s[2]               #! PC = 0x55555652a4 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v12 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v12 %dc %mm 1;
(* add	v7.4s, v7.4s, v19.4s                        #! PC = 0x55555652a8 *)
add %v7 %v7 %v19;
(* sqrdmulh	v14.4s, v14.4s, v20.s[2]               #! PC = 0x55555652ac *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v14 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v14 %dc %mm 1;
(* mls	v28.4s, v8.4s, v20.s[0]                     #! PC = 0x55555652b0 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v8 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v10.4s, v20.s[0]                    #! PC = 0x55555652b4 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v10 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;
(* mls	v30.4s, v12.4s, v20.s[0]                    #! PC = 0x55555652b8 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v12 %mm; cast [] %mm@int32[4] %mm; subs %dc %v30 %v30 %mm;
(* mls	v31.4s, v14.4s, v20.s[0]                    #! PC = 0x55555652bc *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v14 %mm; cast [] %mm@int32[4] %mm; subs %dc %v31 %v31 %mm;




(**************** mls ****************)

assert eqmod %v28 ([c84,c85,c86,c87]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v29 ([ca4,ca5,ca6,ca7]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v30 ([cc4,cc5,cc6,cc7]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v31 ([ce4,ce5,ce6,ce7]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 ([c84,c85,c86,c87]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v29 ([ca4,ca5,ca6,ca7]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v30 ([cc4,cc5,cc6,cc7]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v31 ([ce4,ce5,ce6,ce7]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v1 /\
        %v1 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v3 /\
        %v3 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v5 /\
        %v5 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v7 /\
        %v7 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v9 /\
        %v9 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v11 /\
       %v11 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v13 /\
       %v13 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v15 /\
       %v15 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
       prove with [algebra solver isl, precondition] && true;
assume [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v1 /\
        %v1 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v3 /\
        %v3 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v5 /\
        %v5 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v7 /\
        %v7 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v9 /\
        %v9 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v11 /\
       %v11 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v13 /\
       %v13 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v15 /\
       %v15 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v1 /\
        %v1 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v3 /\
        %v3 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v5 /\
        %v5 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v7 /\
        %v7 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v9 /\
        %v9 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v11 /\
       %v11 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v13 /\
       %v13 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v15 /\
       %v15 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2];
     
(**************** CUT 10, 10 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v1 =  %v1o7 + %v16 /\  %v9 =  %v1o7 - %v16 /\
     %v3 =  %v3o7 + %v17 /\ %v11 =  %v3o7 - %v17 /\
     %v5 =  %v5o7 + %v18 /\ %v13 =  %v5o7 - %v18 /\
     %v7 =  %v7o7 + %v19 /\ %v15 =  %v7o7 - %v19 /\
    eqmod %v28 ([c84,c85,c86,c87]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v29 ([ca4,ca5,ca6,ca7]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v30 ([cc4,cc5,cc6,cc7]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v31 ([ce4,ce5,ce6,ce7]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v1 /\
     %v1 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v3 /\
     %v3 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v5 /\
     %v5 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v7 /\
     %v7 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v9 /\
     %v9 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v11 /\
    %v11 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v13 /\
    %v13 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v15 /\
    %v15 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v1 /\
     %v1 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v3 /\
     %v3 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v5 /\
     %v5 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v7 /\
     %v7 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v9 /\
     %v9 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v11 /\
    %v11 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v13 /\
    %v13 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v15 /\
    %v15 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
    prove with [precondition];

ghost  %v0o8@int32[4], %v2o8@int32[4], %v4o8@int32[4], %v6o8@int32[4],
       %v5o8@int32[4], %v7o8@int32[4],%v13o8@int32[4],%v15o8@int32[4]:
       %v0o8 =  %v0 /\  %v2o8 =  %v2 /\  %v4o8 =  %v4 /\  %v6o8 =  %v6 /\
       %v5o8 =  %v5 /\  %v7o8 =  %v7 /\ %v13o8 = %v13 /\ %v15o8 = %v15
   &&  %v0o8 =  %v0 /\  %v2o8 =  %v2 /\  %v4o8 =  %v4 /\  %v6o8 =  %v6 /\
       %v5o8 =  %v5 /\  %v7o8 =  %v7 /\ %v13o8 = %v13 /\ %v15o8 = %v15;

(* sub	v8.4s, v0.4s, v28.4s                        #! PC = 0x55555652c0 *)
sub %v8 %v0 %v28;
(* mul	v16.4s, v5.4s, v21.s[1]                     #! PC = 0x55555652c4 *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v16 %v5 %mm; cast [] %v16@int32[4] %v16;
(* sub	v10.4s, v2.4s, v29.4s                       #! PC = 0x55555652c8 *)
sub %v10 %v2 %v29;
(* mul	v17.4s, v7.4s, v21.s[1]                     #! PC = 0x55555652cc *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v17 %v7 %mm; cast [] %v17@int32[4] %v17;
(* sub	v12.4s, v4.4s, v30.4s                       #! PC = 0x55555652d0 *)
sub %v12 %v4 %v30;
(* mul	v18.4s, v13.4s, v21.s[3]                    #! PC = 0x55555652d4 *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v18 %v13 %mm; cast [] %v18@int32[4] %v18;
(* sub	v14.4s, v6.4s, v31.4s                       #! PC = 0x55555652d8 *)
sub %v14 %v6 %v31;
(* mul	v19.4s, v15.4s, v21.s[3]                    #! PC = 0x55555652dc *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v19 %v15 %mm; cast [] %v19@int32[4] %v19;
(* add	v0.4s, v0.4s, v28.4s                        #! PC = 0x55555652e0 *)
add %v0 %v0 %v28;
(* sqrdmulh	v5.4s, v5.4s, v21.s[0]                 #! PC = 0x55555652e4 *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v5 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v5 %dc %mm 1;
(* add	v2.4s, v2.4s, v29.4s                        #! PC = 0x55555652e8 *)
add %v2 %v2 %v29;
(* sqrdmulh	v7.4s, v7.4s, v21.s[0]                 #! PC = 0x55555652ec *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v7 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v7 %dc %mm 1;
(* add	v4.4s, v4.4s, v30.4s                        #! PC = 0x55555652f0 *)
add %v4 %v4 %v30;
(* sqrdmulh	v13.4s, v13.4s, v21.s[2]               #! PC = 0x55555652f4 *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v13 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v13 %dc %mm 1;
(* add	v6.4s, v6.4s, v31.4s                        #! PC = 0x55555652f8 *)
add %v6 %v6 %v31;
(* sqrdmulh	v15.4s, v15.4s, v21.s[2]               #! PC = 0x55555652fc *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v15 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v15 %dc %mm 1;
(* mls	v16.4s, v5.4s, v20.s[0]                     #! PC = 0x5555565300 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v5 %mm; cast [] %mm@int32[4] %mm; subs %dc %v16 %v16 %mm;
(* mls	v17.4s, v7.4s, v20.s[0]                     #! PC = 0x5555565304 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v7 %mm; cast [] %mm@int32[4] %mm; subs %dc %v17 %v17 %mm;
(* mls	v18.4s, v13.4s, v20.s[0]                    #! PC = 0x5555565308 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v13 %mm; cast [] %mm@int32[4] %mm; subs %dc %v18 %v18 %mm;
(* mls	v19.4s, v15.4s, v20.s[0]                    #! PC = 0x555556530c *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v15 %mm; cast [] %mm@int32[4] %mm; subs %dc %v19 %v19 %mm;




(**************** mls ****************)

assert eqmod %v16 ( %v5o8*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v7o8*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v18 (%v13o8*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] /\
       eqmod %v19 (%v15o8*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v16 ( %v5o8*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v7o8*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v18 (%v13o8*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] /\
       eqmod %v19 (%v15o8*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v0 /\
        %v0 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v2 /\
        %v2 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v4 /\
        %v4 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v6 /\
        %v6 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v8 /\
        %v8 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v10 /\
       %v10 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v12 /\
       %v12 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v14 /\
       %v14 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
       prove with [algebra solver isl, cuts [9], precondition] && true;
assume [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v0 /\
        %v0 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v2 /\
        %v2 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v4 /\
        %v4 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v6 /\
        %v6 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v8 /\
        %v8 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v10 /\
       %v10 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v12 /\
       %v12 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v14 /\
       %v14 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v0 /\
        %v0 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v2 /\
        %v2 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v4 /\
        %v4 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v6 /\
        %v6 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v8 /\
        %v8 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v10 /\
       %v10 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v12 /\
       %v12 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v14 /\
       %v14 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2];

(**************** CUT 11, 11 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o8 + %v28 /\  %v8 =  %v0o8 - %v28 /\
     %v2 =  %v2o8 + %v29 /\ %v10 =  %v2o8 - %v29 /\
     %v4 =  %v4o8 + %v30 /\ %v12 =  %v4o8 - %v30 /\
     %v6 =  %v6o8 + %v31 /\ %v14 =  %v6o8 - %v31 /\
    eqmod %v16 ( %v5o8*[3765607,3765607,3765607,3765607])
          [Q, Q, Q, Q] /\
    eqmod %v17 ( %v7o8*[3765607,3765607,3765607,3765607])
          [Q, Q, Q, Q] /\
    eqmod %v18 (%v13o8*[3761513,3761513,3761513,3761513])
          [Q, Q, Q, Q] /\
    eqmod %v19 (%v15o8*[3761513,3761513,3761513,3761513])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v0 /\
     %v0 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v2 /\
     %v2 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v4 /\
     %v4 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v6 /\
     %v6 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v8 /\
     %v8 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v10 /\
    %v10 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v12 /\
    %v12 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v14 /\
    %v14 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v0 /\
     %v0 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v2 /\
     %v2 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v4 /\
     %v4 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v6 /\
     %v6 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v8 /\
     %v8 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v10 /\
    %v10 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v12 /\
    %v12 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v14 /\
    %v14 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
    prove with [precondition, cuts [9]];

ghost  %v1oa@int32[4], %v3oa@int32[4], %v9oa@int32[4],%v11oa@int32[4],
       %v4oa@int32[4], %v6oa@int32[4],%v12oa@int32[4],%v14oa@int32[4]:
       %v1oa =  %v1 /\  %v3oa =  %v3 /\  %v9oa =  %v9 /\ %v11oa = %v11 /\
       %v4oa =  %v4 /\  %v6oa =  %v6 /\ %v12oa = %v12 /\ %v14oa = %v14
   &&  %v1oa =  %v1 /\  %v3oa =  %v3 /\  %v9oa =  %v9 /\ %v11oa = %v11 /\
       %v4oa =  %v4 /\  %v6oa =  %v6 /\ %v12oa = %v12 /\ %v14oa = %v14;

(* sub	v5.4s, v1.4s, v16.4s                        #! PC = 0x5555565310 *)
sub %v5 %v1 %v16;
(* mul	v28.4s, v4.4s, v21.s[1]                     #! PC = 0x5555565314 *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v28 %v4 %mm; cast [] %v28@int32[4] %v28;
(* sub	v7.4s, v3.4s, v17.4s                        #! PC = 0x5555565318 *)
sub %v7 %v3 %v17;
(* mul	v29.4s, v6.4s, v21.s[1]                     #! PC = 0x555556531c *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v29 %v6 %mm; cast [] %v29@int32[4] %v29;
(* sub	v13.4s, v9.4s, v18.4s                       #! PC = 0x5555565320 *)
sub %v13 %v9 %v18;
(* mul	v30.4s, v12.4s, v21.s[3]                    #! PC = 0x5555565324 *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v30 %v12 %mm; cast [] %v30@int32[4] %v30;
(* sub	v15.4s, v11.4s, v19.4s                      #! PC = 0x5555565328 *)
sub %v15 %v11 %v19;
(* mul	v31.4s, v14.4s, v21.s[3]                    #! PC = 0x555556532c *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v31 %v14 %mm; cast [] %v31@int32[4] %v31;
(* add	v1.4s, v1.4s, v16.4s                        #! PC = 0x5555565330 *)
add %v1 %v1 %v16;
(* sqrdmulh	v4.4s, v4.4s, v21.s[0]                 #! PC = 0x5555565334 *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v4 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v4 %dc %mm 1;
(* add	v3.4s, v3.4s, v17.4s                        #! PC = 0x5555565338 *)
add %v3 %v3 %v17;
(* sqrdmulh	v6.4s, v6.4s, v21.s[0]                 #! PC = 0x555556533c *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v6 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v6 %dc %mm 1;
(* add	v9.4s, v9.4s, v18.4s                        #! PC = 0x5555565340 *)
add %v9 %v9 %v18;
(* sqrdmulh	v12.4s, v12.4s, v21.s[2]               #! PC = 0x5555565344 *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v12 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v12 %dc %mm 1;
(* add	v11.4s, v11.4s, v19.4s                      #! PC = 0x5555565348 *)
add %v11 %v11 %v19;
(* sqrdmulh	v14.4s, v14.4s, v21.s[2]               #! PC = 0x555556534c *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v14 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v14 %dc %mm 1;
(* mls	v28.4s, v4.4s, v20.s[0]                     #! PC = 0x5555565350 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v4 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v6.4s, v20.s[0]                     #! PC = 0x5555565354 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v6 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;
(* mls	v30.4s, v12.4s, v20.s[0]                    #! PC = 0x5555565358 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v12 %mm; cast [] %mm@int32[4] %mm; subs %dc %v30 %v30 %mm;
(* mls	v31.4s, v14.4s, v20.s[0]                    #! PC = 0x555556535c *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v14 %mm; cast [] %mm@int32[4] %mm; subs %dc %v31 %v31 %mm;




(**************** mls ****************)

assert eqmod %v28 ( %v4oa*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v29 ( %v6oa*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v30 ( %v12oa*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] /\
       eqmod %v31 ( %v14oa*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 ( %v4oa*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v29 ( %v6oa*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v30 ( %v12oa*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] /\
       eqmod %v31 ( %v14oa*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v1 /\
        %v1 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v3 /\
        %v3 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v5 /\
        %v5 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v7 /\
        %v7 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v9 /\
        %v9 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v11 /\
       %v11 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v13 /\
       %v13 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v15 /\
       %v15 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
       prove with [algebra solver isl, cuts [10]] && true;
assume [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v1 /\
        %v1 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v3 /\
        %v3 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v5 /\
        %v5 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v7 /\
        %v7 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v9 /\
        %v9 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v11 /\
       %v11 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v13 /\
       %v13 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v15 /\
       %v15 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v1 /\
        %v1 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v3 /\
        %v3 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v5 /\
        %v5 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v7 /\
        %v7 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v9 /\
        %v9 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v11 /\
       %v11 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v13 /\
       %v13 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v15 /\
       %v15 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2];

(**************** CUT 12, 12 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v1 =  %v1oa + %v16 /\  %v5 =  %v1oa - %v16 /\
     %v3 =  %v3oa + %v17 /\  %v7 =  %v3oa - %v17 /\
     %v9 =  %v9oa + %v18 /\ %v13 =  %v9oa - %v18 /\
    %v11 = %v11oa + %v19 /\ %v15 = %v11oa - %v19 /\
    eqmod %v28 ( %v4oa*[3765607,3765607,3765607,3765607])
          [Q, Q, Q, Q] /\
    eqmod %v29 ( %v6oa*[3765607,3765607,3765607,3765607])
          [Q, Q, Q, Q] /\
    eqmod %v30 (%v12oa*[3761513,3761513,3761513,3761513])
          [Q, Q, Q, Q] /\
    eqmod %v31 (%v14oa*[3761513,3761513,3761513,3761513])
          [Q, Q, Q, Q]  /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v1 /\
     %v1 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v3 /\
     %v3 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v5 /\
     %v5 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v7 /\
     %v7 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v9 /\
     %v9 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v11 /\
    %v11 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v13 /\
    %v13 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v15 /\
    %v15 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v1 /\
     %v1 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v3 /\
     %v3 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v5 /\
     %v5 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v7 /\
     %v7 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v9 /\
     %v9 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v11 /\
    %v11 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v13 /\
    %v13 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v15 /\
    %v15 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2]
    prove with [cuts [10]];

ghost  %v0ob@int32[4], %v2ob@int32[4], %v8ob@int32[4],%v10ob@int32[4],
       %v3ob@int32[4], %v7ob@int32[4],%v11ob@int32[4],%v15ob@int32[4]:
       %v0ob =  %v0 /\  %v2ob =  %v2 /\  %v8ob =  %v8 /\ %v10ob = %v10 /\
       %v3ob =  %v3 /\  %v7ob =  %v7 /\ %v11ob = %v11 /\ %v15ob = %v15
   &&  %v0ob =  %v0 /\  %v2ob =  %v2 /\  %v8ob =  %v8 /\ %v10ob = %v10 /\
       %v3ob =  %v3 /\  %v7ob =  %v7 /\ %v11ob = %v11 /\ %v15ob = %v15;

(* sub	v4.4s, v0.4s, v28.4s                        #! PC = 0x5555565360 *)
sub %v4 %v0 %v28;
(* mul	v16.4s, v3.4s, v22.s[1]                     #! PC = 0x5555565364 *)
mov [_, m, _, _] %v22; mov %mm [m, m, m, m];
mull %dc %v16 %v3 %mm; cast [] %v16@int32[4] %v16;
(* sub	v6.4s, v2.4s, v29.4s                        #! PC = 0x5555565368 *)
sub %v6 %v2 %v29;
(* mul	v17.4s, v7.4s, v22.s[3]                     #! PC = 0x555556536c *)
mov [_, _, _, m] %v22; mov %mm [m, m, m, m];
mull %dc %v17 %v7 %mm; cast [] %v17@int32[4] %v17;
(* sub	v12.4s, v8.4s, v30.4s                       #! PC = 0x5555565370 *)
sub %v12 %v8 %v30;
(* mul	v18.4s, v11.4s, v23.s[1]                    #! PC = 0x5555565374 *)
mov [_, m, _, _] %v23; mov %mm [m, m, m, m];
mull %dc %v18 %v11 %mm; cast [] %v18@int32[4] %v18;
(* sub	v14.4s, v10.4s, v31.4s                      #! PC = 0x5555565378 *)
sub %v14 %v10 %v31;
(* mul	v19.4s, v15.4s, v23.s[3]                    #! PC = 0x555556537c *)
mov [_, _, _, m] %v23; mov %mm [m, m, m, m];
mull %dc %v19 %v15 %mm; cast [] %v19@int32[4] %v19;
(* add	v0.4s, v0.4s, v28.4s                        #! PC = 0x5555565380 *)
add %v0 %v0 %v28;
(* sqrdmulh	v3.4s, v3.4s, v22.s[0]                 #! PC = 0x5555565384 *)
mov [m, _, _, _] %v22; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* add	v2.4s, v2.4s, v29.4s                        #! PC = 0x5555565388 *)
add %v2 %v2 %v29;
(* sqrdmulh	v7.4s, v7.4s, v22.s[2]                 #! PC = 0x555556538c *)
mov [_, _, m, _] %v22; mov %mm [m, m, m, m];
mulj %mm %v7 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v7 %dc %mm 1;
(* add	v8.4s, v8.4s, v30.4s                        #! PC = 0x5555565390 *)
add %v8 %v8 %v30;
(* sqrdmulh	v11.4s, v11.4s, v23.s[0]               #! PC = 0x5555565394 *)
mov [m, _, _, _] %v23; mov %mm [m, m, m, m];
mulj %mm %v11 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v11 %dc %mm 1;
(* add	v10.4s, v10.4s, v31.4s                      #! PC = 0x5555565398 *)
add %v10 %v10 %v31;
(* sqrdmulh	v15.4s, v15.4s, v23.s[2]               #! PC = 0x555556539c *)
mov [_, _, m, _] %v23; mov %mm [m, m, m, m];
mulj %mm %v15 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v15 %dc %mm 1;
(* mls	v16.4s, v3.4s, v20.s[0]                     #! PC = 0x55555653a0 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v16 %v16 %mm;
(* mls	v17.4s, v7.4s, v20.s[0]                     #! PC = 0x55555653a4 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v7 %mm; cast [] %mm@int32[4] %mm; subs %dc %v17 %v17 %mm;
(* mls	v18.4s, v11.4s, v20.s[0]                    #! PC = 0x55555653a8 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v11 %mm; cast [] %mm@int32[4] %mm; subs %dc %v18 %v18 %mm;
(* mls	v19.4s, v15.4s, v20.s[0]                    #! PC = 0x55555653ac *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v15 %mm; cast [] %mm@int32[4] %mm; subs %dc %v19 %v19 %mm;




(**************** mls ****************)

assert eqmod %v16 ( %v3ob*[-3201494,-3201494,-3201494,-3201494])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v7ob*[-2883726,-2883726,-2883726,-2883726])
             [Q, Q, Q, Q] /\
       eqmod %v18 (%v11ob*[-3145678,-3145678,-3145678,-3145678])
             [Q, Q, Q, Q] /\
       eqmod %v19 (%v15ob*[-3201430,-3201430,-3201430,-3201430])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v16 ( %v3ob*[-3201494,-3201494,-3201494,-3201494])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v7ob*[-2883726,-2883726,-2883726,-2883726])
             [Q, Q, Q, Q] /\
       eqmod %v18 (%v11ob*[-3145678,-3145678,-3145678,-3145678])
             [Q, Q, Q, Q] /\
       eqmod %v19 (%v15ob*[-3201430,-3201430,-3201430,-3201430])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v0 /\
        %v0 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v2 /\
        %v2 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v4 /\
        %v4 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v6 /\
        %v6 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v8 /\
        %v8 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v10 /\
       %v10 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v12 /\
       %v12 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v14 /\
       %v14 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
       prove with [algebra solver isl, cuts [11]] && true;
assume [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v0 /\
        %v0 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v2 /\
        %v2 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v4 /\
        %v4 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v6 /\
        %v6 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v8 /\
        %v8 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v10 /\
       %v10 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v12 /\
       %v12 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v14 /\
       %v14 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v0 /\
        %v0 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v2 /\
        %v2 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v4 /\
        %v4 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v6 /\
        %v6 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v8 /\
        %v8 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v10 /\
       %v10 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v12 /\
       %v12 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v14 /\
       %v14 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2];


(**************** CUT 13, 13 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0ob + %v28 /\  %v4 =  %v0ob - %v28 /\
     %v2 =  %v2ob + %v29 /\  %v6 =  %v2ob - %v29 /\
     %v8 =  %v8ob + %v30 /\ %v12 =  %v8ob - %v30 /\
    %v10 = %v10ob + %v31 /\ %v14 = %v10ob - %v31 /\
    eqmod %v16 ( %v3ob*[-3201494,-3201494,-3201494,-3201494])
          [Q, Q, Q, Q] /\
    eqmod %v17 ( %v7ob*[-2883726,-2883726,-2883726,-2883726])
          [Q, Q, Q, Q] /\
    eqmod %v18 (%v11ob*[-3145678,-3145678,-3145678,-3145678])
          [Q, Q, Q, Q] /\
    eqmod %v19 (%v15ob*[-3201430,-3201430,-3201430,-3201430])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v0 /\
     %v0 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v2 /\
     %v2 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v4 /\
     %v4 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v6 /\
     %v6 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v8 /\
     %v8 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v10 /\
    %v10 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v12 /\
    %v12 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v14 /\
    %v14 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v0 /\
     %v0 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v2 /\
     %v2 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v4 /\
     %v4 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v6 /\
     %v6 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v8 /\
     %v8 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v10 /\
    %v10 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v12 /\
    %v12 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v14 /\
    %v14 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2]
    prove with [cuts [11]];

ghost  %v1oc@int32[4], %v5oc@int32[4], %v9oc@int32[4],%v13oc@int32[4],
       %v2oc@int32[4], %v6oc@int32[4],%v10oc@int32[4],%v14oc@int32[4]:
       %v1oc =  %v1 /\  %v5oc =  %v5 /\  %v9oc =  %v9 /\ %v13oc = %v13 /\
       %v2oc =  %v2 /\  %v6oc =  %v6 /\ %v10oc = %v10 /\ %v14oc = %v14
   &&  %v1oc =  %v1 /\  %v5oc =  %v5 /\  %v9oc =  %v9 /\ %v13oc = %v13 /\
       %v2oc =  %v2 /\  %v6oc =  %v6 /\ %v10oc = %v10 /\ %v14oc = %v14;

(* sub	v3.4s, v1.4s, v16.4s                        #! PC = 0x55555653b0 *)
sub %v3 %v1 %v16;
(* mul	v28.4s, v2.4s, v22.s[1]                     #! PC = 0x55555653b4 *)
mov [_, m, _, _] %v22; mov %mm [m, m, m, m];
mull %dc %v28 %v2 %mm; cast [] %v28@int32[4] %v28;
(* sub	v7.4s, v5.4s, v17.4s                        #! PC = 0x55555653b8 *)
sub %v7 %v5 %v17;
(* mul	v29.4s, v6.4s, v22.s[3]                     #! PC = 0x55555653bc *)
mov [_, _, _, m] %v22; mov %mm [m, m, m, m];
mull %dc %v29 %v6 %mm; cast [] %v29@int32[4] %v29;
(* sub	v11.4s, v9.4s, v18.4s                       #! PC = 0x55555653c0 *)
sub %v11 %v9 %v18;
(* mul	v30.4s, v10.4s, v23.s[1]                    #! PC = 0x55555653c4 *)
mov [_, m, _, _] %v23; mov %mm [m, m, m, m];
mull %dc %v30 %v10 %mm; cast [] %v30@int32[4] %v30;
(* sub	v15.4s, v13.4s, v19.4s                      #! PC = 0x55555653c8 *)
sub %v15 %v13 %v19;
(* mul	v31.4s, v14.4s, v23.s[3]                    #! PC = 0x55555653cc *)
mov [_, _, _, m] %v23; mov %mm [m, m, m, m];
mull %dc %v31 %v14 %mm; cast [] %v31@int32[4] %v31;
(* add	v1.4s, v1.4s, v16.4s                        #! PC = 0x55555653d0 *)
add %v1 %v1 %v16;
(* sqrdmulh	v2.4s, v2.4s, v22.s[0]                 #! PC = 0x55555653d4 *)
mov [m, _, _, _] %v22; mov %mm [m, m, m, m];
mulj %mm %v2 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v2 %dc %mm 1;
(* add	v5.4s, v5.4s, v17.4s                        #! PC = 0x55555653d8 *)
add %v5 %v5 %v17;
(* sqrdmulh	v6.4s, v6.4s, v22.s[2]                 #! PC = 0x55555653dc *)
mov [_, _, m, _] %v22; mov %mm [m, m, m, m];
mulj %mm %v6 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v6 %dc %mm 1;
(* add	v9.4s, v9.4s, v18.4s                        #! PC = 0x55555653e0 *)
add %v9 %v9 %v18;
(* sqrdmulh	v10.4s, v10.4s, v23.s[0]               #! PC = 0x55555653e4 *)
mov [m, _, _, _] %v23; mov %mm [m, m, m, m];
mulj %mm %v10 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v10 %dc %mm 1;
(* add	v13.4s, v13.4s, v19.4s                      #! PC = 0x55555653e8 *)
add %v13 %v13 %v19;
(* sqrdmulh	v14.4s, v14.4s, v23.s[2]               #! PC = 0x55555653ec *)
mov [_, _, m, _] %v23; mov %mm [m, m, m, m];
mulj %mm %v14 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v14 %dc %mm 1;
(* mls	v28.4s, v2.4s, v20.s[0]                     #! PC = 0x55555653f0 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v2 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v6.4s, v20.s[0]                     #! PC = 0x55555653f4 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v6 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;
(* mls	v30.4s, v10.4s, v20.s[0]                    #! PC = 0x55555653f8 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v10 %mm; cast [] %mm@int32[4] %mm; subs %dc %v30 %v30 %mm;
(* mls	v31.4s, v14.4s, v20.s[0]                    #! PC = 0x55555653fc *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v14 %mm; cast [] %mm@int32[4] %mm; subs %dc %v31 %v31 %mm;




(**************** mls ****************)

assert eqmod %v28 ( %v2oc*[-3201494,-3201494,-3201494,-3201494])
             [Q, Q, Q, Q] /\
       eqmod %v29 ( %v6oc*[-2883726,-2883726,-2883726,-2883726])
             [Q, Q, Q, Q] /\
       eqmod %v30 (%v10oc*[-3145678,-3145678,-3145678,-3145678])
             [Q, Q, Q, Q] /\
       eqmod %v31 (%v14oc*[-3201430,-3201430,-3201430,-3201430])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 ( %v2oc*[-3201494,-3201494,-3201494,-3201494])
             [Q, Q, Q, Q] /\
       eqmod %v29 ( %v6oc*[-2883726,-2883726,-2883726,-2883726])
             [Q, Q, Q, Q] /\
       eqmod %v30 (%v10oc*[-3145678,-3145678,-3145678,-3145678])
             [Q, Q, Q, Q] /\
       eqmod %v31 (%v14oc*[-3201430,-3201430,-3201430,-3201430])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v1 /\
        %v1 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v3 /\
        %v3 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v5 /\
        %v5 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v7 /\
        %v7 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v9 /\
        %v9 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v11 /\
       %v11 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v13 /\
       %v13 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v15 /\
       %v15 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
       prove with [algebra solver isl, cuts [12]] && true;
assume [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v1 /\
        %v1 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v3 /\
        %v3 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v5 /\
        %v5 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v7 /\
        %v7 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v9 /\
        %v9 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v11 /\
       %v11 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v13 /\
       %v13 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v15 /\
       %v15 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v1 /\
        %v1 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v3 /\
        %v3 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v5 /\
        %v5 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v7 /\
        %v7 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v9 /\
        %v9 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v11 /\
       %v11 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v13 /\
       %v13 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v15 /\
       %v15 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2];


(**************** CUT 14, 14 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v1 =  %v1oc + %v16 /\  %v3 =  %v1oc - %v16 /\
     %v5 =  %v5oc + %v17 /\  %v7 =  %v5oc - %v17 /\
     %v9 =  %v9oc + %v18 /\ %v11 =  %v9oc - %v18 /\
    %v13 = %v13oc + %v19 /\ %v15 = %v13oc - %v19 /\
    eqmod %v28 ( %v2oc*[-3201494,-3201494,-3201494,-3201494])
          [Q, Q, Q, Q] /\
    eqmod %v29 ( %v6oc*[-2883726,-2883726,-2883726,-2883726])
          [Q, Q, Q, Q] /\
    eqmod %v30 (%v10oc*[-3145678,-3145678,-3145678,-3145678])
          [Q, Q, Q, Q] /\
    eqmod %v31 (%v14oc*[-3201430,-3201430,-3201430,-3201430])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v1 /\
     %v1 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v3 /\
     %v3 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v5 /\
     %v5 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v7 /\
     %v7 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v9 /\
     %v9 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v11 /\
    %v11 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v13 /\
    %v13 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v15 /\
    %v15 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\%v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v1 /\
     %v1 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v3 /\
     %v3 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v5 /\
     %v5 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v7 /\
     %v7 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v9 /\
     %v9 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v11 /\
    %v11 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v13 /\
    %v13 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v15 /\
    %v15 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2]
    prove with [cuts [12]];

ghost  %v0od@int32[4], %v4od@int32[4], %v8od@int32[4],%v12od@int32[4],
       %v1od@int32[4], %v3od@int32[4], %v5od@int32[4], %v7od@int32[4]:
       %v0od =  %v0 /\  %v4od =  %v4 /\  %v8od =  %v8 /\ %v12od = %v12 /\
       %v1od =  %v1 /\  %v3od =  %v3 /\  %v5od =  %v5 /\  %v7od =  %v7
   &&  %v0od =  %v0 /\  %v4od =  %v4 /\  %v8od =  %v8 /\ %v12od = %v12 /\
       %v1od =  %v1 /\  %v3od =  %v3 /\  %v5od =  %v5 /\  %v7od =  %v7;

(* sub	v2.4s, v0.4s, v28.4s                        #! PC = 0x5555565400 *)
sub %v2 %v0 %v28;
(* mul	v16.4s, v1.4s, v24.s[1]                     #! PC = 0x5555565404 *)
mov [_, m, _, _] %v24; mov %mm [m, m, m, m];
mull %dc %v16 %v1 %mm; cast [] %v16@int32[4] %v16;
(* sub	v6.4s, v4.4s, v29.4s                        #! PC = 0x5555565408 *)
sub %v6 %v4 %v29;
(* mul	v17.4s, v3.4s, v24.s[3]                     #! PC = 0x555556540c *)
mov [_, _, _, m] %v24; mov %mm [m, m, m, m];
mull %dc %v17 %v3 %mm; cast [] %v17@int32[4] %v17;
(* sub	v10.4s, v8.4s, v30.4s                       #! PC = 0x5555565410 *)
sub %v10 %v8 %v30;
(* mul	v18.4s, v5.4s, v25.s[1]                     #! PC = 0x5555565414 *)
mov [_, m, _, _] %v25; mov %mm [m, m, m, m];
mull %dc %v18 %v5 %mm; cast [] %v18@int32[4] %v18;
(* sub	v14.4s, v12.4s, v31.4s                      #! PC = 0x5555565418 *)
sub %v14 %v12 %v31;
(* mul	v19.4s, v7.4s, v25.s[3]                     #! PC = 0x555556541c *)
mov [_, _, _, m] %v25; mov %mm [m, m, m, m];
mull %dc %v19 %v7 %mm; cast [] %v19@int32[4] %v19;
(* add	v0.4s, v0.4s, v28.4s                        #! PC = 0x5555565420 *)
add %v0 %v0 %v28;
(* sqrdmulh	v1.4s, v1.4s, v24.s[0]                 #! PC = 0x5555565424 *)
mov [m, _, _, _] %v24; mov %mm [m, m, m, m];
mulj %mm %v1 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v1 %dc %mm 1;
(* add	v4.4s, v4.4s, v29.4s                        #! PC = 0x5555565428 *)
add %v4 %v4 %v29;
(* sqrdmulh	v3.4s, v3.4s, v24.s[2]                 #! PC = 0x555556542c *)
mov [_, _, m, _] %v24; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* add	v8.4s, v8.4s, v30.4s                        #! PC = 0x5555565430 *)
add %v8 %v8 %v30;
(* sqrdmulh	v5.4s, v5.4s, v25.s[0]                 #! PC = 0x5555565434 *)
mov [m, _, _, _] %v25; mov %mm [m, m, m, m];
mulj %mm %v5 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v5 %dc %mm 1;
(* add	v12.4s, v12.4s, v31.4s                      #! PC = 0x5555565438 *)
add %v12 %v12 %v31;
(* sqrdmulh	v7.4s, v7.4s, v25.s[2]                 #! PC = 0x555556543c *)
mov [_, _, m, _] %v25; mov %mm [m, m, m, m];
mulj %mm %v7 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v7 %dc %mm 1;
(* mls	v16.4s, v1.4s, v20.s[0]                     #! PC = 0x5555565440 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v1 %mm; cast [] %mm@int32[4] %mm; subs %dc %v16 %v16 %mm;
(* mls	v17.4s, v3.4s, v20.s[0]                     #! PC = 0x5555565444 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v17 %v17 %mm;
(* mls	v18.4s, v5.4s, v20.s[0]                     #! PC = 0x5555565448 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v5 %mm; cast [] %mm@int32[4] %mm; subs %dc %v18 %v18 %mm;
(* mls	v19.4s, v7.4s, v20.s[0]                     #! PC = 0x555556544c *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v7 %mm; cast [] %mm@int32[4] %mm; subs %dc %v19 %v19 %mm;




(**************** mls ****************)

assert eqmod %v16 ( %v1od*[-601683,-601683,-601683,-601683])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v3od*[3542485,3542485,3542485,3542485])
             [Q, Q, Q, Q] /\
       eqmod %v18 ( %v5od*[2682288,2682288,2682288,2682288])
             [Q, Q, Q, Q] /\
       eqmod %v19 ( %v7od*[2129892,2129892,2129892,2129892])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v16 ( %v1od*[-601683,-601683,-601683,-601683])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v3od*[3542485,3542485,3542485,3542485])
             [Q, Q, Q, Q] /\
       eqmod %v18 ( %v5od*[2682288,2682288,2682288,2682288])
             [Q, Q, Q, Q] /\
       eqmod %v19 ( %v7od*[2129892,2129892,2129892,2129892])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v0 /\
        %v0 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v2 /\
        %v2 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v4 /\
        %v4 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v6 /\
        %v6 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v8 /\
        %v8 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v10 /\
       %v10 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v12 /\
       %v12 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v14 /\
       %v14 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
       prove with [algebra solver isl, cuts [13]] && true;
assume [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v0 /\
        %v0 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v2 /\
        %v2 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v4 /\
        %v4 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v6 /\
        %v6 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v8 /\
        %v8 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v10 /\
       %v10 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v12 /\
       %v12 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v14 /\
       %v14 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v0 /\
        %v0 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v2 /\
        %v2 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v4 /\
        %v4 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v6 /\
        %v6 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v8 /\
        %v8 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v10 /\
       %v10 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v12 /\
       %v12 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v14 /\
       %v14 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2];

(**************** CUT 15, 15 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0od + %v28 /\  %v2 =  %v0od - %v28 /\
     %v4 =  %v4od + %v29 /\  %v6 =  %v4od - %v29 /\
     %v8 =  %v8od + %v30 /\ %v10 =  %v8od - %v30 /\
    %v12 = %v12od + %v31 /\ %v14 = %v12od - %v31 /\
    eqmod %v16 ( %v1od*[-601683,-601683,-601683,-601683])
          [Q, Q, Q, Q] /\
    eqmod %v17 ( %v3od*[3542485,3542485,3542485,3542485])
          [Q, Q, Q, Q] /\
    eqmod %v18 ( %v5od*[2682288,2682288,2682288,2682288])
          [Q, Q, Q, Q] /\
    eqmod %v19 ( %v7od*[2129892,2129892,2129892,2129892])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v0 /\
     %v0 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v2 /\
     %v2 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v4 /\
     %v4 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v6 /\
     %v6 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v8 /\
     %v8 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v10 /\
    %v10 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v12 /\
    %v12 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v14 /\
    %v14 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v0 /\
     %v0 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v2 /\
     %v2 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v4 /\
     %v4 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v6 /\
     %v6 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v8 /\
     %v8 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v10 /\
    %v10 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v12 /\
    %v12 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v14 /\
    %v14 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2]
    prove with [cuts [13]];

ghost  %v0oe@int32[4], %v2oe@int32[4], %v4oe@int32[4], %v6oe@int32[4],
       %v9oe@int32[4],%v11oe@int32[4],%v13oe@int32[4],%v15oe@int32[4]:
       %v0oe =  %v0 /\  %v2oe =  %v2 /\  %v4oe =  %v4 /\  %v6oe =  %v6 /\
       %v9oe =  %v9 /\ %v11oe = %v11 /\ %v13oe = %v13 /\ %v15oe = %v15
   &&  %v0oe =  %v0 /\  %v2oe =  %v2 /\  %v4oe =  %v4 /\  %v6oe =  %v6 /\
       %v9oe =  %v9 /\ %v11oe = %v11 /\ %v13oe = %v13 /\ %v15oe = %v15;

(* sub	v1.4s, v0.4s, v16.4s                        #! PC = 0x5555565450 *)
sub %v1 %v0 %v16;
(* mul	v28.4s, v9.4s, v26.s[1]                     #! PC = 0x5555565454 *)
mov [_, m, _, _] %v26; mov %mm [m, m, m, m];
mull %dc %v28 %v9 %mm; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v2.4s, v17.4s                        #! PC = 0x5555565458 *)
sub %v3 %v2 %v17;
(* mul	v29.4s, v11.4s, v26.s[3]                    #! PC = 0x555556545c *)
mov [_, _, _, m] %v26; mov %mm [m, m, m, m];
mull %dc %v29 %v11 %mm; cast [] %v29@int32[4] %v29;
(* sub	v5.4s, v4.4s, v18.4s                        #! PC = 0x5555565460 *)
sub %v5 %v4 %v18;
(* mul	v30.4s, v13.4s, v27.s[1]                    #! PC = 0x5555565464 *)
mov [_, m, _, _] %v27; mov %mm [m, m, m, m];
mull %dc %v30 %v13 %mm; cast [] %v30@int32[4] %v30;
(* sub	v7.4s, v6.4s, v19.4s                        #! PC = 0x5555565468 *)
sub %v7 %v6 %v19;
(* mul	v31.4s, v15.4s, v27.s[3]                    #! PC = 0x555556546c *)
mov [_, _, _, m] %v27; mov %mm [m, m, m, m];
mull %dc %v31 %v15 %mm; cast [] %v31@int32[4] %v31;
(* add	v0.4s, v0.4s, v16.4s                        #! PC = 0x5555565470 *)
add %v0 %v0 %v16;
(* sqrdmulh	v9.4s, v9.4s, v26.s[0]                 #! PC = 0x5555565474 *)
mov [m, _, _, _] %v26; mov %mm [m, m, m, m];
mulj %mm %v9 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v9 %dc %mm 1;
(* add	v2.4s, v2.4s, v17.4s                        #! PC = 0x5555565478 *)
add %v2 %v2 %v17;
(* sqrdmulh	v11.4s, v11.4s, v26.s[2]               #! PC = 0x555556547c *)
mov [_, _, m, _] %v26; mov %mm [m, m, m, m];
mulj %mm %v11 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v11 %dc %mm 1;
(* add	v4.4s, v4.4s, v18.4s                        #! PC = 0x5555565480 *)
add %v4 %v4 %v18;
(* sqrdmulh	v13.4s, v13.4s, v27.s[0]               #! PC = 0x5555565484 *)
mov [m, _, _, _] %v27; mov %mm [m, m, m, m];
mulj %mm %v13 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v13 %dc %mm 1;
(* add	v6.4s, v6.4s, v19.4s                        #! PC = 0x5555565488 *)
add %v6 %v6 %v19;
(* sqrdmulh	v15.4s, v15.4s, v27.s[2]               #! PC = 0x555556548c *)
mov [_, _, m, _] %v27; mov %mm [m, m, m, m];
mulj %mm %v15 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v15 %dc %mm 1;
(* mls	v28.4s, v9.4s, v20.s[0]                     #! PC = 0x5555565490 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v9 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v11.4s, v20.s[0]                    #! PC = 0x5555565494 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v11 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;
(* mls	v30.4s, v13.4s, v20.s[0]                    #! PC = 0x5555565498 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v13 %mm; cast [] %mm@int32[4] %mm; subs %dc %v30 %v30 %mm;
(* mls	v31.4s, v15.4s, v20.s[0]                    #! PC = 0x555556549c *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v15 %mm; cast [] %mm@int32[4] %mm; subs %dc %v31 %v31 %mm;




(**************** mls ****************)

assert eqmod %v28 ( %v9oe*[3764867,3764867,3764867,3764867])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v11oe*[-1005239,-1005239,-1005239,-1005239])
             [Q, Q, Q, Q] /\
       eqmod %v30 (%v13oe*[557458,557458,557458,557458])
             [Q, Q, Q, Q] /\
       eqmod %v31 (%v15oe*[-1221177,-1221177,-1221177,-1221177])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 ( %v9oe*[3764867,3764867,3764867,3764867])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v11oe*[-1005239,-1005239,-1005239,-1005239])
             [Q, Q, Q, Q] /\
       eqmod %v30 (%v13oe*[557458,557458,557458,557458])
             [Q, Q, Q, Q] /\
       eqmod %v31 (%v15oe*[-1221177,-1221177,-1221177,-1221177])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v0 /\
        %v0 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v1 /\
        %v1 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v2 /\
        %v2 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v3 /\
        %v3 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v4 /\
        %v4 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v5 /\
        %v5 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v6 /\
        %v6 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v7 /\
        %v7 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2]
       prove with [algebra solver isl, cuts [14]] && true;
assume [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v0 /\
        %v0 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v1 /\
        %v1 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v2 /\
        %v2 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v3 /\
        %v3 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v4 /\
        %v4 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v5 /\
        %v5 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v6 /\
        %v6 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v7 /\
        %v7 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v0 /\
        %v0 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v1 /\
        %v1 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v2 /\
        %v2 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v3 /\
        %v3 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v4 /\
        %v4 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v5 /\
        %v5 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v6 /\
        %v6 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v7 /\
        %v7 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2];

(**************** CUT 16, 16 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0oe + %v16 /\  %v1 =  %v0oe - %v16 /\
     %v2 =  %v2oe + %v17 /\  %v3 =  %v2oe - %v17 /\
     %v4 =  %v4oe + %v18 /\  %v5 =  %v4oe - %v18 /\
     %v6 =  %v6oe + %v19 /\  %v7 =  %v6oe - %v19 /\
    eqmod %v28 ( %v9oe*[3764867,3764867,3764867,3764867])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v11oe*[-1005239,-1005239,-1005239,-1005239])
          [Q, Q, Q, Q] /\
    eqmod %v30 (%v13oe*[557458,557458,557458,557458])
          [Q, Q, Q, Q] /\
    eqmod %v31 (%v15oe*[-1221177,-1221177,-1221177,-1221177])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v0 /\
     %v0 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v1 /\
     %v1 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v2 /\
     %v2 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v3 /\
     %v3 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v4 /\
     %v4 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v5 /\
     %v5 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v6 /\
     %v6 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v7 /\
     %v7 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v0 /\
     %v0 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v1 /\
     %v1 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v2 /\
     %v2 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v3 /\
     %v3 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v4 /\
     %v4 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v5 /\
     %v5 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v6 /\
     %v6 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v7 /\
     %v7 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2]
    prove with [cuts [14]];



(* sub	v9.4s, v8.4s, v28.4s                        #! PC = 0x55555654a0 *)
sub %v9 %v8 %v28;
(* sub	v11.4s, v10.4s, v29.4s                      #! PC = 0x55555654a4 *)
sub %v11 %v10 %v29;
(* sub	v13.4s, v12.4s, v30.4s                      #! PC = 0x55555654a8 *)
sub %v13 %v12 %v30;
(* sub	v15.4s, v14.4s, v31.4s                      #! PC = 0x55555654ac *)
sub %v15 %v14 %v31;
(* add	v8.4s, v8.4s, v28.4s                        #! PC = 0x55555654b0 *)
add %v8 %v8 %v28;
(* add	v10.4s, v10.4s, v29.4s                      #! PC = 0x55555654b4 *)
add %v10 %v10 %v29;
(* add	v12.4s, v12.4s, v30.4s                      #! PC = 0x55555654b8 *)
add %v12 %v12 %v30;
(* add	v14.4s, v14.4s, v31.4s                      #! PC = 0x55555654bc *)
add %v14 %v14 %v31;
(* sub	x19, x19, #0x1                              #! PC = 0x55555654c0 *)
subs dc x19 x19 (0x1)@uint64;
(* #cbnz	x19, 0x55555651c0 <_ntt_top_loop>         #! PC = 0x55555654c4 *)
#cbnz	x19, 0x55555651c0 <_ntt_top_loop>         #! 0x55555654c4 = 0x55555654c4;
(* st1	{v1.4s}, [x1], #16                          #! EA = L0x7ffffed920; PC = 0x55555651c0 *)
mov [L0x7ffffed920, L0x7ffffed924, L0x7ffffed928, L0x7ffffed92c] %v1;
(* ld1	{v1.4s}, [x1]                               #! EA = L0x7ffffed930; Value = 0xfffffffd00000004; PC = 0x55555651c4 *)
mov %v1 [L0x7ffffed930, L0x7ffffed934, L0x7ffffed938, L0x7ffffed93c];
(* st1	{v3.4s}, [x3], #16                          #! EA = L0x7ffffed9a0; PC = 0x55555651c8 *)
mov [L0x7ffffed9a0, L0x7ffffed9a4, L0x7ffffed9a8, L0x7ffffed9ac] %v3;
(* ld1	{v3.4s}, [x3]                               #! EA = L0x7ffffed9b0; Value = 0xfffffffe00000004; PC = 0x55555651cc *)
mov %v3 [L0x7ffffed9b0, L0x7ffffed9b4, L0x7ffffed9b8, L0x7ffffed9bc];
(* st1	{v5.4s}, [x5], #16                          #! EA = L0x7ffffeda20; PC = 0x55555651d0 *)
mov [L0x7ffffeda20, L0x7ffffeda24, L0x7ffffeda28, L0x7ffffeda2c] %v5;
(* ld1	{v5.4s}, [x5]                               #! EA = L0x7ffffeda30; Value = 0xfffffffe00000003; PC = 0x55555651d4 *)
mov %v5 [L0x7ffffeda30, L0x7ffffeda34, L0x7ffffeda38, L0x7ffffeda3c];
(* st1	{v7.4s}, [x7], #16                          #! EA = L0x7ffffedaa0; PC = 0x55555651d8 *)
mov [L0x7ffffedaa0, L0x7ffffedaa4, L0x7ffffedaa8, L0x7ffffedaac] %v7;
(* ld1	{v7.4s}, [x7]                               #! EA = L0x7ffffedab0; Value = 0xffffffffffffffff; PC = 0x55555651dc *)
mov %v7 [L0x7ffffedab0, L0x7ffffedab4, L0x7ffffedab8, L0x7ffffedabc];
(* st1	{v9.4s}, [x9], #16                          #! EA = L0x7ffffedb20; PC = 0x55555651e0 *)
mov [L0x7ffffedb20, L0x7ffffedb24, L0x7ffffedb28, L0x7ffffedb2c] %v9;
(* ld1	{v9.4s}, [x9]                               #! EA = L0x7ffffedb30; Value = 0x00000000fffffffd; PC = 0x55555651e4 *)
mov %v9 [L0x7ffffedb30, L0x7ffffedb34, L0x7ffffedb38, L0x7ffffedb3c];
(* st1	{v11.4s}, [x11], #16                        #! EA = L0x7ffffedba0; PC = 0x55555651e8 *)
mov [L0x7ffffedba0, L0x7ffffedba4, L0x7ffffedba8, L0x7ffffedbac] %v11;
(* ld1	{v11.4s}, [x11]                             #! EA = L0x7ffffedbb0; Value = 0x0000000300000000; PC = 0x55555651ec *)
mov %v11 [L0x7ffffedbb0, L0x7ffffedbb4, L0x7ffffedbb8, L0x7ffffedbbc];
(* st1	{v13.4s}, [x13], #16                        #! EA = L0x7ffffedc20; PC = 0x55555651f0 *)
mov [L0x7ffffedc20, L0x7ffffedc24, L0x7ffffedc28, L0x7ffffedc2c] %v13;
(* ld1	{v13.4s}, [x13]                             #! EA = L0x7ffffedc30; Value = 0xfffffffe00000000; PC = 0x55555651f4 *)
mov %v13 [L0x7ffffedc30, L0x7ffffedc34, L0x7ffffedc38, L0x7ffffedc3c];
(* st1	{v15.4s}, [x15], #16                        #! EA = L0x7ffffedca0; PC = 0x55555651f8 *)
mov [L0x7ffffedca0, L0x7ffffedca4, L0x7ffffedca8, L0x7ffffedcac] %v15;
(* ld1	{v15.4s}, [x15]                             #! EA = L0x7ffffedcb0; Value = 0x00000001fffffffd; PC = 0x55555651fc *)
mov %v15 [L0x7ffffedcb0, L0x7ffffedcb4, L0x7ffffedcb8, L0x7ffffedcbc];
(* st1	{v0.4s}, [x0], #16                          #! EA = L0x7ffffed8e0; PC = 0x5555565200 *)
mov [L0x7ffffed8e0, L0x7ffffed8e4, L0x7ffffed8e8, L0x7ffffed8ec] %v0;
(* ld1	{v0.4s}, [x0]                               #! EA = L0x7ffffed8f0; Value = 0x0000000200000003; PC = 0x5555565204 *)
mov %v0 [L0x7ffffed8f0, L0x7ffffed8f4, L0x7ffffed8f8, L0x7ffffed8fc];
(* st1	{v2.4s}, [x2], #16                          #! EA = L0x7ffffed960; PC = 0x5555565208 *)
mov [L0x7ffffed960, L0x7ffffed964, L0x7ffffed968, L0x7ffffed96c] %v2;
(* ld1	{v2.4s}, [x2]                               #! EA = L0x7ffffed970; Value = 0x0000000000000000; PC = 0x555556520c *)
mov %v2 [L0x7ffffed970, L0x7ffffed974, L0x7ffffed978, L0x7ffffed97c];
(* st1	{v4.4s}, [x4], #16                          #! EA = L0x7ffffed9e0; PC = 0x5555565210 *)
mov [L0x7ffffed9e0, L0x7ffffed9e4, L0x7ffffed9e8, L0x7ffffed9ec] %v4;
(* ld1	{v4.4s}, [x4]                               #! EA = L0x7ffffed9f0; Value = 0xfffffffc00000003; PC = 0x5555565214 *)
mov %v4 [L0x7ffffed9f0, L0x7ffffed9f4, L0x7ffffed9f8, L0x7ffffed9fc];
(* st1	{v6.4s}, [x6], #16                          #! EA = L0x7ffffeda60; PC = 0x5555565218 *)
mov [L0x7ffffeda60, L0x7ffffeda64, L0x7ffffeda68, L0x7ffffeda6c] %v6;
(* ld1	{v6.4s}, [x6]                               #! EA = L0x7ffffeda70; Value = 0xffffffff00000004; PC = 0x555556521c *)
mov %v6 [L0x7ffffeda70, L0x7ffffeda74, L0x7ffffeda78, L0x7ffffeda7c];
(* st1	{v8.4s}, [x8], #16                          #! EA = L0x7ffffedae0; PC = 0x5555565220 *)
mov [L0x7ffffedae0, L0x7ffffedae4, L0x7ffffedae8, L0x7ffffedaec] %v8;
(* ld1	{v8.4s}, [x8]                               #! EA = L0x7ffffedaf0; Value = 0xfffffffcfffffffd; PC = 0x5555565224 *)
mov %v8 [L0x7ffffedaf0, L0x7ffffedaf4, L0x7ffffedaf8, L0x7ffffedafc];
(* st1	{v10.4s}, [x10], #16                        #! EA = L0x7ffffedb60; PC = 0x5555565228 *)
mov [L0x7ffffedb60, L0x7ffffedb64, L0x7ffffedb68, L0x7ffffedb6c] %v10;
(* ld1	{v10.4s}, [x10]                             #! EA = L0x7ffffedb70; Value = 0x00000004ffffffff; PC = 0x555556522c *)
mov %v10 [L0x7ffffedb70, L0x7ffffedb74, L0x7ffffedb78, L0x7ffffedb7c];
(* st1	{v12.4s}, [x12], #16                        #! EA = L0x7ffffedbe0; PC = 0x5555565230 *)
mov [L0x7ffffedbe0, L0x7ffffedbe4, L0x7ffffedbe8, L0x7ffffedbec] %v12;
(* ld1	{v12.4s}, [x12]                             #! EA = L0x7ffffedbf0; Value = 0xffffffff00000002; PC = 0x5555565234 *)
mov %v12 [L0x7ffffedbf0, L0x7ffffedbf4, L0x7ffffedbf8, L0x7ffffedbfc];
(* st1	{v14.4s}, [x14], #16                        #! EA = L0x7ffffedc60; PC = 0x5555565238 *)
mov [L0x7ffffedc60, L0x7ffffedc64, L0x7ffffedc68, L0x7ffffedc6c] %v14;
(* ld1	{v14.4s}, [x14]                             #! EA = L0x7ffffedc70; Value = 0xfffffffffffffffe; PC = 0x555556523c *)
mov %v14 [L0x7ffffedc70, L0x7ffffedc74, L0x7ffffedc78, L0x7ffffedc7c];


(**************** CUT 17, 17 ****************)

(**************** level 3/1 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod (F1**2) (L0x7ffffed8e0*X**4+L0x7ffffed8e4*X**5+L0x7ffffed8e8*X**6+
          L0x7ffffed8ec*X**7) [ Q, X**16 - 7778734 ] /\
    eqmod (F1**2) (L0x7ffffed920*X**4+L0x7ffffed924*X**5+L0x7ffffed928*X**6+
          L0x7ffffed92c*X**7) [ Q, X**16 -  601683 ] /\
    eqmod (F1**2) (L0x7ffffed960*X**4+L0x7ffffed964*X**5+L0x7ffffed968*X**6+
          L0x7ffffed96c*X**7) [ Q, X**16 - 3542485 ] /\
    eqmod (F1**2) (L0x7ffffed9a0*X**4+L0x7ffffed9a4*X**5+L0x7ffffed9a8*X**6+
          L0x7ffffed9ac*X**7) [ Q, X**16 - 4837932 ] /\
    eqmod (F1**2) (L0x7ffffed9e0*X**4+L0x7ffffed9e4*X**5+L0x7ffffed9e8*X**6+
          L0x7ffffed9ec*X**7) [ Q, X**16 - 2682288 ] /\
    eqmod (F1**2) (L0x7ffffeda20*X**4+L0x7ffffeda24*X**5+L0x7ffffeda28*X**6+
          L0x7ffffeda2c*X**7) [ Q, X**16 - 5698129 ] /\
    eqmod (F1**2) (L0x7ffffeda60*X**4+L0x7ffffeda64*X**5+L0x7ffffeda68*X**6+
          L0x7ffffeda6c*X**7) [ Q, X**16 - 2129892 ] /\
    eqmod (F1**2) (L0x7ffffedaa0*X**4+L0x7ffffedaa4*X**5+L0x7ffffedaa8*X**6+
          L0x7ffffedaac*X**7) [ Q, X**16 - 6250525 ] /\
    eqmod (F1**2) (L0x7ffffedae0*X**4+L0x7ffffedae4*X**5+L0x7ffffedae8*X**6+
          L0x7ffffedaec*X**7) [ Q, X**16 - 3764867 ] /\
    eqmod (F1**2) (L0x7ffffedb20*X**4+L0x7ffffedb24*X**5+L0x7ffffedb28*X**6+
          L0x7ffffedb2c*X**7) [ Q, X**16 - 4615550 ] /\
    eqmod (F1**2) (L0x7ffffedb60*X**4+L0x7ffffedb64*X**5+L0x7ffffedb68*X**6+
          L0x7ffffedb6c*X**7) [ Q, X**16 - 7375178 ] /\
    eqmod (F1**2) (L0x7ffffedba0*X**4+L0x7ffffedba4*X**5+L0x7ffffedba8*X**6+
          L0x7ffffedbac*X**7) [ Q, X**16 - 1005239 ] /\
    eqmod (F1**2) (L0x7ffffedbe0*X**4+L0x7ffffedbe4*X**5+L0x7ffffedbe8*X**6+
          L0x7ffffedbec*X**7) [ Q, X**16 -  557458 ] /\
    eqmod (F1**2) (L0x7ffffedc20*X**4+L0x7ffffedc24*X**5+L0x7ffffedc28*X**6+
          L0x7ffffedc2c*X**7) [ Q, X**16 - 7822959 ] /\
    eqmod (F1**2) (L0x7ffffedc60*X**4+L0x7ffffedc64*X**5+L0x7ffffedc68*X**6+
          L0x7ffffedc6c*X**7) [ Q, X**16 - 7159240 ] /\
    eqmod (F1**2) (L0x7ffffedca0*X**4+L0x7ffffedca4*X**5+L0x7ffffedca8*X**6+
          L0x7ffffedcac*X**7) [ Q, X**16 - 1221177 ]
    prove with [all ghosts, cuts [9,10,11,12,13,14,15]],
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed8e0,L0x7ffffed8e4,L0x7ffffed8e8,L0x7ffffed8ec] /\
    [L0x7ffffed8e0,L0x7ffffed8e4,L0x7ffffed8e8,L0x7ffffed8ec] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed920,L0x7ffffed924,L0x7ffffed928,L0x7ffffed92c] /\
    [L0x7ffffed920,L0x7ffffed924,L0x7ffffed928,L0x7ffffed92c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed960,L0x7ffffed964,L0x7ffffed968,L0x7ffffed96c] /\
    [L0x7ffffed960,L0x7ffffed964,L0x7ffffed968,L0x7ffffed96c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed9a0,L0x7ffffed9a4,L0x7ffffed9a8,L0x7ffffed9ac] /\
    [L0x7ffffed9a0,L0x7ffffed9a4,L0x7ffffed9a8,L0x7ffffed9ac] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed9e0,L0x7ffffed9e4,L0x7ffffed9e8,L0x7ffffed9ec] /\
    [L0x7ffffed9e0,L0x7ffffed9e4,L0x7ffffed9e8,L0x7ffffed9ec] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffeda20,L0x7ffffeda24,L0x7ffffeda28,L0x7ffffeda2c] /\
    [L0x7ffffeda20,L0x7ffffeda24,L0x7ffffeda28,L0x7ffffeda2c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffeda60,L0x7ffffeda64,L0x7ffffeda68,L0x7ffffeda6c] /\
    [L0x7ffffeda60,L0x7ffffeda64,L0x7ffffeda68,L0x7ffffeda6c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedaa0,L0x7ffffedaa4,L0x7ffffedaa8,L0x7ffffedaac] /\
    [L0x7ffffedaa0,L0x7ffffedaa4,L0x7ffffedaa8,L0x7ffffedaac] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedae0,L0x7ffffedae4,L0x7ffffedae8,L0x7ffffedaec] /\
    [L0x7ffffedae0,L0x7ffffedae4,L0x7ffffedae8,L0x7ffffedaec] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedb20,L0x7ffffedb24,L0x7ffffedb28,L0x7ffffedb2c] /\
    [L0x7ffffedb20,L0x7ffffedb24,L0x7ffffedb28,L0x7ffffedb2c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedb60,L0x7ffffedb64,L0x7ffffedb68,L0x7ffffedb6c] /\
    [L0x7ffffedb60,L0x7ffffedb64,L0x7ffffedb68,L0x7ffffedb6c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedba0,L0x7ffffedba4,L0x7ffffedba8,L0x7ffffedbac] /\
    [L0x7ffffedba0,L0x7ffffedba4,L0x7ffffedba8,L0x7ffffedbac] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedbe0,L0x7ffffedbe4,L0x7ffffedbe8,L0x7ffffedbec] /\
    [L0x7ffffedbe0,L0x7ffffedbe4,L0x7ffffedbe8,L0x7ffffedbec] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedc20,L0x7ffffedc24,L0x7ffffedc28,L0x7ffffedc2c] /\
    [L0x7ffffedc20,L0x7ffffedc24,L0x7ffffedc28,L0x7ffffedc2c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedc60,L0x7ffffedc64,L0x7ffffedc68,L0x7ffffedc6c] /\
    [L0x7ffffedc60,L0x7ffffedc64,L0x7ffffedc68,L0x7ffffedc6c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedca0,L0x7ffffedca4,L0x7ffffedca8,L0x7ffffedcac] /\
    [L0x7ffffedca0,L0x7ffffedca4,L0x7ffffedca8,L0x7ffffedcac] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2]
    prove with [algebra solver isl, cuts [15]]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed8e0,L0x7ffffed8e4,L0x7ffffed8e8,L0x7ffffed8ec] /\
    [L0x7ffffed8e0,L0x7ffffed8e4,L0x7ffffed8e8,L0x7ffffed8ec] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed920,L0x7ffffed924,L0x7ffffed928,L0x7ffffed92c] /\
    [L0x7ffffed920,L0x7ffffed924,L0x7ffffed928,L0x7ffffed92c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed960,L0x7ffffed964,L0x7ffffed968,L0x7ffffed96c] /\
    [L0x7ffffed960,L0x7ffffed964,L0x7ffffed968,L0x7ffffed96c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed9a0,L0x7ffffed9a4,L0x7ffffed9a8,L0x7ffffed9ac] /\
    [L0x7ffffed9a0,L0x7ffffed9a4,L0x7ffffed9a8,L0x7ffffed9ac] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed9e0,L0x7ffffed9e4,L0x7ffffed9e8,L0x7ffffed9ec] /\
    [L0x7ffffed9e0,L0x7ffffed9e4,L0x7ffffed9e8,L0x7ffffed9ec] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffeda20,L0x7ffffeda24,L0x7ffffeda28,L0x7ffffeda2c] /\
    [L0x7ffffeda20,L0x7ffffeda24,L0x7ffffeda28,L0x7ffffeda2c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffeda60,L0x7ffffeda64,L0x7ffffeda68,L0x7ffffeda6c] /\
    [L0x7ffffeda60,L0x7ffffeda64,L0x7ffffeda68,L0x7ffffeda6c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedaa0,L0x7ffffedaa4,L0x7ffffedaa8,L0x7ffffedaac] /\
    [L0x7ffffedaa0,L0x7ffffedaa4,L0x7ffffedaa8,L0x7ffffedaac] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedae0,L0x7ffffedae4,L0x7ffffedae8,L0x7ffffedaec] /\
    [L0x7ffffedae0,L0x7ffffedae4,L0x7ffffedae8,L0x7ffffedaec] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedb20,L0x7ffffedb24,L0x7ffffedb28,L0x7ffffedb2c] /\
    [L0x7ffffedb20,L0x7ffffedb24,L0x7ffffedb28,L0x7ffffedb2c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedb60,L0x7ffffedb64,L0x7ffffedb68,L0x7ffffedb6c] /\
    [L0x7ffffedb60,L0x7ffffedb64,L0x7ffffedb68,L0x7ffffedb6c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedba0,L0x7ffffedba4,L0x7ffffedba8,L0x7ffffedbac] /\
    [L0x7ffffedba0,L0x7ffffedba4,L0x7ffffedba8,L0x7ffffedbac] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedbe0,L0x7ffffedbe4,L0x7ffffedbe8,L0x7ffffedbec] /\
    [L0x7ffffedbe0,L0x7ffffedbe4,L0x7ffffedbe8,L0x7ffffedbec] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedc20,L0x7ffffedc24,L0x7ffffedc28,L0x7ffffedc2c] /\
    [L0x7ffffedc20,L0x7ffffedc24,L0x7ffffedc28,L0x7ffffedc2c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedc60,L0x7ffffedc64,L0x7ffffedc68,L0x7ffffedc6c] /\
    [L0x7ffffedc60,L0x7ffffedc64,L0x7ffffedc68,L0x7ffffedc6c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedca0,L0x7ffffedca4,L0x7ffffedca8,L0x7ffffedcac] /\
    [L0x7ffffedca0,L0x7ffffedca4,L0x7ffffedca8,L0x7ffffedcac] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2]
prove with [cuts [15]];



(* mul	v16.4s, v9.4s, v20.s[3]                     #! PC = 0x5555565240 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v16 %v9 %mm; cast [] %v16@int32[4] %v16;
(* mul	v17.4s, v11.4s, v20.s[3]                    #! PC = 0x5555565244 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v17 %v11 %mm; cast [] %v17@int32[4] %v17;
(* mul	v18.4s, v13.4s, v20.s[3]                    #! PC = 0x5555565248 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v18 %v13 %mm; cast [] %v18@int32[4] %v18;
(* mul	v19.4s, v15.4s, v20.s[3]                    #! PC = 0x555556524c *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v19 %v15 %mm; cast [] %v19@int32[4] %v19;
(* sqrdmulh	v9.4s, v9.4s, v20.s[2]                 #! PC = 0x5555565250 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v9 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v9 %dc %mm 1;
(* sqrdmulh	v11.4s, v11.4s, v20.s[2]               #! PC = 0x5555565254 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v11 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v11 %dc %mm 1;
(* sqrdmulh	v13.4s, v13.4s, v20.s[2]               #! PC = 0x5555565258 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v13 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v13 %dc %mm 1;
(* sqrdmulh	v15.4s, v15.4s, v20.s[2]               #! PC = 0x555556525c *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v15 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v15 %dc %mm 1;
(* mls	v16.4s, v9.4s, v20.s[0]                     #! PC = 0x5555565260 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v9 %mm; cast [] %mm@int32[4] %mm; subs %dc %v16 %v16 %mm;
(* mls	v17.4s, v11.4s, v20.s[0]                    #! PC = 0x5555565264 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v11 %mm; cast [] %mm@int32[4] %mm; subs %dc %v17 %v17 %mm;
(* mls	v18.4s, v13.4s, v20.s[0]                    #! PC = 0x5555565268 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v13 %mm; cast [] %mm@int32[4] %mm; subs %dc %v18 %v18 %mm;
(* mls	v19.4s, v15.4s, v20.s[0]                    #! PC = 0x555556526c *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v15 %mm; cast [] %mm@int32[4] %mm; subs %dc %v19 %v19 %mm;



(**************** mls ****************)

assert eqmod %v16 ([c98,c99,c9a,c9b]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v17 ([cb8,cb9,cba,cbb]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v18 ([cd8,cd9,cda,cdb]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v19 ([cf8,cf9,cfa,cfb]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q]
       prove with [algebra solver isl, precondition] && true;
assume eqmod %v16 ([c98,c99,c9a,c9b]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v17 ([cb8,cb9,cba,cbb]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v18 ([cd8,cd9,cda,cdb]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v19 ([cf8,cf9,cfa,cfb]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v19 /\ %v19 < [Q,Q,Q,Q]
       prove with [algebra solver isl, precondition] && true;
assume [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q];

(**************** CUT 18, 18 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod %v16 ([c98,c99,c9a,c9b]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v17 ([cb8,cb9,cba,cbb]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v18 ([cd8,cd9,cda,cdb]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v19 ([cf8,cf9,cfa,cfb]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q]
    prove with [precondition];

ghost  %v1of@int32[4], %v3of@int32[4], %v5of@int32[4], %v7of@int32[4]:
       %v1of =  %v1 /\  %v3of =  %v3 /\  %v5of =  %v5 /\  %v7of =  %v7
   &&  %v1of =  %v1 /\  %v3of =  %v3 /\  %v5of =  %v5 /\  %v7of =  %v7;

(* sub	v9.4s, v1.4s, v16.4s                        #! PC = 0x5555565270 *)
sub %v9 %v1 %v16;
(* mul	v28.4s, v8.4s, v20.s[3]                     #! PC = 0x5555565274 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v28 %v8 %mm; cast [] %v28@int32[4] %v28;
(* sub	v11.4s, v3.4s, v17.4s                       #! PC = 0x5555565278 *)
sub %v11 %v3 %v17;
(* mul	v29.4s, v10.4s, v20.s[3]                    #! PC = 0x555556527c *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v29 %v10 %mm; cast [] %v29@int32[4] %v29;
(* sub	v13.4s, v5.4s, v18.4s                       #! PC = 0x5555565280 *)
sub %v13 %v5 %v18;
(* mul	v30.4s, v12.4s, v20.s[3]                    #! PC = 0x5555565284 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v30 %v12 %mm; cast [] %v30@int32[4] %v30;
(* sub	v15.4s, v7.4s, v19.4s                       #! PC = 0x5555565288 *)
sub %v15 %v7 %v19;
(* mul	v31.4s, v14.4s, v20.s[3]                    #! PC = 0x555556528c *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v31 %v14 %mm; cast [] %v31@int32[4] %v31;
(* add	v1.4s, v1.4s, v16.4s                        #! PC = 0x5555565290 *)
add %v1 %v1 %v16;
(* sqrdmulh	v8.4s, v8.4s, v20.s[2]                 #! PC = 0x5555565294 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v8 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v8 %dc %mm 1;
(* add	v3.4s, v3.4s, v17.4s                        #! PC = 0x5555565298 *)
add %v3 %v3 %v17;
(* sqrdmulh	v10.4s, v10.4s, v20.s[2]               #! PC = 0x555556529c *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v10 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v10 %dc %mm 1;
(* add	v5.4s, v5.4s, v18.4s                        #! PC = 0x55555652a0 *)
add %v5 %v5 %v18;
(* sqrdmulh	v12.4s, v12.4s, v20.s[2]               #! PC = 0x55555652a4 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v12 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v12 %dc %mm 1;
(* add	v7.4s, v7.4s, v19.4s                        #! PC = 0x55555652a8 *)
add %v7 %v7 %v19;
(* sqrdmulh	v14.4s, v14.4s, v20.s[2]               #! PC = 0x55555652ac *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v14 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v14 %dc %mm 1;
(* mls	v28.4s, v8.4s, v20.s[0]                     #! PC = 0x55555652b0 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v8 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v10.4s, v20.s[0]                    #! PC = 0x55555652b4 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v10 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;
(* mls	v30.4s, v12.4s, v20.s[0]                    #! PC = 0x55555652b8 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v12 %mm; cast [] %mm@int32[4] %mm; subs %dc %v30 %v30 %mm;
(* mls	v31.4s, v14.4s, v20.s[0]                    #! PC = 0x55555652bc *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v14 %mm; cast [] %mm@int32[4] %mm; subs %dc %v31 %v31 %mm;




(**************** mls ****************)

assert eqmod %v28 ([c88,c89,c8a,c8b]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v29 ([ca8,ca9,caa,cab]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v30 ([cc8,cc9,cca,ccb]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v31 ([ce8,ce9,cea,ceb]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 ([c88,c89,c8a,c8b]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v29 ([ca8,ca9,caa,cab]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v30 ([cc8,cc9,cca,ccb]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v31 ([ce8,ce9,cea,ceb]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v1 /\
        %v1 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v3 /\
        %v3 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v5 /\
        %v5 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v7 /\
        %v7 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v9 /\
        %v9 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v11 /\
       %v11 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v13 /\
       %v13 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v15 /\
       %v15 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
       prove with [algebra solver isl, precondition] && true;
assume [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v1 /\
        %v1 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v3 /\
        %v3 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v5 /\
        %v5 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v7 /\
        %v7 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v9 /\
        %v9 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v11 /\
       %v11 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v13 /\
       %v13 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v15 /\
       %v15 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v1 /\
        %v1 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v3 /\
        %v3 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v5 /\
        %v5 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v7 /\
        %v7 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v9 /\
        %v9 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v11 /\
       %v11 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v13 /\
       %v13 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v15 /\
       %v15 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2];

(**************** CUT 19, 19 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v1 =  %v1of + %v16 /\  %v9 =  %v1of - %v16 /\
     %v3 =  %v3of + %v17 /\ %v11 =  %v3of - %v17 /\
     %v5 =  %v5of + %v18 /\ %v13 =  %v5of - %v18 /\
     %v7 =  %v7of + %v19 /\ %v15 =  %v7of - %v19 /\
    eqmod %v28 ([c88,c89,c8a,c8b]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v29 ([ca8,ca9,caa,cab]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v30 ([cc8,cc9,cca,ccb]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v31 ([ce8,ce9,cea,ceb]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v1 /\
     %v1 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v3 /\
     %v3 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v5 /\
     %v5 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v7 /\
     %v7 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v9 /\
     %v9 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v11 /\
    %v11 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v13 /\
    %v13 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v15 /\
    %v15 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v1 /\
     %v1 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v3 /\
     %v3 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v5 /\
     %v5 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v7 /\
     %v7 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v9 /\
     %v9 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v11 /\
    %v11 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v13 /\
    %v13 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v15 /\
    %v15 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
    prove with [precondition];

ghost  %v0o10@int32[4], %v2o10@int32[4], %v4o10@int32[4], %v6o10@int32[4],
       %v5o10@int32[4], %v7o10@int32[4],%v13o10@int32[4],%v15o10@int32[4]:
       %v0o10 =  %v0 /\  %v2o10 =  %v2 /\  %v4o10 =  %v4 /\  %v6o10 =  %v6 /\
       %v5o10 =  %v5 /\  %v7o10 =  %v7 /\ %v13o10 = %v13 /\ %v15o10 = %v15
   &&  %v0o10 =  %v0 /\  %v2o10 =  %v2 /\  %v4o10 =  %v4 /\  %v6o10 =  %v6 /\
       %v5o10 =  %v5 /\  %v7o10 =  %v7 /\ %v13o10 = %v13 /\ %v15o10 = %v15;

(* sub	v8.4s, v0.4s, v28.4s                        #! PC = 0x55555652c0 *)
sub %v8 %v0 %v28;
(* mul	v16.4s, v5.4s, v21.s[1]                     #! PC = 0x55555652c4 *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v16 %v5 %mm; cast [] %v16@int32[4] %v16;
(* sub	v10.4s, v2.4s, v29.4s                       #! PC = 0x55555652c8 *)
sub %v10 %v2 %v29;
(* mul	v17.4s, v7.4s, v21.s[1]                     #! PC = 0x55555652cc *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v17 %v7 %mm; cast [] %v17@int32[4] %v17;
(* sub	v12.4s, v4.4s, v30.4s                       #! PC = 0x55555652d0 *)
sub %v12 %v4 %v30;
(* mul	v18.4s, v13.4s, v21.s[3]                    #! PC = 0x55555652d4 *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v18 %v13 %mm; cast [] %v18@int32[4] %v18;
(* sub	v14.4s, v6.4s, v31.4s                       #! PC = 0x55555652d8 *)
sub %v14 %v6 %v31;
(* mul	v19.4s, v15.4s, v21.s[3]                    #! PC = 0x55555652dc *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v19 %v15 %mm; cast [] %v19@int32[4] %v19;
(* add	v0.4s, v0.4s, v28.4s                        #! PC = 0x55555652e0 *)
add %v0 %v0 %v28;
(* sqrdmulh	v5.4s, v5.4s, v21.s[0]                 #! PC = 0x55555652e4 *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v5 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v5 %dc %mm 1;
(* add	v2.4s, v2.4s, v29.4s                        #! PC = 0x55555652e8 *)
add %v2 %v2 %v29;
(* sqrdmulh	v7.4s, v7.4s, v21.s[0]                 #! PC = 0x55555652ec *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v7 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v7 %dc %mm 1;
(* add	v4.4s, v4.4s, v30.4s                        #! PC = 0x55555652f0 *)
add %v4 %v4 %v30;
(* sqrdmulh	v13.4s, v13.4s, v21.s[2]               #! PC = 0x55555652f4 *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v13 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v13 %dc %mm 1;
(* add	v6.4s, v6.4s, v31.4s                        #! PC = 0x55555652f8 *)
add %v6 %v6 %v31;
(* sqrdmulh	v15.4s, v15.4s, v21.s[2]               #! PC = 0x55555652fc *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v15 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v15 %dc %mm 1;
(* mls	v16.4s, v5.4s, v20.s[0]                     #! PC = 0x5555565300 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v5 %mm; cast [] %mm@int32[4] %mm; subs %dc %v16 %v16 %mm;
(* mls	v17.4s, v7.4s, v20.s[0]                     #! PC = 0x5555565304 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v7 %mm; cast [] %mm@int32[4] %mm; subs %dc %v17 %v17 %mm;
(* mls	v18.4s, v13.4s, v20.s[0]                    #! PC = 0x5555565308 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v13 %mm; cast [] %mm@int32[4] %mm; subs %dc %v18 %v18 %mm;
(* mls	v19.4s, v15.4s, v20.s[0]                    #! PC = 0x555556530c *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v15 %mm; cast [] %mm@int32[4] %mm; subs %dc %v19 %v19 %mm;



(**************** mls ****************)

assert eqmod %v16 ( %v5o10*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v7o10*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v18 (%v13o10*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] /\
       eqmod %v19 (%v15o10*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v16 ( %v5o10*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v7o10*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v18 (%v13o10*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] /\
       eqmod %v19 (%v15o10*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v0 /\
        %v0 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v2 /\
        %v2 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v4 /\
        %v4 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v6 /\
        %v6 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v8 /\
        %v8 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v10 /\
       %v10 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v12 /\
       %v12 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v14 /\
       %v14 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
       prove with [algebra solver isl, cuts [18], precondition] && true;
assume [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v0 /\
        %v0 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v2 /\
        %v2 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v4 /\
        %v4 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v6 /\
        %v6 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v8 /\
        %v8 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v10 /\
       %v10 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v12 /\
       %v12 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v14 /\
       %v14 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v0 /\
        %v0 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v2 /\
        %v2 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v4 /\
        %v4 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v6 /\
        %v6 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v8 /\
        %v8 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v10 /\
       %v10 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v12 /\
       %v12 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v14 /\
       %v14 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2];
     
(**************** CUT 20, 20 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o10 + %v28 /\  %v8 =  %v0o10 - %v28 /\
     %v2 =  %v2o10 + %v29 /\ %v10 =  %v2o10 - %v29 /\
     %v4 =  %v4o10 + %v30 /\ %v12 =  %v4o10 - %v30 /\
     %v6 =  %v6o10 + %v31 /\ %v14 =  %v6o10 - %v31 /\
    eqmod %v16 ( %v5o10*[3765607,3765607,3765607,3765607])
          [Q, Q, Q, Q] /\
    eqmod %v17 ( %v7o10*[3765607,3765607,3765607,3765607])
          [Q, Q, Q, Q] /\
    eqmod %v18 (%v13o10*[3761513,3761513,3761513,3761513])
          [Q, Q, Q, Q] /\
    eqmod %v19 (%v15o10*[3761513,3761513,3761513,3761513])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v0 /\
     %v0 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v2 /\
     %v2 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v4 /\
     %v4 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v6 /\
     %v6 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v8 /\
     %v8 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v10 /\
    %v10 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v12 /\
    %v12 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v14 /\
    %v14 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v0 /\
     %v0 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v2 /\
     %v2 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v4 /\
     %v4 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v6 /\
     %v6 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v8 /\
     %v8 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v10 /\
    %v10 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v12 /\
    %v12 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v14 /\
    %v14 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
    prove with [precondition, cuts [18]];

ghost  %v1o11@int32[4], %v3o11@int32[4], %v9o11@int32[4],%v11o11@int32[4],
       %v4o11@int32[4], %v6o11@int32[4],%v12o11@int32[4],%v14o11@int32[4]:
       %v1o11 =  %v1 /\  %v3o11 =  %v3 /\  %v9o11 =  %v9 /\ %v11o11 = %v11 /\
       %v4o11 =  %v4 /\  %v6o11 =  %v6 /\ %v12o11 = %v12 /\ %v14o11 = %v14
   &&  %v1o11 =  %v1 /\  %v3o11 =  %v3 /\  %v9o11 =  %v9 /\ %v11o11 = %v11 /\
       %v4o11 =  %v4 /\  %v6o11 =  %v6 /\ %v12o11 = %v12 /\ %v14o11 = %v14;

(* sub	v5.4s, v1.4s, v16.4s                        #! PC = 0x5555565310 *)
sub %v5 %v1 %v16;
(* mul	v28.4s, v4.4s, v21.s[1]                     #! PC = 0x5555565314 *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v28 %v4 %mm; cast [] %v28@int32[4] %v28;
(* sub	v7.4s, v3.4s, v17.4s                        #! PC = 0x5555565318 *)
sub %v7 %v3 %v17;
(* mul	v29.4s, v6.4s, v21.s[1]                     #! PC = 0x555556531c *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v29 %v6 %mm; cast [] %v29@int32[4] %v29;
(* sub	v13.4s, v9.4s, v18.4s                       #! PC = 0x5555565320 *)
sub %v13 %v9 %v18;
(* mul	v30.4s, v12.4s, v21.s[3]                    #! PC = 0x5555565324 *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v30 %v12 %mm; cast [] %v30@int32[4] %v30;
(* sub	v15.4s, v11.4s, v19.4s                      #! PC = 0x5555565328 *)
sub %v15 %v11 %v19;
(* mul	v31.4s, v14.4s, v21.s[3]                    #! PC = 0x555556532c *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v31 %v14 %mm; cast [] %v31@int32[4] %v31;
(* add	v1.4s, v1.4s, v16.4s                        #! PC = 0x5555565330 *)
add %v1 %v1 %v16;
(* sqrdmulh	v4.4s, v4.4s, v21.s[0]                 #! PC = 0x5555565334 *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v4 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v4 %dc %mm 1;
(* add	v3.4s, v3.4s, v17.4s                        #! PC = 0x5555565338 *)
add %v3 %v3 %v17;
(* sqrdmulh	v6.4s, v6.4s, v21.s[0]                 #! PC = 0x555556533c *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v6 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v6 %dc %mm 1;
(* add	v9.4s, v9.4s, v18.4s                        #! PC = 0x5555565340 *)
add %v9 %v9 %v18;
(* sqrdmulh	v12.4s, v12.4s, v21.s[2]               #! PC = 0x5555565344 *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v12 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v12 %dc %mm 1;
(* add	v11.4s, v11.4s, v19.4s                      #! PC = 0x5555565348 *)
add %v11 %v11 %v19;
(* sqrdmulh	v14.4s, v14.4s, v21.s[2]               #! PC = 0x555556534c *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v14 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v14 %dc %mm 1;
(* mls	v28.4s, v4.4s, v20.s[0]                     #! PC = 0x5555565350 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v4 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v6.4s, v20.s[0]                     #! PC = 0x5555565354 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v6 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;
(* mls	v30.4s, v12.4s, v20.s[0]                    #! PC = 0x5555565358 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v12 %mm; cast [] %mm@int32[4] %mm; subs %dc %v30 %v30 %mm;
(* mls	v31.4s, v14.4s, v20.s[0]                    #! PC = 0x555556535c *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v14 %mm; cast [] %mm@int32[4] %mm; subs %dc %v31 %v31 %mm;



(**************** mls ****************)

assert eqmod %v28 ( %v4o11*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v29 ( %v6o11*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v30 ( %v12o11*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] /\
       eqmod %v31 ( %v14o11*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 ( %v4o11*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v29 ( %v6o11*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v30 ( %v12o11*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] /\
       eqmod %v31 ( %v14o11*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v1 /\
        %v1 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v3 /\
        %v3 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v5 /\
        %v5 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v7 /\
        %v7 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v9 /\
        %v9 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v11 /\
       %v11 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v13 /\
       %v13 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v15 /\
       %v15 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
       prove with [algebra solver isl, cuts [19]] && true;
assume [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v1 /\
        %v1 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v3 /\
        %v3 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v5 /\
        %v5 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v7 /\
        %v7 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v9 /\
        %v9 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v11 /\
       %v11 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v13 /\
       %v13 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v15 /\
       %v15 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v1 /\
        %v1 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v3 /\
        %v3 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v5 /\
        %v5 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v7 /\
        %v7 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v9 /\
        %v9 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v11 /\
       %v11 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v13 /\
       %v13 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v15 /\
       %v15 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2];



(**************** CUT 21, 21 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v1 =  %v1o11 + %v16 /\  %v5 =  %v1o11 - %v16 /\
     %v3 =  %v3o11 + %v17 /\  %v7 =  %v3o11 - %v17 /\
     %v9 =  %v9o11 + %v18 /\ %v13 =  %v9o11 - %v18 /\
    %v11 = %v11o11 + %v19 /\ %v15 = %v11o11 - %v19 /\
    eqmod %v28 ( %v4o11*[3765607,3765607,3765607,3765607])
          [Q, Q, Q, Q] /\
    eqmod %v29 ( %v6o11*[3765607,3765607,3765607,3765607])
          [Q, Q, Q, Q] /\
    eqmod %v30 (%v12o11*[3761513,3761513,3761513,3761513])
          [Q, Q, Q, Q] /\
    eqmod %v31 (%v14o11*[3761513,3761513,3761513,3761513])
          [Q, Q, Q, Q]  /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v1 /\
     %v1 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v3 /\
     %v3 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v5 /\
     %v5 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v7 /\
     %v7 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v9 /\
     %v9 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v11 /\
    %v11 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v13 /\
    %v13 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v15 /\
    %v15 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v1 /\
     %v1 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v3 /\
     %v3 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v5 /\
     %v5 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v7 /\
     %v7 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v9 /\
     %v9 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v11 /\
    %v11 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v13 /\
    %v13 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v15 /\
    %v15 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2]
    prove with [cuts [19]];

ghost  %v0o12@int32[4], %v2o12@int32[4], %v8o12@int32[4],%v10o12@int32[4],
       %v3o12@int32[4], %v7o12@int32[4],%v11o12@int32[4],%v15o12@int32[4]:
       %v0o12 =  %v0 /\  %v2o12 =  %v2 /\  %v8o12 =  %v8 /\ %v10o12 = %v10 /\
       %v3o12 =  %v3 /\  %v7o12 =  %v7 /\ %v11o12 = %v11 /\ %v15o12 = %v15
   &&  %v0o12 =  %v0 /\  %v2o12 =  %v2 /\  %v8o12 =  %v8 /\ %v10o12 = %v10 /\
       %v3o12 =  %v3 /\  %v7o12 =  %v7 /\ %v11o12 = %v11 /\ %v15o12 = %v15;

(* sub	v4.4s, v0.4s, v28.4s                        #! PC = 0x5555565360 *)
sub %v4 %v0 %v28;
(* mul	v16.4s, v3.4s, v22.s[1]                     #! PC = 0x5555565364 *)
mov [_, m, _, _] %v22; mov %mm [m, m, m, m];
mull %dc %v16 %v3 %mm; cast [] %v16@int32[4] %v16;
(* sub	v6.4s, v2.4s, v29.4s                        #! PC = 0x5555565368 *)
sub %v6 %v2 %v29;
(* mul	v17.4s, v7.4s, v22.s[3]                     #! PC = 0x555556536c *)
mov [_, _, _, m] %v22; mov %mm [m, m, m, m];
mull %dc %v17 %v7 %mm; cast [] %v17@int32[4] %v17;
(* sub	v12.4s, v8.4s, v30.4s                       #! PC = 0x5555565370 *)
sub %v12 %v8 %v30;
(* mul	v18.4s, v11.4s, v23.s[1]                    #! PC = 0x5555565374 *)
mov [_, m, _, _] %v23; mov %mm [m, m, m, m];
mull %dc %v18 %v11 %mm; cast [] %v18@int32[4] %v18;
(* sub	v14.4s, v10.4s, v31.4s                      #! PC = 0x5555565378 *)
sub %v14 %v10 %v31;
(* mul	v19.4s, v15.4s, v23.s[3]                    #! PC = 0x555556537c *)
mov [_, _, _, m] %v23; mov %mm [m, m, m, m];
mull %dc %v19 %v15 %mm; cast [] %v19@int32[4] %v19;
(* add	v0.4s, v0.4s, v28.4s                        #! PC = 0x5555565380 *)
add %v0 %v0 %v28;
(* sqrdmulh	v3.4s, v3.4s, v22.s[0]                 #! PC = 0x5555565384 *)
mov [m, _, _, _] %v22; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* add	v2.4s, v2.4s, v29.4s                        #! PC = 0x5555565388 *)
add %v2 %v2 %v29;
(* sqrdmulh	v7.4s, v7.4s, v22.s[2]                 #! PC = 0x555556538c *)
mov [_, _, m, _] %v22; mov %mm [m, m, m, m];
mulj %mm %v7 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v7 %dc %mm 1;
(* add	v8.4s, v8.4s, v30.4s                        #! PC = 0x5555565390 *)
add %v8 %v8 %v30;
(* sqrdmulh	v11.4s, v11.4s, v23.s[0]               #! PC = 0x5555565394 *)
mov [m, _, _, _] %v23; mov %mm [m, m, m, m];
mulj %mm %v11 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v11 %dc %mm 1;
(* add	v10.4s, v10.4s, v31.4s                      #! PC = 0x5555565398 *)
add %v10 %v10 %v31;
(* sqrdmulh	v15.4s, v15.4s, v23.s[2]               #! PC = 0x555556539c *)
mov [_, _, m, _] %v23; mov %mm [m, m, m, m];
mulj %mm %v15 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v15 %dc %mm 1;
(* mls	v16.4s, v3.4s, v20.s[0]                     #! PC = 0x55555653a0 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v16 %v16 %mm;
(* mls	v17.4s, v7.4s, v20.s[0]                     #! PC = 0x55555653a4 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v7 %mm; cast [] %mm@int32[4] %mm; subs %dc %v17 %v17 %mm;
(* mls	v18.4s, v11.4s, v20.s[0]                    #! PC = 0x55555653a8 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v11 %mm; cast [] %mm@int32[4] %mm; subs %dc %v18 %v18 %mm;
(* mls	v19.4s, v15.4s, v20.s[0]                    #! PC = 0x55555653ac *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v15 %mm; cast [] %mm@int32[4] %mm; subs %dc %v19 %v19 %mm;





(**************** mls ****************)

assert eqmod %v16 ( %v3o12*[-3201494,-3201494,-3201494,-3201494])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v7o12*[-2883726,-2883726,-2883726,-2883726])
             [Q, Q, Q, Q] /\
       eqmod %v18 (%v11o12*[-3145678,-3145678,-3145678,-3145678])
             [Q, Q, Q, Q] /\
       eqmod %v19 (%v15o12*[-3201430,-3201430,-3201430,-3201430])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v16 ( %v3o12*[-3201494,-3201494,-3201494,-3201494])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v7o12*[-2883726,-2883726,-2883726,-2883726])
             [Q, Q, Q, Q] /\
       eqmod %v18 (%v11o12*[-3145678,-3145678,-3145678,-3145678])
             [Q, Q, Q, Q] /\
       eqmod %v19 (%v15o12*[-3201430,-3201430,-3201430,-3201430])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v0 /\
        %v0 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v2 /\
        %v2 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v4 /\
        %v4 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v6 /\
        %v6 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v8 /\
        %v8 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v10 /\
       %v10 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v12 /\
       %v12 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v14 /\
       %v14 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
       prove with [algebra solver isl, cuts [20]] && true;
assume [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v0 /\
        %v0 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v2 /\
        %v2 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v4 /\
        %v4 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v6 /\
        %v6 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v8 /\
        %v8 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v10 /\
       %v10 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v12 /\
       %v12 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v14 /\
       %v14 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v0 /\
        %v0 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v2 /\
        %v2 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v4 /\
        %v4 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v6 /\
        %v6 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v8 /\
        %v8 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v10 /\
       %v10 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v12 /\
       %v12 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v14 /\
       %v14 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2];


(**************** CUT 22, 22 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o12 + %v28 /\  %v4 =  %v0o12 - %v28 /\
     %v2 =  %v2o12 + %v29 /\  %v6 =  %v2o12 - %v29 /\
     %v8 =  %v8o12 + %v30 /\ %v12 =  %v8o12 - %v30 /\
    %v10 = %v10o12 + %v31 /\ %v14 = %v10o12 - %v31 /\
    eqmod %v16 ( %v3o12*[-3201494,-3201494,-3201494,-3201494])
          [Q, Q, Q, Q] /\
    eqmod %v17 ( %v7o12*[-2883726,-2883726,-2883726,-2883726])
          [Q, Q, Q, Q] /\
    eqmod %v18 (%v11o12*[-3145678,-3145678,-3145678,-3145678])
          [Q, Q, Q, Q] /\
    eqmod %v19 (%v15o12*[-3201430,-3201430,-3201430,-3201430])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v0 /\
     %v0 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v2 /\
     %v2 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v4 /\
     %v4 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v6 /\
     %v6 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v8 /\
     %v8 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v10 /\
    %v10 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v12 /\
    %v12 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v14 /\
    %v14 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v0 /\
     %v0 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v2 /\
     %v2 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v4 /\
     %v4 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v6 /\
     %v6 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v8 /\
     %v8 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v10 /\
    %v10 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v12 /\
    %v12 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v14 /\
    %v14 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2]
    prove with [cuts [20]];

ghost  %v1o13@int32[4], %v5o13@int32[4], %v9o13@int32[4],%v13o13@int32[4],
       %v2o13@int32[4], %v6o13@int32[4],%v10o13@int32[4],%v14o13@int32[4]:
       %v1o13 =  %v1 /\  %v5o13 =  %v5 /\  %v9o13 =  %v9 /\ %v13o13 = %v13 /\
       %v2o13 =  %v2 /\  %v6o13 =  %v6 /\ %v10o13 = %v10 /\ %v14o13 = %v14
   &&  %v1o13 =  %v1 /\  %v5o13 =  %v5 /\  %v9o13 =  %v9 /\ %v13o13 = %v13 /\
       %v2o13 =  %v2 /\  %v6o13 =  %v6 /\ %v10o13 = %v10 /\ %v14o13 = %v14;

(* sub	v3.4s, v1.4s, v16.4s                        #! PC = 0x55555653b0 *)
sub %v3 %v1 %v16;
(* mul	v28.4s, v2.4s, v22.s[1]                     #! PC = 0x55555653b4 *)
mov [_, m, _, _] %v22; mov %mm [m, m, m, m];
mull %dc %v28 %v2 %mm; cast [] %v28@int32[4] %v28;
(* sub	v7.4s, v5.4s, v17.4s                        #! PC = 0x55555653b8 *)
sub %v7 %v5 %v17;
(* mul	v29.4s, v6.4s, v22.s[3]                     #! PC = 0x55555653bc *)
mov [_, _, _, m] %v22; mov %mm [m, m, m, m];
mull %dc %v29 %v6 %mm; cast [] %v29@int32[4] %v29;
(* sub	v11.4s, v9.4s, v18.4s                       #! PC = 0x55555653c0 *)
sub %v11 %v9 %v18;
(* mul	v30.4s, v10.4s, v23.s[1]                    #! PC = 0x55555653c4 *)
mov [_, m, _, _] %v23; mov %mm [m, m, m, m];
mull %dc %v30 %v10 %mm; cast [] %v30@int32[4] %v30;
(* sub	v15.4s, v13.4s, v19.4s                      #! PC = 0x55555653c8 *)
sub %v15 %v13 %v19;
(* mul	v31.4s, v14.4s, v23.s[3]                    #! PC = 0x55555653cc *)
mov [_, _, _, m] %v23; mov %mm [m, m, m, m];
mull %dc %v31 %v14 %mm; cast [] %v31@int32[4] %v31;
(* add	v1.4s, v1.4s, v16.4s                        #! PC = 0x55555653d0 *)
add %v1 %v1 %v16;
(* sqrdmulh	v2.4s, v2.4s, v22.s[0]                 #! PC = 0x55555653d4 *)
mov [m, _, _, _] %v22; mov %mm [m, m, m, m];
mulj %mm %v2 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v2 %dc %mm 1;
(* add	v5.4s, v5.4s, v17.4s                        #! PC = 0x55555653d8 *)
add %v5 %v5 %v17;
(* sqrdmulh	v6.4s, v6.4s, v22.s[2]                 #! PC = 0x55555653dc *)
mov [_, _, m, _] %v22; mov %mm [m, m, m, m];
mulj %mm %v6 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v6 %dc %mm 1;
(* add	v9.4s, v9.4s, v18.4s                        #! PC = 0x55555653e0 *)
add %v9 %v9 %v18;
(* sqrdmulh	v10.4s, v10.4s, v23.s[0]               #! PC = 0x55555653e4 *)
mov [m, _, _, _] %v23; mov %mm [m, m, m, m];
mulj %mm %v10 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v10 %dc %mm 1;
(* add	v13.4s, v13.4s, v19.4s                      #! PC = 0x55555653e8 *)
add %v13 %v13 %v19;
(* sqrdmulh	v14.4s, v14.4s, v23.s[2]               #! PC = 0x55555653ec *)
mov [_, _, m, _] %v23; mov %mm [m, m, m, m];
mulj %mm %v14 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v14 %dc %mm 1;
(* mls	v28.4s, v2.4s, v20.s[0]                     #! PC = 0x55555653f0 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v2 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v6.4s, v20.s[0]                     #! PC = 0x55555653f4 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v6 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;
(* mls	v30.4s, v10.4s, v20.s[0]                    #! PC = 0x55555653f8 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v10 %mm; cast [] %mm@int32[4] %mm; subs %dc %v30 %v30 %mm;
(* mls	v31.4s, v14.4s, v20.s[0]                    #! PC = 0x55555653fc *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v14 %mm; cast [] %mm@int32[4] %mm; subs %dc %v31 %v31 %mm;




(**************** mls ****************)

assert eqmod %v28 ( %v2o13*[-3201494,-3201494,-3201494,-3201494])
             [Q, Q, Q, Q] /\
       eqmod %v29 ( %v6o13*[-2883726,-2883726,-2883726,-2883726])
             [Q, Q, Q, Q] /\
       eqmod %v30 (%v10o13*[-3145678,-3145678,-3145678,-3145678])
             [Q, Q, Q, Q] /\
       eqmod %v31 (%v14o13*[-3201430,-3201430,-3201430,-3201430])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 ( %v2o13*[-3201494,-3201494,-3201494,-3201494])
             [Q, Q, Q, Q] /\
       eqmod %v29 ( %v6o13*[-2883726,-2883726,-2883726,-2883726])
             [Q, Q, Q, Q] /\
       eqmod %v30 (%v10o13*[-3145678,-3145678,-3145678,-3145678])
             [Q, Q, Q, Q] /\
       eqmod %v31 (%v14o13*[-3201430,-3201430,-3201430,-3201430])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v1 /\
        %v1 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v3 /\
        %v3 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v5 /\
        %v5 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v7 /\
        %v7 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v9 /\
        %v9 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v11 /\
       %v11 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v13 /\
       %v13 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v15 /\
       %v15 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
       prove with [algebra solver isl, cuts [21]] && true;
assume [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v1 /\
        %v1 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v3 /\
        %v3 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v5 /\
        %v5 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v7 /\
        %v7 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v9 /\
        %v9 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v11 /\
       %v11 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v13 /\
       %v13 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v15 /\
       %v15 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v1 /\
        %v1 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v3 /\
        %v3 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v5 /\
        %v5 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v7 /\
        %v7 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v9 /\
        %v9 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v11 /\
       %v11 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v13 /\
       %v13 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v15 /\
       %v15 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2];


(**************** CUT 23, 23 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v1 =  %v1o13 + %v16 /\  %v3 =  %v1o13 - %v16 /\
     %v5 =  %v5o13 + %v17 /\  %v7 =  %v5o13 - %v17 /\
     %v9 =  %v9o13 + %v18 /\ %v11 =  %v9o13 - %v18 /\
    %v13 = %v13o13 + %v19 /\ %v15 = %v13o13 - %v19 /\
    eqmod %v28 ( %v2o13*[-3201494,-3201494,-3201494,-3201494])
          [Q, Q, Q, Q] /\
    eqmod %v29 ( %v6o13*[-2883726,-2883726,-2883726,-2883726])
          [Q, Q, Q, Q] /\
    eqmod %v30 (%v10o13*[-3145678,-3145678,-3145678,-3145678])
          [Q, Q, Q, Q] /\
    eqmod %v31 (%v14o13*[-3201430,-3201430,-3201430,-3201430])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v1 /\
     %v1 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v3 /\
     %v3 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v5 /\
     %v5 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v7 /\
     %v7 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v9 /\
     %v9 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v11 /\
    %v11 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v13 /\
    %v13 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v15 /\
    %v15 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v1 /\
     %v1 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v3 /\
     %v3 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v5 /\
     %v5 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v7 /\
     %v7 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v9 /\
     %v9 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v11 /\
    %v11 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v13 /\
    %v13 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v15 /\
    %v15 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2]
    prove with [cuts [21]];

ghost  %v0o14@int32[4], %v4o14@int32[4], %v8o14@int32[4],%v12o14@int32[4],
       %v1o14@int32[4], %v3o14@int32[4], %v5o14@int32[4], %v7o14@int32[4]:
       %v0o14 =  %v0 /\  %v4o14 =  %v4 /\  %v8o14 =  %v8 /\ %v12o14 = %v12 /\
       %v1o14 =  %v1 /\  %v3o14 =  %v3 /\  %v5o14 =  %v5 /\  %v7o14 =  %v7
   &&  %v0o14 =  %v0 /\  %v4o14 =  %v4 /\  %v8o14 =  %v8 /\ %v12o14 = %v12 /\
       %v1o14 =  %v1 /\  %v3o14 =  %v3 /\  %v5o14 =  %v5 /\  %v7o14 =  %v7;

(* sub	v2.4s, v0.4s, v28.4s                        #! PC = 0x5555565400 *)
sub %v2 %v0 %v28;
(* mul	v16.4s, v1.4s, v24.s[1]                     #! PC = 0x5555565404 *)
mov [_, m, _, _] %v24; mov %mm [m, m, m, m];
mull %dc %v16 %v1 %mm; cast [] %v16@int32[4] %v16;
(* sub	v6.4s, v4.4s, v29.4s                        #! PC = 0x5555565408 *)
sub %v6 %v4 %v29;
(* mul	v17.4s, v3.4s, v24.s[3]                     #! PC = 0x555556540c *)
mov [_, _, _, m] %v24; mov %mm [m, m, m, m];
mull %dc %v17 %v3 %mm; cast [] %v17@int32[4] %v17;
(* sub	v10.4s, v8.4s, v30.4s                       #! PC = 0x5555565410 *)
sub %v10 %v8 %v30;
(* mul	v18.4s, v5.4s, v25.s[1]                     #! PC = 0x5555565414 *)
mov [_, m, _, _] %v25; mov %mm [m, m, m, m];
mull %dc %v18 %v5 %mm; cast [] %v18@int32[4] %v18;
(* sub	v14.4s, v12.4s, v31.4s                      #! PC = 0x5555565418 *)
sub %v14 %v12 %v31;
(* mul	v19.4s, v7.4s, v25.s[3]                     #! PC = 0x555556541c *)
mov [_, _, _, m] %v25; mov %mm [m, m, m, m];
mull %dc %v19 %v7 %mm; cast [] %v19@int32[4] %v19;
(* add	v0.4s, v0.4s, v28.4s                        #! PC = 0x5555565420 *)
add %v0 %v0 %v28;
(* sqrdmulh	v1.4s, v1.4s, v24.s[0]                 #! PC = 0x5555565424 *)
mov [m, _, _, _] %v24; mov %mm [m, m, m, m];
mulj %mm %v1 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v1 %dc %mm 1;
(* add	v4.4s, v4.4s, v29.4s                        #! PC = 0x5555565428 *)
add %v4 %v4 %v29;
(* sqrdmulh	v3.4s, v3.4s, v24.s[2]                 #! PC = 0x555556542c *)
mov [_, _, m, _] %v24; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* add	v8.4s, v8.4s, v30.4s                        #! PC = 0x5555565430 *)
add %v8 %v8 %v30;
(* sqrdmulh	v5.4s, v5.4s, v25.s[0]                 #! PC = 0x5555565434 *)
mov [m, _, _, _] %v25; mov %mm [m, m, m, m];
mulj %mm %v5 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v5 %dc %mm 1;
(* add	v12.4s, v12.4s, v31.4s                      #! PC = 0x5555565438 *)
add %v12 %v12 %v31;
(* sqrdmulh	v7.4s, v7.4s, v25.s[2]                 #! PC = 0x555556543c *)
mov [_, _, m, _] %v25; mov %mm [m, m, m, m];
mulj %mm %v7 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v7 %dc %mm 1;
(* mls	v16.4s, v1.4s, v20.s[0]                     #! PC = 0x5555565440 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v1 %mm; cast [] %mm@int32[4] %mm; subs %dc %v16 %v16 %mm;
(* mls	v17.4s, v3.4s, v20.s[0]                     #! PC = 0x5555565444 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v17 %v17 %mm;
(* mls	v18.4s, v5.4s, v20.s[0]                     #! PC = 0x5555565448 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v5 %mm; cast [] %mm@int32[4] %mm; subs %dc %v18 %v18 %mm;
(* mls	v19.4s, v7.4s, v20.s[0]                     #! PC = 0x555556544c *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v7 %mm; cast [] %mm@int32[4] %mm; subs %dc %v19 %v19 %mm;




(**************** mls ****************)

assert eqmod %v16 ( %v1o14*[-601683,-601683,-601683,-601683])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v3o14*[3542485,3542485,3542485,3542485])
             [Q, Q, Q, Q] /\
       eqmod %v18 ( %v5o14*[2682288,2682288,2682288,2682288])
             [Q, Q, Q, Q] /\
       eqmod %v19 ( %v7o14*[2129892,2129892,2129892,2129892])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v16 ( %v1o14*[-601683,-601683,-601683,-601683])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v3o14*[3542485,3542485,3542485,3542485])
             [Q, Q, Q, Q] /\
       eqmod %v18 ( %v5o14*[2682288,2682288,2682288,2682288])
             [Q, Q, Q, Q] /\
       eqmod %v19 ( %v7o14*[2129892,2129892,2129892,2129892])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v0 /\
        %v0 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v2 /\
        %v2 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v4 /\
        %v4 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v6 /\
        %v6 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v8 /\
        %v8 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v10 /\
       %v10 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v12 /\
       %v12 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v14 /\
       %v14 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
       prove with [algebra solver isl, cuts [22]] && true;
assume [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v0 /\
        %v0 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v2 /\
        %v2 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v4 /\
        %v4 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v6 /\
        %v6 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v8 /\
        %v8 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v10 /\
       %v10 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v12 /\
       %v12 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v14 /\
       %v14 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v0 /\
        %v0 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v2 /\
        %v2 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v4 /\
        %v4 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v6 /\
        %v6 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v8 /\
        %v8 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v10 /\
       %v10 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v12 /\
       %v12 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v14 /\
       %v14 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2];


(**************** CUT 24, 24 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o14 + %v28 /\  %v2 =  %v0o14 - %v28 /\
     %v4 =  %v4o14 + %v29 /\  %v6 =  %v4o14 - %v29 /\
     %v8 =  %v8o14 + %v30 /\ %v10 =  %v8o14 - %v30 /\
    %v12 = %v12o14 + %v31 /\ %v14 = %v12o14 - %v31 /\
    eqmod %v16 ( %v1o14*[-601683,-601683,-601683,-601683])
          [Q, Q, Q, Q] /\
    eqmod %v17 ( %v3o14*[3542485,3542485,3542485,3542485])
          [Q, Q, Q, Q] /\
    eqmod %v18 ( %v5o14*[2682288,2682288,2682288,2682288])
          [Q, Q, Q, Q] /\
    eqmod %v19 ( %v7o14*[2129892,2129892,2129892,2129892])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v0 /\
     %v0 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v2 /\
     %v2 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v4 /\
     %v4 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v6 /\
     %v6 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v8 /\
     %v8 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v10 /\
    %v10 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v12 /\
    %v12 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v14 /\
    %v14 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v0 /\
     %v0 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v2 /\
     %v2 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v4 /\
     %v4 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v6 /\
     %v6 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v8 /\
     %v8 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v10 /\
    %v10 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v12 /\
    %v12 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v14 /\
    %v14 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2]
    prove with [cuts [22]];

ghost  %v0o15@int32[4], %v2o15@int32[4], %v4o15@int32[4], %v6o15@int32[4],
       %v9o15@int32[4],%v11o15@int32[4],%v13o15@int32[4],%v15o15@int32[4]:
       %v0o15 =  %v0 /\  %v2o15 =  %v2 /\  %v4o15 =  %v4 /\  %v6o15 =  %v6 /\
       %v9o15 =  %v9 /\ %v11o15 = %v11 /\ %v13o15 = %v13 /\ %v15o15 = %v15
   &&  %v0o15 =  %v0 /\  %v2o15 =  %v2 /\  %v4o15 =  %v4 /\  %v6o15 =  %v6 /\
       %v9o15 =  %v9 /\ %v11o15 = %v11 /\ %v13o15 = %v13 /\ %v15o15 = %v15;

(* sub	v1.4s, v0.4s, v16.4s                        #! PC = 0x5555565450 *)
sub %v1 %v0 %v16;
(* mul	v28.4s, v9.4s, v26.s[1]                     #! PC = 0x5555565454 *)
mov [_, m, _, _] %v26; mov %mm [m, m, m, m];
mull %dc %v28 %v9 %mm; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v2.4s, v17.4s                        #! PC = 0x5555565458 *)
sub %v3 %v2 %v17;
(* mul	v29.4s, v11.4s, v26.s[3]                    #! PC = 0x555556545c *)
mov [_, _, _, m] %v26; mov %mm [m, m, m, m];
mull %dc %v29 %v11 %mm; cast [] %v29@int32[4] %v29;
(* sub	v5.4s, v4.4s, v18.4s                        #! PC = 0x5555565460 *)
sub %v5 %v4 %v18;
(* mul	v30.4s, v13.4s, v27.s[1]                    #! PC = 0x5555565464 *)
mov [_, m, _, _] %v27; mov %mm [m, m, m, m];
mull %dc %v30 %v13 %mm; cast [] %v30@int32[4] %v30;
(* sub	v7.4s, v6.4s, v19.4s                        #! PC = 0x5555565468 *)
sub %v7 %v6 %v19;
(* mul	v31.4s, v15.4s, v27.s[3]                    #! PC = 0x555556546c *)
mov [_, _, _, m] %v27; mov %mm [m, m, m, m];
mull %dc %v31 %v15 %mm; cast [] %v31@int32[4] %v31;
(* add	v0.4s, v0.4s, v16.4s                        #! PC = 0x5555565470 *)
add %v0 %v0 %v16;
(* sqrdmulh	v9.4s, v9.4s, v26.s[0]                 #! PC = 0x5555565474 *)
mov [m, _, _, _] %v26; mov %mm [m, m, m, m];
mulj %mm %v9 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v9 %dc %mm 1;
(* add	v2.4s, v2.4s, v17.4s                        #! PC = 0x5555565478 *)
add %v2 %v2 %v17;
(* sqrdmulh	v11.4s, v11.4s, v26.s[2]               #! PC = 0x555556547c *)
mov [_, _, m, _] %v26; mov %mm [m, m, m, m];
mulj %mm %v11 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v11 %dc %mm 1;
(* add	v4.4s, v4.4s, v18.4s                        #! PC = 0x5555565480 *)
add %v4 %v4 %v18;
(* sqrdmulh	v13.4s, v13.4s, v27.s[0]               #! PC = 0x5555565484 *)
mov [m, _, _, _] %v27; mov %mm [m, m, m, m];
mulj %mm %v13 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v13 %dc %mm 1;
(* add	v6.4s, v6.4s, v19.4s                        #! PC = 0x5555565488 *)
add %v6 %v6 %v19;
(* sqrdmulh	v15.4s, v15.4s, v27.s[2]               #! PC = 0x555556548c *)
mov [_, _, m, _] %v27; mov %mm [m, m, m, m];
mulj %mm %v15 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v15 %dc %mm 1;
(* mls	v28.4s, v9.4s, v20.s[0]                     #! PC = 0x5555565490 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v9 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v11.4s, v20.s[0]                    #! PC = 0x5555565494 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v11 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;
(* mls	v30.4s, v13.4s, v20.s[0]                    #! PC = 0x5555565498 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v13 %mm; cast [] %mm@int32[4] %mm; subs %dc %v30 %v30 %mm;
(* mls	v31.4s, v15.4s, v20.s[0]                    #! PC = 0x555556549c *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v15 %mm; cast [] %mm@int32[4] %mm; subs %dc %v31 %v31 %mm;




(**************** mls ****************)

assert eqmod %v28 ( %v9o15*[3764867,3764867,3764867,3764867])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v11o15*[-1005239,-1005239,-1005239,-1005239])
             [Q, Q, Q, Q] /\
       eqmod %v30 (%v13o15*[557458,557458,557458,557458])
             [Q, Q, Q, Q] /\
       eqmod %v31 (%v15o15*[-1221177,-1221177,-1221177,-1221177])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 ( %v9o15*[3764867,3764867,3764867,3764867])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v11o15*[-1005239,-1005239,-1005239,-1005239])
             [Q, Q, Q, Q] /\
       eqmod %v30 (%v13o15*[557458,557458,557458,557458])
             [Q, Q, Q, Q] /\
       eqmod %v31 (%v15o15*[-1221177,-1221177,-1221177,-1221177])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v0 /\
        %v0 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v1 /\
        %v1 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v2 /\
        %v2 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v3 /\
        %v3 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v4 /\
        %v4 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v5 /\
        %v5 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v6 /\
        %v6 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v7 /\
        %v7 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2]
       prove with [algebra solver isl, cuts [23]] && true;
assume [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v0 /\
        %v0 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v1 /\
        %v1 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v2 /\
        %v2 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v3 /\
        %v3 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v4 /\
        %v4 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v5 /\
        %v5 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v6 /\
        %v6 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v7 /\
        %v7 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v0 /\
        %v0 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v1 /\
        %v1 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v2 /\
        %v2 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v3 /\
        %v3 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v4 /\
        %v4 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v5 /\
        %v5 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v6 /\
        %v6 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v7 /\
        %v7 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2];


(**************** CUT 25, 25 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o15 + %v16 /\  %v1 =  %v0o15 - %v16 /\
     %v2 =  %v2o15 + %v17 /\  %v3 =  %v2o15 - %v17 /\
     %v4 =  %v4o15 + %v18 /\  %v5 =  %v4o15 - %v18 /\
     %v6 =  %v6o15 + %v19 /\  %v7 =  %v6o15 - %v19 /\
    eqmod %v28 ( %v9o15*[3764867,3764867,3764867,3764867])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v11o15*[-1005239,-1005239,-1005239,-1005239])
          [Q, Q, Q, Q] /\
    eqmod %v30 (%v13o15*[557458,557458,557458,557458])
          [Q, Q, Q, Q] /\
    eqmod %v31 (%v15o15*[-1221177,-1221177,-1221177,-1221177])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v0 /\
     %v0 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v1 /\
     %v1 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v2 /\
     %v2 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v3 /\
     %v3 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v4 /\
     %v4 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v5 /\
     %v5 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v6 /\
     %v6 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v7 /\
     %v7 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v0 /\
     %v0 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v1 /\
     %v1 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v2 /\
     %v2 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v3 /\
     %v3 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v4 /\
     %v4 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v5 /\
     %v5 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v6 /\
     %v6 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v7 /\
     %v7 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2]
    prove with [cuts [23]];




(* sub	v9.4s, v8.4s, v28.4s                        #! PC = 0x55555654a0 *)
sub %v9 %v8 %v28;
(* sub	v11.4s, v10.4s, v29.4s                      #! PC = 0x55555654a4 *)
sub %v11 %v10 %v29;
(* sub	v13.4s, v12.4s, v30.4s                      #! PC = 0x55555654a8 *)
sub %v13 %v12 %v30;
(* sub	v15.4s, v14.4s, v31.4s                      #! PC = 0x55555654ac *)
sub %v15 %v14 %v31;
(* add	v8.4s, v8.4s, v28.4s                        #! PC = 0x55555654b0 *)
add %v8 %v8 %v28;
(* add	v10.4s, v10.4s, v29.4s                      #! PC = 0x55555654b4 *)
add %v10 %v10 %v29;
(* add	v12.4s, v12.4s, v30.4s                      #! PC = 0x55555654b8 *)
add %v12 %v12 %v30;
(* add	v14.4s, v14.4s, v31.4s                      #! PC = 0x55555654bc *)
add %v14 %v14 %v31;
(* sub	x19, x19, #0x1                              #! PC = 0x55555654c0 *)
subs dc x19 x19 (0x1)@uint64;
(* #cbnz	x19, 0x55555651c0 <_ntt_top_loop>         #! PC = 0x55555654c4 *)
#cbnz	x19, 0x55555651c0 <_ntt_top_loop>         #! 0x55555654c4 = 0x55555654c4;
(* st1	{v1.4s}, [x1], #16                          #! EA = L0x7ffffed930; PC = 0x55555651c0 *)
mov [L0x7ffffed930, L0x7ffffed934, L0x7ffffed938, L0x7ffffed93c] %v1;
(* ld1	{v1.4s}, [x1]                               #! EA = L0x7ffffed940; Value = 0x0000000400000002; PC = 0x55555651c4 *)
mov %v1 [L0x7ffffed940, L0x7ffffed944, L0x7ffffed948, L0x7ffffed94c];
(* st1	{v3.4s}, [x3], #16                          #! EA = L0x7ffffed9b0; PC = 0x55555651c8 *)
mov [L0x7ffffed9b0, L0x7ffffed9b4, L0x7ffffed9b8, L0x7ffffed9bc] %v3;
(* ld1	{v3.4s}, [x3]                               #! EA = L0x7ffffed9c0; Value = 0xfffffffc00000001; PC = 0x55555651cc *)
mov %v3 [L0x7ffffed9c0, L0x7ffffed9c4, L0x7ffffed9c8, L0x7ffffed9cc];
(* st1	{v5.4s}, [x5], #16                          #! EA = L0x7ffffeda30; PC = 0x55555651d0 *)
mov [L0x7ffffeda30, L0x7ffffeda34, L0x7ffffeda38, L0x7ffffeda3c] %v5;
(* ld1	{v5.4s}, [x5]                               #! EA = L0x7ffffeda40; Value = 0xfffffffe00000000; PC = 0x55555651d4 *)
mov %v5 [L0x7ffffeda40, L0x7ffffeda44, L0x7ffffeda48, L0x7ffffeda4c];
(* st1	{v7.4s}, [x7], #16                          #! EA = L0x7ffffedab0; PC = 0x55555651d8 *)
mov [L0x7ffffedab0, L0x7ffffedab4, L0x7ffffedab8, L0x7ffffedabc] %v7;
(* ld1	{v7.4s}, [x7]                               #! EA = L0x7ffffedac0; Value = 0x0000000400000003; PC = 0x55555651dc *)
mov %v7 [L0x7ffffedac0, L0x7ffffedac4, L0x7ffffedac8, L0x7ffffedacc];
(* st1	{v9.4s}, [x9], #16                          #! EA = L0x7ffffedb30; PC = 0x55555651e0 *)
mov [L0x7ffffedb30, L0x7ffffedb34, L0x7ffffedb38, L0x7ffffedb3c] %v9;
(* ld1	{v9.4s}, [x9]                               #! EA = L0x7ffffedb40; Value = 0x0000000200000002; PC = 0x55555651e4 *)
mov %v9 [L0x7ffffedb40, L0x7ffffedb44, L0x7ffffedb48, L0x7ffffedb4c];
(* st1	{v11.4s}, [x11], #16                        #! EA = L0x7ffffedbb0; PC = 0x55555651e8 *)
mov [L0x7ffffedbb0, L0x7ffffedbb4, L0x7ffffedbb8, L0x7ffffedbbc] %v11;
(* ld1	{v11.4s}, [x11]                             #! EA = L0x7ffffedbc0; Value = 0x00000004fffffffc; PC = 0x55555651ec *)
mov %v11 [L0x7ffffedbc0, L0x7ffffedbc4, L0x7ffffedbc8, L0x7ffffedbcc];
(* st1	{v13.4s}, [x13], #16                        #! EA = L0x7ffffedc30; PC = 0x55555651f0 *)
mov [L0x7ffffedc30, L0x7ffffedc34, L0x7ffffedc38, L0x7ffffedc3c] %v13;
(* ld1	{v13.4s}, [x13]                             #! EA = L0x7ffffedc40; Value = 0x00000004ffffffff; PC = 0x55555651f4 *)
mov %v13 [L0x7ffffedc40, L0x7ffffedc44, L0x7ffffedc48, L0x7ffffedc4c];
(* st1	{v15.4s}, [x15], #16                        #! EA = L0x7ffffedcb0; PC = 0x55555651f8 *)
mov [L0x7ffffedcb0, L0x7ffffedcb4, L0x7ffffedcb8, L0x7ffffedcbc] %v15;
(* ld1	{v15.4s}, [x15]                             #! EA = L0x7ffffedcc0; Value = 0x0000000400000003; PC = 0x55555651fc *)
mov %v15 [L0x7ffffedcc0, L0x7ffffedcc4, L0x7ffffedcc8, L0x7ffffedccc];
(* st1	{v0.4s}, [x0], #16                          #! EA = L0x7ffffed8f0; PC = 0x5555565200 *)
mov [L0x7ffffed8f0, L0x7ffffed8f4, L0x7ffffed8f8, L0x7ffffed8fc] %v0;
(* ld1	{v0.4s}, [x0]                               #! EA = L0x7ffffed900; Value = 0xfffffffc00000003; PC = 0x5555565204 *)
mov %v0 [L0x7ffffed900, L0x7ffffed904, L0x7ffffed908, L0x7ffffed90c];
(* st1	{v2.4s}, [x2], #16                          #! EA = L0x7ffffed970; PC = 0x5555565208 *)
mov [L0x7ffffed970, L0x7ffffed974, L0x7ffffed978, L0x7ffffed97c] %v2;
(* ld1	{v2.4s}, [x2]                               #! EA = L0x7ffffed980; Value = 0xffffffff00000003; PC = 0x555556520c *)
mov %v2 [L0x7ffffed980, L0x7ffffed984, L0x7ffffed988, L0x7ffffed98c];
(* st1	{v4.4s}, [x4], #16                          #! EA = L0x7ffffed9f0; PC = 0x5555565210 *)
mov [L0x7ffffed9f0, L0x7ffffed9f4, L0x7ffffed9f8, L0x7ffffed9fc] %v4;
(* ld1	{v4.4s}, [x4]                               #! EA = L0x7ffffeda00; Value = 0xfffffffd00000003; PC = 0x5555565214 *)
mov %v4 [L0x7ffffeda00, L0x7ffffeda04, L0x7ffffeda08, L0x7ffffeda0c];
(* st1	{v6.4s}, [x6], #16                          #! EA = L0x7ffffeda70; PC = 0x5555565218 *)
mov [L0x7ffffeda70, L0x7ffffeda74, L0x7ffffeda78, L0x7ffffeda7c] %v6;
(* ld1	{v6.4s}, [x6]                               #! EA = L0x7ffffeda80; Value = 0xffffffff00000000; PC = 0x555556521c *)
mov %v6 [L0x7ffffeda80, L0x7ffffeda84, L0x7ffffeda88, L0x7ffffeda8c];
(* st1	{v8.4s}, [x8], #16                          #! EA = L0x7ffffedaf0; PC = 0x5555565220 *)
mov [L0x7ffffedaf0, L0x7ffffedaf4, L0x7ffffedaf8, L0x7ffffedafc] %v8;
(* ld1	{v8.4s}, [x8]                               #! EA = L0x7ffffedb00; Value = 0x0000000200000004; PC = 0x5555565224 *)
mov %v8 [L0x7ffffedb00, L0x7ffffedb04, L0x7ffffedb08, L0x7ffffedb0c];
(* st1	{v10.4s}, [x10], #16                        #! EA = L0x7ffffedb70; PC = 0x5555565228 *)
mov [L0x7ffffedb70, L0x7ffffedb74, L0x7ffffedb78, L0x7ffffedb7c] %v10;
(* ld1	{v10.4s}, [x10]                             #! EA = L0x7ffffedb80; Value = 0xfffffffffffffffd; PC = 0x555556522c *)
mov %v10 [L0x7ffffedb80, L0x7ffffedb84, L0x7ffffedb88, L0x7ffffedb8c];
(* st1	{v12.4s}, [x12], #16                        #! EA = L0x7ffffedbf0; PC = 0x5555565230 *)
mov [L0x7ffffedbf0, L0x7ffffedbf4, L0x7ffffedbf8, L0x7ffffedbfc] %v12;
(* ld1	{v12.4s}, [x12]                             #! EA = L0x7ffffedc00; Value = 0xfffffffefffffffd; PC = 0x5555565234 *)
mov %v12 [L0x7ffffedc00, L0x7ffffedc04, L0x7ffffedc08, L0x7ffffedc0c];
(* st1	{v14.4s}, [x14], #16                        #! EA = L0x7ffffedc70; PC = 0x5555565238 *)
mov [L0x7ffffedc70, L0x7ffffedc74, L0x7ffffedc78, L0x7ffffedc7c] %v14;
(* ld1	{v14.4s}, [x14]                             #! EA = L0x7ffffedc80; Value = 0xffffffff00000003; PC = 0x555556523c *)
mov %v14 [L0x7ffffedc80, L0x7ffffedc84, L0x7ffffedc88, L0x7ffffedc8c];



(**************** CUT 26, 26 ****************)

(**************** level 3/2 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod (F2**2) (L0x7ffffed8f0*X**8+L0x7ffffed8f4*X**9+L0x7ffffed8f8*X**10+
          L0x7ffffed8fc*X**11) [ Q, X**16 - 7778734 ] /\
    eqmod (F2**2) (L0x7ffffed930*X**8+L0x7ffffed934*X**9+L0x7ffffed938*X**10+
          L0x7ffffed93c*X**11) [ Q, X**16 -  601683 ] /\
    eqmod (F2**2) (L0x7ffffed970*X**8+L0x7ffffed974*X**9+L0x7ffffed978*X**10+
          L0x7ffffed97c*X**11) [ Q, X**16 - 3542485 ] /\
    eqmod (F2**2) (L0x7ffffed9b0*X**8+L0x7ffffed9b4*X**9+L0x7ffffed9b8*X**10+
          L0x7ffffed9bc*X**11) [ Q, X**16 - 4837932 ] /\
    eqmod (F2**2) (L0x7ffffed9f0*X**8+L0x7ffffed9f4*X**9+L0x7ffffed9f8*X**10+
          L0x7ffffed9fc*X**11) [ Q, X**16 - 2682288 ] /\
    eqmod (F2**2) (L0x7ffffeda30*X**8+L0x7ffffeda34*X**9+L0x7ffffeda38*X**10+
          L0x7ffffeda3c*X**11) [ Q, X**16 - 5698129 ] /\
    eqmod (F2**2) (L0x7ffffeda70*X**8+L0x7ffffeda74*X**9+L0x7ffffeda78*X**10+
          L0x7ffffeda7c*X**11) [ Q, X**16 - 2129892 ] /\
    eqmod (F2**2) (L0x7ffffedab0*X**8+L0x7ffffedab4*X**9+L0x7ffffedab8*X**10+
          L0x7ffffedabc*X**11) [ Q, X**16 - 6250525 ] /\
    eqmod (F2**2) (L0x7ffffedaf0*X**8+L0x7ffffedaf4*X**9+L0x7ffffedaf8*X**10+
          L0x7ffffedafc*X**11) [ Q, X**16 - 3764867 ] /\
    eqmod (F2**2) (L0x7ffffedb30*X**8+L0x7ffffedb34*X**9+L0x7ffffedb38*X**10+
          L0x7ffffedb3c*X**11) [ Q, X**16 - 4615550 ] /\
    eqmod (F2**2) (L0x7ffffedb70*X**8+L0x7ffffedb74*X**9+L0x7ffffedb78*X**10+
          L0x7ffffedb7c*X**11) [ Q, X**16 - 7375178 ] /\
    eqmod (F2**2) (L0x7ffffedbb0*X**8+L0x7ffffedbb4*X**9+L0x7ffffedbb8*X**10+
          L0x7ffffedbbc*X**11) [ Q, X**16 - 1005239 ] /\
    eqmod (F2**2) (L0x7ffffedbf0*X**8+L0x7ffffedbf4*X**9+L0x7ffffedbf8*X**10+
          L0x7ffffedbfc*X**11) [ Q, X**16 -  557458 ] /\
    eqmod (F2**2) (L0x7ffffedc30*X**8+L0x7ffffedc34*X**9+L0x7ffffedc38*X**10+
          L0x7ffffedc3c*X**11) [ Q, X**16 - 7822959 ] /\
    eqmod (F2**2) (L0x7ffffedc70*X**8+L0x7ffffedc74*X**9+L0x7ffffedc78*X**10+
          L0x7ffffedc7c*X**11) [ Q, X**16 - 7159240 ] /\
    eqmod (F2**2) (L0x7ffffedcb0*X**8+L0x7ffffedcb4*X**9+L0x7ffffedcb8*X**10+
          L0x7ffffedcbc*X**11) [ Q, X**16 - 1221177 ]
    prove with [all ghosts, cuts [18,19,20,21,22,23,24]],
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed8f0,L0x7ffffed8f4,L0x7ffffed8f8,L0x7ffffed8fc] /\
    [L0x7ffffed8f0,L0x7ffffed8f4,L0x7ffffed8f8,L0x7ffffed8fc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed930,L0x7ffffed934,L0x7ffffed938,L0x7ffffed93c] /\
    [L0x7ffffed930,L0x7ffffed934,L0x7ffffed938,L0x7ffffed93c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed970,L0x7ffffed974,L0x7ffffed978,L0x7ffffed97c] /\
    [L0x7ffffed970,L0x7ffffed974,L0x7ffffed978,L0x7ffffed97c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed9b0,L0x7ffffed9b4,L0x7ffffed9b8,L0x7ffffed9bc] /\
    [L0x7ffffed9b0,L0x7ffffed9b4,L0x7ffffed9b8,L0x7ffffed9bc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed9f0,L0x7ffffed9f4,L0x7ffffed9f8,L0x7ffffed9fc] /\
    [L0x7ffffed9f0,L0x7ffffed9f4,L0x7ffffed9f8,L0x7ffffed9fc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffeda30,L0x7ffffeda34,L0x7ffffeda38,L0x7ffffeda3c] /\
    [L0x7ffffeda30,L0x7ffffeda34,L0x7ffffeda38,L0x7ffffeda3c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffeda70,L0x7ffffeda74,L0x7ffffeda78,L0x7ffffeda7c] /\
    [L0x7ffffeda70,L0x7ffffeda74,L0x7ffffeda78,L0x7ffffeda7c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedab0,L0x7ffffedab4,L0x7ffffedab8,L0x7ffffedabc] /\
    [L0x7ffffedab0,L0x7ffffedab4,L0x7ffffedab8,L0x7ffffedabc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedaf0,L0x7ffffedaf4,L0x7ffffedaf8,L0x7ffffedafc] /\
    [L0x7ffffedaf0,L0x7ffffedaf4,L0x7ffffedaf8,L0x7ffffedafc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedb30,L0x7ffffedb34,L0x7ffffedb38,L0x7ffffedb3c] /\
    [L0x7ffffedb30,L0x7ffffedb34,L0x7ffffedb38,L0x7ffffedb3c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedb70,L0x7ffffedb74,L0x7ffffedb78,L0x7ffffedb7c] /\
    [L0x7ffffedb70,L0x7ffffedb74,L0x7ffffedb78,L0x7ffffedb7c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedbb0,L0x7ffffedbb4,L0x7ffffedbb8,L0x7ffffedbbc] /\
    [L0x7ffffedbb0,L0x7ffffedbb4,L0x7ffffedbb8,L0x7ffffedbbc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedbf0,L0x7ffffedbf4,L0x7ffffedbf8,L0x7ffffedbfc] /\
    [L0x7ffffedbf0,L0x7ffffedbf4,L0x7ffffedbf8,L0x7ffffedbfc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedc30,L0x7ffffedc34,L0x7ffffedc38,L0x7ffffedc3c] /\
    [L0x7ffffedc30,L0x7ffffedc34,L0x7ffffedc38,L0x7ffffedc3c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedc70,L0x7ffffedc74,L0x7ffffedc78,L0x7ffffedc7c] /\
    [L0x7ffffedc70,L0x7ffffedc74,L0x7ffffedc78,L0x7ffffedc7c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedcb0,L0x7ffffedcb4,L0x7ffffedcb8,L0x7ffffedcbc] /\
    [L0x7ffffedcb0,L0x7ffffedcb4,L0x7ffffedcb8,L0x7ffffedcbc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2]
    prove with [algebra solver isl, cuts [24]] &&
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed8f0,L0x7ffffed8f4,L0x7ffffed8f8,L0x7ffffed8fc] /\
    [L0x7ffffed8f0,L0x7ffffed8f4,L0x7ffffed8f8,L0x7ffffed8fc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed930,L0x7ffffed934,L0x7ffffed938,L0x7ffffed93c] /\
    [L0x7ffffed930,L0x7ffffed934,L0x7ffffed938,L0x7ffffed93c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed970,L0x7ffffed974,L0x7ffffed978,L0x7ffffed97c] /\
    [L0x7ffffed970,L0x7ffffed974,L0x7ffffed978,L0x7ffffed97c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed9b0,L0x7ffffed9b4,L0x7ffffed9b8,L0x7ffffed9bc] /\
    [L0x7ffffed9b0,L0x7ffffed9b4,L0x7ffffed9b8,L0x7ffffed9bc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed9f0,L0x7ffffed9f4,L0x7ffffed9f8,L0x7ffffed9fc] /\
    [L0x7ffffed9f0,L0x7ffffed9f4,L0x7ffffed9f8,L0x7ffffed9fc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffeda30,L0x7ffffeda34,L0x7ffffeda38,L0x7ffffeda3c] /\
    [L0x7ffffeda30,L0x7ffffeda34,L0x7ffffeda38,L0x7ffffeda3c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffeda70,L0x7ffffeda74,L0x7ffffeda78,L0x7ffffeda7c] /\
    [L0x7ffffeda70,L0x7ffffeda74,L0x7ffffeda78,L0x7ffffeda7c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedab0,L0x7ffffedab4,L0x7ffffedab8,L0x7ffffedabc] /\
    [L0x7ffffedab0,L0x7ffffedab4,L0x7ffffedab8,L0x7ffffedabc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedaf0,L0x7ffffedaf4,L0x7ffffedaf8,L0x7ffffedafc] /\
    [L0x7ffffedaf0,L0x7ffffedaf4,L0x7ffffedaf8,L0x7ffffedafc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedb30,L0x7ffffedb34,L0x7ffffedb38,L0x7ffffedb3c] /\
    [L0x7ffffedb30,L0x7ffffedb34,L0x7ffffedb38,L0x7ffffedb3c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedb70,L0x7ffffedb74,L0x7ffffedb78,L0x7ffffedb7c] /\
    [L0x7ffffedb70,L0x7ffffedb74,L0x7ffffedb78,L0x7ffffedb7c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedbb0,L0x7ffffedbb4,L0x7ffffedbb8,L0x7ffffedbbc] /\
    [L0x7ffffedbb0,L0x7ffffedbb4,L0x7ffffedbb8,L0x7ffffedbbc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedbf0,L0x7ffffedbf4,L0x7ffffedbf8,L0x7ffffedbfc] /\
    [L0x7ffffedbf0,L0x7ffffedbf4,L0x7ffffedbf8,L0x7ffffedbfc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedc30,L0x7ffffedc34,L0x7ffffedc38,L0x7ffffedc3c] /\
    [L0x7ffffedc30,L0x7ffffedc34,L0x7ffffedc38,L0x7ffffedc3c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedc70,L0x7ffffedc74,L0x7ffffedc78,L0x7ffffedc7c] /\
    [L0x7ffffedc70,L0x7ffffedc74,L0x7ffffedc78,L0x7ffffedc7c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedcb0,L0x7ffffedcb4,L0x7ffffedcb8,L0x7ffffedcbc] /\
    [L0x7ffffedcb0,L0x7ffffedcb4,L0x7ffffedcb8,L0x7ffffedcbc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2]
    prove with [cuts [24]];



(* mul	v16.4s, v9.4s, v20.s[3]                     #! PC = 0x5555565240 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v16 %v9 %mm; cast [] %v16@int32[4] %v16;
(* mul	v17.4s, v11.4s, v20.s[3]                    #! PC = 0x5555565244 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v17 %v11 %mm; cast [] %v17@int32[4] %v17;
(* mul	v18.4s, v13.4s, v20.s[3]                    #! PC = 0x5555565248 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v18 %v13 %mm; cast [] %v18@int32[4] %v18;
(* mul	v19.4s, v15.4s, v20.s[3]                    #! PC = 0x555556524c *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v19 %v15 %mm; cast [] %v19@int32[4] %v19;
(* sqrdmulh	v9.4s, v9.4s, v20.s[2]                 #! PC = 0x5555565250 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v9 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v9 %dc %mm 1;
(* sqrdmulh	v11.4s, v11.4s, v20.s[2]               #! PC = 0x5555565254 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v11 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v11 %dc %mm 1;
(* sqrdmulh	v13.4s, v13.4s, v20.s[2]               #! PC = 0x5555565258 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v13 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v13 %dc %mm 1;
(* sqrdmulh	v15.4s, v15.4s, v20.s[2]               #! PC = 0x555556525c *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v15 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v15 %dc %mm 1;
(* mls	v16.4s, v9.4s, v20.s[0]                     #! PC = 0x5555565260 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v9 %mm; cast [] %mm@int32[4] %mm; subs %dc %v16 %v16 %mm;
(* mls	v17.4s, v11.4s, v20.s[0]                    #! PC = 0x5555565264 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v11 %mm; cast [] %mm@int32[4] %mm; subs %dc %v17 %v17 %mm;
(* mls	v18.4s, v13.4s, v20.s[0]                    #! PC = 0x5555565268 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v13 %mm; cast [] %mm@int32[4] %mm; subs %dc %v18 %v18 %mm;
(* mls	v19.4s, v15.4s, v20.s[0]                    #! PC = 0x555556526c *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v15 %mm; cast [] %mm@int32[4] %mm; subs %dc %v19 %v19 %mm;



(**************** mls ****************)

assert eqmod %v16 ([c9c,c9d,c9e,c9f]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v17 ([cbc,cbd,cbe,cbf]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v18 ([cdc,cdd,cde,cdf]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v19 ([cfc,cfd,cfe,cff]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v16 ([c9c,c9d,c9e,c9f]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v17 ([cbc,cbd,cbe,cbf]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v18 ([cdc,cdd,cde,cdf]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v19 ([cfc,cfd,cfe,cff]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q]
       prove with [algebra solver isl, precondition] && true;
assume [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q];

(**************** CUT 27, 27 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod %v16 ([c9c,c9d,c9e,c9f]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v17 ([cbc,cbd,cbe,cbf]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v18 ([cdc,cdd,cde,cdf]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v19 ([cfc,cfd,cfe,cff]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q]
    prove with [precondition];

ghost  %v1o15@int32[4], %v3o15@int32[4], %v5o15@int32[4], %v7o15@int32[4]:
       %v1o15 =  %v1 /\  %v3o15 =  %v3 /\  %v5o15 =  %v5 /\  %v7o15 =  %v7
   &&  %v1o15 =  %v1 /\  %v3o15 =  %v3 /\  %v5o15 =  %v5 /\  %v7o15 =  %v7;

(* sub	v9.4s, v1.4s, v16.4s                        #! PC = 0x5555565270 *)
sub %v9 %v1 %v16;
(* mul	v28.4s, v8.4s, v20.s[3]                     #! PC = 0x5555565274 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v28 %v8 %mm; cast [] %v28@int32[4] %v28;
(* sub	v11.4s, v3.4s, v17.4s                       #! PC = 0x5555565278 *)
sub %v11 %v3 %v17;
(* mul	v29.4s, v10.4s, v20.s[3]                    #! PC = 0x555556527c *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v29 %v10 %mm; cast [] %v29@int32[4] %v29;
(* sub	v13.4s, v5.4s, v18.4s                       #! PC = 0x5555565280 *)
sub %v13 %v5 %v18;
(* mul	v30.4s, v12.4s, v20.s[3]                    #! PC = 0x5555565284 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v30 %v12 %mm; cast [] %v30@int32[4] %v30;
(* sub	v15.4s, v7.4s, v19.4s                       #! PC = 0x5555565288 *)
sub %v15 %v7 %v19;
(* mul	v31.4s, v14.4s, v20.s[3]                    #! PC = 0x555556528c *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v31 %v14 %mm; cast [] %v31@int32[4] %v31;
(* add	v1.4s, v1.4s, v16.4s                        #! PC = 0x5555565290 *)
add %v1 %v1 %v16;
(* sqrdmulh	v8.4s, v8.4s, v20.s[2]                 #! PC = 0x5555565294 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v8 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v8 %dc %mm 1;
(* add	v3.4s, v3.4s, v17.4s                        #! PC = 0x5555565298 *)
add %v3 %v3 %v17;
(* sqrdmulh	v10.4s, v10.4s, v20.s[2]               #! PC = 0x555556529c *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v10 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v10 %dc %mm 1;
(* add	v5.4s, v5.4s, v18.4s                        #! PC = 0x55555652a0 *)
add %v5 %v5 %v18;
(* sqrdmulh	v12.4s, v12.4s, v20.s[2]               #! PC = 0x55555652a4 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v12 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v12 %dc %mm 1;
(* add	v7.4s, v7.4s, v19.4s                        #! PC = 0x55555652a8 *)
add %v7 %v7 %v19;
(* sqrdmulh	v14.4s, v14.4s, v20.s[2]               #! PC = 0x55555652ac *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v14 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v14 %dc %mm 1;
(* mls	v28.4s, v8.4s, v20.s[0]                     #! PC = 0x55555652b0 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v8 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v10.4s, v20.s[0]                    #! PC = 0x55555652b4 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v10 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;
(* mls	v30.4s, v12.4s, v20.s[0]                    #! PC = 0x55555652b8 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v12 %mm; cast [] %mm@int32[4] %mm; subs %dc %v30 %v30 %mm;
(* mls	v31.4s, v14.4s, v20.s[0]                    #! PC = 0x55555652bc *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v14 %mm; cast [] %mm@int32[4] %mm; subs %dc %v31 %v31 %mm;




(**************** mls ****************)
assert eqmod %v28 ([c8c,c8d,c8e,c8f]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v29 ([cac,cad,cae,caf]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v30 ([ccc,ccd,cce,ccf]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v31 ([cec,ced,cee,cef]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 ([c8c,c8d,c8e,c8f]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v29 ([cac,cad,cae,caf]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v30 ([ccc,ccd,cce,ccf]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] /\
       eqmod %v31 ([cec,ced,cee,cef]*[-3572223,-3572223,-3572223,-3572223])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v1 /\
        %v1 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v3 /\
        %v3 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v5 /\
        %v5 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v7 /\
        %v7 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v9 /\
        %v9 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v11 /\
       %v11 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v13 /\
       %v13 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v15 /\
       %v15 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
       prove with [algebra solver isl, precondition] && true;

assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v1 /\
        %v1 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v3 /\
        %v3 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v5 /\
        %v5 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v7 /\
        %v7 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v9 /\
        %v9 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v11 /\
       %v11 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v13 /\
       %v13 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v15 /\
       %v15 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v1 /\
        %v1 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v3 /\
        %v3 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v5 /\
        %v5 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v7 /\
        %v7 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v9 /\
        %v9 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v11 /\
       %v11 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v13 /\
       %v13 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v15 /\
       %v15 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2];

(**************** CUT 28, 28 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v1 =  %v1o15 + %v16 /\  %v9 =  %v1o15 - %v16 /\
     %v3 =  %v3o15 + %v17 /\ %v11 =  %v3o15 - %v17 /\
     %v5 =  %v5o15 + %v18 /\ %v13 =  %v5o15 - %v18 /\
     %v7 =  %v7o15 + %v19 /\ %v15 =  %v7o15 - %v19 /\
    eqmod %v28 ([c8c,c8d,c8e,c8f]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v29 ([cac,cad,cae,caf]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v30 ([ccc,ccd,cce,ccf]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    eqmod %v31 ([cec,ced,cee,cef]*[-3572223,-3572223,-3572223,-3572223])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v1 /\
     %v1 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v3 /\
     %v3 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v5 /\
     %v5 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v7 /\
     %v7 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v9 /\
     %v9 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v11 /\
    %v11 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v13 /\
    %v13 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v15 /\
    %v15 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v1 /\
     %v1 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v3 /\
     %v3 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v5 /\
     %v5 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v7 /\
     %v7 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v9 /\
     %v9 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v11 /\
    %v11 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v13 /\
    %v13 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
    [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v15 /\
    %v15 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
    prove with [precondition];

ghost  %v0o16@int32[4], %v2o16@int32[4], %v4o16@int32[4], %v6o16@int32[4],
       %v5o16@int32[4], %v7o16@int32[4],%v13o16@int32[4],%v15o16@int32[4]:
       %v0o16 =  %v0 /\  %v2o16 =  %v2 /\  %v4o16 =  %v4 /\  %v6o16 =  %v6 /\
       %v5o16 =  %v5 /\  %v7o16 =  %v7 /\ %v13o16 = %v13 /\ %v15o16 = %v15
   &&  %v0o16 =  %v0 /\  %v2o16 =  %v2 /\  %v4o16 =  %v4 /\  %v6o16 =  %v6 /\
       %v5o16 =  %v5 /\  %v7o16 =  %v7 /\ %v13o16 = %v13 /\ %v15o16 = %v15;

(* sub	v8.4s, v0.4s, v28.4s                        #! PC = 0x55555652c0 *)
sub %v8 %v0 %v28;
(* mul	v16.4s, v5.4s, v21.s[1]                     #! PC = 0x55555652c4 *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v16 %v5 %mm; cast [] %v16@int32[4] %v16;
(* sub	v10.4s, v2.4s, v29.4s                       #! PC = 0x55555652c8 *)
sub %v10 %v2 %v29;
(* mul	v17.4s, v7.4s, v21.s[1]                     #! PC = 0x55555652cc *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v17 %v7 %mm; cast [] %v17@int32[4] %v17;
(* sub	v12.4s, v4.4s, v30.4s                       #! PC = 0x55555652d0 *)
sub %v12 %v4 %v30;
(* mul	v18.4s, v13.4s, v21.s[3]                    #! PC = 0x55555652d4 *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v18 %v13 %mm; cast [] %v18@int32[4] %v18;
(* sub	v14.4s, v6.4s, v31.4s                       #! PC = 0x55555652d8 *)
sub %v14 %v6 %v31;
(* mul	v19.4s, v15.4s, v21.s[3]                    #! PC = 0x55555652dc *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v19 %v15 %mm; cast [] %v19@int32[4] %v19;
(* add	v0.4s, v0.4s, v28.4s                        #! PC = 0x55555652e0 *)
add %v0 %v0 %v28;
(* sqrdmulh	v5.4s, v5.4s, v21.s[0]                 #! PC = 0x55555652e4 *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v5 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v5 %dc %mm 1;
(* add	v2.4s, v2.4s, v29.4s                        #! PC = 0x55555652e8 *)
add %v2 %v2 %v29;
(* sqrdmulh	v7.4s, v7.4s, v21.s[0]                 #! PC = 0x55555652ec *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v7 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v7 %dc %mm 1;
(* add	v4.4s, v4.4s, v30.4s                        #! PC = 0x55555652f0 *)
add %v4 %v4 %v30;
(* sqrdmulh	v13.4s, v13.4s, v21.s[2]               #! PC = 0x55555652f4 *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v13 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v13 %dc %mm 1;
(* add	v6.4s, v6.4s, v31.4s                        #! PC = 0x55555652f8 *)
add %v6 %v6 %v31;
(* sqrdmulh	v15.4s, v15.4s, v21.s[2]               #! PC = 0x55555652fc *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v15 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v15 %dc %mm 1;
(* mls	v16.4s, v5.4s, v20.s[0]                     #! PC = 0x5555565300 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v5 %mm; cast [] %mm@int32[4] %mm; subs %dc %v16 %v16 %mm;
(* mls	v17.4s, v7.4s, v20.s[0]                     #! PC = 0x5555565304 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v7 %mm; cast [] %mm@int32[4] %mm; subs %dc %v17 %v17 %mm;
(* mls	v18.4s, v13.4s, v20.s[0]                    #! PC = 0x5555565308 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v13 %mm; cast [] %mm@int32[4] %mm; subs %dc %v18 %v18 %mm;
(* mls	v19.4s, v15.4s, v20.s[0]                    #! PC = 0x555556530c *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v15 %mm; cast [] %mm@int32[4] %mm; subs %dc %v19 %v19 %mm;




(**************** mls ****************)

assert eqmod %v16 ( %v5o16*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v7o16*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v18 (%v13o16*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] /\
       eqmod %v19 (%v15o16*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v16 ( %v5o16*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v7o16*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v18 (%v13o16*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] /\
       eqmod %v19 (%v15o16*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v0 /\
        %v0 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v2 /\
        %v2 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v4 /\
        %v4 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v6 /\
        %v6 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v8 /\
        %v8 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v10 /\
       %v10 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v12 /\
       %v12 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v14 /\
       %v14 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
       prove with [algebra solver isl, precondition, cuts [27]] && true;

assume [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v0 /\
        %v0 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v2 /\
        %v2 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v4 /\
        %v4 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v6 /\
        %v6 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v8 /\
        %v8 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v10 /\
       %v10 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v12 /\
       %v12 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v14 /\
       %v14 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v0 /\
        %v0 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v2 /\
        %v2 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v4 /\
        %v4 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v6 /\
        %v6 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v8 /\
        %v8 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v10 /\
       %v10 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v12 /\
       %v12 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
       [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v14 /\
       %v14 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2];
  
(**************** CUT 29, 29 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o16 + %v28 /\  %v8 =  %v0o16 - %v28 /\
     %v2 =  %v2o16 + %v29 /\ %v10 =  %v2o16 - %v29 /\
     %v4 =  %v4o16 + %v30 /\ %v12 =  %v4o16 - %v30 /\
     %v6 =  %v6o16 + %v31 /\ %v14 =  %v6o16 - %v31 /\
    eqmod %v16 ( %v5o16*[3765607,3765607,3765607,3765607])
          [Q, Q, Q, Q] /\
    eqmod %v17 ( %v7o16*[3765607,3765607,3765607,3765607])
          [Q, Q, Q, Q] /\
    eqmod %v18 (%v13o16*[3761513,3761513,3761513,3761513])
          [Q, Q, Q, Q] /\
    eqmod %v19 (%v15o16*[3761513,3761513,3761513,3761513])
          [Q, Q, Q, Q] /\
   [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
   [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v0 /\
    %v0 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
   [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v2 /\
    %v2 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
   [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v4 /\
    %v4 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
   [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v6 /\
    %v6 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
   [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <  %v8 /\
   %v8 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
   [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v10 /\
   %v10 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
   [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v12 /\
   %v12 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
   [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] < %v14 /\
   %v14 < [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
   Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
   [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
   [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
   [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v0 /\
    %v0 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
   [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v2 /\
    %v2 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
   [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v4 /\
    %v4 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
   [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v6 /\
    %v6 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
   [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s  %v8 /\
    %v8 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
   [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v10 /\
   %v10 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
   [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v12 /\
   %v12 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2] /\
   [NQ+NQ2,NQ+NQ2,NQ+NQ2,NQ+NQ2] <s %v14 /\
   %v14 <s [Q+Q2,Q+Q2,Q+Q2,Q+Q2]
   prove with [precondition];

ghost  %v1o17@int32[4], %v3o17@int32[4], %v9o17@int32[4],%v11o17@int32[4],
       %v4o17@int32[4], %v6o17@int32[4],%v12o17@int32[4],%v14o17@int32[4]:
       %v1o17 =  %v1 /\  %v3o17 =  %v3 /\  %v9o17 =  %v9 /\ %v11o17 = %v11 /\
       %v4o17 =  %v4 /\  %v6o17 =  %v6 /\ %v12o17 = %v12 /\ %v14o17 = %v14
   &&  %v1o17 =  %v1 /\  %v3o17 =  %v3 /\  %v9o17 =  %v9 /\ %v11o17 = %v11 /\
       %v4o17 =  %v4 /\  %v6o17 =  %v6 /\ %v12o17 = %v12 /\ %v14o17 = %v14;

(* sub	v5.4s, v1.4s, v16.4s                        #! PC = 0x5555565310 *)
sub %v5 %v1 %v16;
(* mul	v28.4s, v4.4s, v21.s[1]                     #! PC = 0x5555565314 *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v28 %v4 %mm; cast [] %v28@int32[4] %v28;
(* sub	v7.4s, v3.4s, v17.4s                        #! PC = 0x5555565318 *)
sub %v7 %v3 %v17;
(* mul	v29.4s, v6.4s, v21.s[1]                     #! PC = 0x555556531c *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v29 %v6 %mm; cast [] %v29@int32[4] %v29;
(* sub	v13.4s, v9.4s, v18.4s                       #! PC = 0x5555565320 *)
sub %v13 %v9 %v18;
(* mul	v30.4s, v12.4s, v21.s[3]                    #! PC = 0x5555565324 *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v30 %v12 %mm; cast [] %v30@int32[4] %v30;
(* sub	v15.4s, v11.4s, v19.4s                      #! PC = 0x5555565328 *)
sub %v15 %v11 %v19;
(* mul	v31.4s, v14.4s, v21.s[3]                    #! PC = 0x555556532c *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v31 %v14 %mm; cast [] %v31@int32[4] %v31;
(* add	v1.4s, v1.4s, v16.4s                        #! PC = 0x5555565330 *)
add %v1 %v1 %v16;
(* sqrdmulh	v4.4s, v4.4s, v21.s[0]                 #! PC = 0x5555565334 *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v4 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v4 %dc %mm 1;
(* add	v3.4s, v3.4s, v17.4s                        #! PC = 0x5555565338 *)
add %v3 %v3 %v17;
(* sqrdmulh	v6.4s, v6.4s, v21.s[0]                 #! PC = 0x555556533c *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v6 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v6 %dc %mm 1;
(* add	v9.4s, v9.4s, v18.4s                        #! PC = 0x5555565340 *)
add %v9 %v9 %v18;
(* sqrdmulh	v12.4s, v12.4s, v21.s[2]               #! PC = 0x5555565344 *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v12 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v12 %dc %mm 1;
(* add	v11.4s, v11.4s, v19.4s                      #! PC = 0x5555565348 *)
add %v11 %v11 %v19;
(* sqrdmulh	v14.4s, v14.4s, v21.s[2]               #! PC = 0x555556534c *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v14 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v14 %dc %mm 1;
(* mls	v28.4s, v4.4s, v20.s[0]                     #! PC = 0x5555565350 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v4 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v6.4s, v20.s[0]                     #! PC = 0x5555565354 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v6 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;
(* mls	v30.4s, v12.4s, v20.s[0]                    #! PC = 0x5555565358 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v12 %mm; cast [] %mm@int32[4] %mm; subs %dc %v30 %v30 %mm;
(* mls	v31.4s, v14.4s, v20.s[0]                    #! PC = 0x555556535c *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v14 %mm; cast [] %mm@int32[4] %mm; subs %dc %v31 %v31 %mm;




(**************** mls ****************)

assert eqmod %v28 ( %v4o17*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v29 ( %v6o17*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v30 ( %v12o17*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] /\
       eqmod %v31 ( %v14o17*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 ( %v4o17*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v29 ( %v6o17*[3765607,3765607,3765607,3765607])
             [Q, Q, Q, Q] /\
       eqmod %v30 ( %v12o17*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] /\
       eqmod %v31 ( %v14o17*[3761513,3761513,3761513,3761513])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v1 /\
        %v1 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v3 /\
        %v3 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v5 /\
        %v5 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v7 /\
        %v7 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v9 /\
        %v9 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v11 /\
       %v11 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v13 /\
       %v13 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v15 /\
       %v15 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
       prove with [algebra solver isl, cuts [28]] && true;
assume [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v1 /\
        %v1 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v3 /\
        %v3 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v5 /\
        %v5 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v7 /\
        %v7 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v9 /\
        %v9 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v11 /\
       %v11 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v13 /\
       %v13 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v15 /\
       %v15 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v1 /\
        %v1 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v3 /\
        %v3 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v5 /\
        %v5 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v7 /\
        %v7 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v9 /\
        %v9 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v11 /\
       %v11 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v13 /\
       %v13 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v15 /\
       %v15 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2];

(**************** CUT 30, 30 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v1 =  %v1o17 + %v16 /\  %v5 =  %v1o17 - %v16 /\
     %v3 =  %v3o17 + %v17 /\  %v7 =  %v3o17 - %v17 /\
     %v9 =  %v9o17 + %v18 /\ %v13 =  %v9o17 - %v18 /\
    %v11 = %v11o17 + %v19 /\ %v15 = %v11o17 - %v19 /\
    eqmod %v28 ( %v4o17*[3765607,3765607,3765607,3765607])
          [Q, Q, Q, Q] /\
    eqmod %v29 ( %v6o17*[3765607,3765607,3765607,3765607])
          [Q, Q, Q, Q] /\
    eqmod %v30 (%v12o17*[3761513,3761513,3761513,3761513])
          [Q, Q, Q, Q] /\
    eqmod %v31 (%v14o17*[3761513,3761513,3761513,3761513])
          [Q, Q, Q, Q]  /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v1 /\
     %v1 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v3 /\
     %v3 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v5 /\
     %v5 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v7 /\
     %v7 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v9 /\
     %v9 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v11 /\
    %v11 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v13 /\
    %v13 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v15 /\
    %v15 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v1 /\
     %v1 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v3 /\
     %v3 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v5 /\
     %v5 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v7 /\
     %v7 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v9 /\
     %v9 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v11 /\
    %v11 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v13 /\
    %v13 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v15 /\
    %v15 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2]
    prove with [cuts [28]];

ghost  %v0o18@int32[4], %v2o18@int32[4], %v8o18@int32[4],%v10o18@int32[4],
       %v3o18@int32[4], %v7o18@int32[4],%v11o18@int32[4],%v15o18@int32[4]:
       %v0o18 =  %v0 /\  %v2o18 =  %v2 /\  %v8o18 =  %v8 /\ %v10o18 = %v10 /\
       %v3o18 =  %v3 /\  %v7o18 =  %v7 /\ %v11o18 = %v11 /\ %v15o18 = %v15
   &&  %v0o18 =  %v0 /\  %v2o18 =  %v2 /\  %v8o18 =  %v8 /\ %v10o18 = %v10 /\
       %v3o18 =  %v3 /\  %v7o18 =  %v7 /\ %v11o18 = %v11 /\ %v15o18 = %v15;

(* sub	v4.4s, v0.4s, v28.4s                        #! PC = 0x5555565360 *)
sub %v4 %v0 %v28;
(* mul	v16.4s, v3.4s, v22.s[1]                     #! PC = 0x5555565364 *)
mov [_, m, _, _] %v22; mov %mm [m, m, m, m];
mull %dc %v16 %v3 %mm; cast [] %v16@int32[4] %v16;
(* sub	v6.4s, v2.4s, v29.4s                        #! PC = 0x5555565368 *)
sub %v6 %v2 %v29;
(* mul	v17.4s, v7.4s, v22.s[3]                     #! PC = 0x555556536c *)
mov [_, _, _, m] %v22; mov %mm [m, m, m, m];
mull %dc %v17 %v7 %mm; cast [] %v17@int32[4] %v17;
(* sub	v12.4s, v8.4s, v30.4s                       #! PC = 0x5555565370 *)
sub %v12 %v8 %v30;
(* mul	v18.4s, v11.4s, v23.s[1]                    #! PC = 0x5555565374 *)
mov [_, m, _, _] %v23; mov %mm [m, m, m, m];
mull %dc %v18 %v11 %mm; cast [] %v18@int32[4] %v18;
(* sub	v14.4s, v10.4s, v31.4s                      #! PC = 0x5555565378 *)
sub %v14 %v10 %v31;
(* mul	v19.4s, v15.4s, v23.s[3]                    #! PC = 0x555556537c *)
mov [_, _, _, m] %v23; mov %mm [m, m, m, m];
mull %dc %v19 %v15 %mm; cast [] %v19@int32[4] %v19;
(* add	v0.4s, v0.4s, v28.4s                        #! PC = 0x5555565380 *)
add %v0 %v0 %v28;
(* sqrdmulh	v3.4s, v3.4s, v22.s[0]                 #! PC = 0x5555565384 *)
mov [m, _, _, _] %v22; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* add	v2.4s, v2.4s, v29.4s                        #! PC = 0x5555565388 *)
add %v2 %v2 %v29;
(* sqrdmulh	v7.4s, v7.4s, v22.s[2]                 #! PC = 0x555556538c *)
mov [_, _, m, _] %v22; mov %mm [m, m, m, m];
mulj %mm %v7 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v7 %dc %mm 1;
(* add	v8.4s, v8.4s, v30.4s                        #! PC = 0x5555565390 *)
add %v8 %v8 %v30;
(* sqrdmulh	v11.4s, v11.4s, v23.s[0]               #! PC = 0x5555565394 *)
mov [m, _, _, _] %v23; mov %mm [m, m, m, m];
mulj %mm %v11 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v11 %dc %mm 1;
(* add	v10.4s, v10.4s, v31.4s                      #! PC = 0x5555565398 *)
add %v10 %v10 %v31;
(* sqrdmulh	v15.4s, v15.4s, v23.s[2]               #! PC = 0x555556539c *)
mov [_, _, m, _] %v23; mov %mm [m, m, m, m];
mulj %mm %v15 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v15 %dc %mm 1;
(* mls	v16.4s, v3.4s, v20.s[0]                     #! PC = 0x55555653a0 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v16 %v16 %mm;
(* mls	v17.4s, v7.4s, v20.s[0]                     #! PC = 0x55555653a4 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v7 %mm; cast [] %mm@int32[4] %mm; subs %dc %v17 %v17 %mm;
(* mls	v18.4s, v11.4s, v20.s[0]                    #! PC = 0x55555653a8 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v11 %mm; cast [] %mm@int32[4] %mm; subs %dc %v18 %v18 %mm;
(* mls	v19.4s, v15.4s, v20.s[0]                    #! PC = 0x55555653ac *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v15 %mm; cast [] %mm@int32[4] %mm; subs %dc %v19 %v19 %mm;




(**************** mls ****************)

assert eqmod %v16 ( %v3o18*[-3201494,-3201494,-3201494,-3201494])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v7o18*[-2883726,-2883726,-2883726,-2883726])
             [Q, Q, Q, Q] /\
       eqmod %v18 (%v11o18*[-3145678,-3145678,-3145678,-3145678])
             [Q, Q, Q, Q] /\
       eqmod %v19 (%v15o18*[-3201430,-3201430,-3201430,-3201430])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v16 ( %v3o18*[-3201494,-3201494,-3201494,-3201494])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v7o18*[-2883726,-2883726,-2883726,-2883726])
             [Q, Q, Q, Q] /\
       eqmod %v18 (%v11o18*[-3145678,-3145678,-3145678,-3145678])
             [Q, Q, Q, Q] /\
       eqmod %v19 (%v15o18*[-3201430,-3201430,-3201430,-3201430])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v0 /\
        %v0 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v2 /\
        %v2 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v4 /\
        %v4 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v6 /\
        %v6 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v8 /\
        %v8 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v10 /\
       %v10 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v12 /\
       %v12 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v14 /\
       %v14 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
       prove with [algebra solver isl, cuts [29]] && true;
assume [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v0 /\
        %v0 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v2 /\
        %v2 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v4 /\
        %v4 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v6 /\
        %v6 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v8 /\
        %v8 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v10 /\
       %v10 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v12 /\
       %v12 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
       [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v14 /\
       %v14 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v0 /\
        %v0 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v2 /\
        %v2 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v4 /\
        %v4 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v6 /\
        %v6 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v8 /\
        %v8 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v10 /\
       %v10 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v12 /\
       %v12 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
       [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v14 /\
       %v14 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2];


(**************** CUT 31, 31 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o18 + %v28 /\  %v4 =  %v0o18 - %v28 /\
     %v2 =  %v2o18 + %v29 /\  %v6 =  %v2o18 - %v29 /\
     %v8 =  %v8o18 + %v30 /\ %v12 =  %v8o18 - %v30 /\
    %v10 = %v10o18 + %v31 /\ %v14 = %v10o18 - %v31 /\
    eqmod %v16 ( %v3o18*[-3201494,-3201494,-3201494,-3201494])
          [Q, Q, Q, Q] /\
    eqmod %v17 ( %v7o18*[-2883726,-2883726,-2883726,-2883726])
          [Q, Q, Q, Q] /\
    eqmod %v18 (%v11o18*[-3145678,-3145678,-3145678,-3145678])
          [Q, Q, Q, Q] /\
    eqmod %v19 (%v15o18*[-3201430,-3201430,-3201430,-3201430])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v0 /\
     %v0 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v2 /\
     %v2 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v4 /\
     %v4 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v6 /\
     %v6 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] <  %v8 /\
     %v8 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v10 /\
    %v10 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v12 /\
    %v12 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2] /\
    [2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2,2*NQ+NQ2] < %v14 /\
    %v14 < [2*Q+Q2,2*Q+Q2,2*Q+Q2,2*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v0 /\
     %v0 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v2 /\
     %v2 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v4 /\
     %v4 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v6 /\
     %v6 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s  %v8 /\
     %v8 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v10 /\
    %v10 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v12 /\
    %v12 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2] /\
    [2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2,2@32*NQ+NQ2] <s %v14 /\
    %v14 <s [2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2,2@32*Q+Q2]
    prove with [cuts [29]];

ghost  %v1o19@int32[4], %v5o19@int32[4], %v9o19@int32[4],%v13o19@int32[4],
       %v2o19@int32[4], %v6o19@int32[4],%v10o19@int32[4],%v14o19@int32[4]:
       %v1o19 =  %v1 /\  %v5o19 =  %v5 /\  %v9o19 =  %v9 /\ %v13o19 = %v13 /\
       %v2o19 =  %v2 /\  %v6o19 =  %v6 /\ %v10o19 = %v10 /\ %v14o19 = %v14
   &&  %v1o19 =  %v1 /\  %v5o19 =  %v5 /\  %v9o19 =  %v9 /\ %v13o19 = %v13 /\
       %v2o19 =  %v2 /\  %v6o19 =  %v6 /\ %v10o19 = %v10 /\ %v14o19 = %v14;

(* sub	v3.4s, v1.4s, v16.4s                        #! PC = 0x55555653b0 *)
sub %v3 %v1 %v16;
(* mul	v28.4s, v2.4s, v22.s[1]                     #! PC = 0x55555653b4 *)
mov [_, m, _, _] %v22; mov %mm [m, m, m, m];
mull %dc %v28 %v2 %mm; cast [] %v28@int32[4] %v28;
(* sub	v7.4s, v5.4s, v17.4s                        #! PC = 0x55555653b8 *)
sub %v7 %v5 %v17;
(* mul	v29.4s, v6.4s, v22.s[3]                     #! PC = 0x55555653bc *)
mov [_, _, _, m] %v22; mov %mm [m, m, m, m];
mull %dc %v29 %v6 %mm; cast [] %v29@int32[4] %v29;
(* sub	v11.4s, v9.4s, v18.4s                       #! PC = 0x55555653c0 *)
sub %v11 %v9 %v18;
(* mul	v30.4s, v10.4s, v23.s[1]                    #! PC = 0x55555653c4 *)
mov [_, m, _, _] %v23; mov %mm [m, m, m, m];
mull %dc %v30 %v10 %mm; cast [] %v30@int32[4] %v30;
(* sub	v15.4s, v13.4s, v19.4s                      #! PC = 0x55555653c8 *)
sub %v15 %v13 %v19;
(* mul	v31.4s, v14.4s, v23.s[3]                    #! PC = 0x55555653cc *)
mov [_, _, _, m] %v23; mov %mm [m, m, m, m];
mull %dc %v31 %v14 %mm; cast [] %v31@int32[4] %v31;
(* add	v1.4s, v1.4s, v16.4s                        #! PC = 0x55555653d0 *)
add %v1 %v1 %v16;
(* sqrdmulh	v2.4s, v2.4s, v22.s[0]                 #! PC = 0x55555653d4 *)
mov [m, _, _, _] %v22; mov %mm [m, m, m, m];
mulj %mm %v2 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v2 %dc %mm 1;
(* add	v5.4s, v5.4s, v17.4s                        #! PC = 0x55555653d8 *)
add %v5 %v5 %v17;
(* sqrdmulh	v6.4s, v6.4s, v22.s[2]                 #! PC = 0x55555653dc *)
mov [_, _, m, _] %v22; mov %mm [m, m, m, m];
mulj %mm %v6 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v6 %dc %mm 1;
(* add	v9.4s, v9.4s, v18.4s                        #! PC = 0x55555653e0 *)
add %v9 %v9 %v18;
(* sqrdmulh	v10.4s, v10.4s, v23.s[0]               #! PC = 0x55555653e4 *)
mov [m, _, _, _] %v23; mov %mm [m, m, m, m];
mulj %mm %v10 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v10 %dc %mm 1;
(* add	v13.4s, v13.4s, v19.4s                      #! PC = 0x55555653e8 *)
add %v13 %v13 %v19;
(* sqrdmulh	v14.4s, v14.4s, v23.s[2]               #! PC = 0x55555653ec *)
mov [_, _, m, _] %v23; mov %mm [m, m, m, m];
mulj %mm %v14 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v14 %dc %mm 1;
(* mls	v28.4s, v2.4s, v20.s[0]                     #! PC = 0x55555653f0 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v2 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v6.4s, v20.s[0]                     #! PC = 0x55555653f4 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v6 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;
(* mls	v30.4s, v10.4s, v20.s[0]                    #! PC = 0x55555653f8 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v10 %mm; cast [] %mm@int32[4] %mm; subs %dc %v30 %v30 %mm;
(* mls	v31.4s, v14.4s, v20.s[0]                    #! PC = 0x55555653fc *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v14 %mm; cast [] %mm@int32[4] %mm; subs %dc %v31 %v31 %mm;



(**************** mls ****************)

assert eqmod %v28 ( %v2o19*[-3201494,-3201494,-3201494,-3201494])
             [Q, Q, Q, Q] /\
       eqmod %v29 ( %v6o19*[-2883726,-2883726,-2883726,-2883726])
             [Q, Q, Q, Q] /\
       eqmod %v30 (%v10o19*[-3145678,-3145678,-3145678,-3145678])
             [Q, Q, Q, Q] /\
       eqmod %v31 (%v14o19*[-3201430,-3201430,-3201430,-3201430])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 ( %v2o19*[-3201494,-3201494,-3201494,-3201494])
             [Q, Q, Q, Q] /\
       eqmod %v29 ( %v6o19*[-2883726,-2883726,-2883726,-2883726])
             [Q, Q, Q, Q] /\
       eqmod %v30 (%v10o19*[-3145678,-3145678,-3145678,-3145678])
             [Q, Q, Q, Q] /\
       eqmod %v31 (%v14o19*[-3201430,-3201430,-3201430,-3201430])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v1 /\
        %v1 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v3 /\
        %v3 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v5 /\
        %v5 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v7 /\
        %v7 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v9 /\
        %v9 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v11 /\
       %v11 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v13 /\
       %v13 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v15 /\
       %v15 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
       prove with [algebra solver isl, cuts [30]] && true;
assume [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v1 /\
        %v1 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v3 /\
        %v3 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v5 /\
        %v5 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v7 /\
        %v7 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v9 /\
        %v9 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v11 /\
       %v11 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v13 /\
       %v13 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v15 /\
       %v15 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v1 /\
        %v1 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v3 /\
        %v3 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v5 /\
        %v5 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v7 /\
        %v7 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v9 /\
        %v9 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v11 /\
       %v11 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v13 /\
       %v13 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v15 /\
       %v15 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2];


(**************** CUT 32, 32 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v1 =  %v1o19 + %v16 /\  %v3 =  %v1o19 - %v16 /\
     %v5 =  %v5o19 + %v17 /\  %v7 =  %v5o19 - %v17 /\
     %v9 =  %v9o19 + %v18 /\ %v11 =  %v9o19 - %v18 /\
    %v13 = %v13o19 + %v19 /\ %v15 = %v13o19 - %v19 /\
    eqmod %v28 ( %v2o19*[-3201494,-3201494,-3201494,-3201494])
          [Q, Q, Q, Q] /\
    eqmod %v29 ( %v6o19*[-2883726,-2883726,-2883726,-2883726])
          [Q, Q, Q, Q] /\
    eqmod %v30 (%v10o19*[-3145678,-3145678,-3145678,-3145678])
          [Q, Q, Q, Q] /\
    eqmod %v31 (%v14o19*[-3201430,-3201430,-3201430,-3201430])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v1 /\
     %v1 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v3 /\
     %v3 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v5 /\
     %v5 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v7 /\
     %v7 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v9 /\
     %v9 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v11 /\
    %v11 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v13 /\
    %v13 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v15 /\
    %v15 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v1 /\
     %v1 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v3 /\
     %v3 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v5 /\
     %v5 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v7 /\
     %v7 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v9 /\
     %v9 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v11 /\
    %v11 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v13 /\
    %v13 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v15 /\
    %v15 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2]
    prove with [cuts [30]];

ghost  %v0o1a@int32[4], %v4o1a@int32[4], %v8o1a@int32[4],%v12o1a@int32[4],
       %v1o1a@int32[4], %v3o1a@int32[4], %v5o1a@int32[4], %v7o1a@int32[4]:
       %v0o1a =  %v0 /\  %v4o1a =  %v4 /\  %v8o1a =  %v8 /\ %v12o1a = %v12 /\
       %v1o1a =  %v1 /\  %v3o1a =  %v3 /\  %v5o1a =  %v5 /\  %v7o1a =  %v7
   &&  %v0o1a =  %v0 /\  %v4o1a =  %v4 /\  %v8o1a =  %v8 /\ %v12o1a = %v12 /\
       %v1o1a =  %v1 /\  %v3o1a =  %v3 /\  %v5o1a =  %v5 /\  %v7o1a =  %v7;

(* sub	v2.4s, v0.4s, v28.4s                        #! PC = 0x5555565400 *)
sub %v2 %v0 %v28;
(* mul	v16.4s, v1.4s, v24.s[1]                     #! PC = 0x5555565404 *)
mov [_, m, _, _] %v24; mov %mm [m, m, m, m];
mull %dc %v16 %v1 %mm; cast [] %v16@int32[4] %v16;
(* sub	v6.4s, v4.4s, v29.4s                        #! PC = 0x5555565408 *)
sub %v6 %v4 %v29;
(* mul	v17.4s, v3.4s, v24.s[3]                     #! PC = 0x555556540c *)
mov [_, _, _, m] %v24; mov %mm [m, m, m, m];
mull %dc %v17 %v3 %mm; cast [] %v17@int32[4] %v17;
(* sub	v10.4s, v8.4s, v30.4s                       #! PC = 0x5555565410 *)
sub %v10 %v8 %v30;
(* mul	v18.4s, v5.4s, v25.s[1]                     #! PC = 0x5555565414 *)
mov [_, m, _, _] %v25; mov %mm [m, m, m, m];
mull %dc %v18 %v5 %mm; cast [] %v18@int32[4] %v18;
(* sub	v14.4s, v12.4s, v31.4s                      #! PC = 0x5555565418 *)
sub %v14 %v12 %v31;
(* mul	v19.4s, v7.4s, v25.s[3]                     #! PC = 0x555556541c *)
mov [_, _, _, m] %v25; mov %mm [m, m, m, m];
mull %dc %v19 %v7 %mm; cast [] %v19@int32[4] %v19;
(* add	v0.4s, v0.4s, v28.4s                        #! PC = 0x5555565420 *)
add %v0 %v0 %v28;
(* sqrdmulh	v1.4s, v1.4s, v24.s[0]                 #! PC = 0x5555565424 *)
mov [m, _, _, _] %v24; mov %mm [m, m, m, m];
mulj %mm %v1 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v1 %dc %mm 1;
(* add	v4.4s, v4.4s, v29.4s                        #! PC = 0x5555565428 *)
add %v4 %v4 %v29;
(* sqrdmulh	v3.4s, v3.4s, v24.s[2]                 #! PC = 0x555556542c *)
mov [_, _, m, _] %v24; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* add	v8.4s, v8.4s, v30.4s                        #! PC = 0x5555565430 *)
add %v8 %v8 %v30;
(* sqrdmulh	v5.4s, v5.4s, v25.s[0]                 #! PC = 0x5555565434 *)
mov [m, _, _, _] %v25; mov %mm [m, m, m, m];
mulj %mm %v5 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v5 %dc %mm 1;
(* add	v12.4s, v12.4s, v31.4s                      #! PC = 0x5555565438 *)
add %v12 %v12 %v31;
(* sqrdmulh	v7.4s, v7.4s, v25.s[2]                 #! PC = 0x555556543c *)
mov [_, _, m, _] %v25; mov %mm [m, m, m, m];
mulj %mm %v7 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v7 %dc %mm 1;
(* mls	v16.4s, v1.4s, v20.s[0]                     #! PC = 0x5555565440 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v1 %mm; cast [] %mm@int32[4] %mm; subs %dc %v16 %v16 %mm;
(* mls	v17.4s, v3.4s, v20.s[0]                     #! PC = 0x5555565444 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v17 %v17 %mm;
(* mls	v18.4s, v5.4s, v20.s[0]                     #! PC = 0x5555565448 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v5 %mm; cast [] %mm@int32[4] %mm; subs %dc %v18 %v18 %mm;
(* mls	v19.4s, v7.4s, v20.s[0]                     #! PC = 0x555556544c *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v7 %mm; cast [] %mm@int32[4] %mm; subs %dc %v19 %v19 %mm;



(**************** mls ****************)

assert eqmod %v16 ( %v1o1a*[-601683,-601683,-601683,-601683])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v3o1a*[3542485,3542485,3542485,3542485])
             [Q, Q, Q, Q] /\
       eqmod %v18 ( %v5o1a*[2682288,2682288,2682288,2682288])
             [Q, Q, Q, Q] /\
       eqmod %v19 ( %v7o1a*[2129892,2129892,2129892,2129892])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v16 ( %v1o1a*[-601683,-601683,-601683,-601683])
             [Q, Q, Q, Q] /\
       eqmod %v17 ( %v3o1a*[3542485,3542485,3542485,3542485])
             [Q, Q, Q, Q] /\
       eqmod %v18 ( %v5o1a*[2682288,2682288,2682288,2682288])
             [Q, Q, Q, Q] /\
       eqmod %v19 ( %v7o1a*[2129892,2129892,2129892,2129892])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v0 /\
        %v0 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v2 /\
        %v2 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v4 /\
        %v4 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v6 /\
        %v6 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v8 /\
        %v8 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v10 /\
       %v10 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v12 /\
       %v12 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v14 /\
       %v14 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
       prove with [algebra solver isl, cuts [31]] && true;
assume [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v0 /\
        %v0 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v2 /\
        %v2 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v4 /\
        %v4 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v6 /\
        %v6 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v8 /\
        %v8 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v10 /\
       %v10 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v12 /\
       %v12 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
       [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v14 /\
       %v14 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v0 /\
        %v0 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v2 /\
        %v2 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v4 /\
        %v4 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v6 /\
        %v6 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v8 /\
        %v8 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v10 /\
       %v10 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v12 /\
       %v12 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
       [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v14 /\
       %v14 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2];



(**************** CUT 33, 33 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o1a + %v28 /\  %v2 =  %v0o1a - %v28 /\
     %v4 =  %v4o1a + %v29 /\  %v6 =  %v4o1a - %v29 /\
     %v8 =  %v8o1a + %v30 /\ %v10 =  %v8o1a - %v30 /\
    %v12 = %v12o1a + %v31 /\ %v14 = %v12o1a - %v31 /\
    eqmod %v16 ( %v1o1a*[-601683,-601683,-601683,-601683])
          [Q, Q, Q, Q] /\
    eqmod %v17 ( %v3o1a*[3542485,3542485,3542485,3542485])
          [Q, Q, Q, Q] /\
    eqmod %v18 ( %v5o1a*[2682288,2682288,2682288,2682288])
          [Q, Q, Q, Q] /\
    eqmod %v19 ( %v7o1a*[2129892,2129892,2129892,2129892])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v16 /\ %v16 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v17 /\ %v17 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v18 /\ %v18 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v19 /\ %v19 < [Q,Q,Q,Q] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v0 /\
     %v0 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v2 /\
     %v2 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v4 /\
     %v4 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v6 /\
     %v6 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] <  %v8 /\
     %v8 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v10 /\
    %v10 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v12 /\
    %v12 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2] /\
    [3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2,3*NQ+NQ2] < %v14 /\
    %v14 < [3*Q+Q2,3*Q+Q2,3*Q+Q2,3*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v16 /\ %v16 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v17 /\ %v17 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v18 /\ %v18 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v19 /\ %v19 <s [Q,Q,Q,Q] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v0 /\
     %v0 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v2 /\
     %v2 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v4 /\
     %v4 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v6 /\
     %v6 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s  %v8 /\
     %v8 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v10 /\
    %v10 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v12 /\
    %v12 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2] /\
    [3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2,3@32*NQ+NQ2] <s %v14 /\
    %v14 <s [3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2,3@32*Q+Q2]
    prove with [cuts [31]];

ghost  %v0o1b@int32[4], %v2o1b@int32[4], %v4o1b@int32[4], %v6o1b@int32[4],
       %v9o1b@int32[4],%v11o1b@int32[4],%v13o1b@int32[4],%v15o1b@int32[4]:
       %v0o1b =  %v0 /\  %v2o1b =  %v2 /\  %v4o1b =  %v4 /\  %v6o1b =  %v6 /\
       %v9o1b =  %v9 /\ %v11o1b = %v11 /\ %v13o1b = %v13 /\ %v15o1b = %v15
   &&  %v0o1b =  %v0 /\  %v2o1b =  %v2 /\  %v4o1b =  %v4 /\  %v6o1b =  %v6 /\
       %v9o1b =  %v9 /\ %v11o1b = %v11 /\ %v13o1b = %v13 /\ %v15o1b = %v15;

(* sub	v1.4s, v0.4s, v16.4s                        #! PC = 0x5555565450 *)
sub %v1 %v0 %v16;
(* mul	v28.4s, v9.4s, v26.s[1]                     #! PC = 0x5555565454 *)
mov [_, m, _, _] %v26; mov %mm [m, m, m, m];
mull %dc %v28 %v9 %mm; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v2.4s, v17.4s                        #! PC = 0x5555565458 *)
sub %v3 %v2 %v17;
(* mul	v29.4s, v11.4s, v26.s[3]                    #! PC = 0x555556545c *)
mov [_, _, _, m] %v26; mov %mm [m, m, m, m];
mull %dc %v29 %v11 %mm; cast [] %v29@int32[4] %v29;
(* sub	v5.4s, v4.4s, v18.4s                        #! PC = 0x5555565460 *)
sub %v5 %v4 %v18;
(* mul	v30.4s, v13.4s, v27.s[1]                    #! PC = 0x5555565464 *)
mov [_, m, _, _] %v27; mov %mm [m, m, m, m];
mull %dc %v30 %v13 %mm; cast [] %v30@int32[4] %v30;
(* sub	v7.4s, v6.4s, v19.4s                        #! PC = 0x5555565468 *)
sub %v7 %v6 %v19;
(* mul	v31.4s, v15.4s, v27.s[3]                    #! PC = 0x555556546c *)
mov [_, _, _, m] %v27; mov %mm [m, m, m, m];
mull %dc %v31 %v15 %mm; cast [] %v31@int32[4] %v31;
(* add	v0.4s, v0.4s, v16.4s                        #! PC = 0x5555565470 *)
add %v0 %v0 %v16;
(* sqrdmulh	v9.4s, v9.4s, v26.s[0]                 #! PC = 0x5555565474 *)
mov [m, _, _, _] %v26; mov %mm [m, m, m, m];
mulj %mm %v9 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v9 %dc %mm 1;
(* add	v2.4s, v2.4s, v17.4s                        #! PC = 0x5555565478 *)
add %v2 %v2 %v17;
(* sqrdmulh	v11.4s, v11.4s, v26.s[2]               #! PC = 0x555556547c *)
mov [_, _, m, _] %v26; mov %mm [m, m, m, m];
mulj %mm %v11 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v11 %dc %mm 1;
(* add	v4.4s, v4.4s, v18.4s                        #! PC = 0x5555565480 *)
add %v4 %v4 %v18;
(* sqrdmulh	v13.4s, v13.4s, v27.s[0]               #! PC = 0x5555565484 *)
mov [m, _, _, _] %v27; mov %mm [m, m, m, m];
mulj %mm %v13 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v13 %dc %mm 1;
(* add	v6.4s, v6.4s, v19.4s                        #! PC = 0x5555565488 *)
add %v6 %v6 %v19;
(* sqrdmulh	v15.4s, v15.4s, v27.s[2]               #! PC = 0x555556548c *)
mov [_, _, m, _] %v27; mov %mm [m, m, m, m];
mulj %mm %v15 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v15 %dc %mm 1;
(* mls	v28.4s, v9.4s, v20.s[0]                     #! PC = 0x5555565490 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v9 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v11.4s, v20.s[0]                    #! PC = 0x5555565494 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v11 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;
(* mls	v30.4s, v13.4s, v20.s[0]                    #! PC = 0x5555565498 *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v13 %mm; cast [] %mm@int32[4] %mm; subs %dc %v30 %v30 %mm;
(* mls	v31.4s, v15.4s, v20.s[0]                    #! PC = 0x555556549c *)
mov [m, _, _, _] %v20; mov %mm [m, m, m, m];
mull %dc %mm %v15 %mm; cast [] %mm@int32[4] %mm; subs %dc %v31 %v31 %mm;



(**************** mls ****************)

assert eqmod %v28 ( %v9o1b*[3764867,3764867,3764867,3764867])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v11o1b*[-1005239,-1005239,-1005239,-1005239])
             [Q, Q, Q, Q] /\
       eqmod %v30 (%v13o1b*[557458,557458,557458,557458])
             [Q, Q, Q, Q] /\
       eqmod %v31 (%v15o1b*[-1221177,-1221177,-1221177,-1221177])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 ( %v9o1b*[3764867,3764867,3764867,3764867])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v11o1b*[-1005239,-1005239,-1005239,-1005239])
             [Q, Q, Q, Q] /\
       eqmod %v30 (%v13o1b*[557458,557458,557458,557458])
             [Q, Q, Q, Q] /\
       eqmod %v31 (%v15o1b*[-1221177,-1221177,-1221177,-1221177])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v0 /\
        %v0 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v1 /\
        %v1 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v2 /\
        %v2 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v3 /\
        %v3 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v4 /\
        %v4 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v5 /\
        %v5 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v6 /\
        %v6 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v7 /\
        %v7 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2]
       prove with [algebra solver isl, cuts [32]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v30 /\ %v30 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v31 /\ %v31 < [Q,Q,Q,Q] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v0 /\
        %v0 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v1 /\
        %v1 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v2 /\
        %v2 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v3 /\
        %v3 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v4 /\
        %v4 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v5 /\
        %v5 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v6 /\
        %v6 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
       [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v7 /\
        %v7 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v30 /\ %v30 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v31 /\ %v31 <s [Q,Q,Q,Q] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v0 /\
        %v0 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v1 /\
        %v1 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v2 /\
        %v2 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v3 /\
        %v3 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v4 /\
        %v4 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v5 /\
        %v5 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v6 /\
        %v6 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
       [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v7 /\
        %v7 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2];

(**************** CUT 34, 34 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o1b + %v16 /\  %v1 =  %v0o1b - %v16 /\
     %v2 =  %v2o1b + %v17 /\  %v3 =  %v2o1b - %v17 /\
     %v4 =  %v4o1b + %v18 /\  %v5 =  %v4o1b - %v18 /\
     %v6 =  %v6o1b + %v19 /\  %v7 =  %v6o1b - %v19 /\
    eqmod %v28 ( %v9o1b*[3764867,3764867,3764867,3764867])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v11o1b*[-1005239,-1005239,-1005239,-1005239])
          [Q, Q, Q, Q] /\
    eqmod %v30 (%v13o1b*[557458,557458,557458,557458])
          [Q, Q, Q, Q] /\
    eqmod %v31 (%v15o1b*[-1221177,-1221177,-1221177,-1221177])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v30 /\ %v30 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v31 /\ %v31 < [Q,Q,Q,Q] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v0 /\
     %v0 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v1 /\
     %v1 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v2 /\
     %v2 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v3 /\
     %v3 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v4 /\
     %v4 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v5 /\
     %v5 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v6 /\
     %v6 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <  %v7 /\
     %v7 < [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v30 /\ %v30 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v31 /\ %v31 <s [Q,Q,Q,Q] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v0 /\
     %v0 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v1 /\
     %v1 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v2 /\
     %v2 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v3 /\
     %v3 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v4 /\
     %v4 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v5 /\
     %v5 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v6 /\
     %v6 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s  %v7 /\
     %v7 <s [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2]
    prove with [cuts [32]];




(* sub	v9.4s, v8.4s, v28.4s                        #! PC = 0x55555654a0 *)
sub %v9 %v8 %v28;
(* sub	v11.4s, v10.4s, v29.4s                      #! PC = 0x55555654a4 *)
sub %v11 %v10 %v29;
(* sub	v13.4s, v12.4s, v30.4s                      #! PC = 0x55555654a8 *)
sub %v13 %v12 %v30;
(* sub	v15.4s, v14.4s, v31.4s                      #! PC = 0x55555654ac *)
sub %v15 %v14 %v31;
(* add	v8.4s, v8.4s, v28.4s                        #! PC = 0x55555654b0 *)
add %v8 %v8 %v28;
(* add	v10.4s, v10.4s, v29.4s                      #! PC = 0x55555654b4 *)
add %v10 %v10 %v29;
(* add	v12.4s, v12.4s, v30.4s                      #! PC = 0x55555654b8 *)
add %v12 %v12 %v30;
(* add	v14.4s, v14.4s, v31.4s                      #! PC = 0x55555654bc *)
add %v14 %v14 %v31;
(* sub	x19, x19, #0x1                              #! PC = 0x55555654c0 *)
subs dc x19 x19 (0x1)@uint64;
(* #cbnz	x19, 0x55555651c0 <_ntt_top_loop>         #! PC = 0x55555654c4 *)
#cbnz	x19, 0x55555651c0 <_ntt_top_loop>         #! 0x55555654c4 = 0x55555654c4;
(* st1	{v1.4s}, [x1], #16                          #! EA = L0x7ffffed940; PC = 0x55555654c8 *)
mov [L0x7ffffed940, L0x7ffffed944, L0x7ffffed948, L0x7ffffed94c] %v1;
(* st1	{v3.4s}, [x3], #16                          #! EA = L0x7ffffed9c0; PC = 0x55555654cc *)
mov [L0x7ffffed9c0, L0x7ffffed9c4, L0x7ffffed9c8, L0x7ffffed9cc] %v3;
(* st1	{v5.4s}, [x5], #16                          #! EA = L0x7ffffeda40; PC = 0x55555654d0 *)
mov [L0x7ffffeda40, L0x7ffffeda44, L0x7ffffeda48, L0x7ffffeda4c] %v5;
(* st1	{v7.4s}, [x7], #16                          #! EA = L0x7ffffedac0; PC = 0x55555654d4 *)
mov [L0x7ffffedac0, L0x7ffffedac4, L0x7ffffedac8, L0x7ffffedacc] %v7;
(* st1	{v9.4s}, [x9], #16                          #! EA = L0x7ffffedb40; PC = 0x55555654d8 *)
mov [L0x7ffffedb40, L0x7ffffedb44, L0x7ffffedb48, L0x7ffffedb4c] %v9;
(* st1	{v11.4s}, [x11], #16                        #! EA = L0x7ffffedbc0; PC = 0x55555654dc *)
mov [L0x7ffffedbc0, L0x7ffffedbc4, L0x7ffffedbc8, L0x7ffffedbcc] %v11;
(* st1	{v13.4s}, [x13], #16                        #! EA = L0x7ffffedc40; PC = 0x55555654e0 *)
mov [L0x7ffffedc40, L0x7ffffedc44, L0x7ffffedc48, L0x7ffffedc4c] %v13;
(* st1	{v15.4s}, [x15], #16                        #! EA = L0x7ffffedcc0; PC = 0x55555654e4 *)
mov [L0x7ffffedcc0, L0x7ffffedcc4, L0x7ffffedcc8, L0x7ffffedccc] %v15;
(* st1	{v0.4s}, [x0], #16                          #! EA = L0x7ffffed900; PC = 0x55555654e8 *)
mov [L0x7ffffed900, L0x7ffffed904, L0x7ffffed908, L0x7ffffed90c] %v0;
(* st1	{v2.4s}, [x2], #16                          #! EA = L0x7ffffed980; PC = 0x55555654ec *)
mov [L0x7ffffed980, L0x7ffffed984, L0x7ffffed988, L0x7ffffed98c] %v2;
(* st1	{v4.4s}, [x4], #16                          #! EA = L0x7ffffeda00; PC = 0x55555654f0 *)
mov [L0x7ffffeda00, L0x7ffffeda04, L0x7ffffeda08, L0x7ffffeda0c] %v4;
(* st1	{v6.4s}, [x6], #16                          #! EA = L0x7ffffeda80; PC = 0x55555654f4 *)
mov [L0x7ffffeda80, L0x7ffffeda84, L0x7ffffeda88, L0x7ffffeda8c] %v6;
(* st1	{v8.4s}, [x8], #16                          #! EA = L0x7ffffedb00; PC = 0x55555654f8 *)
mov [L0x7ffffedb00, L0x7ffffedb04, L0x7ffffedb08, L0x7ffffedb0c] %v8;
(* st1	{v10.4s}, [x10], #16                        #! EA = L0x7ffffedb80; PC = 0x55555654fc *)
mov [L0x7ffffedb80, L0x7ffffedb84, L0x7ffffedb88, L0x7ffffedb8c] %v10;
(* st1	{v12.4s}, [x12], #16                        #! EA = L0x7ffffedc00; PC = 0x5555565500 *)
mov [L0x7ffffedc00, L0x7ffffedc04, L0x7ffffedc08, L0x7ffffedc0c] %v12;
(* st1	{v14.4s}, [x14], #16                        #! EA = L0x7ffffedc80; PC = 0x5555565504 *)
mov [L0x7ffffedc80, L0x7ffffedc84, L0x7ffffedc88, L0x7ffffedc8c] %v14;


(**************** CUT 35, 35 ****************)

(**************** level 3/3 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod (F3**2) (L0x7ffffed900*X**12+L0x7ffffed904*X**13+L0x7ffffed908*X**14+
          L0x7ffffed90c*X**15) [ Q, X**16 - 7778734 ] /\
    eqmod (F3**2) (L0x7ffffed940*X**12+L0x7ffffed944*X**13+L0x7ffffed948*X**14+
          L0x7ffffed94c*X**15) [ Q, X**16 -  601683 ] /\
    eqmod (F3**2) (L0x7ffffed980*X**12+L0x7ffffed984*X**13+L0x7ffffed988*X**14+
          L0x7ffffed98c*X**15) [ Q, X**16 - 3542485 ] /\
    eqmod (F3**2) (L0x7ffffed9c0*X**12+L0x7ffffed9c4*X**13+L0x7ffffed9c8*X**14+
          L0x7ffffed9cc*X**15) [ Q, X**16 - 4837932 ] /\
    eqmod (F3**2) (L0x7ffffeda00*X**12+L0x7ffffeda04*X**13+L0x7ffffeda08*X**14+
          L0x7ffffeda0c*X**15) [ Q, X**16 - 2682288 ] /\
    eqmod (F3**2) (L0x7ffffeda40*X**12+L0x7ffffeda44*X**13+L0x7ffffeda48*X**14+
          L0x7ffffeda4c*X**15) [ Q, X**16 - 5698129 ] /\
    eqmod (F3**2) (L0x7ffffeda80*X**12+L0x7ffffeda84*X**13+L0x7ffffeda88*X**14+
          L0x7ffffeda8c*X**15) [ Q, X**16 - 2129892 ] /\
    eqmod (F3**2) (L0x7ffffedac0*X**12+L0x7ffffedac4*X**13+L0x7ffffedac8*X**14+
          L0x7ffffedacc*X**15) [ Q, X**16 - 6250525 ] /\
    eqmod (F3**2) (L0x7ffffedb00*X**12+L0x7ffffedb04*X**13+L0x7ffffedb08*X**14+
          L0x7ffffedb0c*X**15) [ Q, X**16 - 3764867 ] /\
    eqmod (F3**2) (L0x7ffffedb40*X**12+L0x7ffffedb44*X**13+L0x7ffffedb48*X**14+
          L0x7ffffedb4c*X**15) [ Q, X**16 - 4615550 ] /\
    eqmod (F3**2) (L0x7ffffedb80*X**12+L0x7ffffedb84*X**13+L0x7ffffedb88*X**14+
          L0x7ffffedb8c*X**15) [ Q, X**16 - 7375178 ] /\
    eqmod (F3**2) (L0x7ffffedbc0*X**12+L0x7ffffedbc4*X**13+L0x7ffffedbc8*X**14+
          L0x7ffffedbcc*X**15) [ Q, X**16 - 1005239 ] /\
    eqmod (F3**2) (L0x7ffffedc00*X**12+L0x7ffffedc04*X**13+L0x7ffffedc08*X**14+
          L0x7ffffedc0c*X**15) [ Q, X**16 -  557458 ] /\
    eqmod (F3**2) (L0x7ffffedc40*X**12+L0x7ffffedc44*X**13+L0x7ffffedc48*X**14+
          L0x7ffffedc4c*X**15) [ Q, X**16 - 7822959 ] /\
    eqmod (F3**2) (L0x7ffffedc80*X**12+L0x7ffffedc84*X**13+L0x7ffffedc88*X**14+
          L0x7ffffedc8c*X**15) [ Q, X**16 - 7159240 ] /\
    eqmod (F3**2) (L0x7ffffedcc0*X**12+L0x7ffffedcc4*X**13+L0x7ffffedcc8*X**14+
          L0x7ffffedccc*X**15) [ Q, X**16 - 1221177 ]
    prove with [all ghosts, cuts [27,28,29,30,31,32,33]],
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed900,L0x7ffffed904,L0x7ffffed908,L0x7ffffed90c] /\
    [L0x7ffffed900,L0x7ffffed904,L0x7ffffed908,L0x7ffffed90c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed940,L0x7ffffed944,L0x7ffffed948,L0x7ffffed94c] /\
    [L0x7ffffed940,L0x7ffffed944,L0x7ffffed948,L0x7ffffed94c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed980,L0x7ffffed984,L0x7ffffed988,L0x7ffffed98c] /\
    [L0x7ffffed980,L0x7ffffed984,L0x7ffffed988,L0x7ffffed98c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed9c0,L0x7ffffed9c4,L0x7ffffed9c8,L0x7ffffed9cc] /\
    [L0x7ffffed9c0,L0x7ffffed9c4,L0x7ffffed9c8,L0x7ffffed9cc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffeda00,L0x7ffffeda04,L0x7ffffeda08,L0x7ffffeda0c] /\
    [L0x7ffffeda00,L0x7ffffeda04,L0x7ffffeda08,L0x7ffffeda0c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffeda40,L0x7ffffeda44,L0x7ffffeda48,L0x7ffffeda4c] /\
    [L0x7ffffeda40,L0x7ffffeda44,L0x7ffffeda48,L0x7ffffeda4c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffeda80,L0x7ffffeda84,L0x7ffffeda88,L0x7ffffeda8c] /\
    [L0x7ffffeda80,L0x7ffffeda84,L0x7ffffeda88,L0x7ffffeda8c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedac0,L0x7ffffedac4,L0x7ffffedac8,L0x7ffffedacc] /\
    [L0x7ffffedac0,L0x7ffffedac4,L0x7ffffedac8,L0x7ffffedacc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedb00,L0x7ffffedb04,L0x7ffffedb08,L0x7ffffedb0c] /\
    [L0x7ffffedb00,L0x7ffffedb04,L0x7ffffedb08,L0x7ffffedb0c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedb40,L0x7ffffedb44,L0x7ffffedb48,L0x7ffffedb4c] /\
    [L0x7ffffedb40,L0x7ffffedb44,L0x7ffffedb48,L0x7ffffedb4c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedb80,L0x7ffffedb84,L0x7ffffedb88,L0x7ffffedb8c] /\
    [L0x7ffffedb80,L0x7ffffedb84,L0x7ffffedb88,L0x7ffffedb8c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedbc0,L0x7ffffedbc4,L0x7ffffedbc8,L0x7ffffedbcc] /\
    [L0x7ffffedbc0,L0x7ffffedbc4,L0x7ffffedbc8,L0x7ffffedbcc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedc00,L0x7ffffedc04,L0x7ffffedc08,L0x7ffffedc0c] /\
    [L0x7ffffedc00,L0x7ffffedc04,L0x7ffffedc08,L0x7ffffedc0c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedc40,L0x7ffffedc44,L0x7ffffedc48,L0x7ffffedc4c] /\
    [L0x7ffffedc40,L0x7ffffedc44,L0x7ffffedc48,L0x7ffffedc4c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedc80,L0x7ffffedc84,L0x7ffffedc88,L0x7ffffedc8c] /\
    [L0x7ffffedc80,L0x7ffffedc84,L0x7ffffedc88,L0x7ffffedc8c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedcc0,L0x7ffffedcc4,L0x7ffffedcc8,L0x7ffffedccc] /\
    [L0x7ffffedcc0,L0x7ffffedcc4,L0x7ffffedcc8,L0x7ffffedccc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2]
    prove with [algebra solver isl, cuts [33]]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed900,L0x7ffffed904,L0x7ffffed908,L0x7ffffed90c] /\
    [L0x7ffffed900,L0x7ffffed904,L0x7ffffed908,L0x7ffffed90c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed940,L0x7ffffed944,L0x7ffffed948,L0x7ffffed94c] /\
    [L0x7ffffed940,L0x7ffffed944,L0x7ffffed948,L0x7ffffed94c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed980,L0x7ffffed984,L0x7ffffed988,L0x7ffffed98c] /\
    [L0x7ffffed980,L0x7ffffed984,L0x7ffffed988,L0x7ffffed98c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed9c0,L0x7ffffed9c4,L0x7ffffed9c8,L0x7ffffed9cc] /\
    [L0x7ffffed9c0,L0x7ffffed9c4,L0x7ffffed9c8,L0x7ffffed9cc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffeda00,L0x7ffffeda04,L0x7ffffeda08,L0x7ffffeda0c] /\
    [L0x7ffffeda00,L0x7ffffeda04,L0x7ffffeda08,L0x7ffffeda0c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffeda40,L0x7ffffeda44,L0x7ffffeda48,L0x7ffffeda4c] /\
    [L0x7ffffeda40,L0x7ffffeda44,L0x7ffffeda48,L0x7ffffeda4c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffeda80,L0x7ffffeda84,L0x7ffffeda88,L0x7ffffeda8c] /\
    [L0x7ffffeda80,L0x7ffffeda84,L0x7ffffeda88,L0x7ffffeda8c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedac0,L0x7ffffedac4,L0x7ffffedac8,L0x7ffffedacc] /\
    [L0x7ffffedac0,L0x7ffffedac4,L0x7ffffedac8,L0x7ffffedacc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedb00,L0x7ffffedb04,L0x7ffffedb08,L0x7ffffedb0c] /\
    [L0x7ffffedb00,L0x7ffffedb04,L0x7ffffedb08,L0x7ffffedb0c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedb40,L0x7ffffedb44,L0x7ffffedb48,L0x7ffffedb4c] /\
    [L0x7ffffedb40,L0x7ffffedb44,L0x7ffffedb48,L0x7ffffedb4c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedb80,L0x7ffffedb84,L0x7ffffedb88,L0x7ffffedb8c] /\
    [L0x7ffffedb80,L0x7ffffedb84,L0x7ffffedb88,L0x7ffffedb8c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedbc0,L0x7ffffedbc4,L0x7ffffedbc8,L0x7ffffedbcc] /\
    [L0x7ffffedbc0,L0x7ffffedbc4,L0x7ffffedbc8,L0x7ffffedbcc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedc00,L0x7ffffedc04,L0x7ffffedc08,L0x7ffffedc0c] /\
    [L0x7ffffedc00,L0x7ffffedc04,L0x7ffffedc08,L0x7ffffedc0c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedc40,L0x7ffffedc44,L0x7ffffedc48,L0x7ffffedc4c] /\
    [L0x7ffffedc40,L0x7ffffedc44,L0x7ffffedc48,L0x7ffffedc4c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedc80,L0x7ffffedc84,L0x7ffffedc88,L0x7ffffedc8c] /\
    [L0x7ffffedc80,L0x7ffffedc84,L0x7ffffedc88,L0x7ffffedc8c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedcc0,L0x7ffffedcc4,L0x7ffffedcc8,L0x7ffffedccc] /\
    [L0x7ffffedcc0,L0x7ffffedcc4,L0x7ffffedcc8,L0x7ffffedccc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2]
prove with [cuts [33]];



(**************** END OF TOP ****************)


(**************** CUT 36, 36 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod (F**2)
          (L0x7ffffed8d0*X** 0+L0x7ffffed8d4*X** 1+L0x7ffffed8d8*X** 2+
           L0x7ffffed8dc*X** 3+L0x7ffffed8e0*X** 4+L0x7ffffed8e4*X** 5+
           L0x7ffffed8e8*X** 6+L0x7ffffed8ec*X** 7+L0x7ffffed8f0*X** 8+
           L0x7ffffed8f4*X** 9+L0x7ffffed8f8*X**10+L0x7ffffed8fc*X**11+
           L0x7ffffed900*X**12+L0x7ffffed904*X**13+L0x7ffffed908*X**14+
           L0x7ffffed90c*X**15)
          [Q, X**16 - 7778734] /\
    eqmod (F**2)
          (L0x7ffffed910*X** 0+L0x7ffffed914*X** 1+L0x7ffffed918*X** 2+
           L0x7ffffed91c*X** 3+L0x7ffffed920*X** 4+L0x7ffffed924*X** 5+
           L0x7ffffed928*X** 6+L0x7ffffed92c*X** 7+L0x7ffffed930*X** 8+
           L0x7ffffed934*X** 9+L0x7ffffed938*X**10+L0x7ffffed93c*X**11+
           L0x7ffffed940*X**12+L0x7ffffed944*X**13+L0x7ffffed948*X**14+
           L0x7ffffed94c*X**15)
          [Q, X**16 - 601683] /\
    eqmod (F**2)
          (L0x7ffffed950*X** 0+L0x7ffffed954*X** 1+L0x7ffffed958*X** 2+
           L0x7ffffed95c*X** 3+L0x7ffffed960*X** 4+L0x7ffffed964*X** 5+
           L0x7ffffed968*X** 6+L0x7ffffed96c*X** 7+L0x7ffffed970*X** 8+
           L0x7ffffed974*X** 9+L0x7ffffed978*X**10+L0x7ffffed97c*X**11+
           L0x7ffffed980*X**12+L0x7ffffed984*X**13+L0x7ffffed988*X**14+
           L0x7ffffed98c*X**15)
          [Q, X**16 - 3542485] /\
    eqmod (F**2)
          (L0x7ffffed990*X** 0+L0x7ffffed994*X** 1+L0x7ffffed998*X** 2+
           L0x7ffffed99c*X** 3+L0x7ffffed9a0*X** 4+L0x7ffffed9a4*X** 5+
           L0x7ffffed9a8*X** 6+L0x7ffffed9ac*X** 7+L0x7ffffed9b0*X** 8+
           L0x7ffffed9b4*X** 9+L0x7ffffed9b8*X**10+L0x7ffffed9bc*X**11+
           L0x7ffffed9c0*X**12+L0x7ffffed9c4*X**13+L0x7ffffed9c8*X**14+
           L0x7ffffed9cc*X**15)
          [Q, X**16 - 4837932] /\
    eqmod (F**2)
          (L0x7ffffed9d0*X** 0+L0x7ffffed9d4*X** 1+L0x7ffffed9d8*X** 2+
           L0x7ffffed9dc*X** 3+L0x7ffffed9e0*X** 4+L0x7ffffed9e4*X** 5+
           L0x7ffffed9e8*X** 6+L0x7ffffed9ec*X** 7+L0x7ffffed9f0*X** 8+
           L0x7ffffed9f4*X** 9+L0x7ffffed9f8*X**10+L0x7ffffed9fc*X**11+
           L0x7ffffeda00*X**12+L0x7ffffeda04*X**13+L0x7ffffeda08*X**14+
           L0x7ffffeda0c*X**15)
          [Q, X**16 - 2682288] /\
    eqmod (F**2)
          (L0x7ffffeda10*X** 0+L0x7ffffeda14*X** 1+L0x7ffffeda18*X** 2+
           L0x7ffffeda1c*X** 3+L0x7ffffeda20*X** 4+L0x7ffffeda24*X** 5+
           L0x7ffffeda28*X** 6+L0x7ffffeda2c*X** 7+L0x7ffffeda30*X** 8+
           L0x7ffffeda34*X** 9+L0x7ffffeda38*X**10+L0x7ffffeda3c*X**11+
           L0x7ffffeda40*X**12+L0x7ffffeda44*X**13+L0x7ffffeda48*X**14+
           L0x7ffffeda4c*X**15)
          [Q, X**16 - 5698129] /\
    eqmod (F**2)
          (L0x7ffffeda50*X** 0+L0x7ffffeda54*X** 1+L0x7ffffeda58*X** 2+
           L0x7ffffeda5c*X** 3+L0x7ffffeda60*X** 4+L0x7ffffeda64*X** 5+
           L0x7ffffeda68*X** 6+L0x7ffffeda6c*X** 7+L0x7ffffeda70*X** 8+
           L0x7ffffeda74*X** 9+L0x7ffffeda78*X**10+L0x7ffffeda7c*X**11+
           L0x7ffffeda80*X**12+L0x7ffffeda84*X**13+L0x7ffffeda88*X**14+
           L0x7ffffeda8c*X**15)
          [Q, X**16 - 2129892] /\
    eqmod (F**2)
          (L0x7ffffeda90*X** 0+L0x7ffffeda94*X** 1+L0x7ffffeda98*X** 2+
           L0x7ffffeda9c*X** 3+L0x7ffffedaa0*X** 4+L0x7ffffedaa4*X** 5+
           L0x7ffffedaa8*X** 6+L0x7ffffedaac*X** 7+L0x7ffffedab0*X** 8+
           L0x7ffffedab4*X** 9+L0x7ffffedab8*X**10+L0x7ffffedabc*X**11+
           L0x7ffffedac0*X**12+L0x7ffffedac4*X**13+L0x7ffffedac8*X**14+
           L0x7ffffedacc*X**15)
          [Q, X**16 - 6250525] /\
    eqmod (F**2)
          (L0x7ffffedad0*X** 0+L0x7ffffedad4*X** 1+L0x7ffffedad8*X** 2+
           L0x7ffffedadc*X** 3+L0x7ffffedae0*X** 4+L0x7ffffedae4*X** 5+
           L0x7ffffedae8*X** 6+L0x7ffffedaec*X** 7+L0x7ffffedaf0*X** 8+
           L0x7ffffedaf4*X** 9+L0x7ffffedaf8*X**10+L0x7ffffedafc*X**11+
           L0x7ffffedb00*X**12+L0x7ffffedb04*X**13+L0x7ffffedb08*X**14+
           L0x7ffffedb0c*X**15)
          [Q, X**16 - 3764867] /\
    eqmod (F**2)
          (L0x7ffffedb10*X** 0+L0x7ffffedb14*X** 1+L0x7ffffedb18*X** 2+
           L0x7ffffedb1c*X** 3+L0x7ffffedb20*X** 4+L0x7ffffedb24*X** 5+
           L0x7ffffedb28*X** 6+L0x7ffffedb2c*X** 7+L0x7ffffedb30*X** 8+
           L0x7ffffedb34*X** 9+L0x7ffffedb38*X**10+L0x7ffffedb3c*X**11+
           L0x7ffffedb40*X**12+L0x7ffffedb44*X**13+L0x7ffffedb48*X**14+
           L0x7ffffedb4c*X**15)
          [Q, X**16 - 4615550] /\
    eqmod (F**2)
          (L0x7ffffedb50*X** 0+L0x7ffffedb54*X** 1+L0x7ffffedb58*X** 2+
           L0x7ffffedb5c*X** 3+L0x7ffffedb60*X** 4+L0x7ffffedb64*X** 5+
           L0x7ffffedb68*X** 6+L0x7ffffedb6c*X** 7+L0x7ffffedb70*X** 8+
           L0x7ffffedb74*X** 9+L0x7ffffedb78*X**10+L0x7ffffedb7c*X**11+
           L0x7ffffedb80*X**12+L0x7ffffedb84*X**13+L0x7ffffedb88*X**14+
           L0x7ffffedb8c*X**15)
          [Q, X**16 - 7375178] /\
    eqmod (F**2)
          (L0x7ffffedb90*X** 0+L0x7ffffedb94*X** 1+L0x7ffffedb98*X** 2+
           L0x7ffffedb9c*X** 3+L0x7ffffedba0*X** 4+L0x7ffffedba4*X** 5+
           L0x7ffffedba8*X** 6+L0x7ffffedbac*X** 7+L0x7ffffedbb0*X** 8+
           L0x7ffffedbb4*X** 9+L0x7ffffedbb8*X**10+L0x7ffffedbbc*X**11+
           L0x7ffffedbc0*X**12+L0x7ffffedbc4*X**13+L0x7ffffedbc8*X**14+
           L0x7ffffedbcc*X**15)
          [Q, X**16 - 1005239] /\
    eqmod (F**2)
          (L0x7ffffedbd0*X** 0+L0x7ffffedbd4*X** 1+L0x7ffffedbd8*X** 2+
           L0x7ffffedbdc*X** 3+L0x7ffffedbe0*X** 4+L0x7ffffedbe4*X** 5+
           L0x7ffffedbe8*X** 6+L0x7ffffedbec*X** 7+L0x7ffffedbf0*X** 8+
           L0x7ffffedbf4*X** 9+L0x7ffffedbf8*X**10+L0x7ffffedbfc*X**11+
           L0x7ffffedc00*X**12+L0x7ffffedc04*X**13+L0x7ffffedc08*X**14+
           L0x7ffffedc0c*X**15)
          [Q, X**16 - 557458] /\
    eqmod (F**2)
          (L0x7ffffedc10*X** 0+L0x7ffffedc14*X** 1+L0x7ffffedc18*X** 2+
           L0x7ffffedc1c*X** 3+L0x7ffffedc20*X** 4+L0x7ffffedc24*X** 5+
           L0x7ffffedc28*X** 6+L0x7ffffedc2c*X** 7+L0x7ffffedc30*X** 8+
           L0x7ffffedc34*X** 9+L0x7ffffedc38*X**10+L0x7ffffedc3c*X**11+
           L0x7ffffedc40*X**12+L0x7ffffedc44*X**13+L0x7ffffedc48*X**14+
           L0x7ffffedc4c*X**15)
          [Q, X**16 - 7822959] /\
    eqmod (F**2)
          (L0x7ffffedc50*X** 0+L0x7ffffedc54*X** 1+L0x7ffffedc58*X** 2+
           L0x7ffffedc5c*X** 3+L0x7ffffedc60*X** 4+L0x7ffffedc64*X** 5+
           L0x7ffffedc68*X** 6+L0x7ffffedc6c*X** 7+L0x7ffffedc70*X** 8+
           L0x7ffffedc74*X** 9+L0x7ffffedc78*X**10+L0x7ffffedc7c*X**11+
           L0x7ffffedc80*X**12+L0x7ffffedc84*X**13+L0x7ffffedc88*X**14+
           L0x7ffffedc8c*X**15)
          [Q, X**16 - 7159240] /\
    eqmod (F**2)
          (L0x7ffffedc90*X** 0+L0x7ffffedc94*X** 1+L0x7ffffedc98*X** 2+
           L0x7ffffedc9c*X** 3+L0x7ffffedca0*X** 4+L0x7ffffedca4*X** 5+
           L0x7ffffedca8*X** 6+L0x7ffffedcac*X** 7+L0x7ffffedcb0*X** 8+
           L0x7ffffedcb4*X** 9+L0x7ffffedcb8*X**10+L0x7ffffedcbc*X**11+
           L0x7ffffedcc0*X**12+L0x7ffffedcc4*X**13+L0x7ffffedcc8*X**14+
           L0x7ffffedccc*X**15)
          [Q, X**16 - 1221177] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed8d0,L0x7ffffed8d4,L0x7ffffed8d8,L0x7ffffed8dc] /\
    [L0x7ffffed8d0,L0x7ffffed8d4,L0x7ffffed8d8,L0x7ffffed8dc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed8e0,L0x7ffffed8e4,L0x7ffffed8e8,L0x7ffffed8ec] /\
    [L0x7ffffed8e0,L0x7ffffed8e4,L0x7ffffed8e8,L0x7ffffed8ec] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed8f0,L0x7ffffed8f4,L0x7ffffed8f8,L0x7ffffed8fc] /\
    [L0x7ffffed8f0,L0x7ffffed8f4,L0x7ffffed8f8,L0x7ffffed8fc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed900,L0x7ffffed904,L0x7ffffed908,L0x7ffffed90c] /\
    [L0x7ffffed900,L0x7ffffed904,L0x7ffffed908,L0x7ffffed90c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed910,L0x7ffffed914,L0x7ffffed918,L0x7ffffed91c] /\
    [L0x7ffffed910,L0x7ffffed914,L0x7ffffed918,L0x7ffffed91c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed920,L0x7ffffed924,L0x7ffffed928,L0x7ffffed92c] /\
    [L0x7ffffed920,L0x7ffffed924,L0x7ffffed928,L0x7ffffed92c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed930,L0x7ffffed934,L0x7ffffed938,L0x7ffffed93c] /\
    [L0x7ffffed930,L0x7ffffed934,L0x7ffffed938,L0x7ffffed93c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed940,L0x7ffffed944,L0x7ffffed948,L0x7ffffed94c] /\
    [L0x7ffffed940,L0x7ffffed944,L0x7ffffed948,L0x7ffffed94c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed950,L0x7ffffed954,L0x7ffffed958,L0x7ffffed95c] /\
    [L0x7ffffed950,L0x7ffffed954,L0x7ffffed958,L0x7ffffed95c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed960,L0x7ffffed964,L0x7ffffed968,L0x7ffffed96c] /\
    [L0x7ffffed960,L0x7ffffed964,L0x7ffffed968,L0x7ffffed96c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed970,L0x7ffffed974,L0x7ffffed978,L0x7ffffed97c] /\
    [L0x7ffffed970,L0x7ffffed974,L0x7ffffed978,L0x7ffffed97c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed980,L0x7ffffed984,L0x7ffffed988,L0x7ffffed98c] /\
    [L0x7ffffed980,L0x7ffffed984,L0x7ffffed988,L0x7ffffed98c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed990,L0x7ffffed994,L0x7ffffed998,L0x7ffffed99c] /\
    [L0x7ffffed990,L0x7ffffed994,L0x7ffffed998,L0x7ffffed99c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed9a0,L0x7ffffed9a4,L0x7ffffed9a8,L0x7ffffed9ac] /\
    [L0x7ffffed9a0,L0x7ffffed9a4,L0x7ffffed9a8,L0x7ffffed9ac] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed9b0,L0x7ffffed9b4,L0x7ffffed9b8,L0x7ffffed9bc] /\
    [L0x7ffffed9b0,L0x7ffffed9b4,L0x7ffffed9b8,L0x7ffffed9bc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed9c0,L0x7ffffed9c4,L0x7ffffed9c8,L0x7ffffed9cc] /\
    [L0x7ffffed9c0,L0x7ffffed9c4,L0x7ffffed9c8,L0x7ffffed9cc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed9d0,L0x7ffffed9d4,L0x7ffffed9d8,L0x7ffffed9dc] /\
    [L0x7ffffed9d0,L0x7ffffed9d4,L0x7ffffed9d8,L0x7ffffed9dc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed9e0,L0x7ffffed9e4,L0x7ffffed9e8,L0x7ffffed9ec] /\
    [L0x7ffffed9e0,L0x7ffffed9e4,L0x7ffffed9e8,L0x7ffffed9ec] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffed9f0,L0x7ffffed9f4,L0x7ffffed9f8,L0x7ffffed9fc] /\
    [L0x7ffffed9f0,L0x7ffffed9f4,L0x7ffffed9f8,L0x7ffffed9fc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffeda00,L0x7ffffeda04,L0x7ffffeda08,L0x7ffffeda0c] /\
    [L0x7ffffeda00,L0x7ffffeda04,L0x7ffffeda08,L0x7ffffeda0c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffeda10,L0x7ffffeda14,L0x7ffffeda18,L0x7ffffeda1c] /\
    [L0x7ffffeda10,L0x7ffffeda14,L0x7ffffeda18,L0x7ffffeda1c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffeda20,L0x7ffffeda24,L0x7ffffeda28,L0x7ffffeda2c] /\
    [L0x7ffffeda20,L0x7ffffeda24,L0x7ffffeda28,L0x7ffffeda2c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffeda30,L0x7ffffeda34,L0x7ffffeda38,L0x7ffffeda3c] /\
    [L0x7ffffeda30,L0x7ffffeda34,L0x7ffffeda38,L0x7ffffeda3c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffeda40,L0x7ffffeda44,L0x7ffffeda48,L0x7ffffeda4c] /\
    [L0x7ffffeda40,L0x7ffffeda44,L0x7ffffeda48,L0x7ffffeda4c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffeda50,L0x7ffffeda54,L0x7ffffeda58,L0x7ffffeda5c] /\
    [L0x7ffffeda50,L0x7ffffeda54,L0x7ffffeda58,L0x7ffffeda5c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffeda60,L0x7ffffeda64,L0x7ffffeda68,L0x7ffffeda6c] /\
    [L0x7ffffeda60,L0x7ffffeda64,L0x7ffffeda68,L0x7ffffeda6c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffeda70,L0x7ffffeda74,L0x7ffffeda78,L0x7ffffeda7c] /\
    [L0x7ffffeda70,L0x7ffffeda74,L0x7ffffeda78,L0x7ffffeda7c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffeda80,L0x7ffffeda84,L0x7ffffeda88,L0x7ffffeda8c] /\
    [L0x7ffffeda80,L0x7ffffeda84,L0x7ffffeda88,L0x7ffffeda8c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffeda90,L0x7ffffeda94,L0x7ffffeda98,L0x7ffffeda9c] /\
    [L0x7ffffeda90,L0x7ffffeda94,L0x7ffffeda98,L0x7ffffeda9c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedaa0,L0x7ffffedaa4,L0x7ffffedaa8,L0x7ffffedaac] /\
    [L0x7ffffedaa0,L0x7ffffedaa4,L0x7ffffedaa8,L0x7ffffedaac] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedab0,L0x7ffffedab4,L0x7ffffedab8,L0x7ffffedabc] /\
    [L0x7ffffedab0,L0x7ffffedab4,L0x7ffffedab8,L0x7ffffedabc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedac0,L0x7ffffedac4,L0x7ffffedac8,L0x7ffffedacc] /\
    [L0x7ffffedac0,L0x7ffffedac4,L0x7ffffedac8,L0x7ffffedacc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedad0,L0x7ffffedad4,L0x7ffffedad8,L0x7ffffedadc] /\
    [L0x7ffffedad0,L0x7ffffedad4,L0x7ffffedad8,L0x7ffffedadc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedae0,L0x7ffffedae4,L0x7ffffedae8,L0x7ffffedaec] /\
    [L0x7ffffedae0,L0x7ffffedae4,L0x7ffffedae8,L0x7ffffedaec] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedaf0,L0x7ffffedaf4,L0x7ffffedaf8,L0x7ffffedafc] /\
    [L0x7ffffedaf0,L0x7ffffedaf4,L0x7ffffedaf8,L0x7ffffedafc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedb00,L0x7ffffedb04,L0x7ffffedb08,L0x7ffffedb0c] /\
    [L0x7ffffedb00,L0x7ffffedb04,L0x7ffffedb08,L0x7ffffedb0c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedb10,L0x7ffffedb14,L0x7ffffedb18,L0x7ffffedb1c] /\
    [L0x7ffffedb10,L0x7ffffedb14,L0x7ffffedb18,L0x7ffffedb1c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedb20,L0x7ffffedb24,L0x7ffffedb28,L0x7ffffedb2c] /\
    [L0x7ffffedb20,L0x7ffffedb24,L0x7ffffedb28,L0x7ffffedb2c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedb30,L0x7ffffedb34,L0x7ffffedb38,L0x7ffffedb3c] /\
    [L0x7ffffedb30,L0x7ffffedb34,L0x7ffffedb38,L0x7ffffedb3c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedb40,L0x7ffffedb44,L0x7ffffedb48,L0x7ffffedb4c] /\
    [L0x7ffffedb40,L0x7ffffedb44,L0x7ffffedb48,L0x7ffffedb4c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedb50,L0x7ffffedb54,L0x7ffffedb58,L0x7ffffedb5c] /\
    [L0x7ffffedb50,L0x7ffffedb54,L0x7ffffedb58,L0x7ffffedb5c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedb60,L0x7ffffedb64,L0x7ffffedb68,L0x7ffffedb6c] /\
    [L0x7ffffedb60,L0x7ffffedb64,L0x7ffffedb68,L0x7ffffedb6c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedb70,L0x7ffffedb74,L0x7ffffedb78,L0x7ffffedb7c] /\
    [L0x7ffffedb70,L0x7ffffedb74,L0x7ffffedb78,L0x7ffffedb7c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedb80,L0x7ffffedb84,L0x7ffffedb88,L0x7ffffedb8c] /\
    [L0x7ffffedb80,L0x7ffffedb84,L0x7ffffedb88,L0x7ffffedb8c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedb90,L0x7ffffedb94,L0x7ffffedb98,L0x7ffffedb9c] /\
    [L0x7ffffedb90,L0x7ffffedb94,L0x7ffffedb98,L0x7ffffedb9c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedba0,L0x7ffffedba4,L0x7ffffedba8,L0x7ffffedbac] /\
    [L0x7ffffedba0,L0x7ffffedba4,L0x7ffffedba8,L0x7ffffedbac] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedbb0,L0x7ffffedbb4,L0x7ffffedbb8,L0x7ffffedbbc] /\
    [L0x7ffffedbb0,L0x7ffffedbb4,L0x7ffffedbb8,L0x7ffffedbbc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedbc0,L0x7ffffedbc4,L0x7ffffedbc8,L0x7ffffedbcc] /\
    [L0x7ffffedbc0,L0x7ffffedbc4,L0x7ffffedbc8,L0x7ffffedbcc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedbd0,L0x7ffffedbd4,L0x7ffffedbd8,L0x7ffffedbdc] /\
    [L0x7ffffedbd0,L0x7ffffedbd4,L0x7ffffedbd8,L0x7ffffedbdc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedbe0,L0x7ffffedbe4,L0x7ffffedbe8,L0x7ffffedbec] /\
    [L0x7ffffedbe0,L0x7ffffedbe4,L0x7ffffedbe8,L0x7ffffedbec] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedbf0,L0x7ffffedbf4,L0x7ffffedbf8,L0x7ffffedbfc] /\
    [L0x7ffffedbf0,L0x7ffffedbf4,L0x7ffffedbf8,L0x7ffffedbfc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedc00,L0x7ffffedc04,L0x7ffffedc08,L0x7ffffedc0c] /\
    [L0x7ffffedc00,L0x7ffffedc04,L0x7ffffedc08,L0x7ffffedc0c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedc10,L0x7ffffedc14,L0x7ffffedc18,L0x7ffffedc1c] /\
    [L0x7ffffedc10,L0x7ffffedc14,L0x7ffffedc18,L0x7ffffedc1c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedc20,L0x7ffffedc24,L0x7ffffedc28,L0x7ffffedc2c] /\
    [L0x7ffffedc20,L0x7ffffedc24,L0x7ffffedc28,L0x7ffffedc2c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedc30,L0x7ffffedc34,L0x7ffffedc38,L0x7ffffedc3c] /\
    [L0x7ffffedc30,L0x7ffffedc34,L0x7ffffedc38,L0x7ffffedc3c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedc40,L0x7ffffedc44,L0x7ffffedc48,L0x7ffffedc4c] /\
    [L0x7ffffedc40,L0x7ffffedc44,L0x7ffffedc48,L0x7ffffedc4c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedc50,L0x7ffffedc54,L0x7ffffedc58,L0x7ffffedc5c] /\
    [L0x7ffffedc50,L0x7ffffedc54,L0x7ffffedc58,L0x7ffffedc5c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedc60,L0x7ffffedc64,L0x7ffffedc68,L0x7ffffedc6c] /\
    [L0x7ffffedc60,L0x7ffffedc64,L0x7ffffedc68,L0x7ffffedc6c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedc70,L0x7ffffedc74,L0x7ffffedc78,L0x7ffffedc7c] /\
    [L0x7ffffedc70,L0x7ffffedc74,L0x7ffffedc78,L0x7ffffedc7c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedc80,L0x7ffffedc84,L0x7ffffedc88,L0x7ffffedc8c] /\
    [L0x7ffffedc80,L0x7ffffedc84,L0x7ffffedc88,L0x7ffffedc8c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedc90,L0x7ffffedc94,L0x7ffffedc98,L0x7ffffedc9c] /\
    [L0x7ffffedc90,L0x7ffffedc94,L0x7ffffedc98,L0x7ffffedc9c] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedca0,L0x7ffffedca4,L0x7ffffedca8,L0x7ffffedcac] /\
    [L0x7ffffedca0,L0x7ffffedca4,L0x7ffffedca8,L0x7ffffedcac] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedcb0,L0x7ffffedcb4,L0x7ffffedcb8,L0x7ffffedcbc] /\
    [L0x7ffffedcb0,L0x7ffffedcb4,L0x7ffffedcb8,L0x7ffffedcbc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2] /\
    [4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2,4*NQ+NQ2] <
    [L0x7ffffedcc0,L0x7ffffedcc4,L0x7ffffedcc8,L0x7ffffedccc] /\
    [L0x7ffffedcc0,L0x7ffffedcc4,L0x7ffffedcc8,L0x7ffffedccc] <
    [4*Q+Q2,4*Q+Q2,4*Q+Q2,4*Q+Q2]
    prove with [cuts [8, 17, 26], all ghosts]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed8d0,L0x7ffffed8d4,L0x7ffffed8d8,L0x7ffffed8dc] /\
    [L0x7ffffed8d0,L0x7ffffed8d4,L0x7ffffed8d8,L0x7ffffed8dc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed8e0,L0x7ffffed8e4,L0x7ffffed8e8,L0x7ffffed8ec] /\
    [L0x7ffffed8e0,L0x7ffffed8e4,L0x7ffffed8e8,L0x7ffffed8ec] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed8f0,L0x7ffffed8f4,L0x7ffffed8f8,L0x7ffffed8fc] /\
    [L0x7ffffed8f0,L0x7ffffed8f4,L0x7ffffed8f8,L0x7ffffed8fc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed900,L0x7ffffed904,L0x7ffffed908,L0x7ffffed90c] /\
    [L0x7ffffed900,L0x7ffffed904,L0x7ffffed908,L0x7ffffed90c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed910,L0x7ffffed914,L0x7ffffed918,L0x7ffffed91c] /\
    [L0x7ffffed910,L0x7ffffed914,L0x7ffffed918,L0x7ffffed91c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed920,L0x7ffffed924,L0x7ffffed928,L0x7ffffed92c] /\
    [L0x7ffffed920,L0x7ffffed924,L0x7ffffed928,L0x7ffffed92c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed930,L0x7ffffed934,L0x7ffffed938,L0x7ffffed93c] /\
    [L0x7ffffed930,L0x7ffffed934,L0x7ffffed938,L0x7ffffed93c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed940,L0x7ffffed944,L0x7ffffed948,L0x7ffffed94c] /\
    [L0x7ffffed940,L0x7ffffed944,L0x7ffffed948,L0x7ffffed94c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed950,L0x7ffffed954,L0x7ffffed958,L0x7ffffed95c] /\
    [L0x7ffffed950,L0x7ffffed954,L0x7ffffed958,L0x7ffffed95c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed960,L0x7ffffed964,L0x7ffffed968,L0x7ffffed96c] /\
    [L0x7ffffed960,L0x7ffffed964,L0x7ffffed968,L0x7ffffed96c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed970,L0x7ffffed974,L0x7ffffed978,L0x7ffffed97c] /\
    [L0x7ffffed970,L0x7ffffed974,L0x7ffffed978,L0x7ffffed97c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed980,L0x7ffffed984,L0x7ffffed988,L0x7ffffed98c] /\
    [L0x7ffffed980,L0x7ffffed984,L0x7ffffed988,L0x7ffffed98c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed990,L0x7ffffed994,L0x7ffffed998,L0x7ffffed99c] /\
    [L0x7ffffed990,L0x7ffffed994,L0x7ffffed998,L0x7ffffed99c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed9a0,L0x7ffffed9a4,L0x7ffffed9a8,L0x7ffffed9ac] /\
    [L0x7ffffed9a0,L0x7ffffed9a4,L0x7ffffed9a8,L0x7ffffed9ac] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed9b0,L0x7ffffed9b4,L0x7ffffed9b8,L0x7ffffed9bc] /\
    [L0x7ffffed9b0,L0x7ffffed9b4,L0x7ffffed9b8,L0x7ffffed9bc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed9c0,L0x7ffffed9c4,L0x7ffffed9c8,L0x7ffffed9cc] /\
    [L0x7ffffed9c0,L0x7ffffed9c4,L0x7ffffed9c8,L0x7ffffed9cc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed9d0,L0x7ffffed9d4,L0x7ffffed9d8,L0x7ffffed9dc] /\
    [L0x7ffffed9d0,L0x7ffffed9d4,L0x7ffffed9d8,L0x7ffffed9dc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed9e0,L0x7ffffed9e4,L0x7ffffed9e8,L0x7ffffed9ec] /\
    [L0x7ffffed9e0,L0x7ffffed9e4,L0x7ffffed9e8,L0x7ffffed9ec] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffed9f0,L0x7ffffed9f4,L0x7ffffed9f8,L0x7ffffed9fc] /\
    [L0x7ffffed9f0,L0x7ffffed9f4,L0x7ffffed9f8,L0x7ffffed9fc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffeda00,L0x7ffffeda04,L0x7ffffeda08,L0x7ffffeda0c] /\
    [L0x7ffffeda00,L0x7ffffeda04,L0x7ffffeda08,L0x7ffffeda0c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffeda10,L0x7ffffeda14,L0x7ffffeda18,L0x7ffffeda1c] /\
    [L0x7ffffeda10,L0x7ffffeda14,L0x7ffffeda18,L0x7ffffeda1c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffeda20,L0x7ffffeda24,L0x7ffffeda28,L0x7ffffeda2c] /\
    [L0x7ffffeda20,L0x7ffffeda24,L0x7ffffeda28,L0x7ffffeda2c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffeda30,L0x7ffffeda34,L0x7ffffeda38,L0x7ffffeda3c] /\
    [L0x7ffffeda30,L0x7ffffeda34,L0x7ffffeda38,L0x7ffffeda3c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffeda40,L0x7ffffeda44,L0x7ffffeda48,L0x7ffffeda4c] /\
    [L0x7ffffeda40,L0x7ffffeda44,L0x7ffffeda48,L0x7ffffeda4c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffeda50,L0x7ffffeda54,L0x7ffffeda58,L0x7ffffeda5c] /\
    [L0x7ffffeda50,L0x7ffffeda54,L0x7ffffeda58,L0x7ffffeda5c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffeda60,L0x7ffffeda64,L0x7ffffeda68,L0x7ffffeda6c] /\
    [L0x7ffffeda60,L0x7ffffeda64,L0x7ffffeda68,L0x7ffffeda6c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffeda70,L0x7ffffeda74,L0x7ffffeda78,L0x7ffffeda7c] /\
    [L0x7ffffeda70,L0x7ffffeda74,L0x7ffffeda78,L0x7ffffeda7c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffeda80,L0x7ffffeda84,L0x7ffffeda88,L0x7ffffeda8c] /\
    [L0x7ffffeda80,L0x7ffffeda84,L0x7ffffeda88,L0x7ffffeda8c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffeda90,L0x7ffffeda94,L0x7ffffeda98,L0x7ffffeda9c] /\
    [L0x7ffffeda90,L0x7ffffeda94,L0x7ffffeda98,L0x7ffffeda9c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedaa0,L0x7ffffedaa4,L0x7ffffedaa8,L0x7ffffedaac] /\
    [L0x7ffffedaa0,L0x7ffffedaa4,L0x7ffffedaa8,L0x7ffffedaac] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedab0,L0x7ffffedab4,L0x7ffffedab8,L0x7ffffedabc] /\
    [L0x7ffffedab0,L0x7ffffedab4,L0x7ffffedab8,L0x7ffffedabc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedac0,L0x7ffffedac4,L0x7ffffedac8,L0x7ffffedacc] /\
    [L0x7ffffedac0,L0x7ffffedac4,L0x7ffffedac8,L0x7ffffedacc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedad0,L0x7ffffedad4,L0x7ffffedad8,L0x7ffffedadc] /\
    [L0x7ffffedad0,L0x7ffffedad4,L0x7ffffedad8,L0x7ffffedadc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedae0,L0x7ffffedae4,L0x7ffffedae8,L0x7ffffedaec] /\
    [L0x7ffffedae0,L0x7ffffedae4,L0x7ffffedae8,L0x7ffffedaec] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedaf0,L0x7ffffedaf4,L0x7ffffedaf8,L0x7ffffedafc] /\
    [L0x7ffffedaf0,L0x7ffffedaf4,L0x7ffffedaf8,L0x7ffffedafc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedb00,L0x7ffffedb04,L0x7ffffedb08,L0x7ffffedb0c] /\
    [L0x7ffffedb00,L0x7ffffedb04,L0x7ffffedb08,L0x7ffffedb0c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedb10,L0x7ffffedb14,L0x7ffffedb18,L0x7ffffedb1c] /\
    [L0x7ffffedb10,L0x7ffffedb14,L0x7ffffedb18,L0x7ffffedb1c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedb20,L0x7ffffedb24,L0x7ffffedb28,L0x7ffffedb2c] /\
    [L0x7ffffedb20,L0x7ffffedb24,L0x7ffffedb28,L0x7ffffedb2c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedb30,L0x7ffffedb34,L0x7ffffedb38,L0x7ffffedb3c] /\
    [L0x7ffffedb30,L0x7ffffedb34,L0x7ffffedb38,L0x7ffffedb3c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedb40,L0x7ffffedb44,L0x7ffffedb48,L0x7ffffedb4c] /\
    [L0x7ffffedb40,L0x7ffffedb44,L0x7ffffedb48,L0x7ffffedb4c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedb50,L0x7ffffedb54,L0x7ffffedb58,L0x7ffffedb5c] /\
    [L0x7ffffedb50,L0x7ffffedb54,L0x7ffffedb58,L0x7ffffedb5c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedb60,L0x7ffffedb64,L0x7ffffedb68,L0x7ffffedb6c] /\
    [L0x7ffffedb60,L0x7ffffedb64,L0x7ffffedb68,L0x7ffffedb6c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedb70,L0x7ffffedb74,L0x7ffffedb78,L0x7ffffedb7c] /\
    [L0x7ffffedb70,L0x7ffffedb74,L0x7ffffedb78,L0x7ffffedb7c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedb80,L0x7ffffedb84,L0x7ffffedb88,L0x7ffffedb8c] /\
    [L0x7ffffedb80,L0x7ffffedb84,L0x7ffffedb88,L0x7ffffedb8c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedb90,L0x7ffffedb94,L0x7ffffedb98,L0x7ffffedb9c] /\
    [L0x7ffffedb90,L0x7ffffedb94,L0x7ffffedb98,L0x7ffffedb9c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedba0,L0x7ffffedba4,L0x7ffffedba8,L0x7ffffedbac] /\
    [L0x7ffffedba0,L0x7ffffedba4,L0x7ffffedba8,L0x7ffffedbac] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedbb0,L0x7ffffedbb4,L0x7ffffedbb8,L0x7ffffedbbc] /\
    [L0x7ffffedbb0,L0x7ffffedbb4,L0x7ffffedbb8,L0x7ffffedbbc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedbc0,L0x7ffffedbc4,L0x7ffffedbc8,L0x7ffffedbcc] /\
    [L0x7ffffedbc0,L0x7ffffedbc4,L0x7ffffedbc8,L0x7ffffedbcc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedbd0,L0x7ffffedbd4,L0x7ffffedbd8,L0x7ffffedbdc] /\
    [L0x7ffffedbd0,L0x7ffffedbd4,L0x7ffffedbd8,L0x7ffffedbdc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedbe0,L0x7ffffedbe4,L0x7ffffedbe8,L0x7ffffedbec] /\
    [L0x7ffffedbe0,L0x7ffffedbe4,L0x7ffffedbe8,L0x7ffffedbec] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedbf0,L0x7ffffedbf4,L0x7ffffedbf8,L0x7ffffedbfc] /\
    [L0x7ffffedbf0,L0x7ffffedbf4,L0x7ffffedbf8,L0x7ffffedbfc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedc00,L0x7ffffedc04,L0x7ffffedc08,L0x7ffffedc0c] /\
    [L0x7ffffedc00,L0x7ffffedc04,L0x7ffffedc08,L0x7ffffedc0c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedc10,L0x7ffffedc14,L0x7ffffedc18,L0x7ffffedc1c] /\
    [L0x7ffffedc10,L0x7ffffedc14,L0x7ffffedc18,L0x7ffffedc1c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedc20,L0x7ffffedc24,L0x7ffffedc28,L0x7ffffedc2c] /\
    [L0x7ffffedc20,L0x7ffffedc24,L0x7ffffedc28,L0x7ffffedc2c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedc30,L0x7ffffedc34,L0x7ffffedc38,L0x7ffffedc3c] /\
    [L0x7ffffedc30,L0x7ffffedc34,L0x7ffffedc38,L0x7ffffedc3c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedc40,L0x7ffffedc44,L0x7ffffedc48,L0x7ffffedc4c] /\
    [L0x7ffffedc40,L0x7ffffedc44,L0x7ffffedc48,L0x7ffffedc4c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedc50,L0x7ffffedc54,L0x7ffffedc58,L0x7ffffedc5c] /\
    [L0x7ffffedc50,L0x7ffffedc54,L0x7ffffedc58,L0x7ffffedc5c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedc60,L0x7ffffedc64,L0x7ffffedc68,L0x7ffffedc6c] /\
    [L0x7ffffedc60,L0x7ffffedc64,L0x7ffffedc68,L0x7ffffedc6c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedc70,L0x7ffffedc74,L0x7ffffedc78,L0x7ffffedc7c] /\
    [L0x7ffffedc70,L0x7ffffedc74,L0x7ffffedc78,L0x7ffffedc7c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedc80,L0x7ffffedc84,L0x7ffffedc88,L0x7ffffedc8c] /\
    [L0x7ffffedc80,L0x7ffffedc84,L0x7ffffedc88,L0x7ffffedc8c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedc90,L0x7ffffedc94,L0x7ffffedc98,L0x7ffffedc9c] /\
    [L0x7ffffedc90,L0x7ffffedc94,L0x7ffffedc98,L0x7ffffedc9c] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedca0,L0x7ffffedca4,L0x7ffffedca8,L0x7ffffedcac] /\
    [L0x7ffffedca0,L0x7ffffedca4,L0x7ffffedca8,L0x7ffffedcac] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedcb0,L0x7ffffedcb4,L0x7ffffedcb8,L0x7ffffedcbc] /\
    [L0x7ffffedcb0,L0x7ffffedcb4,L0x7ffffedcb8,L0x7ffffedcbc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2] /\
    [4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2,4@32*NQ+NQ2] <s
    [L0x7ffffedcc0,L0x7ffffedcc4,L0x7ffffedcc8,L0x7ffffedccc] /\
    [L0x7ffffedcc0,L0x7ffffedcc4,L0x7ffffedcc8,L0x7ffffedccc] <s
    [4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2,4@32*Q+Q2]
prove with [cuts [8,17,26]];




(* ldp	x19, x20, [sp]                              #! EA = L0x7ffffec300; Value = 0x0000005555565b20; PC = 0x5555565508 *)
mov x19 L0x7ffffec300; mov x20 L0x7ffffec308;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0x7ffffec310; Value = 0x0000005555565b60; PC = 0x555556550c *)
mov x21 L0x7ffffec310; mov x22 L0x7ffffec318;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0x7ffffec320; Value = 0x0000007ffffed8d0; PC = 0x5555565510 *)
mov x23 L0x7ffffec320; mov x24 L0x7ffffec328;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0x7ffffec330; Value = 0x0000007fffffad70; PC = 0x5555565514 *)
mov x25 L0x7ffffec330; mov x26 L0x7ffffec338;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0x7ffffec340; Value = 0x0000007fffffc9f0; PC = 0x5555565518 *)
mov x27 L0x7ffffec340; mov x28 L0x7ffffec348;
(* ldp	d8, d9, [sp, #80]                           #! EA = L0x7ffffec350; Value = 0x0000000000000000; PC = 0x555556551c *)
mov d8 L0x7ffffec350; mov d9 L0x7ffffec358;
(* ldp	d10, d11, [sp, #96]                         #! EA = L0x7ffffec360; Value = 0x0000000000000000; PC = 0x5555565520 *)
mov d10 L0x7ffffec360; mov d11 L0x7ffffec368;
(* ldp	d12, d13, [sp, #112]                        #! EA = L0x7ffffec370; Value = 0x0000000000000000; PC = 0x5555565524 *)
mov d12 L0x7ffffec370; mov d13 L0x7ffffec378;
(* ldp	d14, d15, [sp, #128]                        #! EA = L0x7ffffec380; Value = 0x0000000000000000; PC = 0x5555565528 *)
mov d14 L0x7ffffec380; mov d15 L0x7ffffec388;
(* #br	x30                                         #! PC = 0x5555565530 *)
#br	x30                                         #! 0x5555565530 = 0x5555565530;
(* mov	x2, x19                                     #! PC = 0x555556420c *)
mov x2 x19;
(* mov	x1, x21                                     #! PC = 0x5555564210 *)
mov x1 x21;
(* mov	x0, x20                                     #! PC = 0x5555564214 *)
mov x0 x20;
(* ldp	x19, x20, [sp, #16]                         #! EA = L0x7ffffec3a0; Value = 0x0000007ffffedcd0; PC = 0x5555564218 *)
mov x19 L0x7ffffec3a0; mov x20 L0x7ffffec3a8;
(* ldr	x21, [sp, #32]                              #! EA = L0x7ffffec3b0; Value = 0x0000007ffffec4d0; PC = 0x555556421c *)
mov x21 L0x7ffffec3b0;
(* ldp	x29, x30, [sp], #48                         #! EA = L0x7ffffec390; Value = 0x0000007ffffec3c0; PC = 0x5555564220 *)
mov x29 L0x7ffffec390; mov x30 L0x7ffffec398;
(* #b	0x5555565534 <_PQCLEAN_DILITHIUM3_AARCH64__asm_ntt_SIMD_bot>#! PC = 0x5555564224 *)
#b	0x5555565534 <_PQCLEAN_DILITHIUM3_AARCH64__asm_ntt_SIMD_bot>#! 0x5555564224 = 0x5555564224;
(* stp	x19, x20, [sp]                              #! EA = L0x7ffffec330; PC = 0x5555565538 *)
mov L0x7ffffec330 x19; mov L0x7ffffec338 x20;
(* stp	x21, x22, [sp, #16]                         #! EA = L0x7ffffec340; PC = 0x555556553c *)
mov L0x7ffffec340 x21; mov L0x7ffffec348 x22;
(* stp	x23, x24, [sp, #32]                         #! EA = L0x7ffffec350; PC = 0x5555565540 *)
mov L0x7ffffec350 x23; mov L0x7ffffec358 x24;
(* stp	x25, x26, [sp, #48]                         #! EA = L0x7ffffec360; PC = 0x5555565544 *)
mov L0x7ffffec360 x25; mov L0x7ffffec368 x26;
(* stp	x27, x28, [sp, #64]                         #! EA = L0x7ffffec370; PC = 0x5555565548 *)
mov L0x7ffffec370 x27; mov L0x7ffffec378 x28;
(* stp	d8, d9, [sp, #80]                           #! EA = L0x7ffffec380; PC = 0x555556554c *)
mov L0x7ffffec380 d8; mov L0x7ffffec388 d9;
(* stp	d10, d11, [sp, #96]                         #! EA = L0x7ffffec390; PC = 0x5555565550 *)
mov L0x7ffffec390 d10; mov L0x7ffffec398 d11;
(* stp	d12, d13, [sp, #112]                        #! EA = L0x7ffffec3a0; PC = 0x5555565554 *)
mov L0x7ffffec3a0 d12; mov L0x7ffffec3a8 d13;
(* stp	d14, d15, [sp, #128]                        #! EA = L0x7ffffec3b0; PC = 0x5555565558 *)
mov L0x7ffffec3b0 d14; mov L0x7ffffec3b8 d15;
(* ldr	w20, [x2]                                   #! EA = L0x5555565b20; Value = 0xfc7fdfff007fe001; PC = 0x555556555c *)
mov w20 L0x5555565b20;
(* add	x28, x1, #0x80                              #! PC = 0x5555565560 *)
adds dc x28 x1 (0x80)@uint64;
(* add	x27, x28, #0x400                            #! PC = 0x5555565564 *)
adds dc x27 x28 (0x400)@uint64;
(* add	x2, x0, #0x200                              #! PC = 0x5555565568 *)
adds dc x2 x0 (0x200)@uint64;
(* add	x1, x0, #0x0                                #! PC = 0x555556556c *)
adds dc x1 x0 (0x0)@uint64;
(* add	x3, x0, #0x200                              #! PC = 0x5555565570 *)
adds dc x3 x0 (0x200)@uint64;
(* mov	x19, #0x8                   	// #8          #! PC = 0x5555565574 *)
mov x19 (0x8)@uint64;


(**************** mid function ****************)

ghost G0@sint32,G1@sint32,G2@sint32,G3@sint32,G4@sint32,G5@sint32,
      G6@sint32,G7@sint32,G8@sint32,G9@sint32,Ga@sint32,Gb@sint32,
      Gc@sint32,Gd@sint32,Ge@sint32,Gf@sint32 :
G0 = L0x7ffffed8d0*X** 0+L0x7ffffed8d4*X** 1+L0x7ffffed8d8*X** 2+
     L0x7ffffed8dc*X** 3+L0x7ffffed8e0*X** 4+L0x7ffffed8e4*X** 5+
     L0x7ffffed8e8*X** 6+L0x7ffffed8ec*X** 7+L0x7ffffed8f0*X** 8+
     L0x7ffffed8f4*X** 9+L0x7ffffed8f8*X**10+L0x7ffffed8fc*X**11+
     L0x7ffffed900*X**12+L0x7ffffed904*X**13+L0x7ffffed908*X**14+
     L0x7ffffed90c*X**15 /\
G1 = L0x7ffffed910*X** 0+L0x7ffffed914*X** 1+L0x7ffffed918*X** 2+
     L0x7ffffed91c*X** 3+L0x7ffffed920*X** 4+L0x7ffffed924*X** 5+
     L0x7ffffed928*X** 6+L0x7ffffed92c*X** 7+L0x7ffffed930*X** 8+
     L0x7ffffed934*X** 9+L0x7ffffed938*X**10+L0x7ffffed93c*X**11+
     L0x7ffffed940*X**12+L0x7ffffed944*X**13+L0x7ffffed948*X**14+
     L0x7ffffed94c*X**15 /\
G2 = L0x7ffffed950*X** 0+L0x7ffffed954*X** 1+L0x7ffffed958*X** 2+
     L0x7ffffed95c*X** 3+L0x7ffffed960*X** 4+L0x7ffffed964*X** 5+
     L0x7ffffed968*X** 6+L0x7ffffed96c*X** 7+L0x7ffffed970*X** 8+
     L0x7ffffed974*X** 9+L0x7ffffed978*X**10+L0x7ffffed97c*X**11+
     L0x7ffffed980*X**12+L0x7ffffed984*X**13+L0x7ffffed988*X**14+
     L0x7ffffed98c*X**15 /\
G3 = L0x7ffffed990*X** 0+L0x7ffffed994*X** 1+L0x7ffffed998*X** 2+
     L0x7ffffed99c*X** 3+L0x7ffffed9a0*X** 4+L0x7ffffed9a4*X** 5+
     L0x7ffffed9a8*X** 6+L0x7ffffed9ac*X** 7+L0x7ffffed9b0*X** 8+
     L0x7ffffed9b4*X** 9+L0x7ffffed9b8*X**10+L0x7ffffed9bc*X**11+
     L0x7ffffed9c0*X**12+L0x7ffffed9c4*X**13+L0x7ffffed9c8*X**14+
     L0x7ffffed9cc*X**15 /\
G4 = L0x7ffffed9d0*X** 0+L0x7ffffed9d4*X** 1+L0x7ffffed9d8*X** 2+
     L0x7ffffed9dc*X** 3+L0x7ffffed9e0*X** 4+L0x7ffffed9e4*X** 5+
     L0x7ffffed9e8*X** 6+L0x7ffffed9ec*X** 7+L0x7ffffed9f0*X** 8+
     L0x7ffffed9f4*X** 9+L0x7ffffed9f8*X**10+L0x7ffffed9fc*X**11+
     L0x7ffffeda00*X**12+L0x7ffffeda04*X**13+L0x7ffffeda08*X**14+
     L0x7ffffeda0c*X**15 /\
G5 = L0x7ffffeda10*X** 0+L0x7ffffeda14*X** 1+L0x7ffffeda18*X** 2+
     L0x7ffffeda1c*X** 3+L0x7ffffeda20*X** 4+L0x7ffffeda24*X** 5+
     L0x7ffffeda28*X** 6+L0x7ffffeda2c*X** 7+L0x7ffffeda30*X** 8+
     L0x7ffffeda34*X** 9+L0x7ffffeda38*X**10+L0x7ffffeda3c*X**11+
     L0x7ffffeda40*X**12+L0x7ffffeda44*X**13+L0x7ffffeda48*X**14+
     L0x7ffffeda4c*X**15 /\
G6 = L0x7ffffeda50*X** 0+L0x7ffffeda54*X** 1+L0x7ffffeda58*X** 2+
     L0x7ffffeda5c*X** 3+L0x7ffffeda60*X** 4+L0x7ffffeda64*X** 5+
     L0x7ffffeda68*X** 6+L0x7ffffeda6c*X** 7+L0x7ffffeda70*X** 8+
     L0x7ffffeda74*X** 9+L0x7ffffeda78*X**10+L0x7ffffeda7c*X**11+
     L0x7ffffeda80*X**12+L0x7ffffeda84*X**13+L0x7ffffeda88*X**14+
     L0x7ffffeda8c*X**15 /\
G7 = L0x7ffffeda90*X** 0+L0x7ffffeda94*X** 1+L0x7ffffeda98*X** 2+
     L0x7ffffeda9c*X** 3+L0x7ffffedaa0*X** 4+L0x7ffffedaa4*X** 5+
     L0x7ffffedaa8*X** 6+L0x7ffffedaac*X** 7+L0x7ffffedab0*X** 8+
     L0x7ffffedab4*X** 9+L0x7ffffedab8*X**10+L0x7ffffedabc*X**11+
     L0x7ffffedac0*X**12+L0x7ffffedac4*X**13+L0x7ffffedac8*X**14+
     L0x7ffffedacc*X**15 /\
G8 = L0x7ffffedad0*X** 0+L0x7ffffedad4*X** 1+L0x7ffffedad8*X** 2+
     L0x7ffffedadc*X** 3+L0x7ffffedae0*X** 4+L0x7ffffedae4*X** 5+
     L0x7ffffedae8*X** 6+L0x7ffffedaec*X** 7+L0x7ffffedaf0*X** 8+
     L0x7ffffedaf4*X** 9+L0x7ffffedaf8*X**10+L0x7ffffedafc*X**11+
     L0x7ffffedb00*X**12+L0x7ffffedb04*X**13+L0x7ffffedb08*X**14+
     L0x7ffffedb0c*X**15 /\
G9 = L0x7ffffedb10*X** 0+L0x7ffffedb14*X** 1+L0x7ffffedb18*X** 2+
     L0x7ffffedb1c*X** 3+L0x7ffffedb20*X** 4+L0x7ffffedb24*X** 5+
     L0x7ffffedb28*X** 6+L0x7ffffedb2c*X** 7+L0x7ffffedb30*X** 8+
     L0x7ffffedb34*X** 9+L0x7ffffedb38*X**10+L0x7ffffedb3c*X**11+
     L0x7ffffedb40*X**12+L0x7ffffedb44*X**13+L0x7ffffedb48*X**14+
     L0x7ffffedb4c*X**15 /\
Ga = L0x7ffffedb50*X** 0+L0x7ffffedb54*X** 1+L0x7ffffedb58*X** 2+
     L0x7ffffedb5c*X** 3+L0x7ffffedb60*X** 4+L0x7ffffedb64*X** 5+
     L0x7ffffedb68*X** 6+L0x7ffffedb6c*X** 7+L0x7ffffedb70*X** 8+
     L0x7ffffedb74*X** 9+L0x7ffffedb78*X**10+L0x7ffffedb7c*X**11+
     L0x7ffffedb80*X**12+L0x7ffffedb84*X**13+L0x7ffffedb88*X**14+
     L0x7ffffedb8c*X**15 /\
Gb = L0x7ffffedb90*X** 0+L0x7ffffedb94*X** 1+L0x7ffffedb98*X** 2+
     L0x7ffffedb9c*X** 3+L0x7ffffedba0*X** 4+L0x7ffffedba4*X** 5+
     L0x7ffffedba8*X** 6+L0x7ffffedbac*X** 7+L0x7ffffedbb0*X** 8+
     L0x7ffffedbb4*X** 9+L0x7ffffedbb8*X**10+L0x7ffffedbbc*X**11+
     L0x7ffffedbc0*X**12+L0x7ffffedbc4*X**13+L0x7ffffedbc8*X**14+
     L0x7ffffedbcc*X**15 /\
Gc = L0x7ffffedbd0*X** 0+L0x7ffffedbd4*X** 1+L0x7ffffedbd8*X** 2+
     L0x7ffffedbdc*X** 3+L0x7ffffedbe0*X** 4+L0x7ffffedbe4*X** 5+
     L0x7ffffedbe8*X** 6+L0x7ffffedbec*X** 7+L0x7ffffedbf0*X** 8+
     L0x7ffffedbf4*X** 9+L0x7ffffedbf8*X**10+L0x7ffffedbfc*X**11+
     L0x7ffffedc00*X**12+L0x7ffffedc04*X**13+L0x7ffffedc08*X**14+
     L0x7ffffedc0c*X**15 /\
Gd = L0x7ffffedc10*X** 0+L0x7ffffedc14*X** 1+L0x7ffffedc18*X** 2+
     L0x7ffffedc1c*X** 3+L0x7ffffedc20*X** 4+L0x7ffffedc24*X** 5+
     L0x7ffffedc28*X** 6+L0x7ffffedc2c*X** 7+L0x7ffffedc30*X** 8+
     L0x7ffffedc34*X** 9+L0x7ffffedc38*X**10+L0x7ffffedc3c*X**11+
     L0x7ffffedc40*X**12+L0x7ffffedc44*X**13+L0x7ffffedc48*X**14+
     L0x7ffffedc4c*X**15 /\
Ge = L0x7ffffedc50*X** 0+L0x7ffffedc54*X** 1+L0x7ffffedc58*X** 2+
     L0x7ffffedc5c*X** 3+L0x7ffffedc60*X** 4+L0x7ffffedc64*X** 5+
     L0x7ffffedc68*X** 6+L0x7ffffedc6c*X** 7+L0x7ffffedc70*X** 8+
     L0x7ffffedc74*X** 9+L0x7ffffedc78*X**10+L0x7ffffedc7c*X**11+
     L0x7ffffedc80*X**12+L0x7ffffedc84*X**13+L0x7ffffedc88*X**14+
     L0x7ffffedc8c*X**15 /\
Gf = L0x7ffffedc90*X** 0+L0x7ffffedc94*X** 1+L0x7ffffedc98*X** 2+
     L0x7ffffedc9c*X** 3+L0x7ffffedca0*X** 4+L0x7ffffedca4*X** 5+
     L0x7ffffedca8*X** 6+L0x7ffffedcac*X** 7+L0x7ffffedcb0*X** 8+
     L0x7ffffedcb4*X** 9+L0x7ffffedcb8*X**10+L0x7ffffedcbc*X**11+
     L0x7ffffedcc0*X**12+L0x7ffffedcc4*X**13+L0x7ffffedcc8*X**14+
     L0x7ffffedccc*X**15 && true;



(* ld1	{v0.4s-v3.4s}, [x0], #64                    #! EA = L0x7ffffed8d0; Value = 0xffaf9068005b1c4d; PC = 0x5555565578 *)
mov %v0 [L0x7ffffed8d0, L0x7ffffed8d4, L0x7ffffed8d8, L0x7ffffed8dc];
mov %v1 [L0x7ffffed8e0, L0x7ffffed8e4, L0x7ffffed8e8, L0x7ffffed8ec];
mov %v2 [L0x7ffffed8f0, L0x7ffffed8f4, L0x7ffffed8f8, L0x7ffffed8fc];
mov %v3 [L0x7ffffed900, L0x7ffffed904, L0x7ffffed908, L0x7ffffed90c];
(* ld1	{v16.4s-v19.4s}, [x2], #64                  #! EA = L0x7ffffedad0; Value = 0x000fbaf5ffb91d15; PC = 0x555556557c *)
mov %v16 [L0x7ffffedad0, L0x7ffffedad4, L0x7ffffedad8, L0x7ffffedadc];
mov %v17 [L0x7ffffedae0, L0x7ffffedae4, L0x7ffffedae8, L0x7ffffedaec];
mov %v18 [L0x7ffffedaf0, L0x7ffffedaf4, L0x7ffffedaf8, L0x7ffffedafc];
mov %v19 [L0x7ffffedb00, L0x7ffffedb04, L0x7ffffedb08, L0x7ffffedb0c];
(* ld1	{v4.4s, v5.4s}, [x28], #32                  #! EA = L0x5555565be0; Value = 0x0000000000000000; PC = 0x5555565580 *)
mov %v4 [L0x5555565be0, L0x5555565be4, L0x5555565be8, L0x5555565bec];
mov %v5 [L0x5555565bf0, L0x5555565bf4, L0x5555565bf8, L0x5555565bfc];
(* ld2	{v6.4s, v7.4s}, [x28], #32                  #! EA = L0x5555565c00; Value = 0x002ee3f12eefac8d; PC = 0x5555565584 *)
mov %v6 [L0x5555565c00, L0x5555565c08, L0x5555565c10, L0x5555565c18];
mov %v7 [L0x5555565c04, L0x5555565c0c, L0x5555565c14, L0x5555565c1c];
(* ld4	{v8.4s-v11.4s}, [x28], #64                  #! EA = L0x5555565c20; Value = 0x000006d90006dab7; PC = 0x5555565588 *)
mov %v8 [L0x5555565c20, L0x5555565c30, L0x5555565c40, L0x5555565c50];
mov %v9 [L0x5555565c24, L0x5555565c34, L0x5555565c44, L0x5555565c54];
mov %v10 [L0x5555565c28, L0x5555565c38, L0x5555565c48, L0x5555565c58];
mov %v11 [L0x5555565c2c, L0x5555565c3c, L0x5555565c4c, L0x5555565c5c];
(* ld1	{v20.4s, v21.4s}, [x27], #32                #! EA = L0x5555565fe0; Value = 0x0000000000000000; PC = 0x555556558c *)
mov %v20 [L0x5555565fe0, L0x5555565fe4, L0x5555565fe8, L0x5555565fec];
mov %v21 [L0x5555565ff0, L0x5555565ff4, L0x5555565ff8, L0x5555565ffc];
(* ld2	{v22.4s, v23.4s}, [x27], #32                #! EA = L0x5555566000; Value = 0xffd8a4cbd89af20b; PC = 0x5555565590 *)
mov %v22 [L0x5555566000, L0x5555566008, L0x5555566010, L0x5555566018];
mov %v23 [L0x5555566004, L0x555556600c, L0x5555566014, L0x555556601c];
(* ld4	{v24.4s-v27.4s}, [x27], #64                 #! EA = L0x5555566020; Value = 0xffe73ac6e7349356; PC = 0x5555565594 *)
mov %v24 [L0x5555566020, L0x5555566030, L0x5555566040, L0x5555566050];
mov %v25 [L0x5555566024, L0x5555566034, L0x5555566044, L0x5555566054];
mov %v26 [L0x5555566028, L0x5555566038, L0x5555566048, L0x5555566058];
mov %v27 [L0x555556602c, L0x555556603c, L0x555556604c, L0x555556605c];
(* mov	v4.s[0], w20                                #! PC = 0x5555565598 *)
mov [_, m1, m2, m3] %v4; mov %v4 [w20, m1, m2, m3];
(* mul	v12.4s, v2.4s, v4.s[3]                      #! PC = 0x555556559c *)
mov [_, _, _, m] %v4; mov %mm [m, m, m, m];
mull %dc %v12 %v2 %mm; cast [] %v12@int32[4] %v12;
(* mul	v13.4s, v3.4s, v4.s[3]                      #! PC = 0x55555655a0 *)
mov [_, _, _, m] %v4; mov %mm [m, m, m, m];
mull %dc %v13 %v3 %mm; cast [] %v13@int32[4] %v13;
(* sqrdmulh	v2.4s, v2.4s, v4.s[2]                  #! PC = 0x55555655a4 *)
mov [_, _, m, _] %v4; mov %mm [m, m, m, m];
mulj %mm %v2 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v2 %dc %mm 1;
(* sqrdmulh	v3.4s, v3.4s, v4.s[2]                  #! PC = 0x55555655a8 *)
mov [_, _, m, _] %v4; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v2.4s, v4.s[0]                      #! PC = 0x55555655ac *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v2 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x55555655b0 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;


(**************** mls ****************)

assert eqmod %v12 ([L0x7ffffed8f0,L0x7ffffed8f4,L0x7ffffed8f8,L0x7ffffed8fc]*
                   [-3370349,-3370349,-3370349,-3370349]) [Q, Q, Q, Q] /\
       eqmod %v13 ([L0x7ffffed900,L0x7ffffed904,L0x7ffffed908,L0x7ffffed90c]*
                   [-3370349,-3370349,-3370349,-3370349]) [Q, Q, Q, Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume eqmod %v12 ([L0x7ffffed8f0,L0x7ffffed8f4,L0x7ffffed8f8,L0x7ffffed8fc]*
                   [-3370349,-3370349,-3370349,-3370349]) [Q, Q, Q, Q] /\
       eqmod %v13 ([L0x7ffffed900,L0x7ffffed904,L0x7ffffed908,L0x7ffffed90c]*
                   [-3370349,-3370349,-3370349,-3370349]) [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q];


(**************** CUT 37, 37 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod %v12 ([L0x7ffffed8f0,L0x7ffffed8f4,L0x7ffffed8f8,L0x7ffffed8fc]*
                [-3370349,-3370349,-3370349,-3370349]) [Q, Q, Q, Q] /\
    eqmod %v13 ([L0x7ffffed900,L0x7ffffed904,L0x7ffffed908,L0x7ffffed90c]*
                [-3370349,-3370349,-3370349,-3370349]) [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q];

ghost  %v0o1c@int32[4], %v1o1c@int32[4]:
       %v0o1c =  %v0 /\  %v1o1c =  %v1
   &&  %v0o1c =  %v0 /\  %v1o1c =  %v1;

(* sub	v2.4s, v0.4s, v12.4s                        #! PC = 0x55555655b4 *)
sub %v2 %v0 %v12;
(* mul	v28.4s, v18.4s, v20.s[3]                    #! PC = 0x55555655b8 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v28 %v18 %mm; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v1.4s, v13.4s                        #! PC = 0x55555655bc *)
sub %v3 %v1 %v13;
(* mul	v29.4s, v19.4s, v20.s[3]                    #! PC = 0x55555655c0 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v29 %v19 %mm; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555655c4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v18.4s, v18.4s, v20.s[2]               #! PC = 0x55555655c8 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v18 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v18 %dc %mm 1;
(* add	v1.4s, v1.4s, v13.4s                        #! PC = 0x55555655cc *)
add %v1 %v1 %v13;
(* sqrdmulh	v19.4s, v19.4s, v20.s[2]               #! PC = 0x55555655d0 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v19 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v18.4s, v4.s[0]                     #! PC = 0x55555655d4 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v18 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x55555655d8 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;


(**************** mls ****************)

assert eqmod %v28 ([L0x7ffffedaf0,L0x7ffffedaf4,L0x7ffffedaf8,L0x7ffffedafc]*
                   [-3227876,-3227876,-3227876,-3227876]) [Q, Q, Q, Q] /\
       eqmod %v29 ([L0x7ffffedb00,L0x7ffffedb04,L0x7ffffedb08,L0x7ffffedb0c]*
                   [-3227876,-3227876,-3227876,-3227876]) [Q, Q, Q, Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume eqmod %v28 ([L0x7ffffedaf0,L0x7ffffedaf4,L0x7ffffedaf8,L0x7ffffedafc]*
                   [-3227876,-3227876,-3227876,-3227876]) [Q, Q, Q, Q] /\
       eqmod %v29 ([L0x7ffffedb00,L0x7ffffedb04,L0x7ffffedb08,L0x7ffffedb0c]*
                   [-3227876,-3227876,-3227876,-3227876]) [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2];


(**************** CUT 38, 38 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 = %v0o1c + %v12 /\  %v2 =  %v0o1c - %v12 /\
     %v1 = %v1o1c + %v13 /\  %v3 =  %v1o1c - %v13 /\
    eqmod %v28 ([L0x7ffffedaf0,L0x7ffffedaf4,L0x7ffffedaf8,L0x7ffffedafc]*
                [-3227876,-3227876,-3227876,-3227876]) [Q, Q, Q, Q] /\
    eqmod %v29 ([L0x7ffffedb00,L0x7ffffedb04,L0x7ffffedb08,L0x7ffffedb0c]*
                [-3227876,-3227876,-3227876,-3227876]) [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2]
    prove with [cuts [36]];

ghost %v16o1d@int32[4],%v17o1d@int32[4], %v1o1d@int32[4], %v3o1d@int32[4]:
      %v16o1d = %v16 /\ %v17o1d = %v17 /\  %v1o1d =  %v1 /\  %v3o1d =  %v3
   && %v16o1d = %v16 /\ %v17o1d = %v17 /\  %v1o1d =  %v1 /\  %v3o1d =  %v3;

(* sub	v18.4s, v16.4s, v28.4s                      #! PC = 0x55555655dc *)
sub %v18 %v16 %v28;
(* mul	v12.4s, v1.4s, v5.s[1]                      #! PC = 0x55555655e0 *)
mov [_, m, _, _] %v5; mov %mm [m, m, m, m];
mull %dc %v12 %v1 %mm; cast [] %v12@int32[4] %v12;
(* sub	v19.4s, v17.4s, v29.4s                      #! PC = 0x55555655e4 *)
sub %v19 %v17 %v29;
(* mul	v13.4s, v3.4s, v5.s[3]                      #! PC = 0x55555655e8 *)
mov [_, _, _, m] %v5; mov %mm [m, m, m, m];
mull %dc %v13 %v3 %mm; cast [] %v13@int32[4] %v13;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x55555655ec *)
add %v16 %v16 %v28;
(* sqrdmulh	v1.4s, v1.4s, v5.s[0]                  #! PC = 0x55555655f0 *)
mov [m, _, _, _] %v5; mov %mm [m, m, m, m];
mulj %mm %v1 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v1 %dc %mm 1;
(* add	v17.4s, v17.4s, v29.4s                      #! PC = 0x55555655f4 *)
add %v17 %v17 %v29;
(* sqrdmulh	v3.4s, v3.4s, v5.s[2]                  #! PC = 0x55555655f8 *)
mov [_, _, m, _] %v5; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v1.4s, v4.s[0]                      #! PC = 0x55555655fc *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v1 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x5555565600 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;


(**************** mls ****************)

assert eqmod %v12 ( %v1o1d*[3602218,3602218,3602218,3602218])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o1d*[3182878,3182878,3182878,3182878])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v1o1d*[3602218,3602218,3602218,3602218])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o1d*[3182878,3182878,3182878,3182878])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2];


(**************** CUT 39, 39 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o1d + %v28 /\ %v18 = %v16o1d - %v28 /\
    %v17 = %v17o1d + %v29 /\ %v19 = %v17o1d - %v29 /\
    eqmod %v12 ( %v1o1d*[3602218,3602218,3602218,3602218])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o1d*[3182878,3182878,3182878,3182878])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
    %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
    %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
    %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
    %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v16 /\
    %v16 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v17 /\
    %v17 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v18 /\
    %v18 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v19 /\
    %v19 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2]
    prove with [cuts [36]];

ghost  %v0o1e@int32[4], %v2o1e@int32[4],%v17o1e@int32[4],%v19o1e@int32[4]:
       %v0o1e =  %v0 /\  %v2o1e =  %v2 /\ %v17o1e = %v17 /\ %v19o1e = %v19
   &&  %v0o1e =  %v0 /\  %v2o1e =  %v2 /\ %v17o1e = %v17 /\ %v19o1e = %v19;

(* sub	v1.4s, v0.4s, v12.4s                        #! PC = 0x5555565604 *)
sub %v1 %v0 %v12;
(* mul	v28.4s, v17.4s, v21.s[1]                    #! PC = 0x5555565608 *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v28 %v17 %mm; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v2.4s, v13.4s                        #! PC = 0x555556560c *)
sub %v3 %v2 %v13;
(* mul	v29.4s, v19.4s, v21.s[3]                    #! PC = 0x5555565610 *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v29 %v19 %mm; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x5555565614 *)
add %v0 %v0 %v12;
(* sqrdmulh	v17.4s, v17.4s, v21.s[0]               #! PC = 0x5555565618 *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v17 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v17 %dc %mm 1;
(* add	v2.4s, v2.4s, v13.4s                        #! PC = 0x555556561c *)
add %v2 %v2 %v13;
(* sqrdmulh	v19.4s, v19.4s, v21.s[2]               #! PC = 0x5555565620 *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v19 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v17.4s, v4.s[0]                     #! PC = 0x5555565624 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v17 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x5555565628 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;


(**************** mls ****************)

assert eqmod %v28 (%v17o1e*[3415069,3415069,3415069,3415069])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o1e*[1759347,1759347,1759347,1759347])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v17o1e*[3415069,3415069,3415069,3415069])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o1e*[1759347,1759347,1759347,1759347])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [38]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2];

(**************** CUT 40, 40 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o1e + %v12 /\  %v1 =  %v0o1e - %v12 /\
     %v2 =  %v2o1e + %v13 /\  %v3 =  %v2o1e - %v13 /\
    eqmod %v28 (%v17o1e*[3415069,3415069,3415069,3415069])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o1e*[1759347,1759347,1759347,1759347])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2]
    prove with [cuts [38]];

ghost %v16o1f@int32[4], %v18o1f@int32[4]:
      %v16o1f = %v16 /\ %v18o1f = %v18
   && %v16o1f = %v16 /\ %v18o1f = %v18;

(* sub	v17.4s, v16.4s, v28.4s                      #! PC = 0x555556562c *)
sub %v17 %v16 %v28;
(* sub	v19.4s, v18.4s, v29.4s                      #! PC = 0x5555565630 *)
sub %v19 %v18 %v29;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x5555565634 *)
add %v16 %v16 %v28;
(* add	v18.4s, v18.4s, v29.4s                      #! PC = 0x5555565638 *)
add %v18 %v18 %v29;


assert [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [39]] && true;
assume [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2];

(**************** CUT 41, 41 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o1f + %v28 /\ %v17 = %v16o1f - %v28 /\
    %v18 = %v18o1f + %v29 /\ %v19 = %v18o1f - %v29 /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v16 /\
       %v16 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v17 /\
       %v17 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v18 /\
       %v18 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v19 /\
       %v19 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2]
    prove with [cuts [39]];


(* trn1	v12.4s, v0.4s, v1.4s                       #! PC = 0x555556563c *)
mov [t0, _, t2, _] %v0; mov [t1, _, t3, _] %v1; mov %v12 [t0, t1, t2, t3];
(* trn2	v13.4s, v0.4s, v1.4s                       #! PC = 0x5555565640 *)
mov [_, t0, _, t2] %v0; mov [_, t1, _, t3] %v1; mov %v13 [t0, t1, t2, t3];
(* trn1	v14.4s, v2.4s, v3.4s                       #! PC = 0x5555565644 *)
mov [t0, _, t2, _] %v2; mov [t1, _, t3, _] %v3; mov %v14 [t0, t1, t2, t3];
(* trn2	v15.4s, v2.4s, v3.4s                       #! PC = 0x5555565648 *)
mov [_, t0, _, t2] %v2; mov [_, t1, _, t3] %v3; mov %v15 [t0, t1, t2, t3];
(* trn1	v0.2d, v12.2d, v14.2d                      #! PC = 0x555556564c *)
mov [t0, t1, _, _] %v12; mov [t2, t3, _, _] %v14; mov %v0 [t0, t1, t2, t3];
(* trn2	v2.2d, v12.2d, v14.2d                      #! PC = 0x5555565650 *)
mov [_, _, t0, t1] %v12; mov [_, _, t2, t3] %v14; mov %v2 [t0, t1, t2, t3];
(* trn1	v1.2d, v13.2d, v15.2d                      #! PC = 0x5555565654 *)
mov [t0, t1, _, _] %v13; mov [t2, t3, _, _] %v15; mov %v1 [t0, t1, t2, t3];
(* trn2	v3.2d, v13.2d, v15.2d                      #! PC = 0x5555565658 *)
mov [_, _, t0, t1] %v13; mov [_, _, t2, t3] %v15; mov %v3 [t0, t1, t2, t3];
(* trn1	v28.4s, v16.4s, v17.4s                     #! PC = 0x555556565c *)
mov [t0, _, t2, _] %v16; mov [t1, _, t3, _] %v17; mov %v28 [t0, t1, t2, t3];
(* trn2	v29.4s, v16.4s, v17.4s                     #! PC = 0x5555565660 *)
mov [_, t0, _, t2] %v16; mov [_, t1, _, t3] %v17; mov %v29 [t0, t1, t2, t3];
(* trn1	v30.4s, v18.4s, v19.4s                     #! PC = 0x5555565664 *)
mov [t0, _, t2, _] %v18; mov [t1, _, t3, _] %v19; mov %v30 [t0, t1, t2, t3];
(* trn2	v31.4s, v18.4s, v19.4s                     #! PC = 0x5555565668 *)
mov [_, t0, _, t2] %v18; mov [_, t1, _, t3] %v19; mov %v31 [t0, t1, t2, t3];
(* trn1	v16.2d, v28.2d, v30.2d                     #! PC = 0x555556566c *)
mov [t0, t1, _, _] %v28; mov [t2, t3, _, _] %v30; mov %v16 [t0, t1, t2, t3];
(* trn2	v18.2d, v28.2d, v30.2d                     #! PC = 0x5555565670 *)
mov [_, _, t0, t1] %v28; mov [_, _, t2, t3] %v30; mov %v18 [t0, t1, t2, t3];
(* trn1	v17.2d, v29.2d, v31.2d                     #! PC = 0x5555565674 *)
mov [t0, t1, _, _] %v29; mov [t2, t3, _, _] %v31; mov %v17 [t0, t1, t2, t3];
(* trn2	v19.2d, v29.2d, v31.2d                     #! PC = 0x5555565678 *)
mov [_, _, t0, t1] %v29; mov [_, _, t2, t3] %v31; mov %v19 [t0, t1, t2, t3];

ghost  %v2o20@int32[4], %v3o20@int32[4]:
       %v2o20 =  %v2 /\  %v3o20 =  %v3
   &&  %v2o20 =  %v2 /\  %v3o20 =  %v3;

(* mul	v12.4s, v2.4s, v7.4s                        #! PC = 0x555556567c *)
mull %dc %v12 %v2 %v7; cast [] %v12@int32[4] %v12;
(* mul	v13.4s, v3.4s, v7.4s                        #! PC = 0x5555565680 *)
mull %dc %v13 %v3 %v7; cast [] %v13@int32[4] %v13;
(* sqrdmulh	v2.4s, v2.4s, v6.4s                    #! PC = 0x5555565684 *)
mulj %mm %v2 %v6; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v2 %dc %mm 1;
(* sqrdmulh	v3.4s, v3.4s, v6.4s                    #! PC = 0x5555565688 *)
mulj %mm %v3 %v6; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v2.4s, v4.s[0]                      #! PC = 0x555556568c *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v2 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x5555565690 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v2o20*[3073009,1277625,-2635473,3852015])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o20*[3073009,1277625,-2635473,3852015])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v2o20*[3073009,1277625,-2635473,3852015])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o20*[3073009,1277625,-2635473,3852015])
             [Q, Q, Q, Q] && true;
assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
       prove with [algebra solver isl] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q];

(**************** CUT 42, 42 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod %v12 ( %v2o20*[3073009,1277625,-2635473,3852015])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o20*[3073009,1277625,-2635473,3852015])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q];

ghost  %v0o21@int32[4], %v1o21@int32[4],%v18o21@int32[4],%v19o21@int32[4]:
       %v0o21 =  %v0 /\  %v1o21 =  %v1 /\ %v18o21 = %v18 /\ %v19o21 = %v19
   &&  %v0o21 =  %v0 /\  %v1o21 =  %v1 /\ %v18o21 = %v18 /\ %v19o21 = %v19;

(* sub	v2.4s, v0.4s, v12.4s                        #! PC = 0x5555565694 *)
sub %v2 %v0 %v12;
(* mul	v28.4s, v18.4s, v23.4s                      #! PC = 0x5555565698 *)
mull %dc %v28 %v18 %v23; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v1.4s, v13.4s                        #! PC = 0x555556569c *)
sub %v3 %v1 %v13;
(* mul	v29.4s, v19.4s, v23.4s                      #! PC = 0x55555656a0 *)
mull %dc %v29 %v19 %v23; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555656a4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v18.4s, v18.4s, v22.4s                 #! PC = 0x55555656a8 *)
mulj %mm %v18 %v22; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v18 %dc %mm 1;
(* add	v1.4s, v1.4s, v13.4s                        #! PC = 0x55555656ac *)
add %v1 %v1 %v13;
(* sqrdmulh	v19.4s, v19.4s, v22.4s                 #! PC = 0x55555656b0 *)
mulj %mm %v19 %v22; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v18.4s, v4.s[0]                     #! PC = 0x55555656b4 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v18 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x55555656b8 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 (%v18o21*[-2579253,1787943,-2391089,-2254727])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o21*[-2579253,1787943,-2391089,-2254727])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v18o21*[-2579253,1787943,-2391089,-2254727])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o21*[-2579253,1787943,-2391089,-2254727])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
       prove with [algebra solver isl, cuts [40]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2];


(**************** CUT 43, 43 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o21 + %v12 /\  %v2 =  %v0o21 - %v12 /\
     %v1 =  %v1o21 + %v13 /\  %v3 =  %v1o21 - %v13 /\
    eqmod %v28 (%v18o21*[-2579253,1787943,-2391089,-2254727])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o21*[-2579253,1787943,-2391089,-2254727])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2]
    prove with [cuts [40]];

ghost %v16o22@int32[4],%v17o22@int32[4], %v1o22@int32[4], %v3o22@int32[4]:
      %v16o22 = %v16 /\ %v17o22 = %v17 /\  %v1o22 =  %v1 /\  %v3o22 = %v3
   && %v16o22 = %v16 /\ %v17o22 = %v17 /\  %v1o22 =  %v1 /\  %v3o22 = %v3;

(* sub	v18.4s, v16.4s, v28.4s                      #! PC = 0x55555656bc *)
sub %v18 %v16 %v28;
(* mul	v12.4s, v1.4s, v9.4s                        #! PC = 0x55555656c0 *)
mull %dc %v12 %v1 %v9; cast [] %v12@int32[4] %v12;
(* sub	v19.4s, v17.4s, v29.4s                      #! PC = 0x55555656c4 *)
sub %v19 %v17 %v29;
(* mul	v13.4s, v3.4s, v11.4s                       #! PC = 0x55555656c8 *)
mull %dc %v13 %v3 %v11; cast [] %v13@int32[4] %v13;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x55555656cc *)
add %v16 %v16 %v28;
(* sqrdmulh	v1.4s, v1.4s, v8.4s                    #! PC = 0x55555656d0 *)
mulj %mm %v1 %v8; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v1 %dc %mm 1;
(* add	v17.4s, v17.4s, v29.4s                      #! PC = 0x55555656d4 *)
add %v17 %v17 %v29;
(* sqrdmulh	v3.4s, v3.4s, v10.4s                   #! PC = 0x55555656d8 *)
mulj %mm %v3 %v10; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v1.4s, v4.s[0]                      #! PC = 0x55555656dc *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v1 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x55555656e0 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v1o22*[1753,-2659525,2660408,-59148])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o22*[-1935420,-1455890,-1780227,2772600])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v1o22*[1753,-2659525,2660408,-59148])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o22*[-1935420,-1455890,-1780227,2772600])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
       prove with [algebra solver isl, cuts [41]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2];


(**************** CUT 44, 44 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o22 + %v28 /\ %v18 = %v16o22 - %v28 /\
    %v17 = %v17o22 + %v29 /\ %v19 = %v17o22 - %v29 /\
    eqmod %v12 ( %v1o22*[1753,-2659525,2660408,-59148])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o22*[-1935420,-1455890,-1780227,2772600])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v16 /\
       %v16 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v17 /\
       %v17 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v18 /\
       %v18 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v19 /\
       %v19 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2]
    prove with [cuts [41]];

ghost  %v0o23@int32[4], %v2o23@int32[4],%v17o23@int32[4],%v19o23@int32[4]:
       %v0o23 =  %v0 /\  %v2o23 =  %v2 /\ %v17o23 = %v17 /\ %v19o23 = %v19
   &&  %v0o23 =  %v0 /\  %v2o23 =  %v2 /\ %v17o23 = %v17 /\ %v19o23 = %v19;

(* sub	v1.4s, v0.4s, v12.4s                        #! PC = 0x55555656e4 *)
sub %v1 %v0 %v12;
(* mul	v28.4s, v17.4s, v25.4s                      #! PC = 0x55555656e8 *)
mull %dc %v28 %v17 %v25; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v2.4s, v13.4s                        #! PC = 0x55555656ec *)
sub %v3 %v2 %v13;
(* mul	v29.4s, v19.4s, v27.4s                      #! PC = 0x55555656f0 *)
mull %dc %v29 %v19 %v27; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555656f4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v17.4s, v17.4s, v24.4s                 #! PC = 0x55555656f8 *)
mulj %mm %v17 %v24; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v17 %dc %mm 1;
(* add	v2.4s, v2.4s, v13.4s                        #! PC = 0x55555656fc *)
add %v2 %v2 %v13;
(* sqrdmulh	v19.4s, v19.4s, v26.4s                 #! PC = 0x5555565700 *)
mulj %mm %v19 %v26; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v17.4s, v4.s[0]                     #! PC = 0x5555565704 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v17 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x5555565708 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;


(**************** mls ****************)

assert eqmod %v28 (%v17o23*[-1623354,-2374402,586241,527981])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o23*[2105286,-2033807,-1179613,-2743411])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v17o23*[-1623354,-2374402,586241,527981])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o23*[2105286,-2033807,-1179613,-2743411])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
       prove with [algebra solver isl, cuts [42, 43]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2];



(**************** CUT 45, 45 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o23 + %v12 /\  %v1 =  %v0o23 - %v12 /\
     %v2 =  %v2o23 + %v13 /\  %v3 =  %v2o23 - %v13 /\
    eqmod %v28 (%v17o23*[-1623354,-2374402,586241,527981])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o23*[2105286,-2033807,-1179613,-2743411])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2]
    prove with [cuts [42, 43]];


(* sub	v17.4s, v16.4s, v28.4s                      #! PC = 0x555556570c *)
sub %v17 %v16 %v28;
(* sub	v19.4s, v18.4s, v29.4s                      #! PC = 0x5555565710 *)
sub %v19 %v18 %v29;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x5555565714 *)
add %v16 %v16 %v28;
(* add	v18.4s, v18.4s, v29.4s                      #! PC = 0x5555565718 *)
add %v18 %v18 %v29;

(**************** CUT 46, 46 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod (F**2) (%v0[0]) [Q,X-1753] /\ eqmod (F**2) (%v1[0]) [Q,X-8378664] /\
    eqmod (F**2) (%v2[0]) [Q,X-6444997] /\ eqmod (F**2) (%v3[0]) [Q,X-1935420] /\
    eqmod (F**2) (%v16[0]) [Q,X-6757063] /\ eqmod (F**2) (%v17[0]) [Q,X-1623354] /\
    eqmod (F**2) (%v18[0]) [Q,X-2105286] /\ eqmod (F**2) (%v19[0]) [Q,X-6275131] /\
    eqmod (F**2) (%v0[1]) [Q,X-5720892] /\ eqmod (F**2) (%v1[1]) [Q,X-2659525] /\
    eqmod (F**2) (%v2[1]) [Q,X-6924527] /\ eqmod (F**2) (%v3[1]) [Q,X-1455890] /\
    eqmod (F**2) (%v16[1]) [Q,X-6006015] /\ eqmod (F**2) (%v17[1]) [Q,X-2374402] /\
    eqmod (F**2) (%v18[1]) [Q,X-6346610] /\ eqmod (F**2) (%v19[1]) [Q,X-2033807] /\
    eqmod (F**2) (%v0[2]) [Q,X-2660408] /\ eqmod (F**2) (%v1[2]) [Q,X-5720009] /\
    eqmod (F**2) (%v2[2]) [Q,X-6600190] /\ eqmod (F**2) (%v3[2]) [Q,X-1780227] /\
    eqmod (F**2) (%v16[2]) [Q,X-586241] /\ eqmod (F**2) (%v17[2]) [Q,X-7794176] /\
    eqmod (F**2) (%v18[2]) [Q,X-7200804] /\ eqmod (F**2) (%v19[2]) [Q,X-1179613] /\
    eqmod (F**2) (%v0[3]) [Q,X-8321269] /\ eqmod (F**2) (%v1[3]) [Q,X-59148] /\
    eqmod (F**2) (%v2[3]) [Q,X-2772600] /\ eqmod (F**2) (%v3[3]) [Q,X-5607817] /\
    eqmod (F**2) (%v16[3]) [Q,X-527981] /\ eqmod (F**2) (%v17[3]) [Q,X-7852436] /\
    eqmod (F**2) (%v18[3]) [Q,X-5637006] /\ eqmod (F**2) (%v19[3]) [Q,X-2743411]
    prove with [all ghosts,cuts [36,37,38,39,40,41,42,43,44]],
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v16 /\
       %v16 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v17 /\
       %v17 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v18 /\
       %v18 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v19 /\
       %v19 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
    prove with [algebra solver isl,cuts [44]]
 && Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v16 /\
       %v16 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v17 /\
       %v17 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v18 /\
       %v18 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v19 /\
       %v19 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2]
prove with [cuts [44]];

(* st4	{v0.4s-v3.4s}, [x1], #64                    #! EA = L0x7ffffed8d0; PC = 0x555556571c *)
mov [t00, t10, t20, t30] %v0; mov [t01, t11, t21, t31] %v1;
mov [t02, t12, t22, t32] %v2; mov [t03, t13, t23, t33] %v3;
mov L0x7ffffed8d0 t00; mov L0x7ffffed8d4 t01; mov L0x7ffffed8d8 t02; mov L0x7ffffed8dc t03;
mov L0x7ffffed8e0 t10; mov L0x7ffffed8e4 t11; mov L0x7ffffed8e8 t12; mov L0x7ffffed8ec t13;
mov L0x7ffffed8f0 t20; mov L0x7ffffed8f4 t21; mov L0x7ffffed8f8 t22; mov L0x7ffffed8fc t23;
mov L0x7ffffed900 t30; mov L0x7ffffed904 t31; mov L0x7ffffed908 t32; mov L0x7ffffed90c t33;
(* st4	{v16.4s-v19.4s}, [x3], #64                  #! EA = L0x7ffffedad0; PC = 0x5555565720 *)
mov [t00, t10, t20, t30] %v16; mov [t01, t11, t21, t31] %v17;
mov [t02, t12, t22, t32] %v18; mov [t03, t13, t23, t33] %v19;
mov L0x7ffffedad0 t00; mov L0x7ffffedad4 t01; mov L0x7ffffedad8 t02; mov L0x7ffffedadc t03;
mov L0x7ffffedae0 t10; mov L0x7ffffedae4 t11; mov L0x7ffffedae8 t12; mov L0x7ffffedaec t13;
mov L0x7ffffedaf0 t20; mov L0x7ffffedaf4 t21; mov L0x7ffffedaf8 t22; mov L0x7ffffedafc t23;
mov L0x7ffffedb00 t30; mov L0x7ffffedb04 t31; mov L0x7ffffedb08 t32; mov L0x7ffffedb0c t33;
(* sub	x19, x19, #0x1                              #! PC = 0x5555565724 *)
subs dc x19 x19 (0x1)@uint64;
(* #cbnz	x19, 0x5555565578 <_ntt_bot_loop>         #! PC = 0x5555565728 *)
#cbnz	x19, 0x5555565578 <_ntt_bot_loop>         #! 0x5555565728 = 0x5555565728;
(* ld1	{v0.4s-v3.4s}, [x0], #64                    #! EA = L0x7ffffed910; Value = 0xffb903ce0021de1d; PC = 0x5555565578 *)
mov %v0 [L0x7ffffed910, L0x7ffffed914, L0x7ffffed918, L0x7ffffed91c];
mov %v1 [L0x7ffffed920, L0x7ffffed924, L0x7ffffed928, L0x7ffffed92c];
mov %v2 [L0x7ffffed930, L0x7ffffed934, L0x7ffffed938, L0x7ffffed93c];
mov %v3 [L0x7ffffed940, L0x7ffffed944, L0x7ffffed948, L0x7ffffed94c];
(* ld1	{v16.4s-v19.4s}, [x2], #64                  #! EA = L0x7ffffedb10; Value = 0xffab3c5300046efb; PC = 0x555556557c *)
mov %v16 [L0x7ffffedb10, L0x7ffffedb14, L0x7ffffedb18, L0x7ffffedb1c];
mov %v17 [L0x7ffffedb20, L0x7ffffedb24, L0x7ffffedb28, L0x7ffffedb2c];
mov %v18 [L0x7ffffedb30, L0x7ffffedb34, L0x7ffffedb38, L0x7ffffedb3c];
mov %v19 [L0x7ffffedb40, L0x7ffffedb44, L0x7ffffedb48, L0x7ffffedb4c];
(* ld1	{v4.4s, v5.4s}, [x28], #32                  #! EA = L0x5555565c60; Value = 0x0000000000000000; PC = 0x5555565580 *)
mov %v4 [L0x5555565c60, L0x5555565c64, L0x5555565c68, L0x5555565c6c];
mov %v5 [L0x5555565c70, L0x5555565c74, L0x5555565c78, L0x5555565c7c];
(* ld2	{v6.4s, v7.4s}, [x28], #32                  #! EA = L0x5555565c80; Value = 0x003fd54c3fe544d1; PC = 0x5555565584 *)
mov %v6 [L0x5555565c80, L0x5555565c88, L0x5555565c90, L0x5555565c98];
mov %v7 [L0x5555565c84, L0x5555565c8c, L0x5555565c94, L0x5555565c9c];
(* ld4	{v8.4s-v11.4s}, [x28], #64                  #! EA = L0x5555565ca0; Value = 0x00120a23120ea686; PC = 0x5555565588 *)
mov %v8 [L0x5555565ca0, L0x5555565cb0, L0x5555565cc0, L0x5555565cd0];
mov %v9 [L0x5555565ca4, L0x5555565cb4, L0x5555565cc4, L0x5555565cd4];
mov %v10 [L0x5555565ca8, L0x5555565cb8, L0x5555565cc8, L0x5555565cd8];
mov %v11 [L0x5555565cac, L0x5555565cbc, L0x5555565ccc, L0x5555565cdc];
(* ld1	{v20.4s, v21.4s}, [x27], #32                #! EA = L0x5555566060; Value = 0x0000000000000000; PC = 0x555556558c *)
mov %v20 [L0x5555566060, L0x5555566064, L0x5555566068, L0x555556606c];
mov %v21 [L0x5555566070, L0x5555566074, L0x5555566078, L0x555556607c];
(* ld2	{v22.4s, v23.4s}, [x27], #32                #! EA = L0x5555566080; Value = 0x0035225e352fa980; PC = 0x5555565590 *)
mov %v22 [L0x5555566080, L0x5555566088, L0x5555566090, L0x5555566098];
mov %v23 [L0x5555566084, L0x555556608c, L0x5555566094, L0x555556609c];
(* ld4	{v24.4s-v27.4s}, [x27], #64                 #! EA = L0x55555660a0; Value = 0xffe97687e970e366; PC = 0x5555565594 *)
mov %v24 [L0x55555660a0, L0x55555660b0, L0x55555660c0, L0x55555660d0];
mov %v25 [L0x55555660a4, L0x55555660b4, L0x55555660c4, L0x55555660d4];
mov %v26 [L0x55555660a8, L0x55555660b8, L0x55555660c8, L0x55555660d8];
mov %v27 [L0x55555660ac, L0x55555660bc, L0x55555660cc, L0x55555660dc];
(* mov	v4.s[0], w20                                #! PC = 0x5555565598 *)
mov [_, m1, m2, m3] %v4; mov %v4 [w20, m1, m2, m3];
(* mul	v12.4s, v2.4s, v4.s[3]                      #! PC = 0x555556559c *)
mov [_, _, _, m] %v4; mov %mm [m, m, m, m];
mull %dc %v12 %v2 %mm; cast [] %v12@int32[4] %v12;
(* mul	v13.4s, v3.4s, v4.s[3]                      #! PC = 0x55555655a0 *)
mov [_, _, _, m] %v4; mov %mm [m, m, m, m];
mull %dc %v13 %v3 %mm; cast [] %v13@int32[4] %v13;
(* sqrdmulh	v2.4s, v2.4s, v4.s[2]                  #! PC = 0x55555655a4 *)
mov [_, _, m, _] %v4; mov %mm [m, m, m, m];
mulj %mm %v2 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v2 %dc %mm 1;
(* sqrdmulh	v3.4s, v3.4s, v4.s[2]                  #! PC = 0x55555655a8 *)
mov [_, _, m, _] %v4; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v2.4s, v4.s[0]                      #! PC = 0x55555655ac *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v2 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x55555655b0 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ([L0x7ffffed930,L0x7ffffed934,L0x7ffffed938,L0x7ffffed93c]*
                   [-4063053,-4063053,-4063053,-4063053]) [Q, Q, Q, Q] /\
       eqmod %v13 ([L0x7ffffed940,L0x7ffffed944,L0x7ffffed948,L0x7ffffed94c]*
                   [-4063053,-4063053,-4063053,-4063053]) [Q, Q, Q, Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume eqmod %v12 ([L0x7ffffed930,L0x7ffffed934,L0x7ffffed938,L0x7ffffed93c]*
                   [-4063053,-4063053,-4063053,-4063053]) [Q, Q, Q, Q] /\
       eqmod %v13 ([L0x7ffffed940,L0x7ffffed944,L0x7ffffed948,L0x7ffffed94c]*
                   [-4063053,-4063053,-4063053,-4063053]) [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
  && [NQ,NQ,NQ,NQ] <s %v12 /\ %v12 <s [Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ] <s %v13 /\ %v13 <s [Q,Q,Q,Q];

(**************** CUT 47, 47 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod %v12 ([L0x7ffffed930,L0x7ffffed934,L0x7ffffed938,L0x7ffffed93c]*
                [-4063053,-4063053,-4063053,-4063053]) [Q, Q, Q, Q] /\
    eqmod %v13 ([L0x7ffffed940,L0x7ffffed944,L0x7ffffed948,L0x7ffffed94c]*
                [-4063053,-4063053,-4063053,-4063053]) [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q]
    prove with [cuts [36]];

ghost  %v0o24@int32[4], %v1o24@int32[4]:
       %v0o24 =  %v0 /\  %v1o24 =  %v1
   &&  %v0o24 =  %v0 /\  %v1o24 =  %v1;

(* sub	v2.4s, v0.4s, v12.4s                        #! PC = 0x55555655b4 *)
sub %v2 %v0 %v12;
(* mul	v28.4s, v18.4s, v20.s[3]                    #! PC = 0x55555655b8 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v28 %v18 %mm; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v1.4s, v13.4s                        #! PC = 0x55555655bc *)
sub %v3 %v1 %v13;
(* mul	v29.4s, v19.4s, v20.s[3]                    #! PC = 0x55555655c0 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v29 %v19 %mm; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555655c4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v18.4s, v18.4s, v20.s[2]               #! PC = 0x55555655c8 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v18 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v18 %dc %mm 1;
(* add	v1.4s, v1.4s, v13.4s                        #! PC = 0x55555655cc *)
add %v1 %v1 %v13;
(* sqrdmulh	v19.4s, v19.4s, v20.s[2]               #! PC = 0x55555655d0 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v19 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v18.4s, v4.s[0]                     #! PC = 0x55555655d4 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v18 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x55555655d8 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 ([L0x7ffffedb30,L0x7ffffedb34,L0x7ffffedb38,L0x7ffffedb3c]*
                   [1714295,1714295,1714295,1714295]) [Q, Q, Q, Q] /\
       eqmod %v29 ([L0x7ffffedb40,L0x7ffffedb44,L0x7ffffedb48,L0x7ffffedb4c]*
                   [1714295,1714295,1714295,1714295]) [Q, Q, Q, Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume eqmod %v28 ([L0x7ffffedb30,L0x7ffffedb34,L0x7ffffedb38,L0x7ffffedb3c]*
                   [1714295,1714295,1714295,1714295]) [Q, Q, Q, Q] /\
       eqmod %v29 ([L0x7ffffedb40,L0x7ffffedb44,L0x7ffffedb48,L0x7ffffedb4c]*
                   [1714295,1714295,1714295,1714295]) [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2];


(**************** CUT 48, 48 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 = %v0o24 + %v12 /\  %v2 =  %v0o24 - %v12 /\
     %v1 = %v1o24 + %v13 /\  %v3 =  %v1o24 - %v13 /\
    eqmod %v28 ([L0x7ffffedb30,L0x7ffffedb34,L0x7ffffedb38,L0x7ffffedb3c]*
                [1714295,1714295,1714295,1714295]) [Q, Q, Q, Q] /\
    eqmod %v29 ([L0x7ffffedb40,L0x7ffffedb44,L0x7ffffedb48,L0x7ffffedb4c]*
                [1714295,1714295,1714295,1714295]) [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2]
    prove with [cuts [36]];

ghost %v16o25@int32[4],%v17o25@int32[4], %v1o25@int32[4], %v3o25@int32[4]:
      %v16o25 = %v16 /\ %v17o25 = %v17 /\  %v1o25 =  %v1 /\  %v3o25 =  %v3
   && %v16o25 = %v16 /\ %v17o25 = %v17 /\  %v1o25 =  %v1 /\  %v3o25 =  %v3;

(* sub	v18.4s, v16.4s, v28.4s                      #! PC = 0x55555655dc *)
sub %v18 %v16 %v28;
(* mul	v12.4s, v1.4s, v5.s[1]                      #! PC = 0x55555655e0 *)
mov [_, m, _, _] %v5; mov %mm [m, m, m, m];
mull %dc %v12 %v1 %mm; cast [] %v12@int32[4] %v12;
(* sub	v19.4s, v17.4s, v29.4s                      #! PC = 0x55555655e4 *)
sub %v19 %v17 %v29;
(* mul	v13.4s, v3.4s, v5.s[3]                      #! PC = 0x55555655e8 *)
mov [_, _, _, m] %v5; mov %mm [m, m, m, m];
mull %dc %v13 %v3 %mm; cast [] %v13@int32[4] %v13;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x55555655ec *)
add %v16 %v16 %v28;
(* sqrdmulh	v1.4s, v1.4s, v5.s[0]                  #! PC = 0x55555655f0 *)
mov [m, _, _, _] %v5; mov %mm [m, m, m, m];
mulj %mm %v1 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v1 %dc %mm 1;
(* add	v17.4s, v17.4s, v29.4s                      #! PC = 0x55555655f4 *)
add %v17 %v17 %v29;
(* sqrdmulh	v3.4s, v3.4s, v5.s[2]                  #! PC = 0x55555655f8 *)
mov [_, _, m, _] %v5; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v1.4s, v4.s[0]                      #! PC = 0x55555655fc *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v1 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x5555565600 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v1o25*[2740543,2740543,2740543,2740543])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o25*[-3586446,-3586446,-3586446,-3586446])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v1o25*[2740543,2740543,2740543,2740543])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o25*[-3586446,-3586446,-3586446,-3586446])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2];


(**************** CUT 49, 49 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o25 + %v28 /\ %v18 = %v16o25 - %v28 /\
    %v17 = %v17o25 + %v29 /\ %v19 = %v17o25 - %v29 /\
    eqmod %v12 ( %v1o25*[2740543,2740543,2740543,2740543])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o25*[-3586446,-3586446,-3586446,-3586446])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v16 /\
       %v16 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v17 /\
       %v17 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v18 /\
       %v18 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v19 /\
       %v19 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2]
    prove with [cuts [36]];

ghost  %v0o26@int32[4], %v2o26@int32[4],%v17o26@int32[4],%v19o26@int32[4]:
       %v0o26 =  %v0 /\  %v2o26 =  %v2 /\ %v17o26 = %v17 /\ %v19o26 = %v19
   &&  %v0o26 =  %v0 /\  %v2o26 =  %v2 /\ %v17o26 = %v17 /\ %v19o26 = %v19;

(* sub	v1.4s, v0.4s, v12.4s                        #! PC = 0x5555565604 *)
sub %v1 %v0 %v12;
(* mul	v28.4s, v17.4s, v21.s[1]                    #! PC = 0x5555565608 *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v28 %v17 %mm; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v2.4s, v13.4s                        #! PC = 0x555556560c *)
sub %v3 %v2 %v13;
(* mul	v29.4s, v19.4s, v21.s[3]                    #! PC = 0x5555565610 *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v29 %v19 %mm; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x5555565614 *)
add %v0 %v0 %v12;
(* sqrdmulh	v17.4s, v17.4s, v21.s[0]               #! PC = 0x5555565618 *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v17 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v17 %dc %mm 1;
(* add	v2.4s, v2.4s, v13.4s                        #! PC = 0x555556561c *)
add %v2 %v2 %v13;
(* sqrdmulh	v19.4s, v19.4s, v21.s[2]               #! PC = 0x5555565620 *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v19 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v17.4s, v4.s[0]                     #! PC = 0x5555565624 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v17 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x5555565628 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 (%v17o26*[-817536,-817536,-817536,-817536])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o26*[-3574466,-3574466,-3574466,-3574466])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v17o26*[-817536,-817536,-817536,-817536])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o26*[-3574466,-3574466,-3574466,-3574466])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [48]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2];


(**************** CUT 50, 50 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o26 + %v12 /\  %v1 =  %v0o26 - %v12 /\
     %v2 =  %v2o26 + %v13 /\  %v3 =  %v2o26 - %v13 /\
    eqmod %v28 (%v17o26*[-817536,-817536,-817536,-817536])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o26*[-3574466,-3574466,-3574466,-3574466])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2]
    prove with [cuts [48]];

ghost %v16o27@int32[4], %v18o27@int32[4]:
      %v16o27 = %v16 /\ %v18o27 = %v18
   && %v16o27 = %v16 /\ %v18o27 = %v18;

(* sub	v17.4s, v16.4s, v28.4s                      #! PC = 0x555556562c *)
sub %v17 %v16 %v28;
(* sub	v19.4s, v18.4s, v29.4s                      #! PC = 0x5555565630 *)
sub %v19 %v18 %v29;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x5555565634 *)
add %v16 %v16 %v28;
(* add	v18.4s, v18.4s, v29.4s                      #! PC = 0x5555565638 *)
add %v18 %v18 %v29;



assert [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [49]] && true;
assume [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2];


(**************** CUT 51, 51 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o27 + %v28 /\ %v17 = %v16o27 - %v28 /\
    %v18 = %v18o27 + %v29 /\ %v19 = %v18o27 - %v29 /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v16 /\
       %v16 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v17 /\
       %v17 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v18 /\
       %v18 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v19 /\
       %v19 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2]
    prove with [cuts [49]];



(* trn1	v12.4s, v0.4s, v1.4s                       #! PC = 0x555556563c *)
mov [t0, _, t2, _] %v0; mov [t1, _, t3, _] %v1; mov %v12 [t0, t1, t2, t3];
(* trn2	v13.4s, v0.4s, v1.4s                       #! PC = 0x5555565640 *)
mov [_, t0, _, t2] %v0; mov [_, t1, _, t3] %v1; mov %v13 [t0, t1, t2, t3];
(* trn1	v14.4s, v2.4s, v3.4s                       #! PC = 0x5555565644 *)
mov [t0, _, t2, _] %v2; mov [t1, _, t3, _] %v3; mov %v14 [t0, t1, t2, t3];
(* trn2	v15.4s, v2.4s, v3.4s                       #! PC = 0x5555565648 *)
mov [_, t0, _, t2] %v2; mov [_, t1, _, t3] %v3; mov %v15 [t0, t1, t2, t3];
(* trn1	v0.2d, v12.2d, v14.2d                      #! PC = 0x555556564c *)
mov [t0, t1, _, _] %v12; mov [t2, t3, _, _] %v14; mov %v0 [t0, t1, t2, t3];
(* trn2	v2.2d, v12.2d, v14.2d                      #! PC = 0x5555565650 *)
mov [_, _, t0, t1] %v12; mov [_, _, t2, t3] %v14; mov %v2 [t0, t1, t2, t3];
(* trn1	v1.2d, v13.2d, v15.2d                      #! PC = 0x5555565654 *)
mov [t0, t1, _, _] %v13; mov [t2, t3, _, _] %v15; mov %v1 [t0, t1, t2, t3];
(* trn2	v3.2d, v13.2d, v15.2d                      #! PC = 0x5555565658 *)
mov [_, _, t0, t1] %v13; mov [_, _, t2, t3] %v15; mov %v3 [t0, t1, t2, t3];
(* trn1	v28.4s, v16.4s, v17.4s                     #! PC = 0x555556565c *)
mov [t0, _, t2, _] %v16; mov [t1, _, t3, _] %v17; mov %v28 [t0, t1, t2, t3];
(* trn2	v29.4s, v16.4s, v17.4s                     #! PC = 0x5555565660 *)
mov [_, t0, _, t2] %v16; mov [_, t1, _, t3] %v17; mov %v29 [t0, t1, t2, t3];
(* trn1	v30.4s, v18.4s, v19.4s                     #! PC = 0x5555565664 *)
mov [t0, _, t2, _] %v18; mov [t1, _, t3, _] %v19; mov %v30 [t0, t1, t2, t3];
(* trn2	v31.4s, v18.4s, v19.4s                     #! PC = 0x5555565668 *)
mov [_, t0, _, t2] %v18; mov [_, t1, _, t3] %v19; mov %v31 [t0, t1, t2, t3];
(* trn1	v16.2d, v28.2d, v30.2d                     #! PC = 0x555556566c *)
mov [t0, t1, _, _] %v28; mov [t2, t3, _, _] %v30; mov %v16 [t0, t1, t2, t3];
(* trn2	v18.2d, v28.2d, v30.2d                     #! PC = 0x5555565670 *)
mov [_, _, t0, t1] %v28; mov [_, _, t2, t3] %v30; mov %v18 [t0, t1, t2, t3];
(* trn1	v17.2d, v29.2d, v31.2d                     #! PC = 0x5555565674 *)
mov [t0, t1, _, _] %v29; mov [t2, t3, _, _] %v31; mov %v17 [t0, t1, t2, t3];
(* trn2	v19.2d, v29.2d, v31.2d                     #! PC = 0x5555565678 *)
mov [_, _, t0, t1] %v29; mov [_, _, t2, t3] %v31; mov %v19 [t0, t1, t2, t3];

ghost  %v2o28@int32[4], %v3o28@int32[4]:
       %v2o28 =  %v2 /\  %v3o28 =  %v3
   &&  %v2o28 =  %v2 /\  %v3o28 =  %v3;

(* mul	v12.4s, v2.4s, v7.4s                        #! PC = 0x555556567c *)
mull %dc %v12 %v2 %v7; cast [] %v12@int32[4] %v12;
(* mul	v13.4s, v3.4s, v7.4s                        #! PC = 0x5555565680 *)
mull %dc %v13 %v3 %v7; cast [] %v13@int32[4] %v13;
(* sqrdmulh	v2.4s, v2.4s, v6.4s                    #! PC = 0x5555565684 *)
mulj %mm %v2 %v6; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v2 %dc %mm 1;
(* sqrdmulh	v3.4s, v3.4s, v6.4s                    #! PC = 0x5555565688 *)
mulj %mm %v3 %v6; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v2.4s, v4.s[0]                      #! PC = 0x555556568c *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v2 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x5555565690 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v2o28*[4183372,-3222807,-3121440,-274060])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o28*[4183372,-3222807,-3121440,-274060])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v2o28*[4183372,-3222807,-3121440,-274060])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o28*[4183372,-3222807,-3121440,-274060])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
       prove with [algebra solver isl] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q];

(**************** CUT 52, 52 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod %v12 ( %v2o28*[4183372,-3222807,-3121440,-274060])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o28*[4183372,-3222807,-3121440,-274060])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q];

ghost  %v0o29@int32[4], %v1o29@int32[4],%v18o29@int32[4],%v19o29@int32[4]:
       %v0o29 =  %v0 /\  %v1o29 =  %v1 /\ %v18o29 = %v18 /\ %v19o29 = %v19
   &&  %v0o29 =  %v0 /\  %v1o29 =  %v1 /\ %v18o29 = %v18 /\ %v19o29 = %v19;

(* sub	v2.4s, v0.4s, v12.4s                        #! PC = 0x5555565694 *)
sub %v2 %v0 %v12;
(* mul	v28.4s, v18.4s, v23.4s                      #! PC = 0x5555565698 *)
mull %dc %v28 %v18 %v23; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v1.4s, v13.4s                        #! PC = 0x555556569c *)
sub %v3 %v1 %v13;
(* mul	v29.4s, v19.4s, v23.4s                      #! PC = 0x55555656a0 *)
mull %dc %v29 %v19 %v23; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555656a4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v18.4s, v18.4s, v22.4s                 #! PC = 0x55555656a8 *)
mulj %mm %v18 %v22; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v18 %dc %mm 1;
(* add	v1.4s, v1.4s, v13.4s                        #! PC = 0x55555656ac *)
add %v1 %v1 %v13;
(* sqrdmulh	v19.4s, v19.4s, v22.4s                 #! PC = 0x55555656b0 *)
mulj %mm %v19 %v22; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v18.4s, v4.s[0]                     #! PC = 0x55555656b4 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v18 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x55555656b8 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 (%v18o29*[3482206,-4182915,-1300016,-2362063])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o29*[3482206,-4182915,-1300016,-2362063])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v18o29*[3482206,-4182915,-1300016,-2362063])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o29*[3482206,-4182915,-1300016,-2362063])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
       prove with [algebra solver isl, cuts [50]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2];



(**************** CUT 53, 53 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o29 + %v12 /\  %v2 =  %v0o29 - %v12 /\
     %v1 =  %v1o29 + %v13 /\  %v3 =  %v1o29 - %v13 /\
    eqmod %v28 (%v18o29*[3482206,-4182915,-1300016,-2362063])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o29*[3482206,-4182915,-1300016,-2362063])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2]
    prove with [cuts [50]];

ghost %v16o2a@int32[4],%v17o2a@int32[4], %v1o2a@int32[4], %v3o2a@int32[4]:
      %v16o2a = %v16 /\ %v17o2a = %v17 /\  %v1o2a =  %v1 /\  %v3o2a = %v3
   && %v16o2a = %v16 /\ %v17o2a = %v17 /\  %v1o2a =  %v1 /\  %v3o2a = %v3;

(* sub	v18.4s, v16.4s, v28.4s                      #! PC = 0x55555656bc *)
sub %v18 %v16 %v28;
(* mul	v12.4s, v1.4s, v9.4s                        #! PC = 0x55555656c0 *)
mull %dc %v12 %v1 %v9; cast [] %v12@int32[4] %v12;
(* sub	v19.4s, v17.4s, v29.4s                      #! PC = 0x55555656c4 *)
sub %v19 %v17 %v29;
(* mul	v13.4s, v3.4s, v11.4s                       #! PC = 0x55555656c8 *)
mull %dc %v13 %v3 %v11; cast [] %v13@int32[4] %v13;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x55555656cc *)
add %v16 %v16 %v28;
(* sqrdmulh	v1.4s, v1.4s, v8.4s                    #! PC = 0x55555656d0 *)
mulj %mm %v1 %v8; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v1 %dc %mm 1;
(* add	v17.4s, v17.4s, v29.4s                      #! PC = 0x55555656d4 *)
add %v17 %v17 %v29;
(* sqrdmulh	v3.4s, v3.4s, v10.4s                   #! PC = 0x55555656d8 *)
mulj %mm %v3 %v10; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v1.4s, v4.s[0]                      #! PC = 0x55555656dc *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v1 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x55555656e0 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v1o2a*[1182243,636927,-3956745,-3284915])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o2a*[87208,-3965306,-2296397,-3716946])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v1o2a*[1182243,636927,-3956745,-3284915])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o2a*[87208,-3965306,-2296397,-3716946])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
       prove with [algebra solver isl, cuts [51]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2];



(**************** CUT 54, 54 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o2a + %v28 /\ %v18 = %v16o2a - %v28 /\
    %v17 = %v17o2a + %v29 /\ %v19 = %v17o2a - %v29 /\
    eqmod %v12 ( %v1o2a*[1182243,636927,-3956745,-3284915])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o2a*[87208,-3965306,-2296397,-3716946])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v16 /\
       %v16 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v17 /\
       %v17 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v18 /\
       %v18 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v19 /\
       %v19 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2]
    prove with [cuts [51]];

ghost  %v0o2b@int32[4], %v2o2b@int32[4],%v17o2b@int32[4],%v19o2b@int32[4]:
       %v0o2b =  %v0 /\  %v2o2b =  %v2 /\ %v17o2b = %v17 /\ %v19o2b = %v19
   &&  %v0o2b =  %v0 /\  %v2o2b =  %v2 /\ %v17o2b = %v17 /\ %v19o2b = %v19;

(* sub	v1.4s, v0.4s, v12.4s                        #! PC = 0x55555656e4 *)
sub %v1 %v0 %v12;
(* mul	v28.4s, v17.4s, v25.4s                      #! PC = 0x55555656e8 *)
mull %dc %v28 %v17 %v25; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v2.4s, v13.4s                        #! PC = 0x55555656ec *)
sub %v3 %v2 %v13;
(* mul	v29.4s, v19.4s, v27.4s                      #! PC = 0x55555656f0 *)
mull %dc %v29 %v19 %v27; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555656f4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v17.4s, v17.4s, v24.4s                 #! PC = 0x55555656f8 *)
mulj %mm %v17 %v24; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v17 %dc %mm 1;
(* add	v2.4s, v2.4s, v13.4s                        #! PC = 0x55555656fc *)
add %v2 %v2 %v13;
(* sqrdmulh	v19.4s, v19.4s, v26.4s                 #! PC = 0x5555565700 *)
mulj %mm %v19 %v26; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v17.4s, v4.s[0]                     #! PC = 0x5555565704 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v17 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x5555565708 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;


(**************** mls ****************)

assert eqmod %v28 (%v17o2b*[-1476985,2491325,507927,-724804])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o2b*[1994046,-1393159,-1187885,-1834526])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v17o2b*[-1476985,2491325,507927,-724804])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o2b*[1994046,-1393159,-1187885,-1834526])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
       prove with [algebra solver isl, cuts [52, 53]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2];



(**************** CUT 55, 55 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o2b + %v12 /\  %v1 =  %v0o2b - %v12 /\
     %v2 =  %v2o2b + %v13 /\  %v3 =  %v2o2b - %v13 /\
    eqmod %v28 (%v17o2b*[-1476985,2491325,507927,-724804])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o2b*[1994046,-1393159,-1187885,-1834526])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2]
    prove with [cuts [52, 53]];



(* sub	v17.4s, v16.4s, v28.4s                      #! PC = 0x555556570c *)
sub %v17 %v16 %v28;
(* sub	v19.4s, v18.4s, v29.4s                      #! PC = 0x5555565710 *)
sub %v19 %v18 %v29;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x5555565714 *)
add %v16 %v16 %v28;
(* add	v18.4s, v18.4s, v29.4s                      #! PC = 0x5555565718 *)
add %v18 %v18 %v29;



(**************** CUT 56, 56 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod (F**2) (%v0[0]) [Q,X-1182243] /\ eqmod (F**2) (%v1[0]) [Q,X-7198174] /\
    eqmod (F**2) (%v2[0]) [Q,X-87208] /\ eqmod (F**2) (%v3[0]) [Q,X-8293209] /\
    eqmod (F**2) (%v16[0]) [Q,X-6903432] /\ eqmod (F**2) (%v17[0]) [Q,X-1476985] /\
    eqmod (F**2) (%v18[0]) [Q,X-1994046] /\ eqmod (F**2) (%v19[0]) [Q,X-6386371] /\
    eqmod (F**2) (%v0[1]) [Q,X-636927] /\ eqmod (F**2) (%v1[1]) [Q,X-7743490] /\
    eqmod (F**2) (%v2[1]) [Q,X-4415111] /\ eqmod (F**2) (%v3[1]) [Q,X-3965306] /\
    eqmod (F**2) (%v16[1]) [Q,X-2491325] /\ eqmod (F**2) (%v17[1]) [Q,X-5889092] /\
    eqmod (F**2) (%v18[1]) [Q,X-6987258] /\ eqmod (F**2) (%v19[1]) [Q,X-1393159] /\
    eqmod (F**2) (%v0[2]) [Q,X-4423672] /\ eqmod (F**2) (%v1[2]) [Q,X-3956745] /\
    eqmod (F**2) (%v2[2]) [Q,X-6084020] /\ eqmod (F**2) (%v3[2]) [Q,X-2296397] /\
    eqmod (F**2) (%v16[2]) [Q,X-507927] /\ eqmod (F**2) (%v17[2]) [Q,X-7872490] /\
    eqmod (F**2) (%v18[2]) [Q,X-7192532] /\ eqmod (F**2) (%v19[2]) [Q,X-1187885] /\
    eqmod (F**2) (%v0[3]) [Q,X-5095502] /\ eqmod (F**2) (%v1[3]) [Q,X-3284915] /\
    eqmod (F**2) (%v2[3]) [Q,X-4663471] /\ eqmod (F**2) (%v3[3]) [Q,X-3716946] /\
    eqmod (F**2) (%v16[3]) [Q,X-7655613] /\ eqmod (F**2) (%v17[3]) [Q,X-724804] /\
    eqmod (F**2) (%v18[3]) [Q,X-6545891] /\ eqmod (F**2) (%v19[3]) [Q,X-1834526]
    prove with [all ghosts,cuts [36,47,48,49,50,51,52,53,54]],
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v16 /\
       %v16 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v17 /\
       %v17 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v18 /\
       %v18 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v19 /\
       %v19 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
    prove with [algebra solver isl, cuts [54]]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v16 /\
       %v16 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v17 /\
       %v17 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v18 /\
       %v18 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v19 /\
       %v19 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2]
prove with [cuts [54]];



(* st4	{v0.4s-v3.4s}, [x1], #64                    #! EA = L0x7ffffed910; PC = 0x555556571c *)
mov [t00, t10, t20, t30] %v0; mov [t01, t11, t21, t31] %v1;
mov [t02, t12, t22, t32] %v2; mov [t03, t13, t23, t33] %v3;
mov L0x7ffffed910 t00; mov L0x7ffffed914 t01; mov L0x7ffffed918 t02; mov L0x7ffffed91c t03;
mov L0x7ffffed920 t10; mov L0x7ffffed924 t11; mov L0x7ffffed928 t12; mov L0x7ffffed92c t13;
mov L0x7ffffed930 t20; mov L0x7ffffed934 t21; mov L0x7ffffed938 t22; mov L0x7ffffed93c t23;
mov L0x7ffffed940 t30; mov L0x7ffffed944 t31; mov L0x7ffffed948 t32; mov L0x7ffffed94c t33;
(* st4	{v16.4s-v19.4s}, [x3], #64                  #! EA = L0x7ffffedb10; PC = 0x5555565720 *)
mov [t00, t10, t20, t30] %v16; mov [t01, t11, t21, t31] %v17;
mov [t02, t12, t22, t32] %v18; mov [t03, t13, t23, t33] %v19;
mov L0x7ffffedb10 t00; mov L0x7ffffedb14 t01; mov L0x7ffffedb18 t02; mov L0x7ffffedb1c t03;
mov L0x7ffffedb20 t10; mov L0x7ffffedb24 t11; mov L0x7ffffedb28 t12; mov L0x7ffffedb2c t13;
mov L0x7ffffedb30 t20; mov L0x7ffffedb34 t21; mov L0x7ffffedb38 t22; mov L0x7ffffedb3c t23;
mov L0x7ffffedb40 t30; mov L0x7ffffedb44 t31; mov L0x7ffffedb48 t32; mov L0x7ffffedb4c t33;
(* sub	x19, x19, #0x1                              #! PC = 0x5555565724 *)
subs dc x19 x19 (0x1)@uint64;
(* #cbnz	x19, 0x5555565578 <_ntt_bot_loop>         #! PC = 0x5555565728 *)
#cbnz	x19, 0x5555565578 <_ntt_bot_loop>         #! 0x5555565728 = 0x5555565728;
(* ld1	{v0.4s-v3.4s}, [x0], #64                    #! EA = L0x7ffffed950; Value = 0xff993fa6ffca50e4; PC = 0x5555565578 *)
mov %v0 [L0x7ffffed950, L0x7ffffed954, L0x7ffffed958, L0x7ffffed95c];
mov %v1 [L0x7ffffed960, L0x7ffffed964, L0x7ffffed968, L0x7ffffed96c];
mov %v2 [L0x7ffffed970, L0x7ffffed974, L0x7ffffed978, L0x7ffffed97c];
mov %v3 [L0x7ffffed980, L0x7ffffed984, L0x7ffffed988, L0x7ffffed98c];
(* ld1	{v16.4s-v19.4s}, [x2], #64                  #! EA = L0x7ffffedb50; Value = 0xffd80fc5ffa44274; PC = 0x555556557c *)
mov %v16 [L0x7ffffedb50, L0x7ffffedb54, L0x7ffffedb58, L0x7ffffedb5c];
mov %v17 [L0x7ffffedb60, L0x7ffffedb64, L0x7ffffedb68, L0x7ffffedb6c];
mov %v18 [L0x7ffffedb70, L0x7ffffedb74, L0x7ffffedb78, L0x7ffffedb7c];
mov %v19 [L0x7ffffedb80, L0x7ffffedb84, L0x7ffffedb88, L0x7ffffedb8c];
(* ld1	{v4.4s, v5.4s}, [x28], #32                  #! EA = L0x5555565ce0; Value = 0x0000000000000000; PC = 0x5555565580 *)
mov %v4 [L0x5555565ce0, L0x5555565ce4, L0x5555565ce8, L0x5555565cec];
mov %v5 [L0x5555565cf0, L0x5555565cf4, L0x5555565cf8, L0x5555565cfc];
(* ld2	{v6.4s, v7.4s}, [x28], #32                  #! EA = L0x5555565d00; Value = 0x002648b426524845; PC = 0x5555565584 *)
mov %v6 [L0x5555565d00, L0x5555565d08, L0x5555565d10, L0x5555565d18];
mov %v7 [L0x5555565d04, L0x5555565d0c, L0x5555565d14, L0x5555565d1c];
(* ld4	{v8.4s-v11.4s}, [x28], #64                  #! EA = L0x5555565d20; Value = 0xffff935cff9340d1; PC = 0x5555565588 *)
mov %v8 [L0x5555565d20, L0x5555565d30, L0x5555565d40, L0x5555565d50];
mov %v9 [L0x5555565d24, L0x5555565d34, L0x5555565d44, L0x5555565d54];
mov %v10 [L0x5555565d28, L0x5555565d38, L0x5555565d48, L0x5555565d58];
mov %v11 [L0x5555565d2c, L0x5555565d3c, L0x5555565d4c, L0x5555565d5c];
(* ld1	{v20.4s, v21.4s}, [x27], #32                #! EA = L0x55555660e0; Value = 0x0000000000000000; PC = 0x555556558c *)
mov %v20 [L0x55555660e0, L0x55555660e4, L0x55555660e8, L0x55555660ec];
mov %v21 [L0x55555660f0, L0x55555660f4, L0x55555660f8, L0x55555660fc];
(* ld2	{v22.4s, v23.4s}, [x27], #32                #! EA = L0x5555566100; Value = 0xffebe4d2ebdfca1b; PC = 0x5555565590 *)
mov %v22 [L0x5555566100, L0x5555566108, L0x5555566110, L0x5555566118];
mov %v23 [L0x5555566104, L0x555556610c, L0x5555566114, L0x555556611c];
(* ld4	{v24.4s-v27.4s}, [x27], #64                 #! EA = L0x5555566120; Value = 0xffd1b572d1a9dcd4; PC = 0x5555565594 *)
mov %v24 [L0x5555566120, L0x5555566130, L0x5555566140, L0x5555566150];
mov %v25 [L0x5555566124, L0x5555566134, L0x5555566144, L0x5555566154];
mov %v26 [L0x5555566128, L0x5555566138, L0x5555566148, L0x5555566158];
mov %v27 [L0x555556612c, L0x555556613c, L0x555556614c, L0x555556615c];
(* mov	v4.s[0], w20                                #! PC = 0x5555565598 *)
mov [_, m1, m2, m3] %v4; mov %v4 [w20, m1, m2, m3];
(* mul	v12.4s, v2.4s, v4.s[3]                      #! PC = 0x555556559c *)
mov [_, _, _, m] %v4; mov %mm [m, m, m, m];
mull %dc %v12 %v2 %mm; cast [] %v12@int32[4] %v12;
(* mul	v13.4s, v3.4s, v4.s[3]                      #! PC = 0x55555655a0 *)
mov [_, _, _, m] %v4; mov %mm [m, m, m, m];
mull %dc %v13 %v3 %mm; cast [] %v13@int32[4] %v13;
(* sqrdmulh	v2.4s, v2.4s, v4.s[2]                  #! PC = 0x55555655a4 *)
mov [_, _, m, _] %v4; mov %mm [m, m, m, m];
mulj %mm %v2 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v2 %dc %mm 1;
(* sqrdmulh	v3.4s, v3.4s, v4.s[2]                  #! PC = 0x55555655a8 *)
mov [_, _, m, _] %v4; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v2.4s, v4.s[0]                      #! PC = 0x55555655ac *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v2 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x55555655b0 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ([L0x7ffffed970,L0x7ffffed974,L0x7ffffed978,L0x7ffffed97c]*
                   [2663378,2663378,2663378,2663378]) [Q, Q, Q, Q] /\
       eqmod %v13 ([L0x7ffffed980,L0x7ffffed984,L0x7ffffed988,L0x7ffffed98c]*
                   [2663378,2663378,2663378,2663378]) [Q, Q, Q, Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume eqmod %v12 ([L0x7ffffed970,L0x7ffffed974,L0x7ffffed978,L0x7ffffed97c]*
                   [2663378,2663378,2663378,2663378]) [Q, Q, Q, Q] /\
       eqmod %v13 ([L0x7ffffed980,L0x7ffffed984,L0x7ffffed988,L0x7ffffed98c]*
                   [2663378,2663378,2663378,2663378]) [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
  && [NQ,NQ,NQ,NQ] <s %v12 /\ %v12 <s [Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ] <s %v13 /\ %v13 <s [Q,Q,Q,Q];

(**************** CUT 57, 57 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod %v12 ([L0x7ffffed970,L0x7ffffed974,L0x7ffffed978,L0x7ffffed97c]*
                   [2663378,2663378,2663378,2663378]) [Q, Q, Q, Q] /\
       eqmod %v13 ([L0x7ffffed980,L0x7ffffed984,L0x7ffffed988,L0x7ffffed98c]*
                   [2663378,2663378,2663378,2663378]) [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q]
    prove with [cuts [36]];

ghost  %v0o2c@int32[4], %v1o2c@int32[4]:
       %v0o2c =  %v0 /\  %v1o2c =  %v1
   &&  %v0o2c =  %v0 /\  %v1o2c =  %v1;

(* sub	v2.4s, v0.4s, v12.4s                        #! PC = 0x55555655b4 *)
sub %v2 %v0 %v12;
(* mul	v28.4s, v18.4s, v20.s[3]                    #! PC = 0x55555655b8 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v28 %v18 %mm; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v1.4s, v13.4s                        #! PC = 0x55555655bc *)
sub %v3 %v1 %v13;
(* mul	v29.4s, v19.4s, v20.s[3]                    #! PC = 0x55555655c0 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v29 %v19 %mm; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555655c4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v18.4s, v18.4s, v20.s[2]               #! PC = 0x55555655c8 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v18 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v18 %dc %mm 1;
(* add	v1.4s, v1.4s, v13.4s                        #! PC = 0x55555655cc *)
add %v1 %v1 %v13;
(* sqrdmulh	v19.4s, v19.4s, v20.s[2]               #! PC = 0x55555655d0 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v19 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v18.4s, v4.s[0]                     #! PC = 0x55555655d4 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v18 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x55555655d8 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 ([L0x7ffffedb70,L0x7ffffedb74,L0x7ffffedb78,L0x7ffffedb7c]*
                   [2453983,2453983,2453983,2453983]) [Q, Q, Q, Q] /\
       eqmod %v29 ([L0x7ffffedb80,L0x7ffffedb84,L0x7ffffedb88,L0x7ffffedb8c]*
                   [2453983,2453983,2453983,2453983]) [Q, Q, Q, Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume eqmod %v28 ([L0x7ffffedb70,L0x7ffffedb74,L0x7ffffedb78,L0x7ffffedb7c]*
                   [2453983,2453983,2453983,2453983]) [Q, Q, Q, Q] /\
       eqmod %v29 ([L0x7ffffedb80,L0x7ffffedb84,L0x7ffffedb88,L0x7ffffedb8c]*
                   [2453983,2453983,2453983,2453983]) [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2];

(**************** CUT 58, 58 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 = %v0o2c + %v12 /\  %v2 =  %v0o2c - %v12 /\
     %v1 = %v1o2c + %v13 /\  %v3 =  %v1o2c - %v13 /\
    eqmod %v28 ([L0x7ffffedb70,L0x7ffffedb74,L0x7ffffedb78,L0x7ffffedb7c]*
                [2453983,2453983,2453983,2453983]) [Q, Q, Q, Q] /\
    eqmod %v29 ([L0x7ffffedb80,L0x7ffffedb84,L0x7ffffedb88,L0x7ffffedb8c]*
                [2453983,2453983,2453983,2453983]) [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2]
    prove with [cuts [36]];

ghost %v16o2d@int32[4],%v17o2d@int32[4], %v1o2d@int32[4], %v3o2d@int32[4]:
      %v16o2d = %v16 /\ %v17o2d = %v17 /\  %v1o2d =  %v1 /\  %v3o2d =  %v3
   && %v16o2d = %v16 /\ %v17o2d = %v17 /\  %v1o2d =  %v1 /\  %v3o2d =  %v3;

(* sub	v18.4s, v16.4s, v28.4s                      #! PC = 0x55555655dc *)
sub %v18 %v16 %v28;
(* mul	v12.4s, v1.4s, v5.s[1]                      #! PC = 0x55555655e0 *)
mov [_, m, _, _] %v5; mov %mm [m, m, m, m];
mull %dc %v12 %v1 %mm; cast [] %v12@int32[4] %v12;
(* sub	v19.4s, v17.4s, v29.4s                      #! PC = 0x55555655e4 *)
sub %v19 %v17 %v29;
(* mul	v13.4s, v3.4s, v5.s[3]                      #! PC = 0x55555655e8 *)
mov [_, _, _, m] %v5; mov %mm [m, m, m, m];
mull %dc %v13 %v3 %mm; cast [] %v13@int32[4] %v13;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x55555655ec *)
add %v16 %v16 %v28;
(* sqrdmulh	v1.4s, v1.4s, v5.s[0]                  #! PC = 0x55555655f0 *)
mov [m, _, _, _] %v5; mov %mm [m, m, m, m];
mulj %mm %v1 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v1 %dc %mm 1;
(* add	v17.4s, v17.4s, v29.4s                      #! PC = 0x55555655f4 *)
add %v17 %v17 %v29;
(* sqrdmulh	v3.4s, v3.4s, v5.s[2]                  #! PC = 0x55555655f8 *)
mov [_, _, m, _] %v5; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v1.4s, v4.s[0]                      #! PC = 0x55555655fc *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v1 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x5555565600 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v1o2d*[-3110818,-3110818,-3110818,-3110818])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o2d*[2101410,2101410,2101410,2101410])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v1o2d*[-3110818,-3110818,-3110818,-3110818])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o2d*[2101410,2101410,2101410,2101410])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2];

(**************** CUT 59, 59 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o2d + %v28 /\ %v18 = %v16o2d - %v28 /\
    %v17 = %v17o2d + %v29 /\ %v19 = %v17o2d - %v29 /\
    eqmod %v12 ( %v1o2d*[-3110818,-3110818,-3110818,-3110818])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o2d*[2101410,2101410,2101410,2101410])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v16 /\
       %v16 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v17 /\
       %v17 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v18 /\
       %v18 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v19 /\
       %v19 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2]
    prove with [cuts [36]];

ghost  %v0o2e@int32[4], %v2o2e@int32[4],%v17o2e@int32[4],%v19o2e@int32[4]:
       %v0o2e =  %v0 /\  %v2o2e =  %v2 /\ %v17o2e = %v17 /\ %v19o2e = %v19
   &&  %v0o2e =  %v0 /\  %v2o2e =  %v2 /\ %v17o2e = %v17 /\ %v19o2e = %v19;

(* sub	v1.4s, v0.4s, v12.4s                        #! PC = 0x5555565604 *)
sub %v1 %v0 %v12;
(* mul	v28.4s, v17.4s, v21.s[1]                    #! PC = 0x5555565608 *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v28 %v17 %mm; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v2.4s, v13.4s                        #! PC = 0x555556560c *)
sub %v3 %v2 %v13;
(* mul	v29.4s, v19.4s, v21.s[3]                    #! PC = 0x5555565610 *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v29 %v19 %mm; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x5555565614 *)
add %v0 %v0 %v12;
(* sqrdmulh	v17.4s, v17.4s, v21.s[0]               #! PC = 0x5555565618 *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v17 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v17 %dc %mm 1;
(* add	v2.4s, v2.4s, v13.4s                        #! PC = 0x555556561c *)
add %v2 %v2 %v13;
(* sqrdmulh	v19.4s, v19.4s, v21.s[2]               #! PC = 0x5555565620 *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v19 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v17.4s, v4.s[0]                     #! PC = 0x5555565624 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v17 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x5555565628 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 (%v17o2e*[3756790,3756790,3756790,3756790])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o2e*[-1935799,-1935799,-1935799,-1935799])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v17o2e*[3756790,3756790,3756790,3756790])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o2e*[-1935799,-1935799,-1935799,-1935799])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [58]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2];

(**************** CUT 60, 60 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o2e + %v12 /\  %v1 =  %v0o2e - %v12 /\
     %v2 =  %v2o2e + %v13 /\  %v3 =  %v2o2e - %v13 /\
     eqmod %v28 (%v17o2e*[3756790,3756790,3756790,3756790])
           [Q, Q, Q, Q] /\
     eqmod %v29 (%v19o2e*[-1935799,-1935799,-1935799,-1935799])
           [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2]
    prove with [cuts [58]];

ghost %v16o2f@int32[4], %v18o2f@int32[4]:
      %v16o2f = %v16 /\ %v18o2f = %v18
   && %v16o2f = %v16 /\ %v18o2f = %v18;

(* sub	v17.4s, v16.4s, v28.4s                      #! PC = 0x555556562c *)
sub %v17 %v16 %v28;
(* sub	v19.4s, v18.4s, v29.4s                      #! PC = 0x5555565630 *)
sub %v19 %v18 %v29;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x5555565634 *)
add %v16 %v16 %v28;
(* add	v18.4s, v18.4s, v29.4s                      #! PC = 0x5555565638 *)
add %v18 %v18 %v29;

assert [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [59]] && true;
assume [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2];

(**************** CUT 61, 61 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o2f + %v28 /\ %v17 = %v16o2f - %v28 /\
    %v18 = %v18o2f + %v29 /\ %v19 = %v18o2f - %v29 /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v16 /\
       %v16 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v17 /\
       %v17 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v18 /\
       %v18 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v19 /\
       %v19 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2]
    prove with [cuts [59]];



(* trn1	v12.4s, v0.4s, v1.4s                       #! PC = 0x555556563c *)
mov [t0, _, t2, _] %v0; mov [t1, _, t3, _] %v1; mov %v12 [t0, t1, t2, t3];
(* trn2	v13.4s, v0.4s, v1.4s                       #! PC = 0x5555565640 *)
mov [_, t0, _, t2] %v0; mov [_, t1, _, t3] %v1; mov %v13 [t0, t1, t2, t3];
(* trn1	v14.4s, v2.4s, v3.4s                       #! PC = 0x5555565644 *)
mov [t0, _, t2, _] %v2; mov [t1, _, t3, _] %v3; mov %v14 [t0, t1, t2, t3];
(* trn2	v15.4s, v2.4s, v3.4s                       #! PC = 0x5555565648 *)
mov [_, t0, _, t2] %v2; mov [_, t1, _, t3] %v3; mov %v15 [t0, t1, t2, t3];
(* trn1	v0.2d, v12.2d, v14.2d                      #! PC = 0x555556564c *)
mov [t0, t1, _, _] %v12; mov [t2, t3, _, _] %v14; mov %v0 [t0, t1, t2, t3];
(* trn2	v2.2d, v12.2d, v14.2d                      #! PC = 0x5555565650 *)
mov [_, _, t0, t1] %v12; mov [_, _, t2, t3] %v14; mov %v2 [t0, t1, t2, t3];
(* trn1	v1.2d, v13.2d, v15.2d                      #! PC = 0x5555565654 *)
mov [t0, t1, _, _] %v13; mov [t2, t3, _, _] %v15; mov %v1 [t0, t1, t2, t3];
(* trn2	v3.2d, v13.2d, v15.2d                      #! PC = 0x5555565658 *)
mov [_, _, t0, t1] %v13; mov [_, _, t2, t3] %v15; mov %v3 [t0, t1, t2, t3];
(* trn1	v28.4s, v16.4s, v17.4s                     #! PC = 0x555556565c *)
mov [t0, _, t2, _] %v16; mov [t1, _, t3, _] %v17; mov %v28 [t0, t1, t2, t3];
(* trn2	v29.4s, v16.4s, v17.4s                     #! PC = 0x5555565660 *)
mov [_, t0, _, t2] %v16; mov [_, t1, _, t3] %v17; mov %v29 [t0, t1, t2, t3];
(* trn1	v30.4s, v18.4s, v19.4s                     #! PC = 0x5555565664 *)
mov [t0, _, t2, _] %v18; mov [t1, _, t3, _] %v19; mov %v30 [t0, t1, t2, t3];
(* trn2	v31.4s, v18.4s, v19.4s                     #! PC = 0x5555565668 *)
mov [_, t0, _, t2] %v18; mov [_, t1, _, t3] %v19; mov %v31 [t0, t1, t2, t3];
(* trn1	v16.2d, v28.2d, v30.2d                     #! PC = 0x555556566c *)
mov [t0, t1, _, _] %v28; mov [t2, t3, _, _] %v30; mov %v16 [t0, t1, t2, t3];
(* trn2	v18.2d, v28.2d, v30.2d                     #! PC = 0x5555565670 *)
mov [_, _, t0, t1] %v28; mov [_, _, t2, t3] %v30; mov %v18 [t0, t1, t2, t3];
(* trn1	v17.2d, v29.2d, v31.2d                     #! PC = 0x5555565674 *)
mov [t0, t1, _, _] %v29; mov [t2, t3, _, _] %v31; mov %v17 [t0, t1, t2, t3];
(* trn2	v19.2d, v29.2d, v31.2d                     #! PC = 0x5555565678 *)
mov [_, _, t0, t1] %v29; mov [_, _, t2, t3] %v31; mov %v19 [t0, t1, t2, t3];

ghost  %v2o30@int32[4], %v3o30@int32[4]:
       %v2o30 =  %v2 /\  %v3o30 =  %v3
   &&  %v2o30 =  %v2 /\  %v3o30 =  %v3;

(* mul	v12.4s, v2.4s, v7.4s                        #! PC = 0x555556567c *)
mull %dc %v12 %v2 %v7; cast [] %v12@int32[4] %v12;
(* mul	v13.4s, v3.4s, v7.4s                        #! PC = 0x5555565680 *)
mull %dc %v13 %v3 %v7; cast [] %v13@int32[4] %v13;
(* sqrdmulh	v2.4s, v2.4s, v6.4s                    #! PC = 0x5555565684 *)
mulj %mm %v2 %v6; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v2 %dc %mm 1;
(* sqrdmulh	v3.4s, v3.4s, v6.4s                    #! PC = 0x5555565688 *)
mulj %mm %v3 %v6; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v2.4s, v4.s[0]                      #! PC = 0x555556568c *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v2 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x5555565690 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v2o30*[2508980,2028118,1937570,-3815725])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o30*[2508980,2028118,1937570,-3815725])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v2o30*[2508980,2028118,1937570,-3815725])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o30*[2508980,2028118,1937570,-3815725])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
       prove with [algebra solver isl] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q];

(**************** CUT 62, 62 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod %v12 ( %v2o30*[2508980,2028118,1937570,-3815725])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o30*[2508980,2028118,1937570,-3815725])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    true ;

ghost  %v0o31@int32[4], %v1o31@int32[4],%v18o31@int32[4],%v19o31@int32[4]:
       %v0o31 =  %v0 /\  %v1o31 =  %v1 /\ %v18o31 = %v18 /\ %v19o31 = %v19
   &&  %v0o31 =  %v0 /\  %v1o31 =  %v1 /\ %v18o31 = %v18 /\ %v19o31 = %v19;

(* sub	v2.4s, v0.4s, v12.4s                        #! PC = 0x5555565694 *)
sub %v2 %v0 %v12;
(* mul	v28.4s, v18.4s, v23.4s                      #! PC = 0x5555565698 *)
mull %dc %v28 %v18 %v23; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v1.4s, v13.4s                        #! PC = 0x555556569c *)
sub %v3 %v1 %v13;
(* mul	v29.4s, v19.4s, v23.4s                      #! PC = 0x55555656a0 *)
mull %dc %v29 %v19 %v23; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555656a4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v18.4s, v18.4s, v22.4s                 #! PC = 0x55555656a8 *)
mulj %mm %v18 %v22; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v18 %dc %mm 1;
(* add	v1.4s, v1.4s, v13.4s                        #! PC = 0x55555656ac *)
add %v1 %v1 %v13;
(* sqrdmulh	v19.4s, v19.4s, v22.4s                 #! PC = 0x55555656b0 *)
mulj %mm %v19 %v22; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v18.4s, v4.s[0]                     #! PC = 0x55555656b4 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v18 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x55555656b8 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 (%v18o31*[-1317678,2461387,3035980,621164])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o31*[-1317678,2461387,3035980,621164])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v18o31*[-1317678,2461387,3035980,621164])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o31*[-1317678,2461387,3035980,621164])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
       prove with [algebra solver isl, cuts [60]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2];



(**************** CUT 63, 63 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o31 + %v12 /\  %v2 =  %v0o31 - %v12 /\
     %v1 =  %v1o31 + %v13 /\  %v3 =  %v1o31 - %v13 /\
    eqmod %v28 (%v18o31*[-1317678,2461387,3035980,621164])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o31*[-1317678,2461387,3035980,621164])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2]
    prove with [cuts [60]];

ghost %v16o32@int32[4],%v17o32@int32[4], %v1o32@int32[4], %v3o32@int32[4]:
      %v16o32 = %v16 /\ %v17o32 = %v17 /\  %v1o32 =  %v1 /\  %v3o32 = %v3
   && %v16o32 = %v16 /\ %v17o32 = %v17 /\  %v1o32 =  %v1 /\  %v3o32 = %v3;

(* sub	v18.4s, v16.4s, v28.4s                      #! PC = 0x55555656bc *)
sub %v18 %v16 %v28;
(* mul	v12.4s, v1.4s, v9.4s                        #! PC = 0x55555656c0 *)
mull %dc %v12 %v1 %v9; cast [] %v12@int32[4] %v12;
(* sub	v19.4s, v17.4s, v29.4s                      #! PC = 0x55555656c4 *)
sub %v19 %v17 %v29;
(* mul	v13.4s, v3.4s, v11.4s                       #! PC = 0x55555656c8 *)
mull %dc %v13 %v3 %v11; cast [] %v13@int32[4] %v13;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x55555656cc *)
add %v16 %v16 %v28;
(* sqrdmulh	v1.4s, v1.4s, v8.4s                    #! PC = 0x55555656d0 *)
mulj %mm %v1 %v8; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v1 %dc %mm 1;
(* add	v17.4s, v17.4s, v29.4s                      #! PC = 0x55555656d4 *)
add %v17 %v17 %v29;
(* sqrdmulh	v3.4s, v3.4s, v10.4s                   #! PC = 0x55555656d8 *)
mulj %mm %v3 %v10; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v1.4s, v4.s[0]                      #! PC = 0x55555656dc *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v1 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x55555656e0 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v1o32*[-27812,1009365,-1979497,-3956944])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o32*[822541,-2454145,1596822,-3759465])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v1o32*[-27812,1009365,-1979497,-3956944])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o32*[822541,-2454145,1596822,-3759465])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
       prove with [algebra solver isl, cuts [61]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2];

(**************** CUT 64, 64 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o32 + %v28 /\ %v18 = %v16o32 - %v28 /\
    %v17 = %v17o32 + %v29 /\ %v19 = %v17o32 - %v29 /\
    eqmod %v12 ( %v1o32*[-27812,1009365,-1979497,-3956944])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o32*[822541,-2454145,1596822,-3759465])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v16 /\
       %v16 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v17 /\
       %v17 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v18 /\
       %v18 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v19 /\
       %v19 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2]
    prove with [cuts [61]];

ghost  %v0o33@int32[4], %v2o33@int32[4],%v17o33@int32[4],%v19o33@int32[4]:
       %v0o33 =  %v0 /\  %v2o33 =  %v2 /\ %v17o33 = %v17 /\ %v19o33 = %v19
   &&  %v0o33 =  %v0 /\  %v2o33 =  %v2 /\ %v17o33 = %v17 /\ %v19o33 = %v19;

(* sub	v1.4s, v0.4s, v12.4s                        #! PC = 0x55555656e4 *)
sub %v1 %v0 %v12;
(* mul	v28.4s, v17.4s, v25.4s                      #! PC = 0x55555656e8 *)
mull %dc %v28 %v17 %v25; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v2.4s, v13.4s                        #! PC = 0x55555656ec *)
sub %v3 %v2 %v13;
(* mul	v29.4s, v19.4s, v27.4s                      #! PC = 0x55555656f0 *)
mull %dc %v29 %v19 %v27; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555656f4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v17.4s, v17.4s, v24.4s                 #! PC = 0x55555656f8 *)
mulj %mm %v17 %v24; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v17 %dc %mm 1;
(* add	v2.4s, v2.4s, v13.4s                        #! PC = 0x55555656fc *)
add %v2 %v2 %v13;
(* sqrdmulh	v19.4s, v19.4s, v26.4s                 #! PC = 0x5555565700 *)
mulj %mm %v19 %v26; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v17.4s, v4.s[0]                     #! PC = 0x5555565704 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v17 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x5555565708 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;


(**************** mls ****************)

assert eqmod %v28 (%v17o33*[-3033742,2647994,-2612853,749577])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o33*[-338420,3009748,4148469,-4022750])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v17o33*[-3033742,2647994,-2612853,749577])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o33*[-338420,3009748,4148469,-4022750])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
       prove with [algebra solver isl, cuts [62, 63]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2];



(**************** CUT 65, 65 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o33 + %v12 /\  %v1 =  %v0o33 - %v12 /\
     %v2 =  %v2o33 + %v13 /\  %v3 =  %v2o33 - %v13 /\
    eqmod %v28 (%v17o33*[-3033742,2647994,-2612853,749577])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o33*[-338420,3009748,4148469,-4022750])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2]
    prove with [cuts [62, 63]];



(* sub	v17.4s, v16.4s, v28.4s                      #! PC = 0x555556570c *)
sub %v17 %v16 %v28;
(* sub	v19.4s, v18.4s, v29.4s                      #! PC = 0x5555565710 *)
sub %v19 %v18 %v29;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x5555565714 *)
add %v16 %v16 %v28;
(* add	v18.4s, v18.4s, v29.4s                      #! PC = 0x5555565718 *)
add %v18 %v18 %v29;



(**************** CUT 66, 66 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod (F**2) (%v0[0]) [Q,X-8352605] /\ eqmod (F**2) (%v1[0]) [Q,X-27812] /\
    eqmod (F**2) (%v2[0]) [Q,X-822541] /\ eqmod (F**2) (%v3[0]) [Q,X-7557876] /\
    eqmod (F**2) (%v16[0]) [Q,X-5346675] /\ eqmod (F**2) (%v17[0]) [Q,X-3033742] /\
    eqmod (F**2) (%v18[0]) [Q,X-8041997] /\ eqmod (F**2) (%v19[0]) [Q,X-338420] /\
    eqmod (F**2) (%v0[1]) [Q,X-1009365] /\ eqmod (F**2) (%v1[1]) [Q,X-7371052] /\
    eqmod (F**2) (%v2[1]) [Q,X-5926272] /\ eqmod (F**2) (%v3[1]) [Q,X-2454145] /\
    eqmod (F**2) (%v16[1]) [Q,X-2647994] /\ eqmod (F**2) (%v17[1]) [Q,X-5732423] /\
    eqmod (F**2) (%v18[1]) [Q,X-3009748] /\ eqmod (F**2) (%v19[1]) [Q,X-5370669] /\
    eqmod (F**2) (%v0[2]) [Q,X-6400920] /\ eqmod (F**2) (%v1[2]) [Q,X-1979497] /\
    eqmod (F**2) (%v2[2]) [Q,X-1596822] /\ eqmod (F**2) (%v3[2]) [Q,X-6783595] /\
    eqmod (F**2) (%v16[2]) [Q,X-5767564] /\ eqmod (F**2) (%v17[2]) [Q,X-2612853] /\
    eqmod (F**2) (%v18[2]) [Q,X-4148469] /\ eqmod (F**2) (%v19[2]) [Q,X-4231948] /\
    eqmod (F**2) (%v0[3]) [Q,X-4423473] /\ eqmod (F**2) (%v1[3]) [Q,X-3956944] /\
    eqmod (F**2) (%v2[3]) [Q,X-4620952] /\ eqmod (F**2) (%v3[3]) [Q,X-3759465] /\
    eqmod (F**2) (%v16[3]) [Q,X-749577] /\ eqmod (F**2) (%v17[3]) [Q,X-7630840] /\
    eqmod (F**2) (%v18[3]) [Q,X-4357667] /\ eqmod (F**2) (%v19[3]) [Q,X-4022750]
    prove with [all ghosts,cuts [36,57,58,59,60,61,62,63,64]],
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v16 /\
       %v16 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v17 /\
       %v17 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v18 /\
       %v18 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v19 /\
       %v19 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
    prove with [algebra solver isl, cuts [64]]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v16 /\
       %v16 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v17 /\
       %v17 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v18 /\
       %v18 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v19 /\
       %v19 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2]
prove with [cuts [64]];



(* st4	{v0.4s-v3.4s}, [x1], #64                    #! EA = L0x7ffffed950; PC = 0x555556571c *)
mov [t00, t10, t20, t30] %v0; mov [t01, t11, t21, t31] %v1;
mov [t02, t12, t22, t32] %v2; mov [t03, t13, t23, t33] %v3;
mov L0x7ffffed950 t00; mov L0x7ffffed954 t01; mov L0x7ffffed958 t02; mov L0x7ffffed95c t03;
mov L0x7ffffed960 t10; mov L0x7ffffed964 t11; mov L0x7ffffed968 t12; mov L0x7ffffed96c t13;
mov L0x7ffffed970 t20; mov L0x7ffffed974 t21; mov L0x7ffffed978 t22; mov L0x7ffffed97c t23;
mov L0x7ffffed980 t30; mov L0x7ffffed984 t31; mov L0x7ffffed988 t32; mov L0x7ffffed98c t33;
(* st4	{v16.4s-v19.4s}, [x3], #64                  #! EA = L0x7ffffedb50; PC = 0x5555565720 *)
mov [t00, t10, t20, t30] %v16; mov [t01, t11, t21, t31] %v17;
mov [t02, t12, t22, t32] %v18; mov [t03, t13, t23, t33] %v19;
mov L0x7ffffedb50 t00; mov L0x7ffffedb54 t01; mov L0x7ffffedb58 t02; mov L0x7ffffedb5c t03;
mov L0x7ffffedb60 t10; mov L0x7ffffedb64 t11; mov L0x7ffffedb68 t12; mov L0x7ffffedb6c t13;
mov L0x7ffffedb70 t20; mov L0x7ffffedb74 t21; mov L0x7ffffedb78 t22; mov L0x7ffffedb7c t23;
mov L0x7ffffedb80 t30; mov L0x7ffffedb84 t31; mov L0x7ffffedb88 t32; mov L0x7ffffedb8c t33;
(* sub	x19, x19, #0x1                              #! PC = 0x5555565724 *)
subs dc x19 x19 (0x1)@uint64;
(* #cbnz	x19, 0x5555565578 <_ntt_bot_loop>         #! PC = 0x5555565728 *)
#cbnz	x19, 0x5555565578 <_ntt_bot_loop>         #! 0x5555565728 = 0x5555565728;
(* ld1	{v0.4s-v3.4s}, [x0], #64                    #! EA = L0x7ffffed990; Value = 0xff81366cffd1a8ae; PC = 0x5555565578 *)
mov %v0 [L0x7ffffed990, L0x7ffffed994, L0x7ffffed998, L0x7ffffed99c];
mov %v1 [L0x7ffffed9a0, L0x7ffffed9a4, L0x7ffffed9a8, L0x7ffffed9ac];
mov %v2 [L0x7ffffed9b0, L0x7ffffed9b4, L0x7ffffed9b8, L0x7ffffed9bc];
mov %v3 [L0x7ffffed9c0, L0x7ffffed9c4, L0x7ffffed9c8, L0x7ffffed9cc];
(* ld1	{v16.4s-v19.4s}, [x2], #64                  #! EA = L0x7ffffedb90; Value = 0x001e8353ff8a2530; PC = 0x555556557c *)
mov %v16 [L0x7ffffedb90, L0x7ffffedb94, L0x7ffffedb98, L0x7ffffedb9c];
mov %v17 [L0x7ffffedba0, L0x7ffffedba4, L0x7ffffedba8, L0x7ffffedbac];
mov %v18 [L0x7ffffedbb0, L0x7ffffedbb4, L0x7ffffedbb8, L0x7ffffedbbc];
mov %v19 [L0x7ffffedbc0, L0x7ffffedbc4, L0x7ffffedbc8, L0x7ffffedbcc];
(* ld1	{v4.4s, v5.4s}, [x28], #32                  #! EA = L0x5555565d60; Value = 0x0000000000000000; PC = 0x5555565580 *)
mov %v4 [L0x5555565d60, L0x5555565d64, L0x5555565d68, L0x5555565d6c];
mov %v5 [L0x5555565d70, L0x5555565d74, L0x5555565d78, L0x5555565d7c];
(* ld2	{v6.4s, v7.4s}, [x28], #32                  #! EA = L0x5555565d80; Value = 0x002ae59b2af056c0; PC = 0x5555565584 *)
mov %v6 [L0x5555565d80, L0x5555565d88, L0x5555565d90, L0x5555565d98];
mov %v7 [L0x5555565d84, L0x5555565d8c, L0x5555565d94, L0x5555565d9c];
(* ld4	{v8.4s-v11.4s}, [x28], #64                  #! EA = L0x5555565da0; Value = 0xffe6495fe642efef; PC = 0x5555565588 *)
mov %v8 [L0x5555565da0, L0x5555565db0, L0x5555565dc0, L0x5555565dd0];
mov %v9 [L0x5555565da4, L0x5555565db4, L0x5555565dc4, L0x5555565dd4];
mov %v10 [L0x5555565da8, L0x5555565db8, L0x5555565dc8, L0x5555565dd8];
mov %v11 [L0x5555565dac, L0x5555565dbc, L0x5555565dcc, L0x5555565ddc];
(* ld1	{v20.4s, v21.4s}, [x27], #32                #! EA = L0x5555566160; Value = 0x0000000000000000; PC = 0x555556558c *)
mov %v20 [L0x5555566160, L0x5555566164, L0x5555566168, L0x555556616c];
mov %v21 [L0x5555566170, L0x5555566174, L0x5555566178, L0x555556617c];
(* ld2	{v22.4s, v23.4s}, [x27], #32                #! EA = L0x5555566180; Value = 0x003b88203b97054a; PC = 0x5555565590 *)
mov %v22 [L0x5555566180, L0x5555566188, L0x5555566190, L0x5555566198];
mov %v23 [L0x5555566184, L0x555556618c, L0x5555566194, L0x555556619c];
(* ld4	{v24.4s-v27.4s}, [x27], #64                 #! EA = L0x55555661a0; Value = 0x003cbd373ccc69a1; PC = 0x5555565594 *)
mov %v24 [L0x55555661a0, L0x55555661b0, L0x55555661c0, L0x55555661d0];
mov %v25 [L0x55555661a4, L0x55555661b4, L0x55555661c4, L0x55555661d4];
mov %v26 [L0x55555661a8, L0x55555661b8, L0x55555661c8, L0x55555661d8];
mov %v27 [L0x55555661ac, L0x55555661bc, L0x55555661cc, L0x55555661dc];
(* mov	v4.s[0], w20                                #! PC = 0x5555565598 *)
mov [_, m1, m2, m3] %v4; mov %v4 [w20, m1, m2, m3];
(* mul	v12.4s, v2.4s, v4.s[3]                      #! PC = 0x555556559c *)
mov [_, _, _, m] %v4; mov %mm [m, m, m, m];
mull %dc %v12 %v2 %mm; cast [] %v12@int32[4] %v12;
(* mul	v13.4s, v3.4s, v4.s[3]                      #! PC = 0x55555655a0 *)
mov [_, _, _, m] %v4; mov %mm [m, m, m, m];
mull %dc %v13 %v3 %mm; cast [] %v13@int32[4] %v13;
(* sqrdmulh	v2.4s, v2.4s, v4.s[2]                  #! PC = 0x55555655a4 *)
mov [_, _, m, _] %v4; mov %mm [m, m, m, m];
mulj %mm %v2 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v2 %dc %mm 1;
(* sqrdmulh	v3.4s, v3.4s, v4.s[2]                  #! PC = 0x55555655a8 *)
mov [_, _, m, _] %v4; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v2.4s, v4.s[0]                      #! PC = 0x55555655ac *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v2 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x55555655b0 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ([L0x7ffffed9b0,L0x7ffffed9b4,L0x7ffffed9b8,L0x7ffffed9bc]*
                   [-1674615,-1674615,-1674615,-1674615]) [Q, Q, Q, Q] /\
       eqmod %v13 ([L0x7ffffed9c0,L0x7ffffed9c4,L0x7ffffed9c8,L0x7ffffed9cc]*
                   [-1674615,-1674615,-1674615,-1674615]) [Q, Q, Q, Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume eqmod %v12 ([L0x7ffffed9b0,L0x7ffffed9b4,L0x7ffffed9b8,L0x7ffffed9bc]*
                   [-1674615,-1674615,-1674615,-1674615]) [Q, Q, Q, Q] /\
       eqmod %v13 ([L0x7ffffed9c0,L0x7ffffed9c4,L0x7ffffed9c8,L0x7ffffed9cc]*
                   [-1674615,-1674615,-1674615,-1674615]) [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
  && [NQ,NQ,NQ,NQ] <s %v12 /\ %v12 <s [Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ] <s %v13 /\ %v13 <s [Q,Q,Q,Q];

(**************** CUT 67, 67 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod %v12 ([L0x7ffffed9b0,L0x7ffffed9b4,L0x7ffffed9b8,L0x7ffffed9bc]*
                [-1674615,-1674615,-1674615,-1674615]) [Q, Q, Q, Q] /\
    eqmod %v13 ([L0x7ffffed9c0,L0x7ffffed9c4,L0x7ffffed9c8,L0x7ffffed9cc]*
                [-1674615,-1674615,-1674615,-1674615]) [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q]
    prove with [cuts [36]];

ghost  %v0o34@int32[4], %v1o34@int32[4]:
       %v0o34 =  %v0 /\  %v1o34 =  %v1
   &&  %v0o34 =  %v0 /\  %v1o34 =  %v1;

(* sub	v2.4s, v0.4s, v12.4s                        #! PC = 0x55555655b4 *)
sub %v2 %v0 %v12;
(* mul	v28.4s, v18.4s, v20.s[3]                    #! PC = 0x55555655b8 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v28 %v18 %mm; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v1.4s, v13.4s                        #! PC = 0x55555655bc *)
sub %v3 %v1 %v13;
(* mul	v29.4s, v19.4s, v20.s[3]                    #! PC = 0x55555655c0 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v29 %v19 %mm; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555655c4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v18.4s, v18.4s, v20.s[2]               #! PC = 0x55555655c8 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v18 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v18 %dc %mm 1;
(* add	v1.4s, v1.4s, v13.4s                        #! PC = 0x55555655cc *)
add %v1 %v1 %v13;
(* sqrdmulh	v19.4s, v19.4s, v20.s[2]               #! PC = 0x55555655d0 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v19 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v18.4s, v4.s[0]                     #! PC = 0x55555655d4 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v18 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x55555655d8 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 ([L0x7ffffedbb0,L0x7ffffedbb4,L0x7ffffedbb8,L0x7ffffedbbc]*
                   [1460718,1460718,1460718,1460718]) [Q, Q, Q, Q] /\
       eqmod %v29 ([L0x7ffffedbc0,L0x7ffffedbc4,L0x7ffffedbc8,L0x7ffffedbcc]*
                   [1460718,1460718,1460718,1460718]) [Q, Q, Q, Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume eqmod %v28 ([L0x7ffffedbb0,L0x7ffffedbb4,L0x7ffffedbb8,L0x7ffffedbbc]*
                   [1460718,1460718,1460718,1460718]) [Q, Q, Q, Q] /\
       eqmod %v29 ([L0x7ffffedbc0,L0x7ffffedbc4,L0x7ffffedbc8,L0x7ffffedbcc]*
                   [1460718,1460718,1460718,1460718]) [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2];

(**************** CUT 68, 68 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 = %v0o34 + %v12 /\  %v2 =  %v0o34 - %v12 /\
     %v1 = %v1o34 + %v13 /\  %v3 =  %v1o34 - %v13 /\
    eqmod %v28 ([L0x7ffffedbb0,L0x7ffffedbb4,L0x7ffffedbb8,L0x7ffffedbbc]*
                [1460718,1460718,1460718,1460718]) [Q, Q, Q, Q] /\
    eqmod %v29 ([L0x7ffffedbc0,L0x7ffffedbc4,L0x7ffffedbc8,L0x7ffffedbcc]*
                [1460718,1460718,1460718,1460718]) [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2]
    prove with [cuts [36]];

ghost %v16o35@int32[4],%v17o35@int32[4], %v1o35@int32[4], %v3o35@int32[4]:
      %v16o35 = %v16 /\ %v17o35 = %v17 /\  %v1o35 =  %v1 /\  %v3o35 =  %v3
   && %v16o35 = %v16 /\ %v17o35 = %v17 /\  %v1o35 =  %v1 /\  %v3o35 =  %v3;

(* sub	v18.4s, v16.4s, v28.4s                      #! PC = 0x55555655dc *)
sub %v18 %v16 %v28;
(* mul	v12.4s, v1.4s, v5.s[1]                      #! PC = 0x55555655e0 *)
mov [_, m, _, _] %v5; mov %mm [m, m, m, m];
mull %dc %v12 %v1 %mm; cast [] %v12@int32[4] %v12;
(* sub	v19.4s, v17.4s, v29.4s                      #! PC = 0x55555655e4 *)
sub %v19 %v17 %v29;
(* mul	v13.4s, v3.4s, v5.s[3]                      #! PC = 0x55555655e8 *)
mov [_, _, _, m] %v5; mov %mm [m, m, m, m];
mull %dc %v13 %v3 %mm; cast [] %v13@int32[4] %v13;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x55555655ec *)
add %v16 %v16 %v28;
(* sqrdmulh	v1.4s, v1.4s, v5.s[0]                  #! PC = 0x55555655f0 *)
mov [m, _, _, _] %v5; mov %mm [m, m, m, m];
mulj %mm %v1 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v1 %dc %mm 1;
(* add	v17.4s, v17.4s, v29.4s                      #! PC = 0x55555655f4 *)
add %v17 %v17 %v29;
(* sqrdmulh	v3.4s, v3.4s, v5.s[2]                  #! PC = 0x55555655f8 *)
mov [_, _, m, _] %v5; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v1.4s, v4.s[0]                      #! PC = 0x55555655fc *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v1 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x5555565600 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v1o35*[3704823,3704823,3704823,3704823])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o35*[1159875,1159875,1159875,1159875])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v1o35*[3704823,3704823,3704823,3704823])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o35*[1159875,1159875,1159875,1159875])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2];

(**************** CUT 69, 69 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o35 + %v28 /\ %v18 = %v16o35 - %v28 /\
    %v17 = %v17o35 + %v29 /\ %v19 = %v17o35 - %v29 /\
    eqmod %v12 ( %v1o35*[3704823,3704823,3704823,3704823])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o35*[1159875,1159875,1159875,1159875])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v16 /\
       %v16 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v17 /\
       %v17 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v18 /\
       %v18 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v19 /\
       %v19 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2]
    prove with [cuts [36]];

ghost  %v0o36@int32[4], %v2o36@int32[4],%v17o36@int32[4],%v19o36@int32[4]:
       %v0o36 =  %v0 /\  %v2o36 =  %v2 /\ %v17o36 = %v17 /\ %v19o36 = %v19
   &&  %v0o36 =  %v0 /\  %v2o36 =  %v2 /\ %v17o36 = %v17 /\ %v19o36 = %v19;

(* sub	v1.4s, v0.4s, v12.4s                        #! PC = 0x5555565604 *)
sub %v1 %v0 %v12;
(* mul	v28.4s, v17.4s, v21.s[1]                    #! PC = 0x5555565608 *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v28 %v17 %mm; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v2.4s, v13.4s                        #! PC = 0x555556560c *)
sub %v3 %v2 %v13;
(* mul	v29.4s, v19.4s, v21.s[3]                    #! PC = 0x5555565610 *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v29 %v19 %mm; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x5555565614 *)
add %v0 %v0 %v12;
(* sqrdmulh	v17.4s, v17.4s, v21.s[0]               #! PC = 0x5555565618 *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v17 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v17 %dc %mm 1;
(* add	v2.4s, v2.4s, v13.4s                        #! PC = 0x555556561c *)
add %v2 %v2 %v13;
(* sqrdmulh	v19.4s, v19.4s, v21.s[2]               #! PC = 0x5555565620 *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v19 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v17.4s, v4.s[0]                     #! PC = 0x5555565624 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v17 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x5555565628 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 (%v17o36*[-1716988,-1716988,-1716988,-1716988])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o36*[-3950053,-3950053,-3950053,-3950053])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v17o36*[-1716988,-1716988,-1716988,-1716988])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o36*[-3950053,-3950053,-3950053,-3950053])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [68]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2];

(**************** CUT 70, 70 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o36 + %v12 /\  %v1 =  %v0o36 - %v12 /\
     %v2 =  %v2o36 + %v13 /\  %v3 =  %v2o36 - %v13 /\
     eqmod %v28 (%v17o36*[-1716988,-1716988,-1716988,-1716988])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o36*[-3950053,-3950053,-3950053,-3950053])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2]
    prove with [cuts [68]];

ghost %v16o37@int32[4], %v18o37@int32[4]:
      %v16o37 = %v16 /\ %v18o37 = %v18
   && %v16o37 = %v16 /\ %v18o37 = %v18;

(* sub	v17.4s, v16.4s, v28.4s                      #! PC = 0x555556562c *)
sub %v17 %v16 %v28;
(* sub	v19.4s, v18.4s, v29.4s                      #! PC = 0x5555565630 *)
sub %v19 %v18 %v29;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x5555565634 *)
add %v16 %v16 %v28;
(* add	v18.4s, v18.4s, v29.4s                      #! PC = 0x5555565638 *)
add %v18 %v18 %v29;

assert [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [69]] && true;
assume [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2];


(**************** CUT 71, 71 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o37 + %v28 /\ %v17 = %v16o37 - %v28 /\
    %v18 = %v18o37 + %v29 /\ %v19 = %v18o37 - %v29 /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v16 /\
       %v16 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v17 /\
       %v17 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v18 /\
       %v18 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v19 /\
       %v19 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2]
    prove with [cuts [69]];



(* trn1	v12.4s, v0.4s, v1.4s                       #! PC = 0x555556563c *)
mov [t0, _, t2, _] %v0; mov [t1, _, t3, _] %v1; mov %v12 [t0, t1, t2, t3];
(* trn2	v13.4s, v0.4s, v1.4s                       #! PC = 0x5555565640 *)
mov [_, t0, _, t2] %v0; mov [_, t1, _, t3] %v1; mov %v13 [t0, t1, t2, t3];
(* trn1	v14.4s, v2.4s, v3.4s                       #! PC = 0x5555565644 *)
mov [t0, _, t2, _] %v2; mov [t1, _, t3, _] %v3; mov %v14 [t0, t1, t2, t3];
(* trn2	v15.4s, v2.4s, v3.4s                       #! PC = 0x5555565648 *)
mov [_, t0, _, t2] %v2; mov [_, t1, _, t3] %v3; mov %v15 [t0, t1, t2, t3];
(* trn1	v0.2d, v12.2d, v14.2d                      #! PC = 0x555556564c *)
mov [t0, t1, _, _] %v12; mov [t2, t3, _, _] %v14; mov %v0 [t0, t1, t2, t3];
(* trn2	v2.2d, v12.2d, v14.2d                      #! PC = 0x5555565650 *)
mov [_, _, t0, t1] %v12; mov [_, _, t2, t3] %v14; mov %v2 [t0, t1, t2, t3];
(* trn1	v1.2d, v13.2d, v15.2d                      #! PC = 0x5555565654 *)
mov [t0, t1, _, _] %v13; mov [t2, t3, _, _] %v15; mov %v1 [t0, t1, t2, t3];
(* trn2	v3.2d, v13.2d, v15.2d                      #! PC = 0x5555565658 *)
mov [_, _, t0, t1] %v13; mov [_, _, t2, t3] %v15; mov %v3 [t0, t1, t2, t3];
(* trn1	v28.4s, v16.4s, v17.4s                     #! PC = 0x555556565c *)
mov [t0, _, t2, _] %v16; mov [t1, _, t3, _] %v17; mov %v28 [t0, t1, t2, t3];
(* trn2	v29.4s, v16.4s, v17.4s                     #! PC = 0x5555565660 *)
mov [_, t0, _, t2] %v16; mov [_, t1, _, t3] %v17; mov %v29 [t0, t1, t2, t3];
(* trn1	v30.4s, v18.4s, v19.4s                     #! PC = 0x5555565664 *)
mov [t0, _, t2, _] %v18; mov [t1, _, t3, _] %v19; mov %v30 [t0, t1, t2, t3];
(* trn2	v31.4s, v18.4s, v19.4s                     #! PC = 0x5555565668 *)
mov [_, t0, _, t2] %v18; mov [_, t1, _, t3] %v19; mov %v31 [t0, t1, t2, t3];
(* trn1	v16.2d, v28.2d, v30.2d                     #! PC = 0x555556566c *)
mov [t0, t1, _, _] %v28; mov [t2, t3, _, _] %v30; mov %v16 [t0, t1, t2, t3];
(* trn2	v18.2d, v28.2d, v30.2d                     #! PC = 0x5555565670 *)
mov [_, _, t0, t1] %v28; mov [_, _, t2, t3] %v30; mov %v18 [t0, t1, t2, t3];
(* trn1	v17.2d, v29.2d, v31.2d                     #! PC = 0x5555565674 *)
mov [t0, t1, _, _] %v29; mov [t2, t3, _, _] %v31; mov %v17 [t0, t1, t2, t3];
(* trn2	v19.2d, v29.2d, v31.2d                     #! PC = 0x5555565678 *)
mov [_, _, t0, t1] %v29; mov [_, _, t2, t3] %v31; mov %v19 [t0, t1, t2, t3];



ghost  %v2o38@int32[4], %v3o38@int32[4]:
       %v2o38 =  %v2 /\  %v3o38 =  %v3
   &&  %v2o38 =  %v2 /\  %v3o38 =  %v3;


(* mul	v12.4s, v2.4s, v7.4s                        #! PC = 0x555556567c *)
mull %dc %v12 %v2 %v7; cast [] %v12@int32[4] %v12;
(* mul	v13.4s, v3.4s, v7.4s                        #! PC = 0x5555565680 *)
mull %dc %v13 %v3 %v7; cast [] %v13@int32[4] %v13;
(* sqrdmulh	v2.4s, v2.4s, v6.4s                    #! PC = 0x5555565684 *)
mulj %mm %v2 %v6; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v2 %dc %mm 1;
(* sqrdmulh	v3.4s, v3.4s, v6.4s                    #! PC = 0x5555565688 *)
mulj %mm %v3 %v6; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v2.4s, v4.s[0]                      #! PC = 0x555556568c *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v2 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x5555565690 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v2o38*[2811291,-2983781,-1109516,4158088])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o38*[2811291,-2983781,-1109516,4158088])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v2o38*[2811291,-2983781,-1109516,4158088])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o38*[2811291,-2983781,-1109516,4158088])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
       prove with [algebra solver isl] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q];

(**************** CUT 72, 72 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod %v12 ( %v2o38*[2811291,-2983781,-1109516,4158088])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o38*[2811291,-2983781,-1109516,4158088])
          [Q, Q, Q, Q]/\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    true ;

ghost  %v0o39@int32[4], %v1o39@int32[4],%v18o39@int32[4],%v19o39@int32[4]:
       %v0o39 =  %v0 /\  %v1o39 =  %v1 /\ %v18o39 = %v18 /\ %v19o39 = %v19
   &&  %v0o39 =  %v0 /\  %v1o39 =  %v1 /\ %v18o39 = %v18 /\ %v19o39 = %v19;

(* sub	v2.4s, v0.4s, v12.4s                        #! PC = 0x5555565694 *)
sub %v2 %v0 %v12;
(* mul	v28.4s, v18.4s, v23.4s                      #! PC = 0x5555565698 *)
mull %dc %v28 %v18 %v23; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v1.4s, v13.4s                        #! PC = 0x555556569c *)
sub %v3 %v1 %v13;
(* mul	v29.4s, v19.4s, v23.4s                      #! PC = 0x55555656a0 *)
mull %dc %v29 %v19 %v23; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555656a4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v18.4s, v18.4s, v22.4s                 #! PC = 0x55555656a8 *)
mulj %mm %v18 %v22; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v18 %dc %mm 1;
(* add	v1.4s, v1.4s, v13.4s                        #! PC = 0x55555656ac *)
add %v1 %v1 %v13;
(* sqrdmulh	v19.4s, v19.4s, v22.4s                 #! PC = 0x55555656b0 *)
mulj %mm %v19 %v22; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v18.4s, v4.s[0]                     #! PC = 0x55555656b4 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v18 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x55555656b8 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 (%v18o39*[3901472,-1226661,2925816,3374250])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o39*[3901472,-1226661,2925816,3374250])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v18o39*[3901472,-1226661,2925816,3374250])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o39*[3901472,-1226661,2925816,3374250])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
       prove with [algebra solver isl, cuts [70]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2];

(**************** CUT 73, 73 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o39 + %v12 /\  %v2 =  %v0o39 - %v12 /\
     %v1 =  %v1o39 + %v13 /\  %v3 =  %v1o39 - %v13 /\
    eqmod %v28 (%v18o39*[3901472,-1226661,2925816,3374250])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o39*[3901472,-1226661,2925816,3374250])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2]
    prove with [cuts [70]];

ghost %v16o3a@int32[4],%v17o3a@int32[4], %v1o3a@int32[4], %v3o3a@int32[4]:
      %v16o3a = %v16 /\ %v17o3a = %v17 /\  %v1o3a =  %v1 /\  %v3o3a = %v3
   && %v16o3a = %v16 /\ %v17o3a = %v17 /\  %v1o3a =  %v1 /\  %v3o3a = %v3;

(* sub	v18.4s, v16.4s, v28.4s                      #! PC = 0x55555656bc *)
sub %v18 %v16 %v28;
(* mul	v12.4s, v1.4s, v9.4s                        #! PC = 0x55555656c0 *)
mull %dc %v12 %v1 %v9; cast [] %v12@int32[4] %v12;
(* sub	v19.4s, v17.4s, v29.4s                      #! PC = 0x55555656c4 *)
sub %v19 %v17 %v29;
(* mul	v13.4s, v3.4s, v11.4s                       #! PC = 0x55555656c8 *)
mull %dc %v13 %v3 %v11; cast [] %v13@int32[4] %v13;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x55555656cc *)
add %v16 %v16 %v28;
(* sqrdmulh	v1.4s, v1.4s, v8.4s                    #! PC = 0x55555656d0 *)
mulj %mm %v1 %v8; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v1 %dc %mm 1;
(* add	v17.4s, v17.4s, v29.4s                      #! PC = 0x55555656d4 *)
add %v17 %v17 %v29;
(* sqrdmulh	v3.4s, v3.4s, v10.4s                   #! PC = 0x55555656d8 *)
mulj %mm %v3 %v10; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v1.4s, v4.s[0]                      #! PC = 0x55555656dc *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v1 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x55555656e0 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v1o3a*[-1685153,2678278,-3551006,-250446])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o3a*[-3410568,-3768948,635956,-2455377])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v1o3a*[-1685153,2678278,-3551006,-250446])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o3a*[-3410568,-3768948,635956,-2455377])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
       prove with [algebra solver isl, cuts [71]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2];

(**************** CUT 74, 74 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o3a + %v28 /\ %v18 = %v16o3a - %v28 /\
    %v17 = %v17o3a + %v29 /\ %v19 = %v17o3a - %v29 /\
    eqmod %v12 ( %v1o3a*[-1685153,2678278,-3551006,-250446])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o3a*[-3410568,-3768948,635956,-2455377])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v16 /\
       %v16 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v17 /\
       %v17 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v18 /\
       %v18 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v19 /\
       %v19 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2]
    prove with [cuts [71]];

ghost  %v0o3b@int32[4], %v2o3b@int32[4],%v17o3b@int32[4],%v19o3b@int32[4]:
       %v0o3b =  %v0 /\  %v2o3b =  %v2 /\ %v17o3b = %v17 /\ %v19o3b = %v19
   &&  %v0o3b =  %v0 /\  %v2o3b =  %v2 /\ %v17o3b = %v17 /\ %v19o3b = %v19;

(* sub	v1.4s, v0.4s, v12.4s                        #! PC = 0x55555656e4 *)
sub %v1 %v0 %v12;
(* mul	v28.4s, v17.4s, v25.4s                      #! PC = 0x55555656e8 *)
mull %dc %v28 %v17 %v25; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v2.4s, v13.4s                        #! PC = 0x55555656ec *)
sub %v3 %v2 %v13;
(* mul	v29.4s, v19.4s, v27.4s                      #! PC = 0x55555656f0 *)
mull %dc %v29 %v19 %v27; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555656f4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v17.4s, v17.4s, v24.4s                 #! PC = 0x55555656f8 *)
mulj %mm %v17 %v24; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v17 %dc %mm 1;
(* add	v2.4s, v2.4s, v13.4s                        #! PC = 0x55555656fc *)
add %v2 %v2 %v13;
(* sqrdmulh	v19.4s, v19.4s, v26.4s                 #! PC = 0x5555565700 *)
mulj %mm %v19 %v26; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v17.4s, v4.s[0]                     #! PC = 0x5555565704 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v17 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x5555565708 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 (%v17o3b*[3980599,-1615530,1665318,1163598])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o3b*[2569011,1723229,2028038,-3369273])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v17o3b*[3980599,-1615530,1665318,1163598])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o3b*[2569011,1723229,2028038,-3369273])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
       prove with [algebra solver isl, cuts [72, 73]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2];

(**************** CUT 75, 75 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o3b + %v12 /\  %v1 =  %v0o3b - %v12 /\
     %v2 =  %v2o3b + %v13 /\  %v3 =  %v2o3b - %v13 /\
    eqmod %v28 (%v17o3b*[3980599,-1615530,1665318,1163598])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o3b*[2569011,1723229,2028038,-3369273])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2]
    prove with [cuts [72, 73]];



(* sub	v17.4s, v16.4s, v28.4s                      #! PC = 0x555556570c *)
sub %v17 %v16 %v28;
(* sub	v19.4s, v18.4s, v29.4s                      #! PC = 0x5555565710 *)
sub %v19 %v18 %v29;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x5555565714 *)
add %v16 %v16 %v28;
(* add	v18.4s, v18.4s, v29.4s                      #! PC = 0x5555565718 *)
add %v18 %v18 %v29;



(**************** CUT 76, 76 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod (F**2) (%v0[0]) [Q,X-6695264] /\ eqmod (F**2) (%v1[0]) [Q,X-1685153] /\
    eqmod (F**2) (%v2[0]) [Q,X-4969849] /\ eqmod (F**2) (%v3[0]) [Q,X-3410568] /\
    eqmod (F**2) (%v16[0]) [Q,X-3980599] /\ eqmod (F**2) (%v17[0]) [Q,X-4399818] /\
    eqmod (F**2) (%v18[0]) [Q,X-2569011] /\ eqmod (F**2) (%v19[0]) [Q,X-5811406] /\
    eqmod (F**2) (%v0[1]) [Q,X-2678278] /\ eqmod (F**2) (%v1[1]) [Q,X-5702139] /\
    eqmod (F**2) (%v2[1]) [Q,X-4611469] /\ eqmod (F**2) (%v3[1]) [Q,X-3768948] /\
    eqmod (F**2) (%v16[1]) [Q,X-6764887] /\ eqmod (F**2) (%v17[1]) [Q,X-1615530] /\
    eqmod (F**2) (%v18[1]) [Q,X-1723229] /\ eqmod (F**2) (%v19[1]) [Q,X-6657188] /\
    eqmod (F**2) (%v0[2]) [Q,X-4829411] /\ eqmod (F**2) (%v1[2]) [Q,X-3551006] /\
    eqmod (F**2) (%v2[2]) [Q,X-635956] /\ eqmod (F**2) (%v3[2]) [Q,X-7744461] /\
    eqmod (F**2) (%v16[2]) [Q,X-1665318] /\ eqmod (F**2) (%v17[2]) [Q,X-6715099] /\
    eqmod (F**2) (%v18[2]) [Q,X-2028038] /\ eqmod (F**2) (%v19[2]) [Q,X-6352379] /\
    eqmod (F**2) (%v0[3]) [Q,X-8129971] /\ eqmod (F**2) (%v1[3]) [Q,X-250446] /\
    eqmod (F**2) (%v2[3]) [Q,X-5925040] /\ eqmod (F**2) (%v3[3]) [Q,X-2455377] /\
    eqmod (F**2) (%v16[3]) [Q,X-1163598] /\ eqmod (F**2) (%v17[3]) [Q,X-7216819] /\
    eqmod (F**2) (%v18[3]) [Q,X-5011144] /\ eqmod (F**2) (%v19[3]) [Q,X-3369273]
    prove with [all ghosts,cuts [36,67,68,69,70,71,72,73,74]],
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v16 /\
       %v16 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v17 /\
       %v17 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v18 /\
       %v18 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v19 /\
       %v19 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
    prove with [algebra solver isl, cuts [74]]
 && [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v16 /\
       %v16 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v17 /\
       %v17 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v18 /\
       %v18 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v19 /\
       %v19 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2]
    prove with [cuts [74]];



(* st4	{v0.4s-v3.4s}, [x1], #64                    #! EA = L0x7ffffed990; PC = 0x555556571c *)
mov [t00, t10, t20, t30] %v0; mov [t01, t11, t21, t31] %v1;
mov [t02, t12, t22, t32] %v2; mov [t03, t13, t23, t33] %v3;
mov L0x7ffffed990 t00; mov L0x7ffffed994 t01; mov L0x7ffffed998 t02; mov L0x7ffffed99c t03;
mov L0x7ffffed9a0 t10; mov L0x7ffffed9a4 t11; mov L0x7ffffed9a8 t12; mov L0x7ffffed9ac t13;
mov L0x7ffffed9b0 t20; mov L0x7ffffed9b4 t21; mov L0x7ffffed9b8 t22; mov L0x7ffffed9bc t23;
mov L0x7ffffed9c0 t30; mov L0x7ffffed9c4 t31; mov L0x7ffffed9c8 t32; mov L0x7ffffed9cc t33;
(* st4	{v16.4s-v19.4s}, [x3], #64                  #! EA = L0x7ffffedb90; PC = 0x5555565720 *)
mov [t00, t10, t20, t30] %v16; mov [t01, t11, t21, t31] %v17;
mov [t02, t12, t22, t32] %v18; mov [t03, t13, t23, t33] %v19;
mov L0x7ffffedb90 t00; mov L0x7ffffedb94 t01; mov L0x7ffffedb98 t02; mov L0x7ffffedb9c t03;
mov L0x7ffffedba0 t10; mov L0x7ffffedba4 t11; mov L0x7ffffedba8 t12; mov L0x7ffffedbac t13;
mov L0x7ffffedbb0 t20; mov L0x7ffffedbb4 t21; mov L0x7ffffedbb8 t22; mov L0x7ffffedbbc t23;
mov L0x7ffffedbc0 t30; mov L0x7ffffedbc4 t31; mov L0x7ffffedbc8 t32; mov L0x7ffffedbcc t33;
(* sub	x19, x19, #0x1                              #! PC = 0x5555565724 *)
subs dc x19 x19 (0x1)@uint64;
(* #cbnz	x19, 0x5555565578 <_ntt_bot_loop>         #! PC = 0x5555565728 *)
#cbnz	x19, 0x5555565578 <_ntt_bot_loop>         #! 0x5555565728 = 0x5555565728;
(* ld1	{v0.4s-v3.4s}, [x0], #64                    #! EA = L0x7ffffed9d0; Value = 0xffd876da0099570b; PC = 0x5555565578 *)
mov %v0 [L0x7ffffed9d0, L0x7ffffed9d4, L0x7ffffed9d8, L0x7ffffed9dc];
mov %v1 [L0x7ffffed9e0, L0x7ffffed9e4, L0x7ffffed9e8, L0x7ffffed9ec];
mov %v2 [L0x7ffffed9f0, L0x7ffffed9f4, L0x7ffffed9f8, L0x7ffffed9fc];
mov %v3 [L0x7ffffeda00, L0x7ffffeda04, L0x7ffffeda08, L0x7ffffeda0c];
(* ld1	{v16.4s-v19.4s}, [x2], #64                  #! EA = L0x7ffffedbd0; Value = 0x009b5002ffa2ab15; PC = 0x555556557c *)
mov %v16 [L0x7ffffedbd0, L0x7ffffedbd4, L0x7ffffedbd8, L0x7ffffedbdc];
mov %v17 [L0x7ffffedbe0, L0x7ffffedbe4, L0x7ffffedbe8, L0x7ffffedbec];
mov %v18 [L0x7ffffedbf0, L0x7ffffedbf4, L0x7ffffedbf8, L0x7ffffedbfc];
mov %v19 [L0x7ffffedc00, L0x7ffffedc04, L0x7ffffedc08, L0x7ffffedc0c];
(* ld1	{v4.4s, v5.4s}, [x28], #32                  #! EA = L0x5555565de0; Value = 0x0000000000000000; PC = 0x5555565580 *)
mov %v4 [L0x5555565de0, L0x5555565de4, L0x5555565de8, L0x5555565dec];
mov %v5 [L0x5555565df0, L0x5555565df4, L0x5555565df8, L0x5555565dfc];
(* ld2	{v6.4s, v7.4s}, [x28], #32                  #! EA = L0x5555565e00; Value = 0x001751021756d787; PC = 0x5555565584 *)
mov %v6 [L0x5555565e00, L0x5555565e08, L0x5555565e10, L0x5555565e18];
mov %v7 [L0x5555565e04, L0x5555565e0c, L0x5555565e14, L0x5555565e1c];
(* ld4	{v8.4s-v11.4s}, [x28], #64                  #! EA = L0x5555565e20; Value = 0xffc0bba8c0abd374; PC = 0x5555565588 *)
mov %v8 [L0x5555565e20, L0x5555565e30, L0x5555565e40, L0x5555565e50];
mov %v9 [L0x5555565e24, L0x5555565e34, L0x5555565e44, L0x5555565e54];
mov %v10 [L0x5555565e28, L0x5555565e38, L0x5555565e48, L0x5555565e58];
mov %v11 [L0x5555565e2c, L0x5555565e3c, L0x5555565e4c, L0x5555565e5c];
(* ld1	{v20.4s, v21.4s}, [x27], #32                #! EA = L0x55555661e0; Value = 0x0000000000000000; PC = 0x555556558c *)
mov %v20 [L0x55555661e0, L0x55555661e4, L0x55555661e8, L0x55555661ec];
mov %v21 [L0x55555661f0, L0x55555661f4, L0x55555661f8, L0x55555661fc];
(* ld2	{v22.4s, v23.4s}, [x27], #32                #! EA = L0x5555566200; Value = 0x0014b2a014b7cdca; PC = 0x5555565590 *)
mov %v22 [L0x5555566200, L0x5555566208, L0x5555566210, L0x5555566218];
mov %v23 [L0x5555566204, L0x555556620c, L0x5555566214, L0x555556621c];
(* ld4	{v24.4s-v27.4s}, [x27], #64                 #! EA = L0x5555566220; Value = 0x003cf42f3d036f62; PC = 0x5555565594 *)
mov %v24 [L0x5555566220, L0x5555566230, L0x5555566240, L0x5555566250];
mov %v25 [L0x5555566224, L0x5555566234, L0x5555566244, L0x5555566254];
mov %v26 [L0x5555566228, L0x5555566238, L0x5555566248, L0x5555566258];
mov %v27 [L0x555556622c, L0x555556623c, L0x555556624c, L0x555556625c];
(* mov	v4.s[0], w20                                #! PC = 0x5555565598 *)
mov [_, m1, m2, m3] %v4; mov %v4 [w20, m1, m2, m3];
(* mul	v12.4s, v2.4s, v4.s[3]                      #! PC = 0x555556559c *)
mov [_, _, _, m] %v4; mov %mm [m, m, m, m];
mull %dc %v12 %v2 %mm; cast [] %v12@int32[4] %v12;
(* mul	v13.4s, v3.4s, v4.s[3]                      #! PC = 0x55555655a0 *)
mov [_, _, _, m] %v4; mov %mm [m, m, m, m];
mull %dc %v13 %v3 %mm; cast [] %v13@int32[4] %v13;
(* sqrdmulh	v2.4s, v2.4s, v4.s[2]                  #! PC = 0x55555655a4 *)
mov [_, _, m, _] %v4; mov %mm [m, m, m, m];
mulj %mm %v2 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v2 %dc %mm 1;
(* sqrdmulh	v3.4s, v3.4s, v4.s[2]                  #! PC = 0x55555655a8 *)
mov [_, _, m, _] %v4; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v2.4s, v4.s[0]                      #! PC = 0x55555655ac *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v2 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x55555655b0 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ([L0x7ffffed9f0,L0x7ffffed9f4,L0x7ffffed9f8,L0x7ffffed9fc]*
                   [-3524442,-3524442,-3524442,-3524442]) [Q, Q, Q, Q] /\
       eqmod %v13 ([L0x7ffffeda00,L0x7ffffeda04,L0x7ffffeda08,L0x7ffffeda0c]*
                   [-3524442,-3524442,-3524442,-3524442]) [Q, Q, Q, Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume eqmod %v12 ([L0x7ffffed9f0,L0x7ffffed9f4,L0x7ffffed9f8,L0x7ffffed9fc]*
                   [-3524442,-3524442,-3524442,-3524442]) [Q, Q, Q, Q] /\
       eqmod %v13 ([L0x7ffffeda00,L0x7ffffeda04,L0x7ffffeda08,L0x7ffffeda0c]*
                   [-3524442,-3524442,-3524442,-3524442]) [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
  && [NQ,NQ,NQ,NQ] <s %v12 /\ %v12 <s [Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ] <s %v13 /\ %v13 <s [Q,Q,Q,Q];

(**************** CUT 77, 77 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod %v12 ([L0x7ffffed9f0,L0x7ffffed9f4,L0x7ffffed9f8,L0x7ffffed9fc]*
                [-3524442,-3524442,-3524442,-3524442]) [Q, Q, Q, Q] /\
    eqmod %v13 ([L0x7ffffeda00,L0x7ffffeda04,L0x7ffffeda08,L0x7ffffeda0c]*
                [-3524442,-3524442,-3524442,-3524442]) [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    true prove with [cuts [36]];

ghost  %v0o3c@int32[4], %v1o3c@int32[4]:
       %v0o3c =  %v0 /\  %v1o3c =  %v1
   &&  %v0o3c =  %v0 /\  %v1o3c =  %v1;

(* sub	v2.4s, v0.4s, v12.4s                        #! PC = 0x55555655b4 *)
sub %v2 %v0 %v12;
(* mul	v28.4s, v18.4s, v20.s[3]                    #! PC = 0x55555655b8 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v28 %v18 %mm; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v1.4s, v13.4s                        #! PC = 0x55555655bc *)
sub %v3 %v1 %v13;
(* mul	v29.4s, v19.4s, v20.s[3]                    #! PC = 0x55555655c0 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v29 %v19 %mm; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555655c4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v18.4s, v18.4s, v20.s[2]               #! PC = 0x55555655c8 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v18 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v18 %dc %mm 1;
(* add	v1.4s, v1.4s, v13.4s                        #! PC = 0x55555655cc *)
add %v1 %v1 %v13;
(* sqrdmulh	v19.4s, v19.4s, v20.s[2]               #! PC = 0x55555655d0 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v19 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v18.4s, v4.s[0]                     #! PC = 0x55555655d4 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v18 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x55555655d8 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 ([L0x7ffffedbf0,L0x7ffffedbf4,L0x7ffffedbf8,L0x7ffffedbfc]*
                   [-642628,-642628,-642628,-642628]) [Q, Q, Q, Q] /\
       eqmod %v29 ([L0x7ffffedc00,L0x7ffffedc04,L0x7ffffedc08,L0x7ffffedc0c]*
                   [-642628,-642628,-642628,-642628]) [Q, Q, Q, Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume eqmod %v28 ([L0x7ffffedbf0,L0x7ffffedbf4,L0x7ffffedbf8,L0x7ffffedbfc]*
                   [-642628,-642628,-642628,-642628]) [Q, Q, Q, Q] /\
       eqmod %v29 ([L0x7ffffedc00,L0x7ffffedc04,L0x7ffffedc08,L0x7ffffedc0c]*
                   [-642628,-642628,-642628,-642628]) [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2];

(**************** CUT 78, 78 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 = %v0o3c + %v12 /\  %v2 =  %v0o3c - %v12 /\
     %v1 = %v1o3c + %v13 /\  %v3 =  %v1o3c - %v13 /\
    eqmod %v28 ([L0x7ffffedbf0,L0x7ffffedbf4,L0x7ffffedbf8,L0x7ffffedbfc]*
                [-642628,-642628,-642628,-642628]) [Q, Q, Q, Q] /\
    eqmod %v29 ([L0x7ffffedc00,L0x7ffffedc04,L0x7ffffedc08,L0x7ffffedc0c]*
                [-642628,-642628,-642628,-642628]) [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2]
    prove with [cuts [36]];

ghost %v16o3d@int32[4],%v17o3d@int32[4], %v1o3d@int32[4], %v3o3d@int32[4]:
      %v16o3d = %v16 /\ %v17o3d = %v17 /\  %v1o3d =  %v1 /\  %v3o3d =  %v3
   && %v16o3d = %v16 /\ %v17o3d = %v17 /\  %v1o3d =  %v1 /\  %v3o3d =  %v3;

(* sub	v18.4s, v16.4s, v28.4s                      #! PC = 0x55555655dc *)
sub %v18 %v16 %v28;
(* mul	v12.4s, v1.4s, v5.s[1]                      #! PC = 0x55555655e0 *)
mov [_, m, _, _] %v5; mov %mm [m, m, m, m];
mull %dc %v12 %v1 %mm; cast [] %v12@int32[4] %v12;
(* sub	v19.4s, v17.4s, v29.4s                      #! PC = 0x55555655e4 *)
sub %v19 %v17 %v29;
(* mul	v13.4s, v3.4s, v5.s[3]                      #! PC = 0x55555655e8 *)
mov [_, _, _, m] %v5; mov %mm [m, m, m, m];
mull %dc %v13 %v3 %mm; cast [] %v13@int32[4] %v13;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x55555655ec *)
add %v16 %v16 %v28;
(* sqrdmulh	v1.4s, v1.4s, v5.s[0]                  #! PC = 0x55555655f0 *)
mov [m, _, _, _] %v5; mov %mm [m, m, m, m];
mulj %mm %v1 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v1 %dc %mm 1;
(* add	v17.4s, v17.4s, v29.4s                      #! PC = 0x55555655f4 *)
add %v17 %v17 %v29;
(* sqrdmulh	v3.4s, v3.4s, v5.s[2]                  #! PC = 0x55555655f8 *)
mov [_, _, m, _] %v5; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v1.4s, v4.s[0]                      #! PC = 0x55555655fc *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v1 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x5555565600 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v1o3d*[394148,394148,394148,394148])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o3d*[928749,928749,928749,928749])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v1o3d*[394148,394148,394148,394148])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o3d*[928749,928749,928749,928749])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2];

(**************** CUT 79, 79 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o3d + %v28 /\ %v18 = %v16o3d - %v28 /\
    %v17 = %v17o3d + %v29 /\ %v19 = %v17o3d - %v29 /\
    eqmod %v12 ( %v1o3d*[394148,394148,394148,394148])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o3d*[928749,928749,928749,928749])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v16 /\
       %v16 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v17 /\
       %v17 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v18 /\
       %v18 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v19 /\
       %v19 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2]
    prove with [cuts [36]];

ghost  %v0o3e@int32[4], %v2o3e@int32[4],%v17o3e@int32[4],%v19o3e@int32[4]:
       %v0o3e =  %v0 /\  %v2o3e =  %v2 /\ %v17o3e = %v17 /\ %v19o3e = %v19
   &&  %v0o3e =  %v0 /\  %v2o3e =  %v2 /\ %v17o3e = %v17 /\ %v19o3e = %v19;

(* sub	v1.4s, v0.4s, v12.4s                        #! PC = 0x5555565604 *)
sub %v1 %v0 %v12;
(* mul	v28.4s, v17.4s, v21.s[1]                    #! PC = 0x5555565608 *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v28 %v17 %mm; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v2.4s, v13.4s                        #! PC = 0x555556560c *)
sub %v3 %v2 %v13;
(* mul	v29.4s, v19.4s, v21.s[3]                    #! PC = 0x5555565610 *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v29 %v19 %mm; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x5555565614 *)
add %v0 %v0 %v12;
(* sqrdmulh	v17.4s, v17.4s, v21.s[0]               #! PC = 0x5555565618 *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v17 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v17 %dc %mm 1;
(* add	v2.4s, v2.4s, v13.4s                        #! PC = 0x555556561c *)
add %v2 %v2 %v13;
(* sqrdmulh	v19.4s, v19.4s, v21.s[2]               #! PC = 0x5555565620 *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v19 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v17.4s, v4.s[0]                     #! PC = 0x5555565624 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v17 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x5555565628 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 (%v17o3e*[-2897314,-2897314,-2897314,-2897314])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o3e*[3192354,3192354,3192354,3192354])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v17o3e*[-2897314,-2897314,-2897314,-2897314])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o3e*[3192354,3192354,3192354,3192354])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [78]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2];

(**************** CUT 80, 80 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o3e + %v12 /\  %v1 =  %v0o3e - %v12 /\
     %v2 =  %v2o3e + %v13 /\  %v3 =  %v2o3e - %v13 /\
    eqmod %v28 (%v17o3e*[-2897314,-2897314,-2897314,-2897314])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o3e*[3192354,3192354,3192354,3192354])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2]
    prove with [cuts [78]];

ghost %v16o3f@int32[4], %v18o3f@int32[4]:
      %v16o3f = %v16 /\ %v18o3f = %v18
   && %v16o3f = %v16 /\ %v18o3f = %v18;

(* sub	v17.4s, v16.4s, v28.4s                      #! PC = 0x555556562c *)
sub %v17 %v16 %v28;
(* sub	v19.4s, v18.4s, v29.4s                      #! PC = 0x5555565630 *)
sub %v19 %v18 %v29;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x5555565634 *)
add %v16 %v16 %v28;
(* add	v18.4s, v18.4s, v29.4s                      #! PC = 0x5555565638 *)
add %v18 %v18 %v29;

assert [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [79]] && true;
assume [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2];

(**************** CUT 81, 81 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o3f + %v28 /\ %v17 = %v16o3f - %v28 /\
    %v18 = %v18o3f + %v29 /\ %v19 = %v18o3f - %v29 /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v16 /\
       %v16 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v17 /\
       %v17 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v18 /\
       %v18 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v19 /\
       %v19 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2]
    prove with [cuts [79]];



(* trn1	v12.4s, v0.4s, v1.4s                       #! PC = 0x555556563c *)
mov [t0, _, t2, _] %v0; mov [t1, _, t3, _] %v1; mov %v12 [t0, t1, t2, t3];
(* trn2	v13.4s, v0.4s, v1.4s                       #! PC = 0x5555565640 *)
mov [_, t0, _, t2] %v0; mov [_, t1, _, t3] %v1; mov %v13 [t0, t1, t2, t3];
(* trn1	v14.4s, v2.4s, v3.4s                       #! PC = 0x5555565644 *)
mov [t0, _, t2, _] %v2; mov [t1, _, t3, _] %v3; mov %v14 [t0, t1, t2, t3];
(* trn2	v15.4s, v2.4s, v3.4s                       #! PC = 0x5555565648 *)
mov [_, t0, _, t2] %v2; mov [_, t1, _, t3] %v3; mov %v15 [t0, t1, t2, t3];
(* trn1	v0.2d, v12.2d, v14.2d                      #! PC = 0x555556564c *)
mov [t0, t1, _, _] %v12; mov [t2, t3, _, _] %v14; mov %v0 [t0, t1, t2, t3];
(* trn2	v2.2d, v12.2d, v14.2d                      #! PC = 0x5555565650 *)
mov [_, _, t0, t1] %v12; mov [_, _, t2, t3] %v14; mov %v2 [t0, t1, t2, t3];
(* trn1	v1.2d, v13.2d, v15.2d                      #! PC = 0x5555565654 *)
mov [t0, t1, _, _] %v13; mov [t2, t3, _, _] %v15; mov %v1 [t0, t1, t2, t3];
(* trn2	v3.2d, v13.2d, v15.2d                      #! PC = 0x5555565658 *)
mov [_, _, t0, t1] %v13; mov [_, _, t2, t3] %v15; mov %v3 [t0, t1, t2, t3];
(* trn1	v28.4s, v16.4s, v17.4s                     #! PC = 0x555556565c *)
mov [t0, _, t2, _] %v16; mov [t1, _, t3, _] %v17; mov %v28 [t0, t1, t2, t3];
(* trn2	v29.4s, v16.4s, v17.4s                     #! PC = 0x5555565660 *)
mov [_, t0, _, t2] %v16; mov [_, t1, _, t3] %v17; mov %v29 [t0, t1, t2, t3];
(* trn1	v30.4s, v18.4s, v19.4s                     #! PC = 0x5555565664 *)
mov [t0, _, t2, _] %v18; mov [t1, _, t3, _] %v19; mov %v30 [t0, t1, t2, t3];
(* trn2	v31.4s, v18.4s, v19.4s                     #! PC = 0x5555565668 *)
mov [_, t0, _, t2] %v18; mov [_, t1, _, t3] %v19; mov %v31 [t0, t1, t2, t3];
(* trn1	v16.2d, v28.2d, v30.2d                     #! PC = 0x555556566c *)
mov [t0, t1, _, _] %v28; mov [t2, t3, _, _] %v30; mov %v16 [t0, t1, t2, t3];
(* trn2	v18.2d, v28.2d, v30.2d                     #! PC = 0x5555565670 *)
mov [_, _, t0, t1] %v28; mov [_, _, t2, t3] %v30; mov %v18 [t0, t1, t2, t3];
(* trn1	v17.2d, v29.2d, v31.2d                     #! PC = 0x5555565674 *)
mov [t0, t1, _, _] %v29; mov [t2, t3, _, _] %v31; mov %v17 [t0, t1, t2, t3];
(* trn2	v19.2d, v29.2d, v31.2d                     #! PC = 0x5555565678 *)
mov [_, _, t0, t1] %v29; mov [_, _, t2, t3] %v31; mov %v19 [t0, t1, t2, t3];

ghost  %v2o40@int32[4], %v3o40@int32[4]:
       %v2o40 =  %v2 /\  %v3o40 =  %v3
   &&  %v2o40 =  %v2 /\  %v3o40 =  %v3;

(* mul	v12.4s, v2.4s, v7.4s                        #! PC = 0x555556567c *)
mull %dc %v12 %v2 %v7; cast [] %v12@int32[4] %v12;
(* mul	v13.4s, v3.4s, v7.4s                        #! PC = 0x5555565680 *)
mull %dc %v13 %v3 %v7; cast [] %v13@int32[4] %v13;
(* sqrdmulh	v2.4s, v2.4s, v6.4s                    #! PC = 0x5555565684 *)
mulj %mm %v2 %v6; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v2 %dc %mm 1;
(* sqrdmulh	v3.4s, v3.4s, v6.4s                    #! PC = 0x5555565688 *)
mulj %mm %v3 %v6; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v2.4s, v4.s[0]                      #! PC = 0x555556568c *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v2 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x5555565690 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v2o40*[1528066,482649,1148858,-2962264])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o40*[1528066,482649,1148858,-2962264])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v2o40*[1528066,482649,1148858,-2962264])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o40*[1528066,482649,1148858,-2962264])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
       prove with [algebra solver isl] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q];

(**************** CUT 82, 82 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod %v12 ( %v2o40*[1528066,482649,1148858,-2962264])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o40*[1528066,482649,1148858,-2962264])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    true ;

ghost  %v0o41@int32[4], %v1o41@int32[4],%v18o41@int32[4],%v19o41@int32[4]:
       %v0o41 =  %v0 /\  %v1o41 =  %v1 /\ %v18o41 = %v18 /\ %v19o41 = %v19
   &&  %v0o41 =  %v0 /\  %v1o41 =  %v1 /\ %v18o41 = %v18 /\ %v19o41 = %v19;

(* sub	v2.4s, v0.4s, v12.4s                        #! PC = 0x5555565694 *)
sub %v2 %v0 %v12;
(* mul	v28.4s, v18.4s, v23.4s                      #! PC = 0x5555565698 *)
mull %dc %v28 %v18 %v23; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v1.4s, v13.4s                        #! PC = 0x555556569c *)
sub %v3 %v1 %v13;
(* mul	v29.4s, v19.4s, v23.4s                      #! PC = 0x55555656a0 *)
mull %dc %v29 %v19 %v23; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555656a4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v18.4s, v18.4s, v22.4s                 #! PC = 0x55555656a8 *)
mulj %mm %v18 %v22; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v18 %dc %mm 1;
(* add	v1.4s, v1.4s, v13.4s                        #! PC = 0x55555656ac *)
add %v1 %v1 %v13;
(* sqrdmulh	v19.4s, v19.4s, v22.4s                 #! PC = 0x55555656b0 *)
mulj %mm %v19 %v22; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v18.4s, v4.s[0]                     #! PC = 0x55555656b4 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v18 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x55555656b8 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 (%v18o41*[1356448,-2775755,2683270,-2778788])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o41*[1356448,-2775755,2683270,-2778788])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v18o41*[1356448,-2775755,2683270,-2778788])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o41*[1356448,-2775755,2683270,-2778788])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
       prove with [algebra solver isl, cuts [80]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2];

(**************** CUT 83, 83 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o41 + %v12 /\  %v2 =  %v0o41 - %v12 /\
     %v1 =  %v1o41 + %v13 /\  %v3 =  %v1o41 - %v13 /\
    eqmod %v28 (%v18o41*[1356448,-2775755,2683270,-2778788])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o41*[1356448,-2775755,2683270,-2778788])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2]
    prove with [cuts [80]];

ghost %v16o42@int32[4],%v17o42@int32[4], %v1o42@int32[4], %v3o42@int32[4]:
      %v16o42 = %v16 /\ %v17o42 = %v17 /\  %v1o42 =  %v1 /\  %v3o42 = %v3
   && %v16o42 = %v16 /\ %v17o42 = %v17 /\  %v1o42 =  %v1 /\  %v3o42 = %v3;

(* sub	v18.4s, v16.4s, v28.4s                      #! PC = 0x55555656bc *)
sub %v18 %v16 %v28;
(* mul	v12.4s, v1.4s, v9.4s                        #! PC = 0x55555656c0 *)
mull %dc %v12 %v1 %v9; cast [] %v12@int32[4] %v12;
(* sub	v19.4s, v17.4s, v29.4s                      #! PC = 0x55555656c4 *)
sub %v19 %v17 %v29;
(* mul	v13.4s, v3.4s, v11.4s                       #! PC = 0x55555656c8 *)
mull %dc %v13 %v3 %v11; cast [] %v13@int32[4] %v13;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x55555656cc *)
add %v16 %v16 %v28;
(* sqrdmulh	v1.4s, v1.4s, v8.4s                    #! PC = 0x55555656d0 *)
mulj %mm %v1 %v8; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v1 %dc %mm 1;
(* add	v17.4s, v17.4s, v29.4s                      #! PC = 0x55555656d4 *)
add %v17 %v17 %v29;
(* sqrdmulh	v3.4s, v3.4s, v10.4s                   #! PC = 0x55555656d8 *)
mulj %mm %v3 %v10; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v1.4s, v4.s[0]                      #! PC = 0x55555656dc *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v1 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x55555656e0 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v1o42*[-4146264,2192938,2387513,-268456])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o42*[-1772588,-1727088,-3611750,-3180456])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v1o42*[-4146264,2192938,2387513,-268456])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o42*[-1772588,-1727088,-3611750,-3180456])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
       prove with [algebra solver isl, cuts [81]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2];

(**************** CUT 84, 84 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o42 + %v28 /\ %v18 = %v16o42 - %v28 /\
    %v17 = %v17o42 + %v29 /\ %v19 = %v17o42 - %v29 /\
    eqmod %v12 ( %v1o42*[-4146264,2192938,2387513,-268456])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o42*[-1772588,-1727088,-3611750,-3180456])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v16 /\
       %v16 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v17 /\
       %v17 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v18 /\
       %v18 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v19 /\
       %v19 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2]
    prove with [cuts [81]];

ghost  %v0o43@int32[4], %v2o43@int32[4],%v17o43@int32[4],%v19o43@int32[4]:
       %v0o43 =  %v0 /\  %v2o43 =  %v2 /\ %v17o43 = %v17 /\ %v19o43 = %v19
   &&  %v0o43 =  %v0 /\  %v2o43 =  %v2 /\ %v17o43 = %v17 /\ %v19o43 = %v19;

(* sub	v1.4s, v0.4s, v12.4s                        #! PC = 0x55555656e4 *)
sub %v1 %v0 %v12;
(* mul	v28.4s, v17.4s, v25.4s                      #! PC = 0x55555656e8 *)
mull %dc %v28 %v17 %v25; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v2.4s, v13.4s                        #! PC = 0x55555656ec *)
sub %v3 %v2 %v13;
(* mul	v29.4s, v19.4s, v27.4s                      #! PC = 0x55555656f0 *)
mull %dc %v29 %v19 %v27; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555656f4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v17.4s, v17.4s, v24.4s                 #! PC = 0x55555656f8 *)
mulj %mm %v17 %v24; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v17 %dc %mm 1;
(* add	v2.4s, v2.4s, v13.4s                        #! PC = 0x55555656fc *)
add %v2 %v2 %v13;
(* sqrdmulh	v19.4s, v19.4s, v26.4s                 #! PC = 0x5555565700 *)
mulj %mm %v19 %v26; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v17.4s, v4.s[0]                     #! PC = 0x5555565704 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v17 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x5555565708 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 (%v17o43*[3994671,-1370517,3363542,545376])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o43*[-11879,3020393,214880,-770441])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v17o43*[3994671,-1370517,3363542,545376])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o43*[-11879,3020393,214880,-770441])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
       prove with [algebra solver isl, cuts [82, 83]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2];

(**************** CUT 85, 85 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o43 + %v12 /\  %v1 =  %v0o43 - %v12 /\
     %v2 =  %v2o43 + %v13 /\  %v3 =  %v2o43 - %v13 /\
    eqmod %v28 (%v17o43*[3994671,-1370517,3363542,545376])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o43*[-11879,3020393,214880,-770441])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2]
    prove with [cuts [82, 83]];



(* sub	v17.4s, v16.4s, v28.4s                      #! PC = 0x555556570c *)
sub %v17 %v16 %v28;
(* sub	v19.4s, v18.4s, v29.4s                      #! PC = 0x5555565710 *)
sub %v19 %v18 %v29;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x5555565714 *)
add %v16 %v16 %v28;
(* add	v18.4s, v18.4s, v29.4s                      #! PC = 0x5555565718 *)
add %v18 %v18 %v29;



(**************** CUT 86, 86 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod (F**2) (%v0[0]) [Q,X-4234153] /\ eqmod (F**2) (%v1[0]) [Q,X-4146264] /\
    eqmod (F**2) (%v2[0]) [Q,X-6607829] /\ eqmod (F**2) (%v3[0]) [Q,X-1772588] /\
    eqmod (F**2) (%v16[0]) [Q,X-3994671] /\ eqmod (F**2) (%v17[0]) [Q,X-4385746] /\
    eqmod (F**2) (%v18[0]) [Q,X-8368538] /\ eqmod (F**2) (%v19[0]) [Q,X-11879] /\
    eqmod (F**2) (%v0[1]) [Q,X-2192938] /\ eqmod (F**2) (%v1[1]) [Q,X-6187479] /\
    eqmod (F**2) (%v2[1]) [Q,X-6653329] /\ eqmod (F**2) (%v3[1]) [Q,X-1727088] /\
    eqmod (F**2) (%v16[1]) [Q,X-7009900] /\ eqmod (F**2) (%v17[1]) [Q,X-1370517] /\
    eqmod (F**2) (%v18[1]) [Q,X-3020393] /\ eqmod (F**2) (%v19[1]) [Q,X-5360024] /\
    eqmod (F**2) (%v0[2]) [Q,X-2387513] /\ eqmod (F**2) (%v1[2]) [Q,X-5992904] /\
    eqmod (F**2) (%v2[2]) [Q,X-4768667] /\ eqmod (F**2) (%v3[2]) [Q,X-3611750] /\
    eqmod (F**2) (%v16[2]) [Q,X-3363542] /\ eqmod (F**2) (%v17[2]) [Q,X-5016875] /\
    eqmod (F**2) (%v18[2]) [Q,X-214880] /\ eqmod (F**2) (%v19[2]) [Q,X-8165537] /\
    eqmod (F**2) (%v0[3]) [Q,X-8111961] /\ eqmod (F**2) (%v1[3]) [Q,X-268456] /\
    eqmod (F**2) (%v2[3]) [Q,X-5199961] /\ eqmod (F**2) (%v3[3]) [Q,X-3180456] /\
    eqmod (F**2) (%v16[3]) [Q,X-545376] /\ eqmod (F**2) (%v17[3]) [Q,X-7835041] /\
    eqmod (F**2) (%v18[3]) [Q,X-7609976] /\ eqmod (F**2) (%v19[3]) [Q,X-770441]
    prove with [all ghosts,cuts [36,77,78,79,80,81,82,83,84]],
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v16 /\
       %v16 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v17 /\
       %v17 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v18 /\
       %v18 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v19 /\
       %v19 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
    prove with [algebra solver isl, cuts [84]]
 && [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v16 /\
       %v16 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v17 /\
       %v17 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v18 /\
       %v18 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v19 /\
       %v19 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2]
prove with [cuts [84]];



(* st4	{v0.4s-v3.4s}, [x1], #64                    #! EA = L0x7ffffed9d0; PC = 0x555556571c *)
mov [t00, t10, t20, t30] %v0; mov [t01, t11, t21, t31] %v1;
mov [t02, t12, t22, t32] %v2; mov [t03, t13, t23, t33] %v3;
mov L0x7ffffed9d0 t00; mov L0x7ffffed9d4 t01; mov L0x7ffffed9d8 t02; mov L0x7ffffed9dc t03;
mov L0x7ffffed9e0 t10; mov L0x7ffffed9e4 t11; mov L0x7ffffed9e8 t12; mov L0x7ffffed9ec t13;
mov L0x7ffffed9f0 t20; mov L0x7ffffed9f4 t21; mov L0x7ffffed9f8 t22; mov L0x7ffffed9fc t23;
mov L0x7ffffeda00 t30; mov L0x7ffffeda04 t31; mov L0x7ffffeda08 t32; mov L0x7ffffeda0c t33;
(* st4	{v16.4s-v19.4s}, [x3], #64                  #! EA = L0x7ffffedbd0; PC = 0x5555565720 *)
mov [t00, t10, t20, t30] %v16; mov [t01, t11, t21, t31] %v17;
mov [t02, t12, t22, t32] %v18; mov [t03, t13, t23, t33] %v19;
mov L0x7ffffedbd0 t00; mov L0x7ffffedbd4 t01; mov L0x7ffffedbd8 t02; mov L0x7ffffedbdc t03;
mov L0x7ffffedbe0 t10; mov L0x7ffffedbe4 t11; mov L0x7ffffedbe8 t12; mov L0x7ffffedbec t13;
mov L0x7ffffedbf0 t20; mov L0x7ffffedbf4 t21; mov L0x7ffffedbf8 t22; mov L0x7ffffedbfc t23;
mov L0x7ffffedc00 t30; mov L0x7ffffedc04 t31; mov L0x7ffffedc08 t32; mov L0x7ffffedc0c t33;
(* sub	x19, x19, #0x1                              #! PC = 0x5555565724 *)
subs dc x19 x19 (0x1)@uint64;
(* #cbnz	x19, 0x5555565578 <_ntt_bot_loop>         #! PC = 0x5555565728 *)
#cbnz	x19, 0x5555565578 <_ntt_bot_loop>         #! 0x5555565728 = 0x5555565728;
(* ld1	{v0.4s-v3.4s}, [x0], #64                    #! EA = L0x7ffffeda10; Value = 0x00115b7600509bb5; PC = 0x5555565578 *)
mov %v0 [L0x7ffffeda10, L0x7ffffeda14, L0x7ffffeda18, L0x7ffffeda1c];
mov %v1 [L0x7ffffeda20, L0x7ffffeda24, L0x7ffffeda28, L0x7ffffeda2c];
mov %v2 [L0x7ffffeda30, L0x7ffffeda34, L0x7ffffeda38, L0x7ffffeda3c];
mov %v3 [L0x7ffffeda40, L0x7ffffeda44, L0x7ffffeda48, L0x7ffffeda4c];
(* ld1	{v16.4s-v19.4s}, [x2], #64                  #! EA = L0x7ffffedc10; Value = 0x0051d66cffd139d3; PC = 0x555556557c *)
mov %v16 [L0x7ffffedc10, L0x7ffffedc14, L0x7ffffedc18, L0x7ffffedc1c];
mov %v17 [L0x7ffffedc20, L0x7ffffedc24, L0x7ffffedc28, L0x7ffffedc2c];
mov %v18 [L0x7ffffedc30, L0x7ffffedc34, L0x7ffffedc38, L0x7ffffedc3c];
mov %v19 [L0x7ffffedc40, L0x7ffffedc44, L0x7ffffedc48, L0x7ffffedc4c];
(* ld1	{v4.4s, v5.4s}, [x28], #32                  #! EA = L0x5555565e60; Value = 0x0000000000000000; PC = 0x5555565580 *)
mov %v4 [L0x5555565e60, L0x5555565e64, L0x5555565e68, L0x5555565e6c];
mov %v5 [L0x5555565e70, L0x5555565e74, L0x5555565e78, L0x5555565e7c];
(* ld2	{v6.4s, v7.4s}, [x28], #32                  #! EA = L0x5555565e80; Value = 0xfff75e9df75c742e; PC = 0x5555565584 *)
mov %v6 [L0x5555565e80, L0x5555565e88, L0x5555565e90, L0x5555565e98];
mov %v7 [L0x5555565e84, L0x5555565e8c, L0x5555565e94, L0x5555565e9c];
(* ld4	{v8.4s-v11.4s}, [x28], #64                  #! EA = L0x5555565ea0; Value = 0x00392db2393c008e; PC = 0x5555565588 *)
mov %v8 [L0x5555565ea0, L0x5555565eb0, L0x5555565ec0, L0x5555565ed0];
mov %v9 [L0x5555565ea4, L0x5555565eb4, L0x5555565ec4, L0x5555565ed4];
mov %v10 [L0x5555565ea8, L0x5555565eb8, L0x5555565ec8, L0x5555565ed8];
mov %v11 [L0x5555565eac, L0x5555565ebc, L0x5555565ecc, L0x5555565edc];
(* ld1	{v20.4s, v21.4s}, [x27], #32                #! EA = L0x5555566260; Value = 0x0000000000000000; PC = 0x555556558c *)
mov %v20 [L0x5555566260, L0x5555566264, L0x5555566268, L0x555556626c];
mov %v21 [L0x5555566270, L0x5555566274, L0x5555566278, L0x555556627c];
(* ld2	{v22.4s, v23.4s}, [x27], #32                #! EA = L0x5555566280; Value = 0xffcb166fcb0931b6; PC = 0x5555565590 *)
mov %v22 [L0x5555566280, L0x5555566288, L0x5555566290, L0x5555566298];
mov %v23 [L0x5555566284, L0x555556628c, L0x5555566294, L0x555556629c];
(* ld4	{v24.4s-v27.4s}, [x27], #64                 #! EA = L0x55555662a0; Value = 0x002f63162f6ef15d; PC = 0x5555565594 *)
mov %v24 [L0x55555662a0, L0x55555662b0, L0x55555662c0, L0x55555662d0];
mov %v25 [L0x55555662a4, L0x55555662b4, L0x55555662c4, L0x55555662d4];
mov %v26 [L0x55555662a8, L0x55555662b8, L0x55555662c8, L0x55555662d8];
mov %v27 [L0x55555662ac, L0x55555662bc, L0x55555662cc, L0x55555662dc];
(* mov	v4.s[0], w20                                #! PC = 0x5555565598 *)
mov [_, m1, m2, m3] %v4; mov %v4 [w20, m1, m2, m3];
(* mul	v12.4s, v2.4s, v4.s[3]                      #! PC = 0x555556559c *)
mov [_, _, _, m] %v4; mov %mm [m, m, m, m];
mull %dc %v12 %v2 %mm; cast [] %v12@int32[4] %v12;
(* mul	v13.4s, v3.4s, v4.s[3]                      #! PC = 0x55555655a0 *)
mov [_, _, _, m] %v4; mov %mm [m, m, m, m];
mull %dc %v13 %v3 %mm; cast [] %v13@int32[4] %v13;
(* sqrdmulh	v2.4s, v2.4s, v4.s[2]                  #! PC = 0x55555655a4 *)
mov [_, _, m, _] %v4; mov %mm [m, m, m, m];
mulj %mm %v2 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v2 %dc %mm 1;
(* sqrdmulh	v3.4s, v3.4s, v4.s[2]                  #! PC = 0x55555655a8 *)
mov [_, _, m, _] %v4; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v2.4s, v4.s[0]                      #! PC = 0x55555655ac *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v2 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x55555655b0 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ([L0x7ffffeda30,L0x7ffffeda34,L0x7ffffeda38,L0x7ffffeda3c]*
                   [-434125,-434125,-434125,-434125]) [Q, Q, Q, Q] /\
       eqmod %v13 ([L0x7ffffeda40,L0x7ffffeda44,L0x7ffffeda48,L0x7ffffeda4c]*
                   [-434125,-434125,-434125,-434125]) [Q, Q, Q, Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume eqmod %v12 ([L0x7ffffeda30,L0x7ffffeda34,L0x7ffffeda38,L0x7ffffeda3c]*
                   [-434125,-434125,-434125,-434125]) [Q, Q, Q, Q] /\
       eqmod %v13 ([L0x7ffffeda40,L0x7ffffeda44,L0x7ffffeda48,L0x7ffffeda4c]*
                   [-434125,-434125,-434125,-434125]) [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
  && [NQ,NQ,NQ,NQ] <s %v12 /\ %v12 <s [Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ] <s %v13 /\ %v13 <s [Q,Q,Q,Q];

(**************** CUT 87, 87 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod %v12 ([L0x7ffffeda30,L0x7ffffeda34,L0x7ffffeda38,L0x7ffffeda3c]*
                [-434125,-434125,-434125,-434125]) [Q, Q, Q, Q] /\
    eqmod %v13 ([L0x7ffffeda40,L0x7ffffeda44,L0x7ffffeda48,L0x7ffffeda4c]*
                [-434125,-434125,-434125,-434125]) [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    true prove with [cuts [36]];

ghost  %v0o44@int32[4], %v1o44@int32[4]:
       %v0o44 =  %v0 /\  %v1o44 =  %v1
   &&  %v0o44 =  %v0 /\  %v1o44 =  %v1;

(* sub	v2.4s, v0.4s, v12.4s                        #! PC = 0x55555655b4 *)
sub %v2 %v0 %v12;
(* mul	v28.4s, v18.4s, v20.s[3]                    #! PC = 0x55555655b8 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v28 %v18 %mm; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v1.4s, v13.4s                        #! PC = 0x55555655bc *)
sub %v3 %v1 %v13;
(* mul	v29.4s, v19.4s, v20.s[3]                    #! PC = 0x55555655c0 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v29 %v19 %mm; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555655c4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v18.4s, v18.4s, v20.s[2]               #! PC = 0x55555655c8 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v18 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v18 %dc %mm 1;
(* add	v1.4s, v1.4s, v13.4s                        #! PC = 0x55555655cc *)
add %v1 %v1 %v13;
(* sqrdmulh	v19.4s, v19.4s, v20.s[2]               #! PC = 0x55555655d0 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v19 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v18.4s, v4.s[0]                     #! PC = 0x55555655d4 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v18 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x55555655d8 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 ([L0x7ffffedc30,L0x7ffffedc34,L0x7ffffedc38,L0x7ffffedc3c]*
                   [-3585098,-3585098,-3585098,-3585098]) [Q, Q, Q, Q] /\
       eqmod %v29 ([L0x7ffffedc40,L0x7ffffedc44,L0x7ffffedc48,L0x7ffffedc4c]*
                   [-3585098,-3585098,-3585098,-3585098]) [Q, Q, Q, Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume eqmod %v28 ([L0x7ffffedc30,L0x7ffffedc34,L0x7ffffedc38,L0x7ffffedc3c]*
                   [-3585098,-3585098,-3585098,-3585098]) [Q, Q, Q, Q] /\
       eqmod %v29 ([L0x7ffffedc40,L0x7ffffedc44,L0x7ffffedc48,L0x7ffffedc4c]*
                   [-3585098,-3585098,-3585098,-3585098]) [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2];

(**************** CUT 88, 88 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 = %v0o44 + %v12 /\  %v2 =  %v0o44 - %v12 /\
     %v1 = %v1o44 + %v13 /\  %v3 =  %v1o44 - %v13 /\
    eqmod %v28 ([L0x7ffffedc30,L0x7ffffedc34,L0x7ffffedc38,L0x7ffffedc3c]*
                [-3585098,-3585098,-3585098,-3585098]) [Q, Q, Q, Q] /\
    eqmod %v29 ([L0x7ffffedc40,L0x7ffffedc44,L0x7ffffedc48,L0x7ffffedc4c]*
                [-3585098,-3585098,-3585098,-3585098]) [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2]
    prove with [cuts [36]];

ghost %v16o45@int32[4],%v17o45@int32[4], %v1o45@int32[4], %v3o45@int32[4]:
      %v16o45 = %v16 /\ %v17o45 = %v17 /\  %v1o45 =  %v1 /\  %v3o45 =  %v3
   && %v16o45 = %v16 /\ %v17o45 = %v17 /\  %v1o45 =  %v1 /\  %v3o45 =  %v3;

(* sub	v18.4s, v16.4s, v28.4s                      #! PC = 0x55555655dc *)
sub %v18 %v16 %v28;
(* mul	v12.4s, v1.4s, v5.s[1]                      #! PC = 0x55555655e0 *)
mov [_, m, _, _] %v5; mov %mm [m, m, m, m];
mull %dc %v12 %v1 %mm; cast [] %v12@int32[4] %v12;
(* sub	v19.4s, v17.4s, v29.4s                      #! PC = 0x55555655e4 *)
sub %v19 %v17 %v29;
(* mul	v13.4s, v3.4s, v5.s[3]                      #! PC = 0x55555655e8 *)
mov [_, _, _, m] %v5; mov %mm [m, m, m, m];
mull %dc %v13 %v3 %mm; cast [] %v13@int32[4] %v13;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x55555655ec *)
add %v16 %v16 %v28;
(* sqrdmulh	v1.4s, v1.4s, v5.s[0]                  #! PC = 0x55555655f0 *)
mov [m, _, _, _] %v5; mov %mm [m, m, m, m];
mulj %mm %v1 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v1 %dc %mm 1;
(* add	v17.4s, v17.4s, v29.4s                      #! PC = 0x55555655f4 *)
add %v17 %v17 %v29;
(* sqrdmulh	v3.4s, v3.4s, v5.s[2]                  #! PC = 0x55555655f8 *)
mov [_, _, m, _] %v5; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v1.4s, v4.s[0]                      #! PC = 0x55555655fc *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v1 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x5555565600 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v1o45*[1095468,1095468,1095468,1095468])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o45*[-3506380,-3506380,-3506380,-3506380])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v1o45*[1095468,1095468,1095468,1095468])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o45*[-3506380,-3506380,-3506380,-3506380])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2];

(**************** CUT 89, 89 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o45 + %v28 /\ %v18 = %v16o45 - %v28 /\
    %v17 = %v17o45 + %v29 /\ %v19 = %v17o45 - %v29 /\
    eqmod %v12 ( %v1o45*[1095468,1095468,1095468,1095468])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o45*[-3506380,-3506380,-3506380,-3506380])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v16 /\
       %v16 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v17 /\
       %v17 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v18 /\
       %v18 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v19 /\
       %v19 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2]
    prove with [cuts [36]];

ghost  %v0o46@int32[4], %v2o46@int32[4],%v17o46@int32[4],%v19o46@int32[4]:
       %v0o46 =  %v0 /\  %v2o46 =  %v2 /\ %v17o46 = %v17 /\ %v19o46 = %v19
   &&  %v0o46 =  %v0 /\  %v2o46 =  %v2 /\ %v17o46 = %v17 /\ %v19o46 = %v19;

(* sub	v1.4s, v0.4s, v12.4s                        #! PC = 0x5555565604 *)
sub %v1 %v0 %v12;
(* mul	v28.4s, v17.4s, v21.s[1]                    #! PC = 0x5555565608 *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v28 %v17 %mm; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v2.4s, v13.4s                        #! PC = 0x555556560c *)
sub %v3 %v2 %v13;
(* mul	v29.4s, v19.4s, v21.s[3]                    #! PC = 0x5555565610 *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v29 %v19 %mm; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x5555565614 *)
add %v0 %v0 %v12;
(* sqrdmulh	v17.4s, v17.4s, v21.s[0]               #! PC = 0x5555565618 *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v17 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v17 %dc %mm 1;
(* add	v2.4s, v2.4s, v13.4s                        #! PC = 0x555556561c *)
add %v2 %v2 %v13;
(* sqrdmulh	v19.4s, v19.4s, v21.s[2]               #! PC = 0x5555565620 *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v19 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v17.4s, v4.s[0]                     #! PC = 0x5555565624 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v17 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x5555565628 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;




(**************** mls ****************)

assert eqmod %v28 (%v17o46*[556856,556856,556856,556856])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o46*[3870317,3870317,3870317,3870317])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v17o46*[556856,556856,556856,556856])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o46*[3870317,3870317,3870317,3870317])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [88]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2];

(**************** CUT 90, 90 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o46 + %v12 /\  %v1 =  %v0o46 - %v12 /\
     %v2 =  %v2o46 + %v13 /\  %v3 =  %v2o46 - %v13 /\
    eqmod %v28 (%v17o46*[556856,556856,556856,556856])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o46*[3870317,3870317,3870317,3870317])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2]
    prove with [cuts [88]];

ghost %v16o47@int32[4], %v18o47@int32[4]:
      %v16o47 = %v16 /\ %v18o47 = %v18
   && %v16o47 = %v16 /\ %v18o47 = %v18;

(* sub	v17.4s, v16.4s, v28.4s                      #! PC = 0x555556562c *)
sub %v17 %v16 %v28;
(* sub	v19.4s, v18.4s, v29.4s                      #! PC = 0x5555565630 *)
sub %v19 %v18 %v29;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x5555565634 *)
add %v16 %v16 %v28;
(* add	v18.4s, v18.4s, v29.4s                      #! PC = 0x5555565638 *)
add %v18 %v18 %v29;

assert [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [89]] && true;
assume [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2];

(**************** CUT 91, 91 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o47 + %v28 /\ %v17 = %v16o47 - %v28 /\
    %v18 = %v18o47 + %v29 /\ %v19 = %v18o47 - %v29 /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v16 /\
       %v16 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v17 /\
       %v17 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v18 /\
       %v18 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v19 /\
       %v19 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2]
    prove with [cuts [89]];



(* trn1	v12.4s, v0.4s, v1.4s                       #! PC = 0x555556563c *)
mov [t0, _, t2, _] %v0; mov [t1, _, t3, _] %v1; mov %v12 [t0, t1, t2, t3];
(* trn2	v13.4s, v0.4s, v1.4s                       #! PC = 0x5555565640 *)
mov [_, t0, _, t2] %v0; mov [_, t1, _, t3] %v1; mov %v13 [t0, t1, t2, t3];
(* trn1	v14.4s, v2.4s, v3.4s                       #! PC = 0x5555565644 *)
mov [t0, _, t2, _] %v2; mov [t1, _, t3, _] %v3; mov %v14 [t0, t1, t2, t3];
(* trn2	v15.4s, v2.4s, v3.4s                       #! PC = 0x5555565648 *)
mov [_, t0, _, t2] %v2; mov [_, t1, _, t3] %v3; mov %v15 [t0, t1, t2, t3];
(* trn1	v0.2d, v12.2d, v14.2d                      #! PC = 0x555556564c *)
mov [t0, t1, _, _] %v12; mov [t2, t3, _, _] %v14; mov %v0 [t0, t1, t2, t3];
(* trn2	v2.2d, v12.2d, v14.2d                      #! PC = 0x5555565650 *)
mov [_, _, t0, t1] %v12; mov [_, _, t2, t3] %v14; mov %v2 [t0, t1, t2, t3];
(* trn1	v1.2d, v13.2d, v15.2d                      #! PC = 0x5555565654 *)
mov [t0, t1, _, _] %v13; mov [t2, t3, _, _] %v15; mov %v1 [t0, t1, t2, t3];
(* trn2	v3.2d, v13.2d, v15.2d                      #! PC = 0x5555565658 *)
mov [_, _, t0, t1] %v13; mov [_, _, t2, t3] %v15; mov %v3 [t0, t1, t2, t3];
(* trn1	v28.4s, v16.4s, v17.4s                     #! PC = 0x555556565c *)
mov [t0, _, t2, _] %v16; mov [t1, _, t3, _] %v17; mov %v28 [t0, t1, t2, t3];
(* trn2	v29.4s, v16.4s, v17.4s                     #! PC = 0x5555565660 *)
mov [_, t0, _, t2] %v16; mov [_, t1, _, t3] %v17; mov %v29 [t0, t1, t2, t3];
(* trn1	v30.4s, v18.4s, v19.4s                     #! PC = 0x5555565664 *)
mov [t0, _, t2, _] %v18; mov [t1, _, t3, _] %v19; mov %v30 [t0, t1, t2, t3];
(* trn2	v31.4s, v18.4s, v19.4s                     #! PC = 0x5555565668 *)
mov [_, t0, _, t2] %v18; mov [_, t1, _, t3] %v19; mov %v31 [t0, t1, t2, t3];
(* trn1	v16.2d, v28.2d, v30.2d                     #! PC = 0x555556566c *)
mov [t0, t1, _, _] %v28; mov [t2, t3, _, _] %v30; mov %v16 [t0, t1, t2, t3];
(* trn2	v18.2d, v28.2d, v30.2d                     #! PC = 0x5555565670 *)
mov [_, _, t0, t1] %v28; mov [_, _, t2, t3] %v30; mov %v18 [t0, t1, t2, t3];
(* trn1	v17.2d, v29.2d, v31.2d                     #! PC = 0x5555565674 *)
mov [t0, t1, _, _] %v29; mov [t2, t3, _, _] %v31; mov %v17 [t0, t1, t2, t3];
(* trn2	v19.2d, v29.2d, v31.2d                     #! PC = 0x5555565678 *)
mov [_, _, t0, t1] %v29; mov [_, _, t2, t3] %v31; mov %v19 [t0, t1, t2, t3];

ghost  %v2o48@int32[4], %v3o48@int32[4]:
       %v2o48 =  %v2 /\  %v3o48 =  %v3
   &&  %v2o48 =  %v2 /\  %v3o48 =  %v3;

(* mul	v12.4s, v2.4s, v7.4s                        #! PC = 0x555556567c *)
mull %dc %v12 %v2 %v7; cast [] %v12@int32[4] %v12;
(* mul	v13.4s, v3.4s, v7.4s                        #! PC = 0x5555565680 *)
mull %dc %v13 %v3 %v7; cast [] %v13@int32[4] %v13;
(* sqrdmulh	v2.4s, v2.4s, v6.4s                    #! PC = 0x5555565684 *)
mulj %mm %v2 %v6; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v2 %dc %mm 1;
(* sqrdmulh	v3.4s, v3.4s, v6.4s                    #! PC = 0x5555565688 *)
mulj %mm %v3 %v6; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v2.4s, v4.s[0]                      #! PC = 0x555556568c *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v2 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x5555565690 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v2o48*[-565603,169688,2462444,-3334383])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o48*[-565603,169688,2462444,-3334383])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v2o48*[-565603,169688,2462444,-3334383])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o48*[-565603,169688,2462444,-3334383])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
       prove with [algebra solver isl] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q];

(**************** CUT 92, 92 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod %v12 ( %v2o48*[-565603,169688,2462444,-3334383])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o48*[-565603,169688,2462444,-3334383])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    true ;

ghost  %v0o49@int32[4], %v1o49@int32[4],%v18o49@int32[4],%v19o49@int32[4]:
       %v0o49 =  %v0 /\  %v1o49 =  %v1 /\ %v18o49 = %v18 /\ %v19o49 = %v19
   &&  %v0o49 =  %v0 /\  %v1o49 =  %v1 /\ %v18o49 = %v18 /\ %v19o49 = %v19;

(* sub	v2.4s, v0.4s, v12.4s                        #! PC = 0x5555565694 *)
sub %v2 %v0 %v12;
(* mul	v28.4s, v18.4s, v23.4s                      #! PC = 0x5555565698 *)
mull %dc %v28 %v18 %v23; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v1.4s, v13.4s                        #! PC = 0x555556569c *)
sub %v3 %v1 %v13;
(* mul	v29.4s, v19.4s, v23.4s                      #! PC = 0x55555656a0 *)
mull %dc %v29 %v19 %v23; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555656a4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v18.4s, v18.4s, v22.4s                 #! PC = 0x55555656a8 *)
mulj %mm %v18 %v22; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v18 %dc %mm 1;
(* add	v1.4s, v1.4s, v13.4s                        #! PC = 0x55555656ac *)
add %v1 %v1 %v13;
(* sqrdmulh	v19.4s, v19.4s, v22.4s                 #! PC = 0x55555656b0 *)
mulj %mm %v19 %v22; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v18.4s, v4.s[0]                     #! PC = 0x55555656b4 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v18 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x55555656b8 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 (%v18o49*[-3467665,2312838,-653275,-459163])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o49*[-3467665,2312838,-653275,-459163])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v18o49*[-3467665,2312838,-653275,-459163])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o49*[-3467665,2312838,-653275,-459163])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
       prove with [algebra solver isl, cuts [90]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2];

(**************** CUT 93, 93 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o49 + %v12 /\  %v2 =  %v0o49 - %v12 /\
     %v1 =  %v1o49 + %v13 /\  %v3 =  %v1o49 - %v13 /\
    eqmod %v28 (%v18o49*[-3467665,2312838,-653275,-459163])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o49*[-3467665,2312838,-653275,-459163])
             [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2]
    prove with [cuts [90]];

ghost %v16o4a@int32[4],%v17o4a@int32[4], %v1o4a@int32[4], %v3o4a@int32[4]:
      %v16o4a = %v16 /\ %v17o4a = %v17 /\  %v1o4a =  %v1 /\  %v3o4a = %v3
   && %v16o4a = %v16 /\ %v17o4a = %v17 /\  %v1o4a =  %v1 /\  %v3o4a = %v3;

(* sub	v18.4s, v16.4s, v28.4s                      #! PC = 0x55555656bc *)
sub %v18 %v16 %v28;
(* mul	v12.4s, v1.4s, v9.4s                        #! PC = 0x55555656c0 *)
mull %dc %v12 %v1 %v9; cast [] %v12@int32[4] %v12;
(* sub	v19.4s, v17.4s, v29.4s                      #! PC = 0x55555656c4 *)
sub %v19 %v17 %v29;
(* mul	v13.4s, v3.4s, v11.4s                       #! PC = 0x55555656c8 *)
mull %dc %v13 %v3 %v11; cast [] %v13@int32[4] %v13;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x55555656cc *)
add %v16 %v16 %v28;
(* sqrdmulh	v1.4s, v1.4s, v8.4s                    #! PC = 0x55555656d0 *)
mulj %mm %v1 %v8; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v1 %dc %mm 1;
(* add	v17.4s, v17.4s, v29.4s                      #! PC = 0x55555656d4 *)
add %v17 %v17 %v29;
(* sqrdmulh	v3.4s, v3.4s, v10.4s                   #! PC = 0x55555656d8 *)
mulj %mm %v3 %v10; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v1.4s, v4.s[0]                      #! PC = 0x55555656dc *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v1 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x55555656e0 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v1o4a*[3747250,1239911,3195676,1254190])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o4a*[2296099,-3838479,2642980,-12417])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v1o4a*[3747250,1239911,3195676,1254190])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o4a*[2296099,-3838479,2642980,-12417])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
       prove with [algebra solver isl, cuts [91]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2];

(**************** CUT 94, 94 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o4a + %v28 /\ %v18 = %v16o4a - %v28 /\
    %v17 = %v17o4a + %v29 /\ %v19 = %v17o4a - %v29 /\
    eqmod %v12 ( %v1o4a*[3747250,1239911,3195676,1254190])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o4a*[2296099,-3838479,2642980,-12417])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v16 /\
       %v16 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v17 /\
       %v17 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v18 /\
       %v18 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v19 /\
       %v19 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2]
    prove with [cuts [91]];

ghost  %v0o4b@int32[4], %v2o4b@int32[4],%v17o4b@int32[4],%v19o4b@int32[4]:
       %v0o4b =  %v0 /\  %v2o4b =  %v2 /\ %v17o4b = %v17 /\ %v19o4b = %v19
   &&  %v0o4b =  %v0 /\  %v2o4b =  %v2 /\ %v17o4b = %v17 /\ %v19o4b = %v19;

(* sub	v1.4s, v0.4s, v12.4s                        #! PC = 0x55555656e4 *)
sub %v1 %v0 %v12;
(* mul	v28.4s, v17.4s, v25.4s                      #! PC = 0x55555656e8 *)
mull %dc %v28 %v17 %v25; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v2.4s, v13.4s                        #! PC = 0x55555656ec *)
sub %v3 %v2 %v13;
(* mul	v29.4s, v19.4s, v27.4s                      #! PC = 0x55555656f0 *)
mull %dc %v29 %v19 %v27; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555656f4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v17.4s, v17.4s, v24.4s                 #! PC = 0x55555656f8 *)
mulj %mm %v17 %v24; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v17 %dc %mm 1;
(* add	v2.4s, v2.4s, v13.4s                        #! PC = 0x55555656fc *)
add %v2 %v2 %v13;
(* sqrdmulh	v19.4s, v19.4s, v26.4s                 #! PC = 0x5555565700 *)
mulj %mm %v19 %v26; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v17.4s, v4.s[0]                     #! PC = 0x5555565704 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v17 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x5555565708 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 (%v17o4b*[3105558,508145,860144,140244])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o4b*[-1103344,-553718,3430436,-1514152])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v17o4b*[3105558,508145,860144,140244])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o4b*[-1103344,-553718,3430436,-1514152])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
       prove with [algebra solver isl, cuts [92, 93]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2];

(**************** CUT 95, 95 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o4b + %v12 /\  %v1 =  %v0o4b - %v12 /\
     %v2 =  %v2o4b + %v13 /\  %v3 =  %v2o4b - %v13 /\
    eqmod %v28 (%v17o4b*[3105558,508145,860144,140244])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o4b*[-1103344,-553718,3430436,-1514152])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2]
    prove with [cuts [92, 93]];



(* sub	v17.4s, v16.4s, v28.4s                      #! PC = 0x555556570c *)
sub %v17 %v16 %v28;
(* sub	v19.4s, v18.4s, v29.4s                      #! PC = 0x5555565710 *)
sub %v19 %v18 %v29;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x5555565714 *)
add %v16 %v16 %v28;
(* add	v18.4s, v18.4s, v29.4s                      #! PC = 0x5555565718 *)
add %v18 %v18 %v29;



(**************** CUT 96, 96 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod (F**2) (%v0[0]) [Q,X-3747250] /\ eqmod (F**2) (%v1[0]) [Q,X-4633167] /\
    eqmod (F**2) (%v2[0]) [Q,X-2296099] /\ eqmod (F**2) (%v3[0]) [Q,X-6084318] /\
    eqmod (F**2) (%v16[0]) [Q,X-3105558] /\ eqmod (F**2) (%v17[0]) [Q,X-5274859] /\
    eqmod (F**2) (%v18[0]) [Q,X-7277073] /\ eqmod (F**2) (%v19[0]) [Q,X-1103344] /\
    eqmod (F**2) (%v0[1]) [Q,X-1239911] /\ eqmod (F**2) (%v1[1]) [Q,X-7140506] /\
    eqmod (F**2) (%v2[1]) [Q,X-4541938] /\ eqmod (F**2) (%v3[1]) [Q,X-3838479] /\
    eqmod (F**2) (%v16[1]) [Q,X-508145] /\ eqmod (F**2) (%v17[1]) [Q,X-7872272] /\
    eqmod (F**2) (%v18[1]) [Q,X-7826699] /\ eqmod (F**2) (%v19[1]) [Q,X-553718] /\
    eqmod (F**2) (%v0[2]) [Q,X-3195676] /\ eqmod (F**2) (%v1[2]) [Q,X-5184741] /\
    eqmod (F**2) (%v2[2]) [Q,X-2642980] /\ eqmod (F**2) (%v3[2]) [Q,X-5737437] /\
    eqmod (F**2) (%v16[2]) [Q,X-860144] /\ eqmod (F**2) (%v17[2]) [Q,X-7520273] /\
    eqmod (F**2) (%v18[2]) [Q,X-3430436] /\ eqmod (F**2) (%v19[2]) [Q,X-4949981] /\
    eqmod (F**2) (%v0[3]) [Q,X-1254190] /\ eqmod (F**2) (%v1[3]) [Q,X-7126227] /\
    eqmod (F**2) (%v2[3]) [Q,X-8368000] /\ eqmod (F**2) (%v3[3]) [Q,X-12417] /\
    eqmod (F**2) (%v16[3]) [Q,X-140244] /\ eqmod (F**2) (%v17[3]) [Q,X-8240173] /\
    eqmod (F**2) (%v18[3]) [Q,X-6866265] /\ eqmod (F**2) (%v19[3]) [Q,X-1514152]
    prove with [all ghosts,cuts [36,87,88,89,90,91,92,93,94]],
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v16 /\
       %v16 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v17 /\
       %v17 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v18 /\
       %v18 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v19 /\
       %v19 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
    prove with [algebra solver isl, cuts [94]]
 && [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v16 /\
       %v16 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v17 /\
       %v17 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v18 /\
       %v18 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v19 /\
       %v19 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2]
prove with [cuts [94]];



(* st4	{v0.4s-v3.4s}, [x1], #64                    #! EA = L0x7ffffeda10; PC = 0x555556571c *)
mov [t00, t10, t20, t30] %v0; mov [t01, t11, t21, t31] %v1;
mov [t02, t12, t22, t32] %v2; mov [t03, t13, t23, t33] %v3;
mov L0x7ffffeda10 t00; mov L0x7ffffeda14 t01; mov L0x7ffffeda18 t02; mov L0x7ffffeda1c t03;
mov L0x7ffffeda20 t10; mov L0x7ffffeda24 t11; mov L0x7ffffeda28 t12; mov L0x7ffffeda2c t13;
mov L0x7ffffeda30 t20; mov L0x7ffffeda34 t21; mov L0x7ffffeda38 t22; mov L0x7ffffeda3c t23;
mov L0x7ffffeda40 t30; mov L0x7ffffeda44 t31; mov L0x7ffffeda48 t32; mov L0x7ffffeda4c t33;
(* st4	{v16.4s-v19.4s}, [x3], #64                  #! EA = L0x7ffffedc10; PC = 0x5555565720 *)
mov [t00, t10, t20, t30] %v16; mov [t01, t11, t21, t31] %v17;
mov [t02, t12, t22, t32] %v18; mov [t03, t13, t23, t33] %v19;
mov L0x7ffffedc10 t00; mov L0x7ffffedc14 t01; mov L0x7ffffedc18 t02; mov L0x7ffffedc1c t03;
mov L0x7ffffedc20 t10; mov L0x7ffffedc24 t11; mov L0x7ffffedc28 t12; mov L0x7ffffedc2c t13;
mov L0x7ffffedc30 t20; mov L0x7ffffedc34 t21; mov L0x7ffffedc38 t22; mov L0x7ffffedc3c t23;
mov L0x7ffffedc40 t30; mov L0x7ffffedc44 t31; mov L0x7ffffedc48 t32; mov L0x7ffffedc4c t33;
(* sub	x19, x19, #0x1                              #! PC = 0x5555565724 *)
subs dc x19 x19 (0x1)@uint64;
(* #cbnz	x19, 0x5555565578 <_ntt_bot_loop>         #! PC = 0x5555565728 *)
#cbnz	x19, 0x5555565578 <_ntt_bot_loop>         #! 0x5555565728 = 0x5555565728;
(* ld1	{v0.4s-v3.4s}, [x0], #64                    #! EA = L0x7ffffeda50; Value = 0x0013dcb80016ea5f; PC = 0x5555565578 *)
mov %v0 [L0x7ffffeda50, L0x7ffffeda54, L0x7ffffeda58, L0x7ffffeda5c];
mov %v1 [L0x7ffffeda60, L0x7ffffeda64, L0x7ffffeda68, L0x7ffffeda6c];
mov %v2 [L0x7ffffeda70, L0x7ffffeda74, L0x7ffffeda78, L0x7ffffeda7c];
mov %v3 [L0x7ffffeda80, L0x7ffffeda84, L0x7ffffeda88, L0x7ffffeda8c];
(* ld1	{v16.4s-v19.4s}, [x2], #64                  #! EA = L0x7ffffedc50; Value = 0x0075567900188c94; PC = 0x555556557c *)
mov %v16 [L0x7ffffedc50, L0x7ffffedc54, L0x7ffffedc58, L0x7ffffedc5c];
mov %v17 [L0x7ffffedc60, L0x7ffffedc64, L0x7ffffedc68, L0x7ffffedc6c];
mov %v18 [L0x7ffffedc70, L0x7ffffedc74, L0x7ffffedc78, L0x7ffffedc7c];
mov %v19 [L0x7ffffedc80, L0x7ffffedc84, L0x7ffffedc88, L0x7ffffedc8c];
(* ld1	{v4.4s, v5.4s}, [x28], #32                  #! EA = L0x5555565ee0; Value = 0x0000000000000000; PC = 0x5555565580 *)
mov %v4 [L0x5555565ee0, L0x5555565ee4, L0x5555565ee8, L0x5555565eec];
mov %v5 [L0x5555565ef0, L0x5555565ef4, L0x5555565ef8, L0x5555565efc];
(* ld2	{v6.4s, v7.4s}, [x28], #32                  #! EA = L0x5555565f00; Value = 0xffc06ce7c05cfebf; PC = 0x5555565584 *)
mov %v6 [L0x5555565f00, L0x5555565f08, L0x5555565f10, L0x5555565f18];
mov %v7 [L0x5555565f04, L0x5555565f0c, L0x5555565f14, L0x5555565f1c];
(* ld4	{v8.4s-v11.4s}, [x28], #64                  #! EA = L0x5555565f20; Value = 0x002dbfcb2dcb3d74; PC = 0x5555565588 *)
mov %v8 [L0x5555565f20, L0x5555565f30, L0x5555565f40, L0x5555565f50];
mov %v9 [L0x5555565f24, L0x5555565f34, L0x5555565f44, L0x5555565f54];
mov %v10 [L0x5555565f28, L0x5555565f38, L0x5555565f48, L0x5555565f58];
mov %v11 [L0x5555565f2c, L0x5555565f3c, L0x5555565f4c, L0x5555565f5c];
(* ld1	{v20.4s, v21.4s}, [x27], #32                #! EA = L0x55555662e0; Value = 0x0000000000000000; PC = 0x555556558c *)
mov %v20 [L0x55555662e0, L0x55555662e4, L0x55555662e8, L0x55555662ec];
mov %v21 [L0x55555662f0, L0x55555662f4, L0x55555662f8, L0x55555662fc];
(* ld2	{v22.4s, v23.4s}, [x27], #32                #! EA = L0x5555566300; Value = 0x0005528c0553e0ee; PC = 0x5555565590 *)
mov %v22 [L0x5555566300, L0x5555566308, L0x5555566310, L0x5555566318];
mov %v23 [L0x5555566304, L0x555556630c, L0x5555566314, L0x555556631c];
(* ld4	{v24.4s-v27.4s}, [x27], #64                 #! EA = L0x5555566320; Value = 0xffdea884dea02c4e; PC = 0x5555565594 *)
mov %v24 [L0x5555566320, L0x5555566330, L0x5555566340, L0x5555566350];
mov %v25 [L0x5555566324, L0x5555566334, L0x5555566344, L0x5555566354];
mov %v26 [L0x5555566328, L0x5555566338, L0x5555566348, L0x5555566358];
mov %v27 [L0x555556632c, L0x555556633c, L0x555556634c, L0x555556635c];
(* mov	v4.s[0], w20                                #! PC = 0x5555565598 *)
mov [_, m1, m2, m3] %v4; mov %v4 [w20, m1, m2, m3];
(* mul	v12.4s, v2.4s, v4.s[3]                      #! PC = 0x555556559c *)
mov [_, _, _, m] %v4; mov %mm [m, m, m, m];
mull %dc %v12 %v2 %mm; cast [] %v12@int32[4] %v12;
(* mul	v13.4s, v3.4s, v4.s[3]                      #! PC = 0x55555655a0 *)
mov [_, _, _, m] %v4; mov %mm [m, m, m, m];
mull %dc %v13 %v3 %mm; cast [] %v13@int32[4] %v13;
(* sqrdmulh	v2.4s, v2.4s, v4.s[2]                  #! PC = 0x55555655a4 *)
mov [_, _, m, _] %v4; mov %mm [m, m, m, m];
mulj %mm %v2 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v2 %dc %mm 1;
(* sqrdmulh	v3.4s, v3.4s, v4.s[2]                  #! PC = 0x55555655a8 *)
mov [_, _, m, _] %v4; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v2.4s, v4.s[0]                      #! PC = 0x55555655ac *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v2 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x55555655b0 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ([L0x7ffffeda70,L0x7ffffeda74,L0x7ffffeda78,L0x7ffffeda7c]*
                   [676590,676590,676590,676590]) [Q, Q, Q, Q] /\
       eqmod %v13 ([L0x7ffffeda80,L0x7ffffeda84,L0x7ffffeda88,L0x7ffffeda8c]*
                   [676590,676590,676590,676590]) [Q, Q, Q, Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume eqmod %v12 ([L0x7ffffeda70,L0x7ffffeda74,L0x7ffffeda78,L0x7ffffeda7c]*
                   [676590,676590,676590,676590]) [Q, Q, Q, Q] /\
       eqmod %v13 ([L0x7ffffeda80,L0x7ffffeda84,L0x7ffffeda88,L0x7ffffeda8c]*
                   [676590,676590,676590,676590]) [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
  && [NQ,NQ,NQ,NQ] <s %v12 /\ %v12 <s [Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ] <s %v13 /\ %v13 <s [Q,Q,Q,Q];

(**************** CUT 97, 97 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod %v12 ([L0x7ffffeda70,L0x7ffffeda74,L0x7ffffeda78,L0x7ffffeda7c]*
                [676590,676590,676590,676590]) [Q, Q, Q, Q] /\
    eqmod %v13 ([L0x7ffffeda80,L0x7ffffeda84,L0x7ffffeda88,L0x7ffffeda8c]*
                [676590,676590,676590,676590]) [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    true prove with [cuts [36]];

ghost  %v0o4c@int32[4], %v1o4c@int32[4]:
       %v0o4c =  %v0 /\  %v1o4c =  %v1
   &&  %v0o4c =  %v0 /\  %v1o4c =  %v1;

(* sub	v2.4s, v0.4s, v12.4s                        #! PC = 0x55555655b4 *)
sub %v2 %v0 %v12;
(* mul	v28.4s, v18.4s, v20.s[3]                    #! PC = 0x55555655b8 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v28 %v18 %mm; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v1.4s, v13.4s                        #! PC = 0x55555655bc *)
sub %v3 %v1 %v13;
(* mul	v29.4s, v19.4s, v20.s[3]                    #! PC = 0x55555655c0 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v29 %v19 %mm; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555655c4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v18.4s, v18.4s, v20.s[2]               #! PC = 0x55555655c8 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v18 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v18 %dc %mm 1;
(* add	v1.4s, v1.4s, v13.4s                        #! PC = 0x55555655cc *)
add %v1 %v1 %v13;
(* sqrdmulh	v19.4s, v19.4s, v20.s[2]               #! PC = 0x55555655d0 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v19 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v18.4s, v4.s[0]                     #! PC = 0x55555655d4 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v18 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x55555655d8 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 ([L0x7ffffedc70,L0x7ffffedc74,L0x7ffffedc78,L0x7ffffedc7c]*
                   [2815639,2815639,2815639,2815639]) [Q, Q, Q, Q] /\
       eqmod %v29 ([L0x7ffffedc80,L0x7ffffedc84,L0x7ffffedc88,L0x7ffffedc8c]*
                   [2815639,2815639,2815639,2815639]) [Q, Q, Q, Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume eqmod %v28 ([L0x7ffffedc70,L0x7ffffedc74,L0x7ffffedc78,L0x7ffffedc7c]*
                   [2815639,2815639,2815639,2815639]) [Q, Q, Q, Q] /\
       eqmod %v29 ([L0x7ffffedc80,L0x7ffffedc84,L0x7ffffedc88,L0x7ffffedc8c]*
                   [2815639,2815639,2815639,2815639]) [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2];

(**************** CUT 98, 98 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 = %v0o4c + %v12 /\  %v2 =  %v0o4c - %v12 /\
     %v1 = %v1o4c + %v13 /\  %v3 =  %v1o4c - %v13 /\
    eqmod %v28 ([L0x7ffffedc70,L0x7ffffedc74,L0x7ffffedc78,L0x7ffffedc7c]*
                [2815639,2815639,2815639,2815639]) [Q, Q, Q, Q] /\
    eqmod %v29 ([L0x7ffffedc80,L0x7ffffedc84,L0x7ffffedc88,L0x7ffffedc8c]*
                [2815639,2815639,2815639,2815639]) [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2]
    prove with [cuts [36]];

ghost %v16o4d@int32[4],%v17o4d@int32[4], %v1o4d@int32[4], %v3o4d@int32[4]:
      %v16o4d = %v16 /\ %v17o4d = %v17 /\  %v1o4d =  %v1 /\  %v3o4d =  %v3
   && %v16o4d = %v16 /\ %v17o4d = %v17 /\  %v1o4d =  %v1 /\  %v3o4d =  %v3;

(* sub	v18.4s, v16.4s, v28.4s                      #! PC = 0x55555655dc *)
sub %v18 %v16 %v28;
(* mul	v12.4s, v1.4s, v5.s[1]                      #! PC = 0x55555655e0 *)
mov [_, m, _, _] %v5; mov %mm [m, m, m, m];
mull %dc %v12 %v1 %mm; cast [] %v12@int32[4] %v12;
(* sub	v19.4s, v17.4s, v29.4s                      #! PC = 0x55555655e4 *)
sub %v19 %v17 %v29;
(* mul	v13.4s, v3.4s, v5.s[3]                      #! PC = 0x55555655e8 *)
mov [_, _, _, m] %v5; mov %mm [m, m, m, m];
mull %dc %v13 %v3 %mm; cast [] %v13@int32[4] %v13;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x55555655ec *)
add %v16 %v16 %v28;
(* sqrdmulh	v1.4s, v1.4s, v5.s[0]                  #! PC = 0x55555655f0 *)
mov [m, _, _, _] %v5; mov %mm [m, m, m, m];
mulj %mm %v1 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v1 %dc %mm 1;
(* add	v17.4s, v17.4s, v29.4s                      #! PC = 0x55555655f4 *)
add %v17 %v17 %v29;
(* sqrdmulh	v3.4s, v3.4s, v5.s[2]                  #! PC = 0x55555655f8 *)
mov [_, _, m, _] %v5; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v1.4s, v4.s[0]                      #! PC = 0x55555655fc *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v1 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x5555565600 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v1o4d*[2071829,2071829,2071829,2071829])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o4d*[-4018989,-4018989,-4018989,-4018989])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v1o4d*[2071829,2071829,2071829,2071829])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o4d*[-4018989,-4018989,-4018989,-4018989])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2];

(**************** CUT 99, 99 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o4d + %v28 /\ %v18 = %v16o4d - %v28 /\
    %v17 = %v17o4d + %v29 /\ %v19 = %v17o4d - %v29 /\
    eqmod %v12 ( %v1o4d*[2071829,2071829,2071829,2071829])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o4d*[-4018989,-4018989,-4018989,-4018989])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v16 /\
       %v16 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v17 /\
       %v17 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v18 /\
       %v18 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v19 /\
       %v19 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2]
    prove with [cuts [36]];

ghost  %v0o4e@int32[4], %v2o4e@int32[4],%v17o4e@int32[4],%v19o4e@int32[4]:
       %v0o4e =  %v0 /\  %v2o4e =  %v2 /\ %v17o4e = %v17 /\ %v19o4e = %v19
   &&  %v0o4e =  %v0 /\  %v2o4e =  %v2 /\ %v17o4e = %v17 /\ %v19o4e = %v19;

(* sub	v1.4s, v0.4s, v12.4s                        #! PC = 0x5555565604 *)
sub %v1 %v0 %v12;
(* mul	v28.4s, v17.4s, v21.s[1]                    #! PC = 0x5555565608 *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v28 %v17 %mm; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v2.4s, v13.4s                        #! PC = 0x555556560c *)
sub %v3 %v2 %v13;
(* mul	v29.4s, v19.4s, v21.s[3]                    #! PC = 0x5555565610 *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v29 %v19 %mm; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x5555565614 *)
add %v0 %v0 %v12;
(* sqrdmulh	v17.4s, v17.4s, v21.s[0]               #! PC = 0x5555565618 *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v17 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v17 %dc %mm 1;
(* add	v2.4s, v2.4s, v13.4s                        #! PC = 0x555556561c *)
add %v2 %v2 %v13;
(* sqrdmulh	v19.4s, v19.4s, v21.s[2]               #! PC = 0x5555565620 *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v19 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v17.4s, v4.s[0]                     #! PC = 0x5555565624 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v17 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x5555565628 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 (%v17o4e*[2917338,2917338,2917338,2917338])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o4e*[1853806,1853806,1853806,1853806])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v17o4e*[2917338,2917338,2917338,2917338])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o4e*[1853806,1853806,1853806,1853806])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [98]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2];

(**************** CUT 100, 100 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o4e + %v12 /\  %v1 =  %v0o4e - %v12 /\
     %v2 =  %v2o4e + %v13 /\  %v3 =  %v2o4e - %v13 /\
    eqmod %v28 (%v17o4e*[2917338,2917338,2917338,2917338])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o4e*[1853806,1853806,1853806,1853806])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2]
    prove with [cuts [98]];

ghost %v16o4f@int32[4], %v18o4f@int32[4]:
      %v16o4f = %v16 /\ %v18o4f = %v18
   && %v16o4f = %v16 /\ %v18o4f = %v18;

(* sub	v17.4s, v16.4s, v28.4s                      #! PC = 0x555556562c *)
sub %v17 %v16 %v28;
(* sub	v19.4s, v18.4s, v29.4s                      #! PC = 0x5555565630 *)
sub %v19 %v18 %v29;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x5555565634 *)
add %v16 %v16 %v28;
(* add	v18.4s, v18.4s, v29.4s                      #! PC = 0x5555565638 *)
add %v18 %v18 %v29;

assert [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [99]] && true;
assume [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2];

(**************** CUT 101, 101 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o4f + %v28 /\ %v17 = %v16o4f - %v28 /\
    %v18 = %v18o4f + %v29 /\ %v19 = %v18o4f - %v29 /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v16 /\
       %v16 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v17 /\
       %v17 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v18 /\
       %v18 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v19 /\
       %v19 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2]
    prove with [cuts [99]];



(* trn1	v12.4s, v0.4s, v1.4s                       #! PC = 0x555556563c *)
mov [t0, _, t2, _] %v0; mov [t1, _, t3, _] %v1; mov %v12 [t0, t1, t2, t3];
(* trn2	v13.4s, v0.4s, v1.4s                       #! PC = 0x5555565640 *)
mov [_, t0, _, t2] %v0; mov [_, t1, _, t3] %v1; mov %v13 [t0, t1, t2, t3];
(* trn1	v14.4s, v2.4s, v3.4s                       #! PC = 0x5555565644 *)
mov [t0, _, t2, _] %v2; mov [t1, _, t3, _] %v3; mov %v14 [t0, t1, t2, t3];
(* trn2	v15.4s, v2.4s, v3.4s                       #! PC = 0x5555565648 *)
mov [_, t0, _, t2] %v2; mov [_, t1, _, t3] %v3; mov %v15 [t0, t1, t2, t3];
(* trn1	v0.2d, v12.2d, v14.2d                      #! PC = 0x555556564c *)
mov [t0, t1, _, _] %v12; mov [t2, t3, _, _] %v14; mov %v0 [t0, t1, t2, t3];
(* trn2	v2.2d, v12.2d, v14.2d                      #! PC = 0x5555565650 *)
mov [_, _, t0, t1] %v12; mov [_, _, t2, t3] %v14; mov %v2 [t0, t1, t2, t3];
(* trn1	v1.2d, v13.2d, v15.2d                      #! PC = 0x5555565654 *)
mov [t0, t1, _, _] %v13; mov [t2, t3, _, _] %v15; mov %v1 [t0, t1, t2, t3];
(* trn2	v3.2d, v13.2d, v15.2d                      #! PC = 0x5555565658 *)
mov [_, _, t0, t1] %v13; mov [_, _, t2, t3] %v15; mov %v3 [t0, t1, t2, t3];
(* trn1	v28.4s, v16.4s, v17.4s                     #! PC = 0x555556565c *)
mov [t0, _, t2, _] %v16; mov [t1, _, t3, _] %v17; mov %v28 [t0, t1, t2, t3];
(* trn2	v29.4s, v16.4s, v17.4s                     #! PC = 0x5555565660 *)
mov [_, t0, _, t2] %v16; mov [_, t1, _, t3] %v17; mov %v29 [t0, t1, t2, t3];
(* trn1	v30.4s, v18.4s, v19.4s                     #! PC = 0x5555565664 *)
mov [t0, _, t2, _] %v18; mov [t1, _, t3, _] %v19; mov %v30 [t0, t1, t2, t3];
(* trn2	v31.4s, v18.4s, v19.4s                     #! PC = 0x5555565668 *)
mov [_, t0, _, t2] %v18; mov [_, t1, _, t3] %v19; mov %v31 [t0, t1, t2, t3];
(* trn1	v16.2d, v28.2d, v30.2d                     #! PC = 0x555556566c *)
mov [t0, t1, _, _] %v28; mov [t2, t3, _, _] %v30; mov %v16 [t0, t1, t2, t3];
(* trn2	v18.2d, v28.2d, v30.2d                     #! PC = 0x5555565670 *)
mov [_, _, t0, t1] %v28; mov [_, _, t2, t3] %v30; mov %v18 [t0, t1, t2, t3];
(* trn1	v17.2d, v29.2d, v31.2d                     #! PC = 0x5555565674 *)
mov [t0, t1, _, _] %v29; mov [t2, t3, _, _] %v31; mov %v17 [t0, t1, t2, t3];
(* trn2	v19.2d, v29.2d, v31.2d                     #! PC = 0x5555565678 *)
mov [_, _, t0, t1] %v29; mov [_, _, t2, t3] %v31; mov %v19 [t0, t1, t2, t3];

ghost  %v2o50@int32[4], %v3o50@int32[4]:
       %v2o50 =  %v2 /\  %v3o50 =  %v3
   &&  %v2o50 =  %v2 /\  %v3o50 =  %v3;

(* mul	v12.4s, v2.4s, v7.4s                        #! PC = 0x555556567c *)
mull %dc %v12 %v2 %v7; cast [] %v12@int32[4] %v12;
(* mul	v13.4s, v3.4s, v7.4s                        #! PC = 0x5555565680 *)
mull %dc %v13 %v3 %v7; cast [] %v13@int32[4] %v13;
(* sqrdmulh	v2.4s, v2.4s, v6.4s                    #! PC = 0x5555565684 *)
mulj %mm %v2 %v6; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v2 %dc %mm 1;
(* sqrdmulh	v3.4s, v3.4s, v6.4s                    #! PC = 0x5555565688 *)
mulj %mm %v3 %v6; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v2.4s, v4.s[0]                      #! PC = 0x555556568c *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v2 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x5555565690 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v2o50*[-4166425,-3488383,1987814,-3197248])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o50*[-4166425,-3488383,1987814,-3197248])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v2o50*[-4166425,-3488383,1987814,-3197248])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o50*[-4166425,-3488383,1987814,-3197248])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
       prove with [algebra solver isl] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q];

(**************** CUT 102, 102 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod %v12 ( %v2o50*[-4166425,-3488383,1987814,-3197248])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o50*[-4166425,-3488383,1987814,-3197248])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    true ;

ghost  %v0o51@int32[4], %v1o51@int32[4],%v18o51@int32[4],%v19o51@int32[4]:
       %v0o51 =  %v0 /\  %v1o51 =  %v1 /\ %v18o51 = %v18 /\ %v19o51 = %v19
   &&  %v0o51 =  %v0 /\  %v1o51 =  %v1 /\ %v18o51 = %v18 /\ %v19o51 = %v19;

(* sub	v2.4s, v0.4s, v12.4s                        #! PC = 0x5555565694 *)
sub %v2 %v0 %v12;
(* mul	v28.4s, v18.4s, v23.4s                      #! PC = 0x5555565698 *)
mull %dc %v28 %v18 %v23; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v1.4s, v13.4s                        #! PC = 0x555556569c *)
sub %v3 %v1 %v13;
(* mul	v29.4s, v19.4s, v23.4s                      #! PC = 0x55555656a0 *)
mull %dc %v29 %v19 %v23; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555656a4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v18.4s, v18.4s, v22.4s                 #! PC = 0x55555656a8 *)
mulj %mm %v18 %v22; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v18 %dc %mm 1;
(* add	v1.4s, v1.4s, v13.4s                        #! PC = 0x55555656ac *)
add %v1 %v1 %v13;
(* sqrdmulh	v19.4s, v19.4s, v22.4s                 #! PC = 0x55555656b0 *)
mulj %mm %v19 %v22; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v18.4s, v4.s[0]                     #! PC = 0x55555656b4 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v18 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x55555656b8 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 (%v18o51*[348812,-327848,1011223,-2354215])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o51*[348812,-327848,1011223,-2354215])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v18o51*[348812,-327848,1011223,-2354215])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o51*[348812,-327848,1011223,-2354215])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
       prove with [algebra solver isl, cuts [100]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2];

(**************** CUT 103, 103 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o51 + %v12 /\  %v2 =  %v0o51 - %v12 /\
     %v1 =  %v1o51 + %v13 /\  %v3 =  %v1o51 - %v13 /\
    eqmod %v28 (%v18o51*[348812,-327848,1011223,-2354215])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o51*[348812,-327848,1011223,-2354215])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2]
    prove with [cuts [100]];

ghost %v16o52@int32[4],%v17o52@int32[4], %v1o52@int32[4], %v3o52@int32[4]:
      %v16o52 = %v16 /\ %v17o52 = %v17 /\  %v1o52 =  %v1 /\  %v3o52 = %v3
   && %v16o52 = %v16 /\ %v17o52 = %v17 /\  %v1o52 =  %v1 /\  %v3o52 = %v3;

(* sub	v18.4s, v16.4s, v28.4s                      #! PC = 0x55555656bc *)
sub %v18 %v16 %v28;
(* mul	v12.4s, v1.4s, v9.4s                        #! PC = 0x55555656c0 *)
mull %dc %v12 %v1 %v9; cast [] %v12@int32[4] %v12;
(* sub	v19.4s, v17.4s, v29.4s                      #! PC = 0x55555656c4 *)
sub %v19 %v17 %v29;
(* mul	v13.4s, v3.4s, v11.4s                       #! PC = 0x55555656c8 *)
mull %dc %v13 %v3 %v11; cast [] %v13@int32[4] %v13;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x55555656cc *)
add %v16 %v16 %v28;
(* sqrdmulh	v1.4s, v1.4s, v8.4s                    #! PC = 0x55555656d0 *)
mulj %mm %v1 %v8; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v1 %dc %mm 1;
(* add	v17.4s, v17.4s, v29.4s                      #! PC = 0x55555656d4 *)
add %v17 %v17 %v29;
(* sqrdmulh	v3.4s, v3.4s, v10.4s                   #! PC = 0x55555656d8 *)
mulj %mm %v3 %v10; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v1.4s, v4.s[0]                      #! PC = 0x55555656dc *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v1 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x55555656e0 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v1o52*[2998219,-89301,-1354892,-1310261])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o52*[141835,2513018,613238,-2218467])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v1o52*[2998219,-89301,-1354892,-1310261])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o52*[141835,2513018,613238,-2218467])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
       prove with [algebra solver isl, cuts [101]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2];

(**************** CUT 104, 104 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o52 + %v28 /\ %v18 = %v16o52 - %v28 /\
    %v17 = %v17o52 + %v29 /\ %v19 = %v17o52 - %v29 /\
    eqmod %v12 ( %v1o52*[2998219,-89301,-1354892,-1310261])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o52*[141835,2513018,613238,-2218467])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v16 /\
       %v16 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v17 /\
       %v17 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v18 /\
       %v18 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v19 /\
       %v19 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2]
    prove with [cuts [101]];

ghost  %v0o53@int32[4], %v2o53@int32[4],%v17o53@int32[4],%v19o53@int32[4]:
       %v0o53 =  %v0 /\  %v2o53 =  %v2 /\ %v17o53 = %v17 /\ %v19o53 = %v19
   &&  %v0o53 =  %v0 /\  %v2o53 =  %v2 /\ %v17o53 = %v17 /\ %v19o53 = %v19;

(* sub	v1.4s, v0.4s, v12.4s                        #! PC = 0x55555656e4 *)
sub %v1 %v0 %v12;
(* mul	v28.4s, v17.4s, v25.4s                      #! PC = 0x55555656e8 *)
mull %dc %v28 %v17 %v25; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v2.4s, v13.4s                        #! PC = 0x55555656ec *)
sub %v3 %v2 %v13;
(* mul	v29.4s, v19.4s, v27.4s                      #! PC = 0x55555656f0 *)
mull %dc %v29 %v19 %v27; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555656f4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v17.4s, v17.4s, v24.4s                 #! PC = 0x55555656f8 *)
mulj %mm %v17 %v24; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v17 %dc %mm 1;
(* add	v2.4s, v2.4s, v13.4s                        #! PC = 0x55555656fc *)
add %v2 %v2 %v13;
(* sqrdmulh	v19.4s, v19.4s, v26.4s                 #! PC = 0x5555565700 *)
mulj %mm %v19 %v26; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v17.4s, v4.s[0]                     #! PC = 0x5555565704 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v17 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x5555565708 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 (%v17o53*[-2185084,2358373,-3014420,2926054])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o53*[3123762,-2193087,-1716814,-392707])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v17o53*[-2185084,2358373,-3014420,2926054])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o53*[3123762,-2193087,-1716814,-392707])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
       prove with [algebra solver isl, cuts [102, 103]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2];

(**************** CUT 105, 105 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o53 + %v12 /\  %v1 =  %v0o53 - %v12 /\
     %v2 =  %v2o53 + %v13 /\  %v3 =  %v2o53 - %v13 /\
    eqmod %v28 (%v17o53*[-2185084,2358373,-3014420,2926054])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o53*[3123762,-2193087,-1716814,-392707])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2]
    prove with [cuts [102, 103]];



(* sub	v17.4s, v16.4s, v28.4s                      #! PC = 0x555556570c *)
sub %v17 %v16 %v28;
(* sub	v19.4s, v18.4s, v29.4s                      #! PC = 0x5555565710 *)
sub %v19 %v18 %v29;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x5555565714 *)
add %v16 %v16 %v28;
(* add	v18.4s, v18.4s, v29.4s                      #! PC = 0x5555565718 *)
add %v18 %v18 %v29;



(**************** CUT 106, 106 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod (F**2) (%v0[0]) [Q,X-2998219] /\ eqmod (F**2) (%v1[0]) [Q,X-5382198] /\
    eqmod (F**2) (%v2[0]) [Q,X-141835] /\ eqmod (F**2) (%v3[0]) [Q,X-8238582] /\
    eqmod (F**2) (%v16[0]) [Q,X-6195333] /\ eqmod (F**2) (%v17[0]) [Q,X-2185084] /\
    eqmod (F**2) (%v18[0]) [Q,X-3123762] /\ eqmod (F**2) (%v19[0]) [Q,X-5256655] /\
    eqmod (F**2) (%v0[1]) [Q,X-8291116] /\ eqmod (F**2) (%v1[1]) [Q,X-89301] /\
    eqmod (F**2) (%v2[1]) [Q,X-2513018] /\ eqmod (F**2) (%v3[1]) [Q,X-5867399] /\
    eqmod (F**2) (%v16[1]) [Q,X-2358373] /\ eqmod (F**2) (%v17[1]) [Q,X-6022044] /\
    eqmod (F**2) (%v18[1]) [Q,X-6187330] /\ eqmod (F**2) (%v19[1]) [Q,X-2193087] /\
    eqmod (F**2) (%v0[2]) [Q,X-7025525] /\ eqmod (F**2) (%v1[2]) [Q,X-1354892] /\
    eqmod (F**2) (%v2[2]) [Q,X-613238] /\ eqmod (F**2) (%v3[2]) [Q,X-7767179] /\
    eqmod (F**2) (%v16[2]) [Q,X-5365997] /\ eqmod (F**2) (%v17[2]) [Q,X-3014420] /\
    eqmod (F**2) (%v18[2]) [Q,X-6663603] /\ eqmod (F**2) (%v19[2]) [Q,X-1716814] /\
    eqmod (F**2) (%v0[3]) [Q,X-7070156] /\ eqmod (F**2) (%v1[3]) [Q,X-1310261] /\
    eqmod (F**2) (%v2[3]) [Q,X-6161950] /\ eqmod (F**2) (%v3[3]) [Q,X-2218467] /\
    eqmod (F**2) (%v16[3]) [Q,X-2926054] /\ eqmod (F**2) (%v17[3]) [Q,X-5454363] /\
    eqmod (F**2) (%v18[3]) [Q,X-7987710] /\ eqmod (F**2) (%v19[3]) [Q,X-392707]
    prove with [all ghosts,cuts [36,97,98,99,100,101,102,103,104]],
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v16 /\
       %v16 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v17 /\
       %v17 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v18 /\
       %v18 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v19 /\
       %v19 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
    prove with [algebra solver isl, cuts [104]]
 && [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v16 /\
       %v16 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v17 /\
       %v17 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v18 /\
       %v18 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v19 /\
       %v19 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2]
prove with [cuts [104]];



(* st4	{v0.4s-v3.4s}, [x1], #64                    #! EA = L0x7ffffeda50; PC = 0x555556571c *)
mov [t00, t10, t20, t30] %v0; mov [t01, t11, t21, t31] %v1;
mov [t02, t12, t22, t32] %v2; mov [t03, t13, t23, t33] %v3;
mov L0x7ffffeda50 t00; mov L0x7ffffeda54 t01; mov L0x7ffffeda58 t02; mov L0x7ffffeda5c t03;
mov L0x7ffffeda60 t10; mov L0x7ffffeda64 t11; mov L0x7ffffeda68 t12; mov L0x7ffffeda6c t13;
mov L0x7ffffeda70 t20; mov L0x7ffffeda74 t21; mov L0x7ffffeda78 t22; mov L0x7ffffeda7c t23;
mov L0x7ffffeda80 t30; mov L0x7ffffeda84 t31; mov L0x7ffffeda88 t32; mov L0x7ffffeda8c t33;
(* st4	{v16.4s-v19.4s}, [x3], #64                  #! EA = L0x7ffffedc50; PC = 0x5555565720 *)
mov [t00, t10, t20, t30] %v16; mov [t01, t11, t21, t31] %v17;
mov [t02, t12, t22, t32] %v18; mov [t03, t13, t23, t33] %v19;
mov L0x7ffffedc50 t00; mov L0x7ffffedc54 t01; mov L0x7ffffedc58 t02; mov L0x7ffffedc5c t03;
mov L0x7ffffedc60 t10; mov L0x7ffffedc64 t11; mov L0x7ffffedc68 t12; mov L0x7ffffedc6c t13;
mov L0x7ffffedc70 t20; mov L0x7ffffedc74 t21; mov L0x7ffffedc78 t22; mov L0x7ffffedc7c t23;
mov L0x7ffffedc80 t30; mov L0x7ffffedc84 t31; mov L0x7ffffedc88 t32; mov L0x7ffffedc8c t33;
(* sub	x19, x19, #0x1                              #! PC = 0x5555565724 *)
subs dc x19 x19 (0x1)@uint64;
(* #cbnz	x19, 0x5555565578 <_ntt_bot_loop>         #! PC = 0x5555565728 *)
#cbnz	x19, 0x5555565578 <_ntt_bot_loop>         #! 0x5555565728 = 0x5555565728;
(* ld1	{v0.4s-v3.4s}, [x0], #64                    #! EA = L0x7ffffeda90; Value = 0x005186680013eef5; PC = 0x5555565578 *)
mov %v0 [L0x7ffffeda90, L0x7ffffeda94, L0x7ffffeda98, L0x7ffffeda9c];
mov %v1 [L0x7ffffedaa0, L0x7ffffedaa4, L0x7ffffedaa8, L0x7ffffedaac];
mov %v2 [L0x7ffffedab0, L0x7ffffedab4, L0x7ffffedab8, L0x7ffffedabc];
mov %v3 [L0x7ffffedac0, L0x7ffffedac4, L0x7ffffedac8, L0x7ffffedacc];
(* ld1	{v16.4s-v19.4s}, [x2], #64                  #! EA = L0x7ffffedc90; Value = 0x0019b8d10059da80; PC = 0x555556557c *)
mov %v16 [L0x7ffffedc90, L0x7ffffedc94, L0x7ffffedc98, L0x7ffffedc9c];
mov %v17 [L0x7ffffedca0, L0x7ffffedca4, L0x7ffffedca8, L0x7ffffedcac];
mov %v18 [L0x7ffffedcb0, L0x7ffffedcb4, L0x7ffffedcb8, L0x7ffffedcbc];
mov %v19 [L0x7ffffedcc0, L0x7ffffedcc4, L0x7ffffedcc8, L0x7ffffedccc];
(* ld1	{v4.4s, v5.4s}, [x28], #32                  #! EA = L0x5555565f60; Value = 0x0000000000000000; PC = 0x5555565580 *)
mov %v4 [L0x5555565f60, L0x5555565f64, L0x5555565f68, L0x5555565f6c];
mov %v5 [L0x5555565f70, L0x5555565f74, L0x5555565f78, L0x5555565f7c];
(* ld2	{v6.4s, v7.4s}, [x28], #32                  #! EA = L0x5555565f80; Value = 0x001a7e791a851a11; PC = 0x5555565584 *)
mov %v6 [L0x5555565f80, L0x5555565f88, L0x5555565f90, L0x5555565f98];
mov %v7 [L0x5555565f84, L0x5555565f8c, L0x5555565f94, L0x5555565f9c];
(* ld4	{v8.4s-v11.4s}, [x28], #64                  #! EA = L0x5555565fa0; Value = 0xfff9000cf8fe4ba1; PC = 0x5555565588 *)
mov %v8 [L0x5555565fa0, L0x5555565fb0, L0x5555565fc0, L0x5555565fd0];
mov %v9 [L0x5555565fa4, L0x5555565fb4, L0x5555565fc4, L0x5555565fd4];
mov %v10 [L0x5555565fa8, L0x5555565fb8, L0x5555565fc8, L0x5555565fd8];
mov %v11 [L0x5555565fac, L0x5555565fbc, L0x5555565fcc, L0x5555565fdc];
(* ld1	{v20.4s, v21.4s}, [x27], #32                #! EA = L0x5555566360; Value = 0x0000000000000000; PC = 0x555556558c *)
mov %v20 [L0x5555566360, L0x5555566364, L0x5555566368, L0x555556636c];
mov %v21 [L0x5555566370, L0x5555566374, L0x5555566378, L0x555556637c];
(* ld2	{v22.4s, v23.4s}, [x27], #32                #! EA = L0x5555566380; Value = 0xffc5bb7dc5ace8af; PC = 0x5555565590 *)
mov %v22 [L0x5555566380, L0x5555566388, L0x5555566390, L0x5555566398];
mov %v23 [L0x5555566384, L0x555556638c, L0x5555566394, L0x555556639c];
(* ld4	{v24.4s-v27.4s}, [x27], #64                 #! EA = L0x55555663a0; Value = 0xfffb6063fb5f3ad8; PC = 0x5555565594 *)
mov %v24 [L0x55555663a0, L0x55555663b0, L0x55555663c0, L0x55555663d0];
mov %v25 [L0x55555663a4, L0x55555663b4, L0x55555663c4, L0x55555663d4];
mov %v26 [L0x55555663a8, L0x55555663b8, L0x55555663c8, L0x55555663d8];
mov %v27 [L0x55555663ac, L0x55555663bc, L0x55555663cc, L0x55555663dc];
(* mov	v4.s[0], w20                                #! PC = 0x5555565598 *)
mov [_, m1, m2, m3] %v4; mov %v4 [w20, m1, m2, m3];
(* mul	v12.4s, v2.4s, v4.s[3]                      #! PC = 0x555556559c *)
mov [_, _, _, m] %v4; mov %mm [m, m, m, m];
mull %dc %v12 %v2 %mm; cast [] %v12@int32[4] %v12;
(* mul	v13.4s, v3.4s, v4.s[3]                      #! PC = 0x55555655a0 *)
mov [_, _, _, m] %v4; mov %mm [m, m, m, m];
mull %dc %v13 %v3 %mm; cast [] %v13@int32[4] %v13;
(* sqrdmulh	v2.4s, v2.4s, v4.s[2]                  #! PC = 0x55555655a4 *)
mov [_, _, m, _] %v4; mov %mm [m, m, m, m];
mulj %mm %v2 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v2 %dc %mm 1;
(* sqrdmulh	v3.4s, v3.4s, v4.s[2]                  #! PC = 0x55555655a8 *)
mov [_, _, m, _] %v4; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v2.4s, v4.s[0]                      #! PC = 0x55555655ac *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v2 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x55555655b0 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ([L0x7ffffedab0,L0x7ffffedab4,L0x7ffffedab8,L0x7ffffedabc]*
                   [-1335936,-1335936,-1335936,-1335936]) [Q, Q, Q, Q] /\
       eqmod %v13 ([L0x7ffffedac0,L0x7ffffedac4,L0x7ffffedac8,L0x7ffffedacc]*
                   [-1335936,-1335936,-1335936,-1335936]) [Q, Q, Q, Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume eqmod %v12 ([L0x7ffffedab0,L0x7ffffedab4,L0x7ffffedab8,L0x7ffffedabc]*
                   [-1335936,-1335936,-1335936,-1335936]) [Q, Q, Q, Q] /\
       eqmod %v13 ([L0x7ffffedac0,L0x7ffffedac4,L0x7ffffedac8,L0x7ffffedacc]*
                   [-1335936,-1335936,-1335936,-1335936]) [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
  && [NQ,NQ,NQ,NQ] <s %v12 /\ %v12 <s [Q,Q,Q,Q] /\
     [NQ,NQ,NQ,NQ] <s %v13 /\ %v13 <s [Q,Q,Q,Q];

(**************** CUT 107, 107 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod %v12 ([L0x7ffffedab0,L0x7ffffedab4,L0x7ffffedab8,L0x7ffffedabc]*
                [-1335936,-1335936,-1335936,-1335936]) [Q, Q, Q, Q] /\
    eqmod %v13 ([L0x7ffffedac0,L0x7ffffedac4,L0x7ffffedac8,L0x7ffffedacc]*
                [-1335936,-1335936,-1335936,-1335936]) [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    true prove with [cuts [36]];

ghost  %v0o54@int32[4], %v1o54@int32[4]:
       %v0o54 =  %v0 /\  %v1o54 =  %v1
   &&  %v0o54 =  %v0 /\  %v1o54 =  %v1;

(* sub	v2.4s, v0.4s, v12.4s                        #! PC = 0x55555655b4 *)
sub %v2 %v0 %v12;
(* mul	v28.4s, v18.4s, v20.s[3]                    #! PC = 0x55555655b8 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v28 %v18 %mm; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v1.4s, v13.4s                        #! PC = 0x55555655bc *)
sub %v3 %v1 %v13;
(* mul	v29.4s, v19.4s, v20.s[3]                    #! PC = 0x55555655c0 *)
mov [_, _, _, m] %v20; mov %mm [m, m, m, m];
mull %dc %v29 %v19 %mm; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555655c4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v18.4s, v18.4s, v20.s[2]               #! PC = 0x55555655c8 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v18 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v18 %dc %mm 1;
(* add	v1.4s, v1.4s, v13.4s                        #! PC = 0x55555655cc *)
add %v1 %v1 %v13;
(* sqrdmulh	v19.4s, v19.4s, v20.s[2]               #! PC = 0x55555655d0 *)
mov [_, _, m, _] %v20; mov %mm [m, m, m, m];
mulj %mm %v19 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v18.4s, v4.s[0]                     #! PC = 0x55555655d4 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v18 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x55555655d8 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 ([L0x7ffffedcb0,L0x7ffffedcb4,L0x7ffffedcb8,L0x7ffffedcbc]*
                   [2283733,2283733,2283733,2283733]) [Q, Q, Q, Q] /\
       eqmod %v29 ([L0x7ffffedcc0,L0x7ffffedcc4,L0x7ffffedcc8,L0x7ffffedccc]*
                   [2283733,2283733,2283733,2283733]) [Q, Q, Q, Q]
       prove with [algebra solver isl, cuts [36]] && true;
assume eqmod %v28 ([L0x7ffffedcb0,L0x7ffffedcb4,L0x7ffffedcb8,L0x7ffffedcbc]*
                   [2283733,2283733,2283733,2283733]) [Q, Q, Q, Q] /\
       eqmod %v29 ([L0x7ffffedcc0,L0x7ffffedcc4,L0x7ffffedcc8,L0x7ffffedccc]*
                   [2283733,2283733,2283733,2283733]) [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2];

(**************** CUT 108, 108 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 = %v0o54 + %v12 /\  %v2 =  %v0o54 - %v12 /\
     %v1 = %v1o54 + %v13 /\  %v3 =  %v1o54 - %v13 /\
    eqmod %v28 ([L0x7ffffedcb0,L0x7ffffedcb4,L0x7ffffedcb8,L0x7ffffedcbc]*
                [2283733,2283733,2283733,2283733]) [Q, Q, Q, Q] /\
    eqmod %v29 ([L0x7ffffedcc0,L0x7ffffedcc4,L0x7ffffedcc8,L0x7ffffedccc]*
                [2283733,2283733,2283733,2283733]) [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v0 /\
       %v0 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v1 /\
       %v1 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v2 /\
       %v2 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v3 /\
       %v3 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2]
    prove with [cuts [36]];

ghost %v16o55@int32[4],%v17o55@int32[4], %v1o55@int32[4], %v3o55@int32[4]:
      %v16o55 = %v16 /\ %v17o55 = %v17 /\  %v1o55 =  %v1 /\  %v3o55 =  %v3
   && %v16o55 = %v16 /\ %v17o55 = %v17 /\  %v1o55 =  %v1 /\  %v3o55 =  %v3;

(* sub	v18.4s, v16.4s, v28.4s                      #! PC = 0x55555655dc *)
sub %v18 %v16 %v28;
(* mul	v12.4s, v1.4s, v5.s[1]                      #! PC = 0x55555655e0 *)
mov [_, m, _, _] %v5; mov %mm [m, m, m, m];
mull %dc %v12 %v1 %mm; cast [] %v12@int32[4] %v12;
(* sub	v19.4s, v17.4s, v29.4s                      #! PC = 0x55555655e4 *)
sub %v19 %v17 %v29;
(* mul	v13.4s, v3.4s, v5.s[3]                      #! PC = 0x55555655e8 *)
mov [_, _, _, m] %v5; mov %mm [m, m, m, m];
mull %dc %v13 %v3 %mm; cast [] %v13@int32[4] %v13;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x55555655ec *)
add %v16 %v16 %v28;
(* sqrdmulh	v1.4s, v1.4s, v5.s[0]                  #! PC = 0x55555655f0 *)
mov [m, _, _, _] %v5; mov %mm [m, m, m, m];
mulj %mm %v1 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v1 %dc %mm 1;
(* add	v17.4s, v17.4s, v29.4s                      #! PC = 0x55555655f4 *)
add %v17 %v17 %v29;
(* sqrdmulh	v3.4s, v3.4s, v5.s[2]                  #! PC = 0x55555655f8 *)
mov [_, _, m, _] %v5; mov %mm [m, m, m, m];
mulj %mm %v3 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v1.4s, v4.s[0]                      #! PC = 0x55555655fc *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v1 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x5555565600 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v1o55*[3241972,3241972,3241972,3241972])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o55*[2156050,2156050,2156050,2156050])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v1o55*[3241972,3241972,3241972,3241972])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o55*[2156050,2156050,2156050,2156050])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [36]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
       [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2];

(**************** CUT 109, 109 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o55 + %v28 /\ %v18 = %v16o55 - %v28 /\
    %v17 = %v17o55 + %v29 /\ %v19 = %v17o55 - %v29 /\
    eqmod %v12 ( %v1o55*[3241972,3241972,3241972,3241972])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o55*[2156050,2156050,2156050,2156050])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v16 /\
       %v16 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v17 /\
       %v17 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v18 /\
       %v18 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2] <  %v19 /\
       %v19 < [5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v16 /\
       %v16 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v17 /\
       %v17 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v18 /\
       %v18 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2] /\
    [5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2,5@32*NQ+NQ2] <s %v19 /\
       %v19 <s [5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2,5@32*Q+Q2]
    prove with [cuts [36]];

ghost  %v0o56@int32[4], %v2o56@int32[4],%v17o56@int32[4],%v19o56@int32[4]:
       %v0o56 =  %v0 /\  %v2o56 =  %v2 /\ %v17o56 = %v17 /\ %v19o56 = %v19
   &&  %v0o56 =  %v0 /\  %v2o56 =  %v2 /\ %v17o56 = %v17 /\ %v19o56 = %v19;

(* sub	v1.4s, v0.4s, v12.4s                        #! PC = 0x5555565604 *)
sub %v1 %v0 %v12;
(* mul	v28.4s, v17.4s, v21.s[1]                    #! PC = 0x5555565608 *)
mov [_, m, _, _] %v21; mov %mm [m, m, m, m];
mull %dc %v28 %v17 %mm; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v2.4s, v13.4s                        #! PC = 0x555556560c *)
sub %v3 %v2 %v13;
(* mul	v29.4s, v19.4s, v21.s[3]                    #! PC = 0x5555565610 *)
mov [_, _, _, m] %v21; mov %mm [m, m, m, m];
mull %dc %v29 %v19 %mm; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x5555565614 *)
add %v0 %v0 %v12;
(* sqrdmulh	v17.4s, v17.4s, v21.s[0]               #! PC = 0x5555565618 *)
mov [m, _, _, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v17 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v17 %dc %mm 1;
(* add	v2.4s, v2.4s, v13.4s                        #! PC = 0x555556561c *)
add %v2 %v2 %v13;
(* sqrdmulh	v19.4s, v19.4s, v21.s[2]               #! PC = 0x5555565620 *)
mov [_, _, m, _] %v21; mov %mm [m, m, m, m];
mulj %mm %v19 %mm; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v17.4s, v4.s[0]                     #! PC = 0x5555565624 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v17 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x5555565628 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 (%v17o56*[3345963,3345963,3345963,3345963])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o56*[1858416,1858416,1858416,1858416])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v17o56*[3345963,3345963,3345963,3345963])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o56*[1858416,1858416,1858416,1858416])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [108]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2];

(**************** CUT 110, 110 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o56 + %v12 /\  %v1 =  %v0o56 - %v12 /\
     %v2 =  %v2o56 + %v13 /\  %v3 =  %v2o56 - %v13 /\
    eqmod %v28 (%v17o56*[3345963,3345963,3345963,3345963])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o56*[1858416,1858416,1858416,1858416])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v0 /\
       %v0 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v1 /\
       %v1 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v2 /\
       %v2 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v3 /\
       %v3 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2]
    prove with [cuts [108]];

ghost %v16o57@int32[4], %v18o57@int32[4]:
      %v16o57 = %v16 /\ %v18o57 = %v18
   && %v16o57 = %v16 /\ %v18o57 = %v18;

(* sub	v17.4s, v16.4s, v28.4s                      #! PC = 0x555556562c *)
sub %v17 %v16 %v28;
(* sub	v19.4s, v18.4s, v29.4s                      #! PC = 0x5555565630 *)
sub %v19 %v18 %v29;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x5555565634 *)
add %v16 %v16 %v28;
(* add	v18.4s, v18.4s, v29.4s                      #! PC = 0x5555565638 *)
add %v18 %v18 %v29;

assert [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [109]] && true;
assume [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
       [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2];

(**************** CUT 111, 111 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o57 + %v28 /\ %v17 = %v16o57 - %v28 /\
    %v18 = %v18o57 + %v29 /\ %v19 = %v18o57 - %v29 /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v16 /\
       %v16 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v17 /\
       %v17 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v18 /\
       %v18 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2] <  %v19 /\
       %v19 < [6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v16 /\
       %v16 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v17 /\
       %v17 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v18 /\
       %v18 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2] /\
    [6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2,6@32*NQ+NQ2] <s %v19 /\
       %v19 <s [6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2,6@32*Q+Q2]
    prove with [cuts [109]];



(* trn1	v12.4s, v0.4s, v1.4s                       #! PC = 0x555556563c *)
mov [t0, _, t2, _] %v0; mov [t1, _, t3, _] %v1; mov %v12 [t0, t1, t2, t3];
(* trn2	v13.4s, v0.4s, v1.4s                       #! PC = 0x5555565640 *)
mov [_, t0, _, t2] %v0; mov [_, t1, _, t3] %v1; mov %v13 [t0, t1, t2, t3];
(* trn1	v14.4s, v2.4s, v3.4s                       #! PC = 0x5555565644 *)
mov [t0, _, t2, _] %v2; mov [t1, _, t3, _] %v3; mov %v14 [t0, t1, t2, t3];
(* trn2	v15.4s, v2.4s, v3.4s                       #! PC = 0x5555565648 *)
mov [_, t0, _, t2] %v2; mov [_, t1, _, t3] %v3; mov %v15 [t0, t1, t2, t3];
(* trn1	v0.2d, v12.2d, v14.2d                      #! PC = 0x555556564c *)
mov [t0, t1, _, _] %v12; mov [t2, t3, _, _] %v14; mov %v0 [t0, t1, t2, t3];
(* trn2	v2.2d, v12.2d, v14.2d                      #! PC = 0x5555565650 *)
mov [_, _, t0, t1] %v12; mov [_, _, t2, t3] %v14; mov %v2 [t0, t1, t2, t3];
(* trn1	v1.2d, v13.2d, v15.2d                      #! PC = 0x5555565654 *)
mov [t0, t1, _, _] %v13; mov [t2, t3, _, _] %v15; mov %v1 [t0, t1, t2, t3];
(* trn2	v3.2d, v13.2d, v15.2d                      #! PC = 0x5555565658 *)
mov [_, _, t0, t1] %v13; mov [_, _, t2, t3] %v15; mov %v3 [t0, t1, t2, t3];
(* trn1	v28.4s, v16.4s, v17.4s                     #! PC = 0x555556565c *)
mov [t0, _, t2, _] %v16; mov [t1, _, t3, _] %v17; mov %v28 [t0, t1, t2, t3];
(* trn2	v29.4s, v16.4s, v17.4s                     #! PC = 0x5555565660 *)
mov [_, t0, _, t2] %v16; mov [_, t1, _, t3] %v17; mov %v29 [t0, t1, t2, t3];
(* trn1	v30.4s, v18.4s, v19.4s                     #! PC = 0x5555565664 *)
mov [t0, _, t2, _] %v18; mov [t1, _, t3, _] %v19; mov %v30 [t0, t1, t2, t3];
(* trn2	v31.4s, v18.4s, v19.4s                     #! PC = 0x5555565668 *)
mov [_, t0, _, t2] %v18; mov [_, t1, _, t3] %v19; mov %v31 [t0, t1, t2, t3];
(* trn1	v16.2d, v28.2d, v30.2d                     #! PC = 0x555556566c *)
mov [t0, t1, _, _] %v28; mov [t2, t3, _, _] %v30; mov %v16 [t0, t1, t2, t3];
(* trn2	v18.2d, v28.2d, v30.2d                     #! PC = 0x5555565670 *)
mov [_, _, t0, t1] %v28; mov [_, _, t2, t3] %v30; mov %v18 [t0, t1, t2, t3];
(* trn1	v17.2d, v29.2d, v31.2d                     #! PC = 0x5555565674 *)
mov [t0, t1, _, _] %v29; mov [t2, t3, _, _] %v31; mov %v17 [t0, t1, t2, t3];
(* trn2	v19.2d, v29.2d, v31.2d                     #! PC = 0x5555565678 *)
mov [_, _, t0, t1] %v29; mov [_, _, t2, t3] %v31; mov %v19 [t0, t1, t2, t3];

ghost  %v2o58@int32[4], %v3o58@int32[4]:
       %v2o58 =  %v2 /\  %v3o58 =  %v3
   &&  %v2o58 =  %v2 /\  %v3o58 =  %v3;

(* mul	v12.4s, v2.4s, v7.4s                        #! PC = 0x555556567c *)
mull %dc %v12 %v2 %v7; cast [] %v12@int32[4] %v12;
(* mul	v13.4s, v3.4s, v7.4s                        #! PC = 0x5555565680 *)
mull %dc %v13 %v3 %v7; cast [] %v13@int32[4] %v13;
(* sqrdmulh	v2.4s, v2.4s, v6.4s                    #! PC = 0x5555565684 *)
mulj %mm %v2 %v6; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v2 %dc %mm 1;
(* sqrdmulh	v3.4s, v3.4s, v6.4s                    #! PC = 0x5555565688 *)
mulj %mm %v3 %v6; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v2.4s, v4.s[0]                      #! PC = 0x555556568c *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v2 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x5555565690 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** mls ****************)

assert eqmod %v12 ( %v2o58*[1736313,235407,-3250154,3258457])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o58*[1736313,235407,-3250154,3258457])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v2o58*[1736313,235407,-3250154,3258457])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o58*[1736313,235407,-3250154,3258457])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
       prove with [algebra solver isl] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q];

(**************** CUT 112, 112 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod %v12 ( %v2o58*[1736313,235407,-3250154,3258457])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o58*[1736313,235407,-3250154,3258457])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    true ;

ghost  %v0o59@int32[4], %v1o59@int32[4],%v18o59@int32[4],%v19o59@int32[4]:
       %v0o59 =  %v0 /\  %v1o59 =  %v1 /\ %v18o59 = %v18 /\ %v19o59 = %v19
   &&  %v0o59 =  %v0 /\  %v1o59 =  %v1 /\ %v18o59 = %v18 /\ %v19o59 = %v19;

(* sub	v2.4s, v0.4s, v12.4s                        #! PC = 0x5555565694 *)
sub %v2 %v0 %v12;
(* mul	v28.4s, v18.4s, v23.4s                      #! PC = 0x5555565698 *)
mull %dc %v28 %v18 %v23; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v1.4s, v13.4s                        #! PC = 0x555556569c *)
sub %v3 %v1 %v13;
(* mul	v29.4s, v19.4s, v23.4s                      #! PC = 0x55555656a0 *)
mull %dc %v29 %v19 %v23; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555656a4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v18.4s, v18.4s, v22.4s                 #! PC = 0x55555656a8 *)
mulj %mm %v18 %v22; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v18 %dc %mm 1;
(* add	v1.4s, v1.4s, v13.4s                        #! PC = 0x55555656ac *)
add %v1 %v1 %v13;
(* sqrdmulh	v19.4s, v19.4s, v22.4s                 #! PC = 0x55555656b0 *)
mulj %mm %v19 %v22; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v18.4s, v4.s[0]                     #! PC = 0x55555656b4 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v18 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x55555656b8 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 (%v18o59*[-3818627,-1922253,-2236726,1744507])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o59*[-3818627,-1922253,-2236726,1744507])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v18o59*[-3818627,-1922253,-2236726,1744507])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o59*[-3818627,-1922253,-2236726,1744507])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
       prove with [algebra solver isl, cuts [110]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2];

(**************** CUT 113, 113 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o59 + %v12 /\  %v2 =  %v0o59 - %v12 /\
     %v1 =  %v1o59 + %v13 /\  %v3 =  %v1o59 - %v13 /\
    eqmod %v28 (%v18o59*[-3818627,-1922253,-2236726,1744507])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o59*[-3818627,-1922253,-2236726,1744507])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v0 /\
       %v0 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v1 /\
       %v1 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v2 /\
       %v2 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v3 /\
       %v3 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2]
    prove with [cuts [110]];

ghost %v16o5a@int32[4],%v17o5a@int32[4], %v1o5a@int32[4], %v3o5a@int32[4]:
      %v16o5a = %v16 /\ %v17o5a = %v17 /\  %v1o5a =  %v1 /\  %v3o5a = %v3
   && %v16o5a = %v16 /\ %v17o5a = %v17 /\  %v1o5a =  %v1 /\  %v3o5a = %v3;

(* sub	v18.4s, v16.4s, v28.4s                      #! PC = 0x55555656bc *)
sub %v18 %v16 %v28;
(* mul	v12.4s, v1.4s, v9.4s                        #! PC = 0x55555656c0 *)
mull %dc %v12 %v1 %v9; cast [] %v12@int32[4] %v12;
(* sub	v19.4s, v17.4s, v29.4s                      #! PC = 0x55555656c4 *)
sub %v19 %v17 %v29;
(* mul	v13.4s, v3.4s, v11.4s                       #! PC = 0x55555656c8 *)
mull %dc %v13 %v3 %v11; cast [] %v13@int32[4] %v13;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x55555656cc *)
add %v16 %v16 %v28;
(* sqrdmulh	v1.4s, v1.4s, v8.4s                    #! PC = 0x55555656d0 *)
mulj %mm %v1 %v8; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v1 %dc %mm 1;
(* add	v17.4s, v17.4s, v29.4s                      #! PC = 0x55555656d4 *)
add %v17 %v17 %v29;
(* sqrdmulh	v3.4s, v3.4s, v10.4s                   #! PC = 0x55555656d8 *)
mulj %mm %v3 %v10; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v3 %dc %mm 1;
(* mls	v12.4s, v1.4s, v4.s[0]                      #! PC = 0x55555656dc *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v1 %mm; cast [] %mm@int32[4] %mm; subs %dc %v12 %v12 %mm;
(* mls	v13.4s, v3.4s, v4.s[0]                      #! PC = 0x55555656e0 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v3 %mm; cast [] %mm@int32[4] %mm; subs %dc %v13 %v13 %mm;



(**************** extract ****************)

mov [u100,u101,u102,u103] %v16; mov [u110,u111,u112,u113] %v17;
mov [u120,u121,u122,u123] %v18; mov [u130,u131,u132,u133] %v19;

(**************** mls ****************)

assert eqmod %v12 ( %v1o5a*[-458740,4040196,2039144,-818761])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o5a*[-1921994,-3472069,-1879878,-2178965])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v12 ( %v1o5a*[-458740,4040196,2039144,-818761])
             [Q, Q, Q, Q] /\
       eqmod %v13 ( %v3o5a*[-1921994,-3472069,-1879878,-2178965])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
       prove with [algebra solver isl, cuts [111]] && true;
assume [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
       [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v16 /\
       %v16 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v17 /\
       %v17 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v18 /\
       %v18 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
       [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s  %v19 /\
       %v19 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2];

(**************** CUT 114, 114 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    %v16 = %v16o5a + %v28 /\ %v18 = %v16o5a - %v28 /\
    %v17 = %v17o5a + %v29 /\ %v19 = %v17o5a - %v29 /\
    eqmod %v12 ( %v1o5a*[-458740,4040196,2039144,-818761])
          [Q, Q, Q, Q] /\
    eqmod %v13 ( %v3o5a*[-1921994,-3472069,-1879878,-2178965])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] <  %v12 /\ %v12 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <  %v13 /\ %v13 < [Q,Q,Q,Q] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v16 /\
       %v16 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v17 /\
       %v17 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v18 /\
       %v18 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2] /\
    [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2] <  %v19 /\
       %v19 < [7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s  %v12 /\ %v12 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s  %v13 /\ %v13 <s [Q,Q,Q,Q] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v16 /\
       %v16 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v17 /\
       %v17 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v18 /\
       %v18 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2] /\
    [7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2,7@32*NQ+NQ2] <s %v19 /\
       %v19 <s [7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2,7@32*Q+Q2]
    prove with [cuts [111]];

ghost  %v0o5b@int32[4], %v2o5b@int32[4],%v17o5b@int32[4],%v19o5b@int32[4]:
       %v0o5b =  %v0 /\  %v2o5b =  %v2 /\ %v17o5b = %v17 /\ %v19o5b = %v19
   &&  %v0o5b =  %v0 /\  %v2o5b =  %v2 /\ %v17o5b = %v17 /\ %v19o5b = %v19;

(* sub	v1.4s, v0.4s, v12.4s                        #! PC = 0x55555656e4 *)
sub %v1 %v0 %v12;
(* mul	v28.4s, v17.4s, v25.4s                      #! PC = 0x55555656e8 *)
mull %dc %v28 %v17 %v25; cast [] %v28@int32[4] %v28;
(* sub	v3.4s, v2.4s, v13.4s                        #! PC = 0x55555656ec *)
sub %v3 %v2 %v13;
(* mul	v29.4s, v19.4s, v27.4s                      #! PC = 0x55555656f0 *)
mull %dc %v29 %v19 %v27; cast [] %v29@int32[4] %v29;
(* add	v0.4s, v0.4s, v12.4s                        #! PC = 0x55555656f4 *)
add %v0 %v0 %v12;
(* sqrdmulh	v17.4s, v17.4s, v24.4s                 #! PC = 0x55555656f8 *)
mulj %mm %v17 %v24; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v17 %dc %mm 1;
(* add	v2.4s, v2.4s, v13.4s                        #! PC = 0x55555656fc *)
add %v2 %v2 %v13;
(* sqrdmulh	v19.4s, v19.4s, v26.4s                 #! PC = 0x5555565700 *)
mulj %mm %v19 %v26; shl %mm %mm [1@int64, 1@int64, 1@int64, 1@int64];
spl %mm %dc %mm 31; add %mm %mm [1@int33,1@int33,1@int33,1@int33];
spl %v19 %dc %mm 1;
(* mls	v28.4s, v17.4s, v4.s[0]                     #! PC = 0x5555565704 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v17 %mm; cast [] %mm@int32[4] %mm; subs %dc %v28 %v28 %mm;
(* mls	v29.4s, v19.4s, v4.s[0]                     #! PC = 0x5555565708 *)
mov [m, _, _, _] %v4; mov %mm [m, m, m, m];
mull %dc %mm %v19 %mm; cast [] %mm@int32[4] %mm; subs %dc %v29 %v29 %mm;



(**************** mls ****************)

assert eqmod %v28 (%v17o5b*[-303005,-3974485,1900052,1054478])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o5b*[3531229,-3773731,-781875,-731434])
             [Q, Q, Q, Q]
       prove with [algebra solver isl] && true;
assume eqmod %v28 (%v17o5b*[-303005,-3974485,1900052,1054478])
             [Q, Q, Q, Q] /\
       eqmod %v29 (%v19o5b*[3531229,-3773731,-781875,-731434])
             [Q, Q, Q, Q] && true;

assert [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
       prove with [algebra solver isl, cuts [112, 113]] && true;
assume [NQ,NQ,NQ,NQ] <  %v28 /\ %v28 < [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <  %v29 /\ %v29 < [Q,Q,Q,Q] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
       [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
    && [NQ,NQ,NQ,NQ] <s  %v28 /\ %v28 <s [Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ] <s  %v29 /\ %v29 <s [Q,Q,Q,Q] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
       [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2];

(**************** CUT 115, 115 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
     %v0 =  %v0o5b + %v12 /\  %v1 =  %v0o5b - %v12 /\
     %v2 =  %v2o5b + %v13 /\  %v3 =  %v2o5b - %v13 /\
    eqmod %v28 (%v17o5b*[-303005,-3974485,1900052,1054478])
          [Q, Q, Q, Q] /\
    eqmod %v29 (%v19o5b*[3531229,-3773731,-781875,-731434])
          [Q, Q, Q, Q] /\
    [NQ,NQ,NQ,NQ] < %v28 /\ %v28 < [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] < %v29 /\ %v29 < [Q,Q,Q,Q] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
&& Q = 8380417@32  /\ NQ = (-8380417)@32 /\
    Q2 = 4190209@32 /\ NQ2 = (-4190209)@32 /\
    [NQ,NQ,NQ,NQ] <s %v28 /\ %v28 <s [Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ] <s %v29 /\ %v29 <s [Q,Q,Q,Q] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2]
    prove with [cuts [112, 113]];



(* sub	v17.4s, v16.4s, v28.4s                      #! PC = 0x555556570c *)
sub %v17 %v16 %v28;
(* sub	v19.4s, v18.4s, v29.4s                      #! PC = 0x5555565710 *)
sub %v19 %v18 %v29;
(* add	v16.4s, v16.4s, v28.4s                      #! PC = 0x5555565714 *)
add %v16 %v16 %v28;
(* add	v18.4s, v18.4s, v29.4s                      #! PC = 0x5555565718 *)
add %v18 %v18 %v29;



(**************** CUT 116, 116 ****************)

cut Q = 8380417 /\ NQ = -8380417 /\ Q2 = 4190209 /\ NQ2 = -4190209 /\
    eqmod (F**2) (%v0[0]) [Q,X-7921677] /\ eqmod (F**2) (%v1[0]) [Q,X-458740] /\
    eqmod (F**2) (%v2[0]) [Q,X-6458423] /\ eqmod (F**2) (%v3[0]) [Q,X-1921994] /\
    eqmod (F**2) (%v16[0]) [Q,X-8077412] /\ eqmod (F**2) (%v17[0]) [Q,X-303005] /\
    eqmod (F**2) (%v18[0]) [Q,X-3531229] /\ eqmod (F**2) (%v19[0]) [Q,X-4849188] /\
    eqmod (F**2) (%v0[1]) [Q,X-4040196] /\ eqmod (F**2) (%v1[1]) [Q,X-4340221] /\
    eqmod (F**2) (%v2[1]) [Q,X-4908348] /\ eqmod (F**2) (%v3[1]) [Q,X-3472069] /\
    eqmod (F**2) (%v16[1]) [Q,X-4405932] /\ eqmod (F**2) (%v17[1]) [Q,X-3974485] /\
    eqmod (F**2) (%v18[1]) [Q,X-4606686] /\ eqmod (F**2) (%v19[1]) [Q,X-3773731] /\
    eqmod (F**2) (%v0[2]) [Q,X-2039144] /\ eqmod (F**2) (%v1[2]) [Q,X-6341273] /\
    eqmod (F**2) (%v2[2]) [Q,X-6500539] /\ eqmod (F**2) (%v3[2]) [Q,X-1879878] /\
    eqmod (F**2) (%v16[2]) [Q,X-1900052] /\ eqmod (F**2) (%v17[2]) [Q,X-6480365] /\
    eqmod (F**2) (%v18[2]) [Q,X-7598542] /\ eqmod (F**2) (%v19[2]) [Q,X-781875] /\
    eqmod (F**2) (%v0[3]) [Q,X-7561656] /\ eqmod (F**2) (%v1[3]) [Q,X-818761] /\
    eqmod (F**2) (%v2[3]) [Q,X-6201452] /\ eqmod (F**2) (%v3[3]) [Q,X-2178965] /\
    eqmod (F**2) (%v16[3]) [Q,X-1054478] /\ eqmod (F**2) (%v17[3]) [Q,X-7325939] /\
    eqmod (F**2) (%v18[3]) [Q,X-7648983] /\ eqmod (F**2) (%v19[3]) [Q,X-731434]
    prove with [all ghosts,cuts [36,107,108,109,110,111,112,113,114]],
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v0 /\
       %v0 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v1 /\
       %v1 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v2 /\
       %v2 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v3 /\
       %v3 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v16 /\
       %v16 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v17 /\
       %v17 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v18 /\
       %v18 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2] /\
    [8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2,8*NQ+NQ2] <  %v19 /\
       %v19 < [8*Q+Q2,8*Q+Q2,8*Q+Q2,8*Q+Q2]
    prove with [algebra solver isl, cuts [114]]
 && [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v0 /\
       %v0 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v1 /\
       %v1 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v2 /\
       %v2 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s  %v3 /\
       %v3 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v16 /\
       %v16 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v17 /\
       %v17 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v18 /\
       %v18 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
    [8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s %v19 /\
       %v19 <s [8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2]
prove with [cuts [114]];



(* st4	{v0.4s-v3.4s}, [x1], #64                    #! EA = L0x7ffffeda90; PC = 0x555556571c *)
mov [t00, t10, t20, t30] %v0; mov [t01, t11, t21, t31] %v1;
mov [t02, t12, t22, t32] %v2; mov [t03, t13, t23, t33] %v3;
mov L0x7ffffeda90 t00; mov L0x7ffffeda94 t01; mov L0x7ffffeda98 t02; mov L0x7ffffeda9c t03;
mov L0x7ffffedaa0 t10; mov L0x7ffffedaa4 t11; mov L0x7ffffedaa8 t12; mov L0x7ffffedaac t13;
mov L0x7ffffedab0 t20; mov L0x7ffffedab4 t21; mov L0x7ffffedab8 t22; mov L0x7ffffedabc t23;
mov L0x7ffffedac0 t30; mov L0x7ffffedac4 t31; mov L0x7ffffedac8 t32; mov L0x7ffffedacc t33;
(* st4	{v16.4s-v19.4s}, [x3], #64                  #! EA = L0x7ffffedc90; PC = 0x5555565720 *)
mov [t00, t10, t20, t30] %v16; mov [t01, t11, t21, t31] %v17;
mov [t02, t12, t22, t32] %v18; mov [t03, t13, t23, t33] %v19;
mov L0x7ffffedc90 t00; mov L0x7ffffedc94 t01; mov L0x7ffffedc98 t02; mov L0x7ffffedc9c t03;
mov L0x7ffffedca0 t10; mov L0x7ffffedca4 t11; mov L0x7ffffedca8 t12; mov L0x7ffffedcac t13;
mov L0x7ffffedcb0 t20; mov L0x7ffffedcb4 t21; mov L0x7ffffedcb8 t22; mov L0x7ffffedcbc t23;
mov L0x7ffffedcc0 t30; mov L0x7ffffedcc4 t31; mov L0x7ffffedcc8 t32; mov L0x7ffffedccc t33;
(* sub	x19, x19, #0x1                              #! PC = 0x5555565724 *)
subs dc x19 x19 (0x1)@uint64;
(* #cbnz	x19, 0x5555565578 <_ntt_bot_loop>         #! PC = 0x5555565728 *)
#cbnz	x19, 0x5555565578 <_ntt_bot_loop>         #! 0x5555565728 = 0x5555565728;
(* ldp	x19, x20, [sp]                              #! EA = L0x7ffffec330; Value = 0x0000007ffffedcd0; PC = 0x555556572c *)
mov x19 L0x7ffffec330; mov x20 L0x7ffffec338;
(* ldp	x21, x22, [sp, #16]                         #! EA = L0x7ffffec340; Value = 0x0000007ffffec4d0; PC = 0x5555565730 *)
mov x21 L0x7ffffec340; mov x22 L0x7ffffec348;
(* ldp	x23, x24, [sp, #32]                         #! EA = L0x7ffffec350; Value = 0x0000007ffffed8d0; PC = 0x5555565734 *)
mov x23 L0x7ffffec350; mov x24 L0x7ffffec358;
(* ldp	x25, x26, [sp, #48]                         #! EA = L0x7ffffec360; Value = 0x0000007fffffad70; PC = 0x5555565738 *)
mov x25 L0x7ffffec360; mov x26 L0x7ffffec368;
(* ldp	x27, x28, [sp, #64]                         #! EA = L0x7ffffec370; Value = 0x0000007fffffc9f0; PC = 0x555556573c *)
mov x27 L0x7ffffec370; mov x28 L0x7ffffec378;
(* ldp	d8, d9, [sp, #80]                           #! EA = L0x7ffffec380; Value = 0x0000000000000000; PC = 0x5555565740 *)
mov d8 L0x7ffffec380; mov d9 L0x7ffffec388;
(* ldp	d10, d11, [sp, #96]                         #! EA = L0x7ffffec390; Value = 0x0000000000000000; PC = 0x5555565744 *)
mov d10 L0x7ffffec390; mov d11 L0x7ffffec398;
(* ldp	d12, d13, [sp, #112]                        #! EA = L0x7ffffec3a0; Value = 0x0000000000000000; PC = 0x5555565748 *)
mov d12 L0x7ffffec3a0; mov d13 L0x7ffffec3a8;
(* ldp	d14, d15, [sp, #128]                        #! EA = L0x7ffffec3b0; Value = 0x0000000000000000; PC = 0x555556574c *)
mov d14 L0x7ffffec3b0; mov d15 L0x7ffffec3b8;
(* #br	x30                                         #! PC = 0x5555565754 *)
#br	x30                                         #! 0x5555565754 = 0x5555565754;

{
(**************** postcondition ****************)

eqmod (F**2) L0x7ffffed8d0 [Q, X - 1753**1] /\
eqmod (F**2) L0x7ffffed8d4 [Q, X - 1753**257] /\
eqmod (F**2) L0x7ffffed8d8 [Q, X - 1753**129] /\
eqmod (F**2) L0x7ffffed8dc [Q, X - 1753**385] /\
eqmod (F**2) L0x7ffffed8e0 [Q, X - 1753**65] /\
eqmod (F**2) L0x7ffffed8e4 [Q, X - 1753**321] /\
eqmod (F**2) L0x7ffffed8e8 [Q, X - 1753**193] /\
eqmod (F**2) L0x7ffffed8ec [Q, X - 1753**449] /\
eqmod (F**2) L0x7ffffed8f0 [Q, X - 1753**33] /\
eqmod (F**2) L0x7ffffed8f4 [Q, X - 1753**289] /\
eqmod (F**2) L0x7ffffed8f8 [Q, X - 1753**161] /\
eqmod (F**2) L0x7ffffed8fc [Q, X - 1753**417] /\
eqmod (F**2) L0x7ffffed900 [Q, X - 1753**97] /\
eqmod (F**2) L0x7ffffed904 [Q, X - 1753**353] /\
eqmod (F**2) L0x7ffffed908 [Q, X - 1753**225] /\
eqmod (F**2) L0x7ffffed90c [Q, X - 1753**481] /\
eqmod (F**2) L0x7ffffed910 [Q, X - 1753**17] /\
eqmod (F**2) L0x7ffffed914 [Q, X - 1753**273] /\
eqmod (F**2) L0x7ffffed918 [Q, X - 1753**145] /\
eqmod (F**2) L0x7ffffed91c [Q, X - 1753**401] /\
eqmod (F**2) L0x7ffffed920 [Q, X - 1753**81] /\
eqmod (F**2) L0x7ffffed924 [Q, X - 1753**337] /\
eqmod (F**2) L0x7ffffed928 [Q, X - 1753**209] /\
eqmod (F**2) L0x7ffffed92c [Q, X - 1753**465] /\
eqmod (F**2) L0x7ffffed930 [Q, X - 1753**49] /\
eqmod (F**2) L0x7ffffed934 [Q, X - 1753**305] /\
eqmod (F**2) L0x7ffffed938 [Q, X - 1753**177] /\
eqmod (F**2) L0x7ffffed93c [Q, X - 1753**433] /\
eqmod (F**2) L0x7ffffed940 [Q, X - 1753**113] /\
eqmod (F**2) L0x7ffffed944 [Q, X - 1753**369] /\
eqmod (F**2) L0x7ffffed948 [Q, X - 1753**241] /\
eqmod (F**2) L0x7ffffed94c [Q, X - 1753**497] /\
eqmod (F**2) L0x7ffffed950 [Q, X - 1753**9] /\
eqmod (F**2) L0x7ffffed954 [Q, X - 1753**265] /\
eqmod (F**2) L0x7ffffed958 [Q, X - 1753**137] /\
eqmod (F**2) L0x7ffffed95c [Q, X - 1753**393] /\
eqmod (F**2) L0x7ffffed960 [Q, X - 1753**73] /\
eqmod (F**2) L0x7ffffed964 [Q, X - 1753**329] /\
eqmod (F**2) L0x7ffffed968 [Q, X - 1753**201] /\
eqmod (F**2) L0x7ffffed96c [Q, X - 1753**457] /\
eqmod (F**2) L0x7ffffed970 [Q, X - 1753**41] /\
eqmod (F**2) L0x7ffffed974 [Q, X - 1753**297] /\
eqmod (F**2) L0x7ffffed978 [Q, X - 1753**169] /\
eqmod (F**2) L0x7ffffed97c [Q, X - 1753**425] /\
eqmod (F**2) L0x7ffffed980 [Q, X - 1753**105] /\
eqmod (F**2) L0x7ffffed984 [Q, X - 1753**361] /\
eqmod (F**2) L0x7ffffed988 [Q, X - 1753**233] /\
eqmod (F**2) L0x7ffffed98c [Q, X - 1753**489] /\
eqmod (F**2) L0x7ffffed990 [Q, X - 1753**25] /\
eqmod (F**2) L0x7ffffed994 [Q, X - 1753**281] /\
eqmod (F**2) L0x7ffffed998 [Q, X - 1753**153] /\
eqmod (F**2) L0x7ffffed99c [Q, X - 1753**409] /\
eqmod (F**2) L0x7ffffed9a0 [Q, X - 1753**89] /\
eqmod (F**2) L0x7ffffed9a4 [Q, X - 1753**345] /\
eqmod (F**2) L0x7ffffed9a8 [Q, X - 1753**217] /\
eqmod (F**2) L0x7ffffed9ac [Q, X - 1753**473] /\
eqmod (F**2) L0x7ffffed9b0 [Q, X - 1753**57] /\
eqmod (F**2) L0x7ffffed9b4 [Q, X - 1753**313] /\
eqmod (F**2) L0x7ffffed9b8 [Q, X - 1753**185] /\
eqmod (F**2) L0x7ffffed9bc [Q, X - 1753**441] /\
eqmod (F**2) L0x7ffffed9c0 [Q, X - 1753**121] /\
eqmod (F**2) L0x7ffffed9c4 [Q, X - 1753**377] /\
eqmod (F**2) L0x7ffffed9c8 [Q, X - 1753**249] /\
eqmod (F**2) L0x7ffffed9cc [Q, X - 1753**505] /\
eqmod (F**2) L0x7ffffed9d0 [Q, X - 1753**5] /\
eqmod (F**2) L0x7ffffed9d4 [Q, X - 1753**261] /\
eqmod (F**2) L0x7ffffed9d8 [Q, X - 1753**133] /\
eqmod (F**2) L0x7ffffed9dc [Q, X - 1753**389] /\
eqmod (F**2) L0x7ffffed9e0 [Q, X - 1753**69] /\
eqmod (F**2) L0x7ffffed9e4 [Q, X - 1753**325] /\
eqmod (F**2) L0x7ffffed9e8 [Q, X - 1753**197] /\
eqmod (F**2) L0x7ffffed9ec [Q, X - 1753**453] /\
eqmod (F**2) L0x7ffffed9f0 [Q, X - 1753**37] /\
eqmod (F**2) L0x7ffffed9f4 [Q, X - 1753**293] /\
eqmod (F**2) L0x7ffffed9f8 [Q, X - 1753**165] /\
eqmod (F**2) L0x7ffffed9fc [Q, X - 1753**421] /\
eqmod (F**2) L0x7ffffeda00 [Q, X - 1753**101] /\
eqmod (F**2) L0x7ffffeda04 [Q, X - 1753**357] /\
eqmod (F**2) L0x7ffffeda08 [Q, X - 1753**229] /\
eqmod (F**2) L0x7ffffeda0c [Q, X - 1753**485] /\
eqmod (F**2) L0x7ffffeda10 [Q, X - 1753**21] /\
eqmod (F**2) L0x7ffffeda14 [Q, X - 1753**277] /\
eqmod (F**2) L0x7ffffeda18 [Q, X - 1753**149] /\
eqmod (F**2) L0x7ffffeda1c [Q, X - 1753**405] /\
eqmod (F**2) L0x7ffffeda20 [Q, X - 1753**85] /\
eqmod (F**2) L0x7ffffeda24 [Q, X - 1753**341] /\
eqmod (F**2) L0x7ffffeda28 [Q, X - 1753**213] /\
eqmod (F**2) L0x7ffffeda2c [Q, X - 1753**469] /\
eqmod (F**2) L0x7ffffeda30 [Q, X - 1753**53] /\
eqmod (F**2) L0x7ffffeda34 [Q, X - 1753**309] /\
eqmod (F**2) L0x7ffffeda38 [Q, X - 1753**181] /\
eqmod (F**2) L0x7ffffeda3c [Q, X - 1753**437] /\
eqmod (F**2) L0x7ffffeda40 [Q, X - 1753**117] /\
eqmod (F**2) L0x7ffffeda44 [Q, X - 1753**373] /\
eqmod (F**2) L0x7ffffeda48 [Q, X - 1753**245] /\
eqmod (F**2) L0x7ffffeda4c [Q, X - 1753**501] /\
eqmod (F**2) L0x7ffffeda50 [Q, X - 1753**13] /\
eqmod (F**2) L0x7ffffeda54 [Q, X - 1753**269] /\
eqmod (F**2) L0x7ffffeda58 [Q, X - 1753**141] /\
eqmod (F**2) L0x7ffffeda5c [Q, X - 1753**397] /\
eqmod (F**2) L0x7ffffeda60 [Q, X - 1753**77] /\
eqmod (F**2) L0x7ffffeda64 [Q, X - 1753**333] /\
eqmod (F**2) L0x7ffffeda68 [Q, X - 1753**205] /\
eqmod (F**2) L0x7ffffeda6c [Q, X - 1753**461] /\
eqmod (F**2) L0x7ffffeda70 [Q, X - 1753**45] /\
eqmod (F**2) L0x7ffffeda74 [Q, X - 1753**301] /\
eqmod (F**2) L0x7ffffeda78 [Q, X - 1753**173] /\
eqmod (F**2) L0x7ffffeda7c [Q, X - 1753**429] /\
eqmod (F**2) L0x7ffffeda80 [Q, X - 1753**109] /\
eqmod (F**2) L0x7ffffeda84 [Q, X - 1753**365] /\
eqmod (F**2) L0x7ffffeda88 [Q, X - 1753**237] /\
eqmod (F**2) L0x7ffffeda8c [Q, X - 1753**493] /\
eqmod (F**2) L0x7ffffeda90 [Q, X - 1753**29] /\
eqmod (F**2) L0x7ffffeda94 [Q, X - 1753**285] /\
eqmod (F**2) L0x7ffffeda98 [Q, X - 1753**157] /\
eqmod (F**2) L0x7ffffeda9c [Q, X - 1753**413] /\
eqmod (F**2) L0x7ffffedaa0 [Q, X - 1753**93] /\
eqmod (F**2) L0x7ffffedaa4 [Q, X - 1753**349] /\
eqmod (F**2) L0x7ffffedaa8 [Q, X - 1753**221] /\
eqmod (F**2) L0x7ffffedaac [Q, X - 1753**477] /\
eqmod (F**2) L0x7ffffedab0 [Q, X - 1753**61] /\
eqmod (F**2) L0x7ffffedab4 [Q, X - 1753**317] /\
eqmod (F**2) L0x7ffffedab8 [Q, X - 1753**189] /\
eqmod (F**2) L0x7ffffedabc [Q, X - 1753**445] /\
eqmod (F**2) L0x7ffffedac0 [Q, X - 1753**125] /\
eqmod (F**2) L0x7ffffedac4 [Q, X - 1753**381] /\
eqmod (F**2) L0x7ffffedac8 [Q, X - 1753**253] /\
eqmod (F**2) L0x7ffffedacc [Q, X - 1753**509] /\
eqmod (F**2) L0x7ffffedad0 [Q, X - 1753**3] /\
eqmod (F**2) L0x7ffffedad4 [Q, X - 1753**259] /\
eqmod (F**2) L0x7ffffedad8 [Q, X - 1753**131] /\
eqmod (F**2) L0x7ffffedadc [Q, X - 1753**387] /\
eqmod (F**2) L0x7ffffedae0 [Q, X - 1753**67] /\
eqmod (F**2) L0x7ffffedae4 [Q, X - 1753**323] /\
eqmod (F**2) L0x7ffffedae8 [Q, X - 1753**195] /\
eqmod (F**2) L0x7ffffedaec [Q, X - 1753**451] /\
eqmod (F**2) L0x7ffffedaf0 [Q, X - 1753**35] /\
eqmod (F**2) L0x7ffffedaf4 [Q, X - 1753**291] /\
eqmod (F**2) L0x7ffffedaf8 [Q, X - 1753**163] /\
eqmod (F**2) L0x7ffffedafc [Q, X - 1753**419] /\
eqmod (F**2) L0x7ffffedb00 [Q, X - 1753**99] /\
eqmod (F**2) L0x7ffffedb04 [Q, X - 1753**355] /\
eqmod (F**2) L0x7ffffedb08 [Q, X - 1753**227] /\
eqmod (F**2) L0x7ffffedb0c [Q, X - 1753**483] /\
eqmod (F**2) L0x7ffffedb10 [Q, X - 1753**19] /\
eqmod (F**2) L0x7ffffedb14 [Q, X - 1753**275] /\
eqmod (F**2) L0x7ffffedb18 [Q, X - 1753**147] /\
eqmod (F**2) L0x7ffffedb1c [Q, X - 1753**403] /\
eqmod (F**2) L0x7ffffedb20 [Q, X - 1753**83] /\
eqmod (F**2) L0x7ffffedb24 [Q, X - 1753**339] /\
eqmod (F**2) L0x7ffffedb28 [Q, X - 1753**211] /\
eqmod (F**2) L0x7ffffedb2c [Q, X - 1753**467] /\
eqmod (F**2) L0x7ffffedb30 [Q, X - 1753**51] /\
eqmod (F**2) L0x7ffffedb34 [Q, X - 1753**307] /\
eqmod (F**2) L0x7ffffedb38 [Q, X - 1753**179] /\
eqmod (F**2) L0x7ffffedb3c [Q, X - 1753**435] /\
eqmod (F**2) L0x7ffffedb40 [Q, X - 1753**115] /\
eqmod (F**2) L0x7ffffedb44 [Q, X - 1753**371] /\
eqmod (F**2) L0x7ffffedb48 [Q, X - 1753**243] /\
eqmod (F**2) L0x7ffffedb4c [Q, X - 1753**499] /\
eqmod (F**2) L0x7ffffedb50 [Q, X - 1753**11] /\
eqmod (F**2) L0x7ffffedb54 [Q, X - 1753**267] /\
eqmod (F**2) L0x7ffffedb58 [Q, X - 1753**139] /\
eqmod (F**2) L0x7ffffedb5c [Q, X - 1753**395] /\
eqmod (F**2) L0x7ffffedb60 [Q, X - 1753**75] /\
eqmod (F**2) L0x7ffffedb64 [Q, X - 1753**331] /\
eqmod (F**2) L0x7ffffedb68 [Q, X - 1753**203] /\
eqmod (F**2) L0x7ffffedb6c [Q, X - 1753**459] /\
eqmod (F**2) L0x7ffffedb70 [Q, X - 1753**43] /\
eqmod (F**2) L0x7ffffedb74 [Q, X - 1753**299] /\
eqmod (F**2) L0x7ffffedb78 [Q, X - 1753**171] /\
eqmod (F**2) L0x7ffffedb7c [Q, X - 1753**427] /\
eqmod (F**2) L0x7ffffedb80 [Q, X - 1753**107] /\
eqmod (F**2) L0x7ffffedb84 [Q, X - 1753**363] /\
eqmod (F**2) L0x7ffffedb88 [Q, X - 1753**235] /\
eqmod (F**2) L0x7ffffedb8c [Q, X - 1753**491] /\
eqmod (F**2) L0x7ffffedb90 [Q, X - 1753**27] /\
eqmod (F**2) L0x7ffffedb94 [Q, X - 1753**283] /\
eqmod (F**2) L0x7ffffedb98 [Q, X - 1753**155] /\
eqmod (F**2) L0x7ffffedb9c [Q, X - 1753**411] /\
eqmod (F**2) L0x7ffffedba0 [Q, X - 1753**91] /\
eqmod (F**2) L0x7ffffedba4 [Q, X - 1753**347] /\
eqmod (F**2) L0x7ffffedba8 [Q, X - 1753**219] /\
eqmod (F**2) L0x7ffffedbac [Q, X - 1753**475] /\
eqmod (F**2) L0x7ffffedbb0 [Q, X - 1753**59] /\
eqmod (F**2) L0x7ffffedbb4 [Q, X - 1753**315] /\
eqmod (F**2) L0x7ffffedbb8 [Q, X - 1753**187] /\
eqmod (F**2) L0x7ffffedbbc [Q, X - 1753**443] /\
eqmod (F**2) L0x7ffffedbc0 [Q, X - 1753**123] /\
eqmod (F**2) L0x7ffffedbc4 [Q, X - 1753**379] /\
eqmod (F**2) L0x7ffffedbc8 [Q, X - 1753**251] /\
eqmod (F**2) L0x7ffffedbcc [Q, X - 1753**507] /\
eqmod (F**2) L0x7ffffedbd0 [Q, X - 1753**7] /\
eqmod (F**2) L0x7ffffedbd4 [Q, X - 1753**263] /\
eqmod (F**2) L0x7ffffedbd8 [Q, X - 1753**135] /\
eqmod (F**2) L0x7ffffedbdc [Q, X - 1753**391] /\
eqmod (F**2) L0x7ffffedbe0 [Q, X - 1753**71] /\
eqmod (F**2) L0x7ffffedbe4 [Q, X - 1753**327] /\
eqmod (F**2) L0x7ffffedbe8 [Q, X - 1753**199] /\
eqmod (F**2) L0x7ffffedbec [Q, X - 1753**455] /\
eqmod (F**2) L0x7ffffedbf0 [Q, X - 1753**39] /\
eqmod (F**2) L0x7ffffedbf4 [Q, X - 1753**295] /\
eqmod (F**2) L0x7ffffedbf8 [Q, X - 1753**167] /\
eqmod (F**2) L0x7ffffedbfc [Q, X - 1753**423] /\
eqmod (F**2) L0x7ffffedc00 [Q, X - 1753**103] /\
eqmod (F**2) L0x7ffffedc04 [Q, X - 1753**359] /\
eqmod (F**2) L0x7ffffedc08 [Q, X - 1753**231] /\
eqmod (F**2) L0x7ffffedc0c [Q, X - 1753**487] /\
eqmod (F**2) L0x7ffffedc10 [Q, X - 1753**23] /\
eqmod (F**2) L0x7ffffedc14 [Q, X - 1753**279] /\
eqmod (F**2) L0x7ffffedc18 [Q, X - 1753**151] /\
eqmod (F**2) L0x7ffffedc1c [Q, X - 1753**407] /\
eqmod (F**2) L0x7ffffedc20 [Q, X - 1753**87] /\
eqmod (F**2) L0x7ffffedc24 [Q, X - 1753**343] /\
eqmod (F**2) L0x7ffffedc28 [Q, X - 1753**215] /\
eqmod (F**2) L0x7ffffedc2c [Q, X - 1753**471] /\
eqmod (F**2) L0x7ffffedc30 [Q, X - 1753**55] /\
eqmod (F**2) L0x7ffffedc34 [Q, X - 1753**311] /\
eqmod (F**2) L0x7ffffedc38 [Q, X - 1753**183] /\
eqmod (F**2) L0x7ffffedc3c [Q, X - 1753**439] /\
eqmod (F**2) L0x7ffffedc40 [Q, X - 1753**119] /\
eqmod (F**2) L0x7ffffedc44 [Q, X - 1753**375] /\
eqmod (F**2) L0x7ffffedc48 [Q, X - 1753**247] /\
eqmod (F**2) L0x7ffffedc4c [Q, X - 1753**503] /\
eqmod (F**2) L0x7ffffedc50 [Q, X - 1753**15] /\
eqmod (F**2) L0x7ffffedc54 [Q, X - 1753**271] /\
eqmod (F**2) L0x7ffffedc58 [Q, X - 1753**143] /\
eqmod (F**2) L0x7ffffedc5c [Q, X - 1753**399] /\
eqmod (F**2) L0x7ffffedc60 [Q, X - 1753**79] /\
eqmod (F**2) L0x7ffffedc64 [Q, X - 1753**335] /\
eqmod (F**2) L0x7ffffedc68 [Q, X - 1753**207] /\
eqmod (F**2) L0x7ffffedc6c [Q, X - 1753**463] /\
eqmod (F**2) L0x7ffffedc70 [Q, X - 1753**47] /\
eqmod (F**2) L0x7ffffedc74 [Q, X - 1753**303] /\
eqmod (F**2) L0x7ffffedc78 [Q, X - 1753**175] /\
eqmod (F**2) L0x7ffffedc7c [Q, X - 1753**431] /\
eqmod (F**2) L0x7ffffedc80 [Q, X - 1753**111] /\
eqmod (F**2) L0x7ffffedc84 [Q, X - 1753**367] /\
eqmod (F**2) L0x7ffffedc88 [Q, X - 1753**239] /\
eqmod (F**2) L0x7ffffedc8c [Q, X - 1753**495] /\
eqmod (F**2) L0x7ffffedc90 [Q, X - 1753**31] /\
eqmod (F**2) L0x7ffffedc94 [Q, X - 1753**287] /\
eqmod (F**2) L0x7ffffedc98 [Q, X - 1753**159] /\
eqmod (F**2) L0x7ffffedc9c [Q, X - 1753**415] /\
eqmod (F**2) L0x7ffffedca0 [Q, X - 1753**95] /\
eqmod (F**2) L0x7ffffedca4 [Q, X - 1753**351] /\
eqmod (F**2) L0x7ffffedca8 [Q, X - 1753**223] /\
eqmod (F**2) L0x7ffffedcac [Q, X - 1753**479] /\
eqmod (F**2) L0x7ffffedcb0 [Q, X - 1753**63] /\
eqmod (F**2) L0x7ffffedcb4 [Q, X - 1753**319] /\
eqmod (F**2) L0x7ffffedcb8 [Q, X - 1753**191] /\
eqmod (F**2) L0x7ffffedcbc [Q, X - 1753**447] /\
eqmod (F**2) L0x7ffffedcc0 [Q, X - 1753**127] /\
eqmod (F**2) L0x7ffffedcc4 [Q, X - 1753**383] /\
eqmod (F**2) L0x7ffffedcc8 [Q, X - 1753**255] /\
eqmod (F**2) L0x7ffffedccc [Q, X - 1753**511]
prove with [all ghosts, cuts [46,56,66,76,86,96,106]] &&
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffed8d0,L0x7ffffed8d4,L0x7ffffed8d8,L0x7ffffed8dc] /\
[L0x7ffffed8d0,L0x7ffffed8d4,L0x7ffffed8d8,L0x7ffffed8dc] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffed8e0,L0x7ffffed8e4,L0x7ffffed8e8,L0x7ffffed8ec] /\
[L0x7ffffed8e0,L0x7ffffed8e4,L0x7ffffed8e8,L0x7ffffed8ec] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffed8f0,L0x7ffffed8f4,L0x7ffffed8f8,L0x7ffffed8fc] /\
[L0x7ffffed8f0,L0x7ffffed8f4,L0x7ffffed8f8,L0x7ffffed8fc] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffed900,L0x7ffffed904,L0x7ffffed908,L0x7ffffed90c] /\
[L0x7ffffed900,L0x7ffffed904,L0x7ffffed908,L0x7ffffed90c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffed910,L0x7ffffed914,L0x7ffffed918,L0x7ffffed91c] /\
[L0x7ffffed910,L0x7ffffed914,L0x7ffffed918,L0x7ffffed91c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffed920,L0x7ffffed924,L0x7ffffed928,L0x7ffffed92c] /\
[L0x7ffffed920,L0x7ffffed924,L0x7ffffed928,L0x7ffffed92c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffed930,L0x7ffffed934,L0x7ffffed938,L0x7ffffed93c] /\
[L0x7ffffed930,L0x7ffffed934,L0x7ffffed938,L0x7ffffed93c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffed940,L0x7ffffed944,L0x7ffffed948,L0x7ffffed94c] /\
[L0x7ffffed940,L0x7ffffed944,L0x7ffffed948,L0x7ffffed94c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffed950,L0x7ffffed954,L0x7ffffed958,L0x7ffffed95c] /\
[L0x7ffffed950,L0x7ffffed954,L0x7ffffed958,L0x7ffffed95c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffed960,L0x7ffffed964,L0x7ffffed968,L0x7ffffed96c] /\
[L0x7ffffed960,L0x7ffffed964,L0x7ffffed968,L0x7ffffed96c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffed970,L0x7ffffed974,L0x7ffffed978,L0x7ffffed97c] /\
[L0x7ffffed970,L0x7ffffed974,L0x7ffffed978,L0x7ffffed97c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffed980,L0x7ffffed984,L0x7ffffed988,L0x7ffffed98c] /\
[L0x7ffffed980,L0x7ffffed984,L0x7ffffed988,L0x7ffffed98c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffed990,L0x7ffffed994,L0x7ffffed998,L0x7ffffed99c] /\
[L0x7ffffed990,L0x7ffffed994,L0x7ffffed998,L0x7ffffed99c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffed9a0,L0x7ffffed9a4,L0x7ffffed9a8,L0x7ffffed9ac] /\
[L0x7ffffed9a0,L0x7ffffed9a4,L0x7ffffed9a8,L0x7ffffed9ac] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffed9b0,L0x7ffffed9b4,L0x7ffffed9b8,L0x7ffffed9bc] /\
[L0x7ffffed9b0,L0x7ffffed9b4,L0x7ffffed9b8,L0x7ffffed9bc] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffed9c0,L0x7ffffed9c4,L0x7ffffed9c8,L0x7ffffed9cc] /\
[L0x7ffffed9c0,L0x7ffffed9c4,L0x7ffffed9c8,L0x7ffffed9cc] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffed9d0,L0x7ffffed9d4,L0x7ffffed9d8,L0x7ffffed9dc] /\
[L0x7ffffed9d0,L0x7ffffed9d4,L0x7ffffed9d8,L0x7ffffed9dc] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffed9e0,L0x7ffffed9e4,L0x7ffffed9e8,L0x7ffffed9ec] /\
[L0x7ffffed9e0,L0x7ffffed9e4,L0x7ffffed9e8,L0x7ffffed9ec] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffed9f0,L0x7ffffed9f4,L0x7ffffed9f8,L0x7ffffed9fc] /\
[L0x7ffffed9f0,L0x7ffffed9f4,L0x7ffffed9f8,L0x7ffffed9fc] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffeda00,L0x7ffffeda04,L0x7ffffeda08,L0x7ffffeda0c] /\
[L0x7ffffeda00,L0x7ffffeda04,L0x7ffffeda08,L0x7ffffeda0c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffeda10,L0x7ffffeda14,L0x7ffffeda18,L0x7ffffeda1c] /\
[L0x7ffffeda10,L0x7ffffeda14,L0x7ffffeda18,L0x7ffffeda1c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffeda20,L0x7ffffeda24,L0x7ffffeda28,L0x7ffffeda2c] /\
[L0x7ffffeda20,L0x7ffffeda24,L0x7ffffeda28,L0x7ffffeda2c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffeda30,L0x7ffffeda34,L0x7ffffeda38,L0x7ffffeda3c] /\
[L0x7ffffeda30,L0x7ffffeda34,L0x7ffffeda38,L0x7ffffeda3c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffeda40,L0x7ffffeda44,L0x7ffffeda48,L0x7ffffeda4c] /\
[L0x7ffffeda40,L0x7ffffeda44,L0x7ffffeda48,L0x7ffffeda4c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffeda50,L0x7ffffeda54,L0x7ffffeda58,L0x7ffffeda5c] /\
[L0x7ffffeda50,L0x7ffffeda54,L0x7ffffeda58,L0x7ffffeda5c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffeda60,L0x7ffffeda64,L0x7ffffeda68,L0x7ffffeda6c] /\
[L0x7ffffeda60,L0x7ffffeda64,L0x7ffffeda68,L0x7ffffeda6c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffeda70,L0x7ffffeda74,L0x7ffffeda78,L0x7ffffeda7c] /\
[L0x7ffffeda70,L0x7ffffeda74,L0x7ffffeda78,L0x7ffffeda7c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffeda80,L0x7ffffeda84,L0x7ffffeda88,L0x7ffffeda8c] /\
[L0x7ffffeda80,L0x7ffffeda84,L0x7ffffeda88,L0x7ffffeda8c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffeda90,L0x7ffffeda94,L0x7ffffeda98,L0x7ffffeda9c] /\
[L0x7ffffeda90,L0x7ffffeda94,L0x7ffffeda98,L0x7ffffeda9c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedaa0,L0x7ffffedaa4,L0x7ffffedaa8,L0x7ffffedaac] /\
[L0x7ffffedaa0,L0x7ffffedaa4,L0x7ffffedaa8,L0x7ffffedaac] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedab0,L0x7ffffedab4,L0x7ffffedab8,L0x7ffffedabc] /\
[L0x7ffffedab0,L0x7ffffedab4,L0x7ffffedab8,L0x7ffffedabc] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedac0,L0x7ffffedac4,L0x7ffffedac8,L0x7ffffedacc] /\
[L0x7ffffedac0,L0x7ffffedac4,L0x7ffffedac8,L0x7ffffedacc] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedad0,L0x7ffffedad4,L0x7ffffedad8,L0x7ffffedadc] /\
[L0x7ffffedad0,L0x7ffffedad4,L0x7ffffedad8,L0x7ffffedadc] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedae0,L0x7ffffedae4,L0x7ffffedae8,L0x7ffffedaec] /\
[L0x7ffffedae0,L0x7ffffedae4,L0x7ffffedae8,L0x7ffffedaec] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedaf0,L0x7ffffedaf4,L0x7ffffedaf8,L0x7ffffedafc] /\
[L0x7ffffedaf0,L0x7ffffedaf4,L0x7ffffedaf8,L0x7ffffedafc] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedb00,L0x7ffffedb04,L0x7ffffedb08,L0x7ffffedb0c] /\
[L0x7ffffedb00,L0x7ffffedb04,L0x7ffffedb08,L0x7ffffedb0c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedb10,L0x7ffffedb14,L0x7ffffedb18,L0x7ffffedb1c] /\
[L0x7ffffedb10,L0x7ffffedb14,L0x7ffffedb18,L0x7ffffedb1c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedb20,L0x7ffffedb24,L0x7ffffedb28,L0x7ffffedb2c] /\
[L0x7ffffedb20,L0x7ffffedb24,L0x7ffffedb28,L0x7ffffedb2c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedb30,L0x7ffffedb34,L0x7ffffedb38,L0x7ffffedb3c] /\
[L0x7ffffedb30,L0x7ffffedb34,L0x7ffffedb38,L0x7ffffedb3c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedb40,L0x7ffffedb44,L0x7ffffedb48,L0x7ffffedb4c] /\
[L0x7ffffedb40,L0x7ffffedb44,L0x7ffffedb48,L0x7ffffedb4c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedb50,L0x7ffffedb54,L0x7ffffedb58,L0x7ffffedb5c] /\
[L0x7ffffedb50,L0x7ffffedb54,L0x7ffffedb58,L0x7ffffedb5c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedb60,L0x7ffffedb64,L0x7ffffedb68,L0x7ffffedb6c] /\
[L0x7ffffedb60,L0x7ffffedb64,L0x7ffffedb68,L0x7ffffedb6c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedb70,L0x7ffffedb74,L0x7ffffedb78,L0x7ffffedb7c] /\
[L0x7ffffedb70,L0x7ffffedb74,L0x7ffffedb78,L0x7ffffedb7c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedb80,L0x7ffffedb84,L0x7ffffedb88,L0x7ffffedb8c] /\
[L0x7ffffedb80,L0x7ffffedb84,L0x7ffffedb88,L0x7ffffedb8c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedb90,L0x7ffffedb94,L0x7ffffedb98,L0x7ffffedb9c] /\
[L0x7ffffedb90,L0x7ffffedb94,L0x7ffffedb98,L0x7ffffedb9c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedba0,L0x7ffffedba4,L0x7ffffedba8,L0x7ffffedbac] /\
[L0x7ffffedba0,L0x7ffffedba4,L0x7ffffedba8,L0x7ffffedbac] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedbb0,L0x7ffffedbb4,L0x7ffffedbb8,L0x7ffffedbbc] /\
[L0x7ffffedbb0,L0x7ffffedbb4,L0x7ffffedbb8,L0x7ffffedbbc] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedbc0,L0x7ffffedbc4,L0x7ffffedbc8,L0x7ffffedbcc] /\
[L0x7ffffedbc0,L0x7ffffedbc4,L0x7ffffedbc8,L0x7ffffedbcc] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedbd0,L0x7ffffedbd4,L0x7ffffedbd8,L0x7ffffedbdc] /\
[L0x7ffffedbd0,L0x7ffffedbd4,L0x7ffffedbd8,L0x7ffffedbdc] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedbe0,L0x7ffffedbe4,L0x7ffffedbe8,L0x7ffffedbec] /\
[L0x7ffffedbe0,L0x7ffffedbe4,L0x7ffffedbe8,L0x7ffffedbec] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedbf0,L0x7ffffedbf4,L0x7ffffedbf8,L0x7ffffedbfc] /\
[L0x7ffffedbf0,L0x7ffffedbf4,L0x7ffffedbf8,L0x7ffffedbfc] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedc00,L0x7ffffedc04,L0x7ffffedc08,L0x7ffffedc0c] /\
[L0x7ffffedc00,L0x7ffffedc04,L0x7ffffedc08,L0x7ffffedc0c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedc10,L0x7ffffedc14,L0x7ffffedc18,L0x7ffffedc1c] /\
[L0x7ffffedc10,L0x7ffffedc14,L0x7ffffedc18,L0x7ffffedc1c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedc20,L0x7ffffedc24,L0x7ffffedc28,L0x7ffffedc2c] /\
[L0x7ffffedc20,L0x7ffffedc24,L0x7ffffedc28,L0x7ffffedc2c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedc30,L0x7ffffedc34,L0x7ffffedc38,L0x7ffffedc3c] /\
[L0x7ffffedc30,L0x7ffffedc34,L0x7ffffedc38,L0x7ffffedc3c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedc40,L0x7ffffedc44,L0x7ffffedc48,L0x7ffffedc4c] /\
[L0x7ffffedc40,L0x7ffffedc44,L0x7ffffedc48,L0x7ffffedc4c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedc50,L0x7ffffedc54,L0x7ffffedc58,L0x7ffffedc5c] /\
[L0x7ffffedc50,L0x7ffffedc54,L0x7ffffedc58,L0x7ffffedc5c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedc60,L0x7ffffedc64,L0x7ffffedc68,L0x7ffffedc6c] /\
[L0x7ffffedc60,L0x7ffffedc64,L0x7ffffedc68,L0x7ffffedc6c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedc70,L0x7ffffedc74,L0x7ffffedc78,L0x7ffffedc7c] /\
[L0x7ffffedc70,L0x7ffffedc74,L0x7ffffedc78,L0x7ffffedc7c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedc80,L0x7ffffedc84,L0x7ffffedc88,L0x7ffffedc8c] /\
[L0x7ffffedc80,L0x7ffffedc84,L0x7ffffedc88,L0x7ffffedc8c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedc90,L0x7ffffedc94,L0x7ffffedc98,L0x7ffffedc9c] /\
[L0x7ffffedc90,L0x7ffffedc94,L0x7ffffedc98,L0x7ffffedc9c] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedca0,L0x7ffffedca4,L0x7ffffedca8,L0x7ffffedcac] /\
[L0x7ffffedca0,L0x7ffffedca4,L0x7ffffedca8,L0x7ffffedcac] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedcb0,L0x7ffffedcb4,L0x7ffffedcb8,L0x7ffffedcbc] /\
[L0x7ffffedcb0,L0x7ffffedcb4,L0x7ffffedcb8,L0x7ffffedcbc] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2] /\
[8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2,8@32*NQ+NQ2] <s
[L0x7ffffedcc0,L0x7ffffedcc4,L0x7ffffedcc8,L0x7ffffedccc] /\
[L0x7ffffedcc0,L0x7ffffedcc4,L0x7ffffedcc8,L0x7ffffedccc] <s
[8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2,8@32*Q+Q2]
prove with [cuts [46,56,66,76,86,96,106,116]]
}

