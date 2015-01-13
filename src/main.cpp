#include <iostream>
#include "../lua/src/lua.hpp"

int main() {
	lua_State *L = luaL_newstate();
    luaopen_io(L); // provides io.*
    luaopen_base(L);
	luaL_loadfile(L, "main.lua");
	lua_pcall(L, 0, LUA_MULTRET, 0);
	lua_close(L);
}