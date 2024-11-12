bin = function(bit)
	if bit ~= nil and bit ~= false and bit ~= 0 then
		return true
	else
		return false
	end
end

print(bin(1));
print(bin(110));
print(bin(0));
print(bin());
