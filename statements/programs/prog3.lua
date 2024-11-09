-- Program taken from Programming in Lua: Chapter-4 - Section 4.2

x = 10;
local i = 1; -- i is local to this file

while i <= x do
	local x = i * 2; -- x is local to the while body
	print(x); -- prints the value of the local variable x

	i = i + 1;
end

if i > 20 then
	local x; -- x is local to the `then' body
	x = 20;
	print(x + 2); -- prints the value of x that is local to this body added with 2
else
	print(x); -- prints the value of the global variable x
end

print(x); -- prints the value of the global variable x
