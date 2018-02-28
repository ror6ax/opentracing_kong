which deactivate-lua >&/dev/null && deactivate-lua

alias deactivate-lua 'if ( -x '\''/home/ror6ax/Development/opentracing_kong/lua_install/bin/lua'\'' ) then; setenv PATH `'\''/home/ror6ax/Development/opentracing_kong/lua_install/bin/lua'\'' '\''/home/ror6ax/Development/opentracing_kong/lua_install/bin/get_deactivated_path.lua'\''`; rehash; endif; unalias deactivate-lua'

setenv PATH '/home/ror6ax/Development/opentracing_kong/lua_install/bin':"$PATH"
rehash
