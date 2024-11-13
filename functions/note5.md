# Non-global functions

* Functions can also be stored in table fields like so:<br>
```lua
Lib = {}
Lib.foo = function (x, y) return x + y end
Lib.goo = function (x, y) return x - y end
```
* Function stored in a local variable is a <em>local function</em>, i.e. a <em>function that is restricted to a given scope</em>. Such definitions are particularly useful for packages: Because <em>Lua handles each chunk as a function</em>, a chunk may declare local functions which are visible only inside the chunk.
* Lexical scoping ensures that other functions in the package can use these local functions.
* Lua supports uses of local functions with a syntactic sugar for them:<br>
```lua
local function f(...)
	...
end
```
This is equivalent to writing:<br>
```lua
local f = function(...)
	...
end
```
* Defining recursive local functions:
	* A subtle point arises:<br>
	```lua
	local fact = function (n)
		if n == 0 then return 1
		else return n * fact(n - 1)
		end
	end
	```
	* When Lua compiles the call `fact(n - 1)`, in the function-body, the local `fact` is not yet defined. Therefore that expression calls a global `fact` (which doesn't exist and so results into a `nil`) and results into the error of 'attempting to call a nil value'.
	* To resolve this problem, the local variable `fact` has to be defined first:<br>
	```lua
	local fact
	fact = function (n)
		if n == 0 then return 1
		else return n * fact(n - 1)
		end
	end
	```
	Now, the `fact` inside the function refers to the local variable. Its value when the function is defined doesn't matter. By the time the function executes, `fact` already has the right value.
	* That is how Lua expands its syntactic sugar for local functions.
* For tail-recursions, the local variables (which will involved in the recursion) have to be declared in forward:<br>
```lua
local f, g -- forward declarations

function g()
	....
	f()
	....
end

function f()
	....
	g()
	....
end
```

# Programs

* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog30.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog30.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog31.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog31.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog32.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog32.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog33.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog33.lua).

<p align="center">
ooOoo
</p>
