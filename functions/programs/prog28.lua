-- function taken from Programming in Lua: Chapter-6 - Section 6.1

function digitButton(digit)
	return Button{  -- toolkit function
		label = digit,
		action = function() -- callback function --- basically it's a closure too
			print(digit);
		end
	}
end

-- this is just a naive function that I created because I was getting an error about attempting to call a nil value (Button) from digitButton
function Button(...)
	local args = {...};
	args[1].action();
end

button = digitButton(1);
