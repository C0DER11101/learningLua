-- Program taken from Programming in Lua: Chapter-5 - Section 5.1

f = string.find -- functions are first-class values in Lua

a = {"hello", "ll"};

start, finish = f(table.unpack(a));

print(start, finish);
