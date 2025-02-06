-- Program taken from Programming in Lua: Chapter 8 - 8.5

local status, err = pcall(function() a = 'a' + 1 end)
print(err)
