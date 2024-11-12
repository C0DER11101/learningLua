-- Program taken from Programming in Lua: Chapter-6 - Section 6.1

function newCounter()
	local i = 0;

	return function() -- anonymous function
		i = i + 1;
		return i;
	end
end

print(newCounter()); -- prints address of the anonymous function
print(newCounter()); -- prints address of the anonymous function (different from the previous ones)
print(newCounter()); -- prints address of the anonymous function (different from the previous ones)

c1 = newCounter();

print("c1", c1());
print("c1", c1());
print("c1", c1());

c2 = newCounter(); -- creates a new counter

print"-----------"
print("c2(): ", c2());
print("c2(): ", c2());
print("c2(): ", c2());
print"-----------"
print("c2:", c2);
print("c2:", c2);
print("c2:", c2);
