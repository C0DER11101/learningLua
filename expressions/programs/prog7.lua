-- Program taken from Programming in Lua: Chapter-3 - Section 3.6

w = {x = 0, y = 0, label = "console"};

x = {math.sin(0), math.sin(1), math.sin(2)};

w[1] = "another field";

x.f = w; -- the field f of table x and w, both refer to the same table now

print(w["x"]); -- prints 0
print(w[1]); -- prints "another field"
print(x.f[1]); -- prints "another field"
print(x.f["label"]); -- prints "console"
print(x.f.label); -- prints "console"

w.x = nil; -- delete/remove the field "x" from table referred to by w
