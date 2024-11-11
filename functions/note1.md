# Functions

* Main mechanism for abstraction of statements and expressions in Lua.
* Functions can:
	* Carry out a specific task (also called <em>procedure</em> or <em>subroutine</em>) &rarr; in this case, a function call is used as a statement.
	* Compute and return values &rarr; in this case, a function call is used as an expression.
* If the function call has no arguments, then an empty list `()` must be written to indicate the call.
* Special case:
	* If the function has one argument and this argument is either a literal string or a table constructor, then the <em>parentheses are optional</em>.

<img src="https://github.com/C0DER11101/learningLua/blob/doLua/functions/images/img1.png" width="50%" height="50%">

* Functions used by a Lua program can be defined both in Lua and in C (or in any language used by the host application).
* When calling a function, there is no difference between function defined in Lua and functions defined in C.
* A function definition has a conventional syntax:<br>
```lua
function <function name>(<list of parameters>)
	<body of the function>
end
```
* Parameters work exactly as local variables, initialized with the actual arguments given in the function call.
* A function can be called with a number of arguments different from its number of parameters.
* Lua adjusts the number of arguments to the number of parameters, as it does in a multiple assignment: Extra arguments are thrown away; extra parameters get **nil**.
* This is useful for default arguments.

## Multiple results

* In Lua, functions may return <em>multiple results</em>.
* Many predefined functions in Lua return multiple results. For example, the `string.find` function, which locates a pattern in a string. It returns two indices -- the index of the character where the pattern match starts and the one where it ends (or **nil** if it cannot find the pattern). A <em>multiple assignment</em> allows the program to get both results.
* By listing the multiple results after the `return` keyword, a function written in Lua can return multiple results.
* Lua always adjusts the number of results from a function to the circumstances of the call.
	* When a function is called as a statement, Lua discards all its results.
	* When a function is called as an expression, Lua keeps only the first result.
	* A function returns all the results only when the call is the last (or the only) <em>expression</em> <em>in a list of expressions</em>.
	* These <em>lists</em> appear in four constructions in Lua: <em>multiple assignment</em>, <em>arguments to function calls</em>, <em>table constructors</em> and <code>return</code> <em>statements</em>.
* In multiple assignment, a function call as the last (or only) expression produces as many results as needed to match the variables.
* If a function has no results, or not as many results as we need, Lua produces **nil**s.
* A function call that is not the last element in the list always produces one result.
* When a function call is the last (or the only) argument to another call, all results from the first call go as arguments.
* A constructor also collects all results from a call, without any adjustments only when the call is the last (or the only) in the list otherwise any call produces only one result.
* A statement like `return f()` returns all the values returned by the function `f()`.
* To force a call to return exactly one result, enclose it in an extra pair of parentheses.
* A statement like `return (f())` always returns a single value, no matter how many values `f()` returns.
* A function that returns multiple results is the `table.unpack()` function. It receives an array and returns as results all elements from the array, starting from index 1.
* An important use of `unpack()` is a generic call mechanism.
	* A generic call mechanism allows to call any function, with any arguments, dynamically.
	* In Lua, to call a variable function, say `f`, with a variable number of arguments in an array `a`, the following is written:<br>
	```lua
	f(table.unpack(a));
	```

# Programs

* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog1.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog1.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog2.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog2.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog3.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog3.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog4.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog4.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog5.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog5.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog6.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog6.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog7.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog7.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog8.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog8.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog9.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog9.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog10.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog10.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog11.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog11.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog12.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog12.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog13.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog13.lua).

<p align="center">
ooOoo
</p>
