# More about functions

* Functions are first-class values with <em>lexical scoping</em>.
* For a function to have lexical scoping it means that the function can access variables of its enclosing functions. It also means that Lua contains the lambda calculus property.
* Functions, like all other values, anonymous; <em>they do not have names</em>.
* For instance, `print` is not a function but, rather, a <em>variable that holds that function</em>.
* Like any other value, such variables can also be manipulated in many ways.
* Since functions are values then the usual way to write a function in Lua like:<br>
```lua
function foo(x) return 2 * x end
```
is an instance of <em>syntactic sugar</em>. In fact, it's actually written as:<br>
```lua
foo = function (x) return 2 * x end
```
* A function definition is in fact an <em>assignment statement</em> that assigns a value of type "function" to a variable.
* `function (x) ... end` can be seen a <em>function constructor</em> just as `{}` is a table constructor.
* The result of such function constructors is called an <em>anonymous function</em>.
* The table library provides a function `table.sort` which receives a table and sorts its elements. This function also takes one more optional argument called the <em>order function</em>: a function that receives two elements and returns whether the first must come before the second in the sort.
* A function that gets another function as an argument is called a <em>higher-order function</em>.

## Closures

* When a function is written enclosed in another function, it has <em>full access</em> to local variables from the enclosing function. This feature is called <em>lexical scoping</em>.
* Inside this enclosed function the local variable of the enclosing function is neither a global variable nor a local variable. It's an <em>external local variable</em> or an <em>upvalue</em>.<br>
```lua
function sortByGrade(name, grades)
	table.sort(name, function (n1, n2) return grades[n1] > grades[n2] end) --[[
	                  ^                         ^
			  |                         |___ grades is neither local to this anonymous function nor it's global to it, it's an external local variable to this function
			  |
			  |__ an anonymous function that's using `grades' table of sortByGrade
]]
end
```

# Programs

* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog20.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog20.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog21.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog21.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog22.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog22.lua).[^1]
[^1]: [https://www.tutorialspoint.com/sort-function-in-lua-programming](https://www.tutorialspoint.com/sort-function-in-lua-programming).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog23.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog23.lua).[^2]
[^2]: [https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797#cursor-controls](https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797#cursor-controls), [https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797#erase-functions](https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797#erase-functions), [https://www.codecademy.com/resources/docs/lua/strings/format](https://www.codecademy.com/resources/docs/lua/strings/format).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog24.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog24.lua).

<p align="center">
ooOoo
</p>
