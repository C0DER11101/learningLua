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
* Because functions are first-class values, they can be returned from another function as well:<br>
```lua
function newCounter()
	local i = 0
	return function () -- anonymous function (function that has no name)
		i = i + 1
		return i
	end
end
```
the value `i` that the anonymous function uses is the <em>external local variable</em> (For some reason, I feel uncomfortable using the term <em>upvalue</em>) to keep its counter. But by the time we call the anonymous function, `i` is already out of scope because the function that created it (`newCounter`) has returned. Nevertheless, Lua handles that situation correctly, using the concept of <em>closures</em>.
* Any function is a closure.[^3]
[^3]: [https://www.tutorialspoint.com/what-are-closures-in-lua-programming](https://www.tutorialspoint.com/what-are-closures-in-lua-programming).

<details>
<summary>Closures</summary>
I am linking the following resources that I used to understand about closures. I don't know how much I have understood it but still these links helped me get a rough idea about how closures work.

* [https://stackoverflow.com/a/6935877](https://stackoverflow.com/a/6935877).

Consider the following Lua program (which I have taken from the link above):<br>
```lua
function createTable()
	return {}
end
```
This function basically returns an empty table constructor when it is called as:<br>
```lua
tableA = createTable()
tableB = createTable()
```
But here `tableA` and `tableB` are two different tables, even though they are referring to an emtpy table, but those two are different empty tables. This means that a function returning an anonymous function won't return the same anonymous function everytime it is called (the returned anonymous function will have different addresses).

* [https://stackoverflow.com/a/6936015](https://stackoverflow.com/a/6936015).
	* [https://en.wikipedia.org/wiki/Closure_(computer_programming)](https://en.wikipedia.org/wiki/Closure_(computer_programming)).
	* [https://en.wikipedia.org/wiki/Closure_(computer_programming)#Implementation_and_theory](https://en.wikipedia.org/wiki/Closure_(computer_programming)#Implementation_and_theory).
* [https://stigmax.gitbook.io/lua-guide/concepts/closures](https://stigmax.gitbook.io/lua-guide/concepts/closures).
* [https://www.reddit.com/r/learnjavascript/comments/1auj4pr/lexical_environment_execution_context_and_other/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button](https://www.reddit.com/r/learnjavascript/comments/1auj4pr/lexical_environment_execution_context_and_other/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button) &rarr; from here I only took the fairly simple definition of _lexical environment_:<br>
> the Lexical Environment is the structure that actually stores local variables and functions.
* [https://personal.utdallas.edu/~gupta/courses/apl/lambda.pdf](https://personal.utdallas.edu/~gupta/courses/apl/lambda.pdf) &rarr; from here I understood about lambda calculus (only about functions, expressions, free variables and bound variables, didn't go any further than that).
* [https://ignore.pl/environments_in_lua_5_2_and_beyond.html](https://ignore.pl/environments_in_lua_5_2_and_beyond.html).<br>
Consider the following program (again, taken from the link above):<br>
```lua
function a()
	local x = 0
	function b()
		x = x + 1
		print(x)
	end

	return b
end
```
`a` returns the function `b`, so expressions like this:<br>
```lua
c1 = a()
c1()
c1()
c1()
```
will result in displaying the numbers<br> <code>1</code><br><code>2</code><br><code>3</code><br>
Now, as per what I have understood, the non-local variable `x` in function `b` is <a href="https://en.wikipedia.org/wiki/Name_binding"><em>bound</em></a> to the corresponding variable `x` in the lexical environment of the function `a` at the time closure `b` is created. So, when the closure is entered at a later time, possibly with a different lexical environment, the function `b` is executed with its non-local variables referring to the ones captured by the closure and not the current environment.

</details>
* Everytime, `newCounter` is called, it will create a new local variable `i` and we will get a new closure, acting over that new variable.
* Closures are useful for <em>callback</em> functions.

# Programs

* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog20.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog20.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog21.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog21.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog22.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog22.lua).[^1]
[^1]: [https://www.tutorialspoint.com/sort-function-in-lua-programming](https://www.tutorialspoint.com/sort-function-in-lua-programming).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog23.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog23.lua).[^2]
[^2]: [https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797#cursor-controls](https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797#cursor-controls), [https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797#erase-functions](https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797#erase-functions), [https://www.codecademy.com/resources/docs/lua/strings/format](https://www.codecademy.com/resources/docs/lua/strings/format).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog24.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog24.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog25.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog25.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog26.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog26.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog27.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog27.lua).

<p align="center">
ooOoo
</p>
