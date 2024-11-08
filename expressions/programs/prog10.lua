opnames = {["+"] = "add", ["-"] = "sub", ["*"] = "mul", ["/"] = "div"};

i = 20;
s = "-";

a = {[i + 0] = s, [i + 1] = s..s, [i + 2] = s..s..s};

print(opnames[s]); -- prints "sub"
print(opnames["-"]); -- prints "sub"
print(opnames.s); -- this means opnames["s"]

print(a[20]);
print(a[21]);
print(a[22]);
