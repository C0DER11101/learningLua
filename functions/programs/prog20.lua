-- Program taken from Programming in Lua: Chapter-6

a = {p = print};

a.p("hello world");

print = math.sin; -- `print' refers to the `sin' function

a.p(print(1));

math.sin = a.p; -- `sin' refers to the `print' function

math.sin(10, 20);
