# Global variables

* Don't need declarations.
* Simply assign a value to a global variable to create it.
* It's not an error to access a non-initialized variable (it will only give the `nil` value).

<img src="https://github.com/C0DER11101/learningLua/blob/doLua/basics/images/img1.png" width="50%" height="50%">

`b` is a global variable here.

* A global variable is *existent* iff it has a non-nil value.

# Lexical conventions

* Lua is **case sensitive**.
* Reserved words in Lua:
	* `and`
	* `break`
	* `do`
	* `else`
	* `elseif`
	* `end`
	* `false`
	* `for`
	* `function`
	* `goto`
	* `if`
	* `in`
	* `local`
	* `nil`
	* `not`
	* `or`
	* `repeat`
	* `return`
	* `then`
	* `true`
	* `until`
	* `while`
* A single line comment starts with a `--`.
* Block comments are written between `--[[` and `]]`.

# Types and values

* Lua is dynamically typed language.
* Lua has 8 basic types:
	* `nil`
	* `boolean`
	* `number`
	* `string`
	* `userdata`
	* `function`
	* `thread`
	* `table`
* The `type` function gives the type name of a given value.

<img src="https://github.com/C0DER11101/learningLua/blob/doLua/basics/images/img2.png" width="50%" height="50%">
* The type-name returned by the `type` function for any given value is of string type.
* Variables have no pre-defined type, any variable may contain values of any type.

# Nil

* Lua uses `nil` as a kind of non-value to represent absence of a useful value.

# Booleans

* Conditionals in Lua consider `false` and `nil` as false and anything else as `true`.
* Lua considers both zero and the empty string as true in conditional tests.

# Numbers

* `number` type represents real (double-precision floating point) numbers.
* Lua has no integer type.
* A Lua number can represent any long integer without rounding problems.
* Example of valid numeric constants in Lua:
	* $4$, $0.4$, $4.57e-3$, $0.3e12$, $5e+20$

# Strings

* A string is a **sequence of characters** in Lua.
* Strings in Lua may contain characters with any numeric value.
* Binary data can also be stored in a Lua string.
* Strings in Lua are **immutable** values.
* Strings in Lua can contain C-like escape sequences.
* A character in a string in Lua can also be specified by its numeric value through the escape sequence `\ddd`, `ddd` is a sequence of upto three decimal digits.

<img src="https://github.com/C0DER11101/learningLua/blob/doLua/basics/images/img3.png" width="50%" height="50%">

* Strings that run for several lines are within `[[` and `]]`.

<img src="https://github.com/C0DER11101/learningLua/blob/doLua/basics/images/img4.png" width="50%" height="50%">

* Lua provides automatic conversions between numbers and strings at run time. Any numeric operation applied to a strring tries to convert the string to a number.

<img src="https://github.com/C0DER11101/learningLua/blob/doLua/basics/images/img5.png" width="50%" height="50%">

* Also, whenever Lua finds a number wherever it expects a string, it converts the number to a string.

<img src="https://github.com/C0DER11101/learningLua/blob/doLua/basics/images/img6.png" width="50%" height="50%">

* Lua concatenates two strings using the `..` operator. If the strings are numbers then there must a space between the `..` and the two strings otherwise Lua confuses the first dot with a decimal point.

* No conversion from string to number or vice-versa occurs when they are compared using the `==` operator.

<img src="https://github.com/C0DER11101/learningLua/blob/doLua/basics/images/img7.png" width="50%" height="50%">

* Use `tonumber()` to convert a string to a number and `tostring()` for vice-versa. `tonumber()` returns `nil` if the string that it's converting doesn't denote a proper number.

<img src="https://github.com/C0DER11101/learningLua/blob/doLua/basics/images/img8.png" width="50%" height="50%">

* To convert a number to a string, either use the `tostring()` function or concatenate the number with an empty string.

<img src="https://github.com/C0DER11101/learningLua/blob/doLua/basics/images/img9.png" width="50%" height="50%">

# Programs:

* [https://github.com/C0DER11101/learningLua/blob/doLua/basics/programs/prog1.lua](https://github.com/C0DER11101/learningLua/blob/doLua/basics/programs/prog1.lua).

---
