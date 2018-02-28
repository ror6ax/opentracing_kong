if functions -q deactivate-lua
    deactivate-lua
end

function deactivate-lua
    if test -x '/home/ror6ax/Development/opentracing_kong/lua_install/bin/lua'
        eval ('/home/ror6ax/Development/opentracing_kong/lua_install/bin/lua' '/home/ror6ax/Development/opentracing_kong/lua_install/bin/get_deactivated_path.lua' --fish)
    end

    functions -e deactivate-lua
end

set -gx PATH '/home/ror6ax/Development/opentracing_kong/lua_install/bin' $PATH
