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

x, y = foo2(), 20; -- foo2() returns only one result because it's the first element in this list of expressions
print("x = ", x);
print("y = ", y);

x, y = foo0(), 20, 30; -- 30 is discarded because there are two variables on the LHS
print("x = ", x);
print("y = ", y);
