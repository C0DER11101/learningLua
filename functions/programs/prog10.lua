function foo(i)
	if i == 0 or i == nil then -- if i is nil or 0
		return foo0();
	elseif i == 1 then
		return foo1();
	elseif i == 2 then
		return foo2();
	end
end

function foo0()
end

function foo1()
	return 'a'
end

function foo2()
	return 'a', 'b'
end

print(foo());
print(foo(0));
print(foo(1));
print(foo(2));
