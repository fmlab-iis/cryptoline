#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "api.h"

int main(void) {
    unsigned char pk[PQCLEAN_MCELIECE8192128_AVX2_CRYPTO_PUBLICKEYBYTES];
    unsigned char sk[PQCLEAN_MCELIECE8192128_AVX2_CRYPTO_PUBLICKEYBYTES];

    int ret;

    printf("--- Classic McEliece 8192128 Key Pair Generation ---\n");
    printf("Public Key Size: %lu bytes\n", (unsigned long)PQCLEAN_MCELIECE8192128_AVX2_CRYPTO_PUBLICKEYBYTES);
    printf("Secret Key Size: %lu bytes\n", (unsigned long)PQCLEAN_MCELIECE8192128_AVX2_CRYPTO_PUBLICKEYBYTES);

    printf("\nStarting key pair generation... This may take a while.\n");

    ret = PQCLEAN_MCELIECE8192128_AVX2_crypto_kem_keypair(pk, sk);

    if (ret != 0) {
        fprintf(stderr, "ERROR: crypto_kem_keypair failed with return code %d\n", ret);
        return 1;
    }

    printf("Success! Key pair generated.\n");

    printf("\nPublic Key snippet (first 16 bytes): ");
    for (size_t i = 0; i < 16; i++) {
        printf("%02x", pk[i]);
    }
    printf("...\n");

    printf("Secret Key snippet (first 16 bytes): ");
    for (size_t i = 0; i < 16; i++) {
        printf("%02x", sk[i]);
    }
    printf("...\n");

    printf("\nKey generation complete.\n");

    return 0;
}
