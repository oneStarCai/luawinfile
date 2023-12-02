#LUAINC = -I/usr/local/include
LUAINC = -IE:\setup\lua_src5.3.6\lua-5.3.6\src
#LUALIB = -L/usr/local/bin -llua53
LUALIB = -LE:\setup\lua_src5.3.6\lua-5.3.6\src -llua53
CFLAGS = -O2 -Wall

winfile.dll : winfile.c
	gcc --shared $(CFLAGS) $(LUAINC) -o $@ $^ $(LUALIB) -lshell32
	

clean :
	rm winfile.dll
