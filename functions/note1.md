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

<p align="center">
ooOoo
</p>
