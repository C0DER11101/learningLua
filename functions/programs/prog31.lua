local fact = function (n)
	if n == 0 then
		return 1
	else
		return n * fact(n - 1) -- will throw an error
	end
end

print(fact(3));
