function foo2()
	return 'a', 'b'
end

local _, x = foo2();

print(_); -- _ is also a variable
print(x);
