# Error handling and exceptions
* To handle errors in Lua, the `pcall`(protected call) function should be used to encapsulate the code.
* Example:

```lua
function foo()
	if unexpected_condition then
		error()
	end

	...

	print(a[i]) -- `a' maynot be a table
	
	...
end
```
this piece of code might throw an error about `a` not being a table, this function is called with `pcall` as
```lua
if pcall(foo) then
	... -- no errors while running foo()
else
	... -- foo() raised an error: take appropriate steps
end
```
* `pcall` can also be called with an anonymous function as
```lua
if pcall(function() ... end) then
	...
else
	...
end
```
* The `pcall` function first calls its argument in <em>protected mode</em> so that it cathces any errors while the function is running. If there are no errors, `pcall` returns <strong>true</strong>, plus any values returned by the call. Otherwise it returns <strong>false</strong>, plus the error message.
* The error message doesn't have to be a string. Any Lua value that is passed to `error` will be returned by `pcall`.
```lua
local status, err = pcall(function() error({code = 121}) end)
print(err.code)
```
* Simply put, an exception is thrown with `error` and it is caught by `pcall`.

<p align="center">
ooOoo
</p>
