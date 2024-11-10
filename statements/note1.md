# Statements

* Lua supports conventional statements:
	* assignment.
	* control structures.
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

* An `if` statement tests its condition and executes its `then` part or its `else` part accordingly.
* The `else` part is optional.
* For nested `if`s, `elseif` can be used.

### `while`

* Execution process same as C-`while`.

### `repeat`

* A `repeat`-`until` statement repeats its body until its condition is true.
* Test is done after the body.
* Similar to `do`-`while` in C, i.e. executed atleast once.

### `for`
#### Numeric `for`

* Syntax:<br>
```lua
for var = exp1, exp2, exp3 do
	something
end
```
this loop will execute `something` for each value of `var` from `exp1` to `exp2`, using `exp3` as the *step* to increment `var`.
* The third expression `exp3` is optional. When absent, Lua assumes one as the step value.
* Subtelties:
	* All three expressions are [evaluated](https://stackoverflow.com/a/38636647) once, before the loop starts. If the expression contains a function call, then it's called only once.
	* The control variable is a local variable automatically declared by the `for` statement and is visible only inside the loop.
	* Never change the value of the control variable: effect of such changes is unpredictable.

#### Generic `for`

* Allows to traverse all values returned by an iterator function (like `ipairs()`, `pairs()`, etc.).
* Iterator for iterating over lines of a file: `io.lines()`.
* Iterator for iterating over pairs of a table: `pairs()`.
* Generic `for` shares two properties with the numeric `for`:
	* Loop variables are local to the loop body.
	* Never assign any value to the loop variables.

## `break` and `return`

* These are <em>jump statements</em> that allow us to jump out from an inner block.
* `break` is used to finish a loop.
* `break` breaks the inner loop (`for`, `repeat`, `while`) that contains it.
* `break` can't be used outside a loop.
* After the break, the program continues running from the point <em>immediately</em> after the broken loop.
* A `return` statement returns occasional results from a function or simply finishes a function.
* There is an <em>implicit</em> `return` at the end of any function, so there is not need to use a `return` statement if a function ends naturally <em>without returning any value</em>.
* For syntactic reasons, a `break` and `return` can appear only as the last statement of a block (in other words, as the last statement in a chunk or just before an `end`, an `else`, or an `until`).
* Sometimes it may be useful to write a `return` (or a `break`) in the middle of a block, for instance, while debugging a function. In such cases, an explicit `do` block around the statement can be used.


# Programs

* [https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog1.lua](https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog1.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog2.lua](https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog2.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog3.lua](https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog3.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog4.lua](https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog4.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog5.lua](https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog5.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog6.lua](https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog6.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog7.lua](https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog7.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog8.lua](https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog8.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog9.lua](https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog9.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog10.lua](https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog10.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog11.lua](https://github.com/C0DER11101/learningLua/blob/doLua/statements/programs/prog11.lua).

<p align="center">
ooOoo
</p>
