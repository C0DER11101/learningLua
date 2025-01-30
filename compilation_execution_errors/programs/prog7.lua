-- Program taken from Programming in Lua: Chapter-7

print("enter function to be plotted (with variable `x'): ")
local l = io.read()
local f = assert(load("return "..l))

for i = 1, 20 do
	print(string.rep("*", f()))
end
