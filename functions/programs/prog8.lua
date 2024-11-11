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

print(foo0()); -- prints nothing
print(foo1()); -- prints 'a'
print(foo2()); -- prints 'a' and 'b'
print(foo2(), 10); -- prints 'a' and 10 because foo2() is not the only argument to print()
print(foo2() .. "x"); -- prints 'ax' because foo2() appears in an expression
