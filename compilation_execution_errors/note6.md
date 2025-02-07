# Error messages and tracebacks
* A value of any type may be used as an error message. But when there is an internal error (such as an attempt to index a non-table value), Lua generates the error message, otherwise the error message is the value passed to the `error` function.
* Lua tries to add some information about the location where the error happened.
* The location information gives the file name plus the line number.
* The `error` function has an additional second parameter which gives the <em>level</em> where it should report the error.
* Sometimes, only the location where the error occurred isn't enough. Sometimes we want a traceback, showing the complete stack of calls leading to the error.
* When `pcall` returns its error message, it destroys part of the stack (the part that went from it to the error point).
* If we want to traceback, we must build it before `pcall` returns. To do that Lua provides the `xpcall` function.

# Programs

* <a href="https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog13.lua">https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog13.lua</a>.
* <a href="https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog14.lua">https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog14.lua</a>.

<p align="center">
ooOoo
</p>
