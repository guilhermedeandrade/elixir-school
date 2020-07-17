# tuples are similar to lists, but accessing their length is fast
# but modification is expensive

_tuple = {3.14, :pie, "Apple"}

# tuples are commonly used to return additional information from functions
{:ok, content} = File.read("foo.txt")

IO.puts(content)
# bar

result_fail = File.read("non-existent.txt")

IO.inspect(result_fail)
# {:error, :enoent}
