-- Program taken from Programming in Lua: Chapter-3 - Section 3.2

a = {}; a.x = 1; a.y = 0;
b = {}; b.x = 1; b.y = 0;

c = a;

print(a == b); -- false because `a' and `b' are referring to two different tables
print(a == c); -- true because `a' and `c' are referring to the same table
