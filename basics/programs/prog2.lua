-- program taken from Programming in Lua: Chapter-2: Section 2.5

a = {}; -- creating a table and storing its reference in 'a'

k = "x";

a[k] = 10; -- new entry, with key "x" and value 10
a[20] = "great"; -- new entry, with key 20 and value "great"

print(a[k]); -- prints the value 10 because k stores "x"

k = 20;

print(a[k]); -- prints "great" because k stores 20

a["x"] = a["x"] + 1; -- value of key "x" updated to 11

print(a["x"]);
