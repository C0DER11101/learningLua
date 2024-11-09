# Statements

* Lua supports conventional statements:
	* assignment.
	* constrol structures.
	* procedure calls.
* Lua also supports non-conventional statements:
	* multiple assignments.
	* local variable declarations.

## Assignment statements

* Basic means of changing the value of a variable or a table field.
* In multiple assigment, a list of values is assigned to a list of variables in one step.
	* Both lists have their elements separated by commas.
	* Lua first evaluates all values and only then executes the assignments.
* Lua always adjusts the number of values to the number of variables:
	* When the list of values is shorter than the list of variables, the extra variables receive **nil** as their values.
	* When the list of values is longer than the list of variables, the extra values are **silently discarded**.

## Local variables and blocks

* Lua supports local variables.
* Local variables can be created by using the **local** keyword.
* Local variables have their scope limited to the block where they are declared.
	* A block is the body of a control structure, the body of a function or a chunk (the file or string with the code where the variable is declared).
* Access to local variables is faster than to the global ones.
* Scope of a local declaration begins after the declaration and goes until the end of the block.
* Lua handles local variable declarations as statements.
* Declaration of local variables may include an initial assignment, which works the same way as the conventional assignment.
* A block can be delimited explicitly by bracketing it with the keywords `do`-`end`.

## Control structures

* Set of conventional control structures in Lua:
	* `if` &rarr; for conditional.
	* `while`, `repeat` and `for` &rarr; for iteration.
* All control structures have an explicit terminator:
	* `end` terminates the `if`, `for` and `while` structures.
	* `until` terminates the `repeat` structure.

### `if` `then` `else`

* An `if` statement its condition and executes its `then` part or its `else` part accordingly.
* The `else` part is optional.
* For nested `if`s, `elseif` can be used.

### `while`

* Execute process same as C-`while`.

### `repeat`

* A `repeat`-`until` statement repeats its body until its condition is true.
* Test is done after the body.
* Similar to `do`-`while` in C, i.e. executed atleast once.


# Programs

* [https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog1.lua](https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog1.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog2.lua](https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog2.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog3.lua](https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog3.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog4.lua](https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog4.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog5.lua](https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog5.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog6.lua](https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog6.lua).

<p align="center">
ooOoo
</p>
