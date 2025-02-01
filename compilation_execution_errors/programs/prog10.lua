-- Program taken from Programming in Lua: Chapter 8

n = io.read()

assert(tonumber(n), "invalid input: " .. n .. " is not a number") -- Lua will always do the concatenation of n with this string even when n is a number
