function foo(n)
	if n > 0 then return foo(n - 1) end -- no stack overflow
end

foo(1000000000)
