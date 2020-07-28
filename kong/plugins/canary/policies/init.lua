---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2020/2/24 14:27
---
local IPCanary = require "kong.plugins.canary.policies.IPCanary"
local UidCanary = require "kong.plugins.canary.policies.UidCanary"
local DefaultCanary = require "kong.plugins.canary.policies.DefaultCanary"
local CustomizeCanary = require "kong.plugins.canary.policies.CustomizeCanary"

return {
  ['default'] = {
    handler = function(fallback, conf)
      local DefaultCanary = DefaultCanary:new(nil, conf)
      return DefaultCanary:handler(fallback);
    end
  },
  ['ip'] = {
    handler = function(fallback, conf)
      local IPCanary = IPCanary:new(nil, conf);
      return IPCanary:handler(fallback);
    end
  },
  ['uid'] = {
    handler = function(fallback, conf)
      local UidCanary = UidCanary:new(nil, conf);
      return UidCanary:handler(fallback);
    end
  },
  ['customize'] = {
    handler = function(fallback, conf)
      local CustomizeCanary = CustomizeCanary:new(nil, conf);
      return CustomizeCanary:handler(fallback);
    end
  }
}
