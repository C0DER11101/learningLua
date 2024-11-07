-- Program taken from Programming in Lua: Chapter-3 - Section 3.3

print(4 and 5);
print(nil and 13);
print(false and 13);
print(4 or 5);
print(false or 5);
print(13 and false); -- also returns false because the first argument of the and operator is not 'false'
print(15 or false); -- returns 15 because it's the first argument of the or operator and it's true
