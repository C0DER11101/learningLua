# The `require` function
* This function is used for loading libraries.
* `require` searches for the file in a path, it also checks whether a file has already been run to avoid duplicating the work.
* The path used by `require` is a list of patterns, each of them specifying an alternative way to transform a virtual file name (the argument to `require`) into a real file name.
* Each component in the path is a file name containing optional interrogation marks. For each component, `require` replaces each `?` by the virtual file name and checks whether there is a file with that name; if not, it goes to the next component.
* The components in a path are separated by semicolons.
* Example:
Consider a path
```
?;?.lua;c:\windows\?;/usr/local/lua/?/?.lua
```
Then a call like `require("lili")` will try to open the following files
```
lili
lili.lua
c:\windows\lili
/usr/local/lua/lili/lili.lua
```
* To determine its path, `require` first checks the global variable `LUA_PATH`. If the value of `LUA_PATH` is a string, that string is the path. Otherwise `require` checks the environment variable `LUA_PATH`. Finally, if both checks fail, `require` uses a fixed path (typically `"?;?.lua"`, it's easy to change that when compiling Lua).
* `require` avoids loading the same file twice.
* For this purpose, it keeps a table with the names of all loaded files. If a required file is already in the table, `require` simply returns.
* The table keeps the <em>virtual names</em> of the loaded files, not their real names.
* So, if the same file is loaded with two different virtual names, it will be loaded twice.
* For example, the command `require("foo")` followed by `require("foo.lua")`, with a path like `"?;?.lua"`, will load the file `foo.lua` twice.
* This control table can be accessed via the global variable `_LOADED` and can be manipulated so that `require` may load the same file again.

* A component doesn't need to have interrogation marks, it can be a fixed file name, such as the last component in the following path:
```
?;?.lua;/usr/local/default.lua
```
in this case, whenever `require` cannot find another option, it will run this fixed file.
* Before `require` runs a chunk, it defines a global variable `_REQUIREDNAME` containing the virtual name of the file being required.

<p align="center">
ooOoo
</p>
