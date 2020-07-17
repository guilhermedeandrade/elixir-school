# maps are the "go-to" key-value store and allow keys of any type

map = %{:foo => "bar", "hello" => :world}

map[:foo] # "bar"
map["hello"] # :world

key = "hello"

another_map = %{key => "world"}

another_map[key] # "world"

# if a duplicate is added to a map, it will replace the former value

map_with_duplicate_key = %{:foo => "bar", :foo => "hello world"}
# %{foo: "hello world"}


# there is a special syntax for maps containing only atom keys

map_with_only_atom_keys = %{foo: "bar", hello: "world"}
# %{foo: "bar", hello: "world"}

%{foo: "bar", hello: "world"} == %{:foo => "bar", :hello => "world"}
# true

map_with_only_atom_keys.hello
# "world"

# updating an already existing key

old_map = %{foo: "bar", hello: "world"}

updated_map = %{ old_map | foo: "baz" }
# %{foo: "baz", hello: "world"}

# creating a new key

Map.put(old_map, :lorem, "ipsum")
# %{foo: "bar", hello: "world", lorem: "ipsum"}

