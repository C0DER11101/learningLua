a = {};

a.x = 10; -- same as a["x"] = 10;

-- these two statements are the same
print(a["x"]);
print(a.x);
print(a.y); -- since there is no key "y" in the table `a', it will print nil
