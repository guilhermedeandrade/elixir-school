# the enum module includes over 70 functions for working with enumerables

# all?

Enum.all?(["foo", "bar", "hello"], fn s -> String.length(s) == 3 end)
# false

# any?

Enum.any?(["foo", "bar", "hello"], fn s -> String.length(s) == 5 end)
# true

# chunk_every

Enum.chunk_every([1, 2, 3, 4, 5, 6], 2)
# [[1, 2], [3, 4], [5, 6]]

# chunk_by

Enum.chunk_by(["one", "two", "three", "four", "five"], fn x -> String.length(x) end)
# [["one", "two"], ["three"], ["four", "five"]]

Enum.chunk_by(["one", "two", "three", "four", "five", "six"], fn x -> String.length(x) end)
# [["one", "two"], ["three"], ["four", "five"], ["six"]]

# map_every

Enum.map_every([1, 2, 3, 4, 5, 6, 7, 8], 3, fn x -> x + 1000 end)
# [1001, 2, 3, 1004, 5, 6, 1007, 8]

# each

Enum.each(["one", "two", "three"], fn s -> IO.puts(s) end)
# one
# two
# three
# :ok (this is the return)

# map

Enum.map([0, 1, 2, 3], fn x -> x - 1 end)
# [-1, 0, 1, 2]

# min

Enum.min([5, 3, 0, -1])
# -1

# max

Enum.max([5, 3, 0, -1])
# 5

# reduce

Enum.reduce([1, 2, 3], 10, fn x, acc -> x + acc end)
# 16

# sort

Enum.sort([5, 6, 1, 3, -1, 4])
# [-1, 1, 3, 4, 5, 6]

# uniq

Enum.uniq([1, 2, 3, 2, 1, 1, 1, 1])
# [1, 2, 3]

# uniq_by

Enum.uniq_by([%{x: 1, y: 1}, %{x: 2, y: 1}, %{x: 3, y: 3}], fn coord -> coord.y end)
# [%{x: 1, y: 1}, %{x: 3, y: 3}]
