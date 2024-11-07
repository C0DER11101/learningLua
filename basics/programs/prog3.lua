-- Program taken from Programming in Lua: Chapter-2 - Section 2.5

a = {};

a["x"] = 10;

b = a; -- 'b' refers to the same table as 'a'

print(b["x"]); -- prints 10

b["x"] = 20;

print(a["x"]); -- prints 20 because 'a' and 'b' refer to the same table

a = nil; -- only b refers to the table
b = nil; -- there are not references to the table now
