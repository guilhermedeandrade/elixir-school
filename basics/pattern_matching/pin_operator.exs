# the default behavior of the = opeator may not bet wanted
# for these cases there is the pin operator ^

x = 1

^x = 2
# ** (MatchError) no match of right hand side value: 2

{x, ^x} = {2, 1}
# {2, 1}

x
# 2
