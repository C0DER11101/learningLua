-- Program taken from Programming in Lua: Chapter 8

x = io.read()

if not tonumber(x) then
	error("invalid input")

else
	print(math.sin(x))
end
