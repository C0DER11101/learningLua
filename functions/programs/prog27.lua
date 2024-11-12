function a()
	local x = 0
	function b()
		x = x + 1 -- non-local variable x gets bound to the corresponding variable x in the lexical environment of a() (I don't know how much correct or incorrect I am but that's my level of understanding about it)
		print(x)
	end

	return b
end

c1 = a();

c1()
c1()
c1()
