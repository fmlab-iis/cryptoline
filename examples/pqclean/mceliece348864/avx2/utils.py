
def tobits (n, v):
    ret = []
    while n > 0:
        ret = ret + [v % 2]
        v //= 2
        n -= 1
    return ret

# iter: ('a -> unit) -> 'a list -> unit
def iter (f, ls):
    for i in range (len (ls)):
        f (ls[i])

# fold_left: (('acc * 'a) -> 'acc) * 'acc * 'a list -> 'acc
def fold_left (f, ret, ls):
    if len (ls) == 0:
        return ret
    else:
        return fold_left (f, f (ret, ls[0]), ls[1:])

# fold_right: (('a * 'acc) -> 'acc) * 'a list * 'acc -> 'acc
def fold_right (f, ls, ret):
    if len (ls) == 0:
        return ret
    else:
        return f (ls[0], fold_right (f, ls[1:], ret))

# flatten: 'a list list -> 'a list
def flatten (lss):
    if len (lss) == 0:
        return []
    else:
        return fold_right (lambda ls, ret: ls+ret, lss[:-1], lss[-1])

# concat: string list -> string -> string
def concat (strs, mid):
    if len (strs) == 0:
        return ''
    else:
        return fold_right (lambda str, ret: ret + mid + str, strs[:-1],
                           strs[-1])
