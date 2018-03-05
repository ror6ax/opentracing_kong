package = "ot-kong"
version = "1.0.0"

dependencies = {
	  "lua >= 5.3.4",
}


build = {
    type = "builtin",
    modules = {
    ["kong.plugins.ot-kong.access"] = "kong/plugins/ot-kong/access.lua",
    ["kong.plugins.ot-kong.handler"] = "kong/plugins/ot-kong/handler.lua",
    ["kong.plugins.ot-kong.schema"] = "kong/plugins/ot-kong/schema.lua",
    }
}