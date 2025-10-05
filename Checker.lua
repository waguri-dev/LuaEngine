Checker = {}
function Checker:getInfo()
  return debug.getinfo
end
function Checker:isCFunction(func)
  return self:getInfo()(func).what == "C";
end
function Checker:isLuaFunction(func)
  return self:getInfo()(func).what == "C";
end
