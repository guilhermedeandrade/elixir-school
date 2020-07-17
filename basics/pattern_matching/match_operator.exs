# in Elixir the = operator is actually a match operator
# comparable to the equals sign in algebra

# lists

list = [1, 2, 3]

[1, 2, 3] = list
# [1, 2, 3]

[] = list
# ** (MatchError) no match of right hand side value: [1, 2, 3]

[1 | tail] = list
# [1, 2, 3]

tail
# [2, 3]

[2 | _] = list
# ** (MatchError) no match of right hand side value: [1, 2, 3]

# tuples

{:ok, value} = {:ok, "Successful!"}
value
# "Successful!"

{:ok, value} = {:error}
# ** (MatchError) no match of right hand side value: {:error}
