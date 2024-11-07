-- Program taken from Programming in Lua: Chapter-2 - Section 2.5

a = {}; -- empty table

-- create a 1000 new entries

for i = 1, 1000 do
	a[i] = i * 2;
end

print(a[9]); -- prints 18

a["x"] = 10;

print(a["x"]); -- prints 10
print(a["y"]); -- prints nil
