-- a naive example showing use of named arguments

function strcpy(arg)
	if arg.dest == nil or arg.src == nil then
		return false
	end

	arg.dest = arg.src
	return true
end

result = strcpy{dest = "hello", src = "Hello"};

if result == true then
	print("Copying successful!")
elseif result == false then
	print("Failed to copy strings!")
end
