function varArg(a, b, ...)
	local args = {...};
	return a, b, table.unpack(args)
end

a = varArg(2); -- a = 2;
print(a);

a, b = varArg(10, 20); -- a = 10, b = 20
print(a, b);

a, b, c, d= varArg(100, 120, 140, 150, 160); -- 160 is discarded
print(a, b, c, d);
