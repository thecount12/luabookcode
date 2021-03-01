#include <stdio.h>

#include "../lib/lua/src/lua.h"
#include "../lib/lua/src/lualib.h"
#include "../lib/lua/src/lauxlib.h"

void lua_example_dofile(void)
{
    lua_State* L = luaL_newstate();
    luaL_openlibs(L); 
    luaL_dofile(L, "./scripts/factorial.lua");
    lua_close(L); // close always
}

// get global values
void lua_get_var(void)
{
    lua_State* L = luaL_newstate();
    luaL_dostring(L, "my_var = 42"); //create var
    lua_getglobal(L, "my_var"); // push to stack
    lua_Number var_in_c = lua_tonumber(L, -1); // pull from last value in stack -1, 
    printf("the var in c: %d\n", (int)var_in_c);
}

void lua_stack(void)
{
    lua_State* L = luaL_newstate();
    lua_pushnumber(L, 50); // stack[1]
    lua_pushnumber(L, 60); // stack[2]
    lua_pushnumber(L, 70); // stack[3]

    lua_Number element;
    element = lua_tonumber(L, -1);
    printf("Get last element %d\n", (int)element);
    lua_remove(L, -1);
    element = lua_tonumber(L, 2);
    printf("Get last element %d\n", (int)element);

    lua_close(L); // close always
}

void lua_functions(void)
{
    lua_State* L = luaL_newstate();
    luaL_openlibs(L); 

    if (luaL_dofile(L, "./scripts/pythagoras.lua") != LUA_OK)
    {
        luaL_error(L, "Error: %s\n", lua_tostring(L, -1));
    }
    
    lua_getglobal(L, "pythagoras");
    if (lua_isfunction(L, -1))
    {
        lua_pushnumber(L, 3); // first function arg
        lua_pushnumber(L, 4); // second function arg
        const int NUM_ARGS = 2;
        const int NUM_RETURNS = 1;
        lua_pcall(L, NUM_ARGS, NUM_RETURNS, 0);
        // we alredy pushed to stack now return last number from stack
        lua_Number pythagoras_result = lua_tonumber(L, -1);
        printf("The pythagoras(3,4) is :%f", (float)pythagoras_result);
    }
    lua_close(L); // close always
}
int native_pythagoras(lua_State* L)
{
    lua_Number b = lua_tonumber(L, -1);  // get last param
    lua_Number a = lua_tonumber(L, -2); // get first added to stack
    lua_Number result = (a * a) + (b * b);
    lua_pushnumber(L, result);
    return 1;  // returns how man values 
}

void lua_call_c(void)
{
    lua_State* L = luaL_newstate();
    lua_pushcfunction(L, native_pythagoras);
    lua_setglobal(L, "native_pythagoras");

    luaL_dofile(L, "./scripts/pythagoras_inC.lua");
    lua_getglobal(L, "pythagoras");
    if (lua_isfunction(L, -1))
    {
        lua_pushnumber(L, 3); // first arg
        lua_pushnumber(L, 4); // second arg
        const int NUM_ARGS = 2;
        const int NUM_RETURNS = 1;
        lua_pcall(L, NUM_ARGS, NUM_RETURNS, 0);
        lua_Number pythagoras_result = lua_tonumber(L, -1);
        printf("Native Pythagoras(3, 4) = %f\n", (float)pythagoras_result);
    }

    lua_close(L); // close always
}
int main(int args, char const *argv[])
{
    //lua_example_dofile();
    // lua_get_var();
    // lua_stack();
    // lua_functions();
    lua_call_c();
    return 0;
}
