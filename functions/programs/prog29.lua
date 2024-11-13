print(math.sin(1)); -- takes 1 as radian

do
	local oldSin = math.sin
	math.sin = function(x) -- this is a closure again
		return oldSin(x * math.pi / 180)
	end
end

print(math.sin(1)); -- takes 1 as degree
