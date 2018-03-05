local BasePlugin = require "kong.plugins.base_plugin"
local OtKong = BasePlugin:extend()
local ffi = require "ffi"
local lib = ffi.load "./libopentracing.so"

function OtKong:new()
  KongInjection.super.new(self, "otkong")
  ffi.include "../../../opentracing-cpp/include/opentracing/dynamic_load.h"
  ffi.cdef[[
  typedef struct Config Config;
  auto load_config = opentracing::DynamicallyLoadTracingLibrary(char*);
  ]]
  -- ffi.C.load_config("\"sampler\": {\"type\": \"const\",\"param\": 1,},\"logging\": True")
end
