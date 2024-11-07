-- program taken from Programming in Lua: Chapter-2 - Section 2.4

line = io.read(); -- read a line
n = tonumber(line); -- convert line to a number

if(n == nil) then
	print(line .. " is not a valid number.");
else
	print(n * 2);
end
