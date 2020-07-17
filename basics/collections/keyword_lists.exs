# keyword lists is an associative collection
# it is a special list of two-element tuples whose first element is an atom
# they share performance with lists

keyword_list = [foo: "bar", hello: "world"]

IO.inspect(keyword_list)

keyword_list_alt = [{:foo, "bar"}, {:hello, "world"}]

IO.inspect(keyword_list_alt)
