# Errors
* In Lua, errors can be explicitly raised by calling the `error` function.
* Lua has a built-in function that is equivalent to the combination `if not ... then error end` called the `assert` function.
* The `assert` function checks whether its first argument is not false and simply returns that argument. If the argument is false (or `nil`), `assert` raises an error.
* Its second argument is optional.
* Lua always evaluates its arguments before calling the function.
* When a function finds an unexpected situation (an exception), it can assume two basic behaviours: it can return an error code (typically `nil`) or it can raise an error, calling the `error` function.
* _An exception that is easily avoided should raise an error; otherwise, it should return an error code._

# Programs
* <a href="https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog8.lua">https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog8.lua</a>.
* <a href="https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog9.lua">https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog9.lua</a>.
* <a href="https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog10.lua">https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog10.lua</a>.
* <a href="https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog11.lua">https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog11.lua</a>.
* <a href="https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog12.lua">https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog12.lua</a>.

<p align="center">
ooOoo
</p>
