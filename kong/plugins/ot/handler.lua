local ffi = require "ffi"
local lib = ffi.load "./libopentracing.so"

local access = require "kong.plugins.ot.access"

local OtKong = BasePlugin:extend()

function OtKong:new()
  KongInjection.super.new(self, "otkong")
  ffi.include "opentracing/dynamic_load.h"
  ffi.cdef[[
  typedef struct Config Config;
  auto load_config = opentracing::DynamicallyLoadTracingLibrary(char*);
  ]]
  -- ffi.C.load_config("\"sampler\": {\"type\": \"const\",\"param\": 1,},\"logging\": True")
end

function OtKong:access(conf)
  OtKong.super.access(self)
  access.execute(conf)
end