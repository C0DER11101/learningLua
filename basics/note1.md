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

---
