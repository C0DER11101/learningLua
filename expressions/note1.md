# Expressions

## Arithmetic operators

* Lua supports the usual arithmetic operators:
	* `+` &rarr; binary addition.
	* `-` &rarr; binary subtraction.
	* `*` &rarr; multiplication.
	* `/` &rarr; float division.
	* `-` &rarr; unary negation.
	* `%` &rarr; modulo.
	* `//` &rarr; floor division.
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
* The **and** operator returns its first argument if this value is **false** or **nil**, otherwise it returns its second argument.
* The **or** operator returns its first argument if this value is true, otherwise it returns its second argument.
* Both **and** and **or** evaluate their second operand only when necessary.
* **and** has higher precedence than **or**.
* Useful Lua idiom:
	* $1^{st}$:<br>
	```lua
	x = x or v
	```
	which is equivalent to:<br>
	```lua
	if not x then x = v end
	```
	* $2^{nd}$:<br>
	```lua
	a and b or c
	```
	this is equivalent to:<br>
	```C
	a ? b : c;
	```
	in C.
* The **not** operator always returns **true** or **false**.

## Bitwise operators

* Lua supports the following bitwise operators:
	* `&` &rarr; bitwise AND.
	* `|` &rarr; bitwise OR.
	* `~` &rarr; bitwise exclusive OR.
	* `>>` &rarr; right shift.
	* `<<` &rarr; left shift.
	* `~` &rarr; unary bitwise NOT.
* All bitwise operations convert its operands to integers, operate on all bits of those integers, and result in an integer.

## Operator precedence

* Precedence of operators (from lower to higher):
	* `or`
	* `and`
	* `<` `>` `<=` `>=` `~=` `==`
	* `|`
	* `~`
	* `&`
	* `<<` `>>`
	* `..`
	* `+` `-`
	* `*` `/` `//` `%`
	* unary operators(`not`, [`#`](https://www.lua.org/manual/5.4/manual.html#3.4.7), `-`, `~`)
	* `^`
* The concatenation (`..`) operator and the exponentiation (`^`) operators are right associative.
* All the binary operators are left associative.

# Programs

* [https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog1.lua](https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog1.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog2.lua](https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog2.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog3.lua](https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog3.lua).

<p align="center">
ooOoo
</p>
