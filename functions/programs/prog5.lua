-- return two results
function foo2()
	return 'a', 'b'
end

-------------------------------------------------------

x, y = foo2(); -- the only element in this expression is the function call foo2() and so it returns two results
print("x, y = foo2()");
print("x = ", x);
print("y = ", y);
x, y = nil, nil;

x = foo2(); -- 'b' is discarded
print("x = foo2()");
print("x = ", x);
print("y = ", y);
x, y = nil, nil;

x, y = foo2(), 120; -- here, foo2() is not the last element in this list of expressions, and so it returns only 'a' which gets stored in x
print("x, y = foo2(), 120");
print("x = ", x);
print("y = ", y);
x, y = nil, nil;

x, y, z = 10, foo2(); -- in this list of expressions, foo2() is the last element (10 is the first), so it will return both the results
print("x, y, z= 10, foo2()");
print("x = ", x);
print("y = ", y);
print("z = ", z);
