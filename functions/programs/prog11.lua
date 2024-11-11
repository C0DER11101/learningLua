function foo2()
	return 'a', 'b'
end

a, b = (foo2());
print(a, b);

a, b = foo2();
print(a, b);
