-- list of values is shorter than list of variables
a, b, c = 0, 1; -- a = 0, b = 1, c = nil

print("a = ", a);
print("b = ", b);
print("c = ", c);

-- list of values is longer than list of variables
d, e, f = "hello", 10, 40, "world"; -- "world" is discarded

print("d = ", d);
print("d = ", e);
print("d = ", f);

g, h, i = 0; -- i = 0, g = nil, h = nil

print("d = ", g);
print("d = ", h);
print("d = ", i);
