-- return no results
function foo0()
end


-- return one result
function foo1()
	return 'a'
end


-- return two results
function foo2()
	return 'a', 'b'
end


----------------------------------------------------------------------

x, y = foo0(); -- x = nil, y = nil
print("x, y = foo0()");
print("x = ", x);
print("y = ", y);

x, y = foo1(); -- x = 'a', y = nil
print("x, y = foo1()");
print("x = ", x);
print("y = ", y);

x, y, z = foo2(); -- x = 'a', y = 'b', z = nil
print("x, y, z = foo2()");
print("x = ", x);
print("y = ", y);
print("z = ", z);
