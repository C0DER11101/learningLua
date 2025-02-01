# C packages

* C packages need to be loaded and linked with an application before use.
* Lua provides all functionality of dynamic linking in a single function called `loadlib`.
	* It has two arguments: the complete path of the library and the name of an initialization function.
* A typical call to `loadlib()` looks like this:
```lua
local path = "/usr/local/lua/lib/libluasocket.so"
local f = package.loadlib(path, "luaopen_socket")
```
The `loadlib` function loads the given library and links Lua to it. However, it doesn't open the library (that is, it doesn't call the initialization function); instead, it returns the initialization function as a Lua function, so that it can directly be called from Lua.
* If there is any error loading the library or finding the initialization function, `loadlib` returns `nil` plus an error message.

<p align="center">
ooOoo
</p>
