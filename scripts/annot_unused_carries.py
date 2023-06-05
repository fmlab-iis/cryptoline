#!/usr/bin/env python3

import re
from argparse import ArgumentParser
import cryptoline

def main():
    parser = ArgumentParser(description="Insert verified annotations that assert and assume unused carries are 0.")
    parser.add_argument("cfile", help="the CryptoLine file to be annotated")
    parser.add_argument("-a", "--cargs", help="additional arguments passed to CryptoLine for checking inserted annotations", default="")
    parser.add_argument("-n", "--annot", help="variables in annotations are considered used", action="store_true")
    parser.add_argument("-p", "--cpath", help="the path to CryptoLine", default=cryptoline.cryptoline_path)
    parser.add_argument("-u", "--unverified", help="insert annotations without checking correctness", action="store_true")
    args = parser.parse_args()
    cpath = cryptoline.cryptoline_path if args.cpath == "" else args.cpath
    #
    instrs = cryptoline.parse(args.cfile)
    p = "".join(cryptoline.assert_unused_carries(instrs, annot=args.annot, newline=True, check=(not args.unverified), cpath=cpath, cargs=args.cargs))
    print(p)

if __name__ == "__main__":
    main()
