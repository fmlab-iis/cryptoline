#!/usr/bin/env python3

from argparse import ArgumentParser
import cryptoline

def main():
    parser = ArgumentParser(description="Insert comments marking unused variables.")
    parser.add_argument("cfile", help="the CryptoLine file to be annotated")
    parser.add_argument("-n", "--annot", help="variables in annotations are considered used", action="store_true")
    args = parser.parse_args()
    #
    instrs = cryptoline.parse(args.cfile)
    p = "".join(cryptoline.find_unused_variables(instrs, annot=args.annot, newline=True))
    print(p)

if __name__ == "__main__":
    main()
