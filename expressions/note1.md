# Expressions

## Arithmetic operators

* Lua supports the usual arithmetic operators:
	* `+` &rarr; binary addition.
	* `-` &rarr; binary subtraction.
	* `*` &rarr; multiplication.
	* `/` &rarr; division.
	* `-` &rarr; unary negation.
* Lua also offers partial support for the exponentiation (`^`) operator.

# Relational operators

* Lua provides the following relational operators:
	* `>`
	* `<`
	* `>=`
	* `<=`
	* `==`
	* `~=` &rarr; the 'not equal to' operator
* Lua considers values of different types as different values.
* Lua compares tables, userdata and functions by **reference**, that is, two such values are considered equal only if they are the very same object.
* Lua compares strings in alphabetical order.
* Lua raises an error if a comparison consists of a number and a string.

<img src="https://github.com/C0DER11101/learningLua/blob/doLua/expressions/images/img1.png" width="50%" height="50%">

## Logical operators

* Lua has the following logical operators:
	* **and**.
	* **or**.
	* **not**.
* All these logical operators consider **nil** and **false** as false and anything else as true.
* The **and** operator returns its first argument if it is false, otherwise it returns its second argument.
* The **or** operator returns its first argument if it is true, otherwise it returns its second argument.
* Both **and** and **or** evaluate their their second operand only when necessary.
* Useful Lua idiom:
	* $1^{st}$:<br>
	```lua
	x = x or v
	```
	<br>
	which is equivalent to:<br>
	```lua
	if not x then x = v end
	```


# Programs

* [https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog1.lua](https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog1.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog2.lua](https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog2.lua).

<p align="center">
ooOoo
</p>
