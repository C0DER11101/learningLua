a = {"hello", "world", "Lua", "C", 5, 6}

_f, _s, _var = ipairs(a);

--[[

_f is a iterator function: this is kept internal by the generic for

_s is a table (invariant state?)

_var is the initial value of the control variable

]]

print(_f, _s, _var)

key, val = _f(_s, _var)
print(key, val)

key, val = _f(_s, key)
print(key, val)

print(_f(_s, _var))

print"----------------------------"

key = _var

while true do
	key, val = _f(_s, key)

	if key == nil then break end -- key is the control variable
	print(key, val)
end
