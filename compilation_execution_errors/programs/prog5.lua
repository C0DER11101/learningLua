-- Program taken from Programming in Lua: Chapter-8

local i = 0

f = load("i = i + 1") -- i here is a global variable, so it will throw an error
g = function () i = i + 1 end

print("f()"..f())
print("g()"..g())
