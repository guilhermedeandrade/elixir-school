list = [3.14, :pie, "Apple"]

# since Elixir implements list collections as linked lists
# it is faster to prepend than to append

fast_list = ["foo" | list]

IO.inspect(fast_list)

# appending with list concatenation
slow_list = list ++ ["Acerola"]

IO.inspect(slow_list)

# list subtraction is also supported
subtracted_list = ["foo", :bar, 42] -- [42, "bar"]

IO.inspect(subtracted_list)

# head
IO.puts(hd list) # 3.14

# tail
IO.inspect(tl list) # [:pie, "Apple"]
