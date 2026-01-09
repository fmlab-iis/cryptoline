ring r = 2, (z), lp;
poly f = z13 + z4 + z3 + z + 1;
poly g = z2 + z;
//poly g = z4 + z;
//poly g = z8 + z;
//poly g = z16 + z;
//poly g = z32 + z;
list ps = extgcd(g, f);
if (ps[1] == 1) {
    printf("inverse of %s in Z_2/<%s> is: %s", g, f, ps[2]);
} else {
    "Error: no inverse";
}
exit;
