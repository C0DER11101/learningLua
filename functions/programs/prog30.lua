maths = {}

maths.add = function (x, y) return x + y end
maths.sub = function (x, y) return x - y end
maths["mul"] = function (x, y) return x * y end


function maths.div(x, y)
	if y == 0 then
		print("Divide by 0!");
		return nil
	end
	return x/y;
end

print(maths.add(10, 20));
print(maths.sub(10, 20));
print(maths.mul(10, 20));
print(maths.div(12, 20));
print(maths.div(12, 0));

simpleTable = {
	foo = function()
		print("FOO")
	end,

	loo = function()
		print("LOO")
	end
}

simpleTable.foo()
simpleTable.loo()
