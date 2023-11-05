--[[
 a bunch of functions for general use
--]]

function Math(x, y, op) --multipurpose math function
 if x = then
 end
 if op == 'A' or 1 then --addition
  local result = x + y
 elseif op == 'S' --[[or 'B']] or 2 then --subtraction
  local result = x - y
 elseif op == 'M' --[[or 'C']] or 3 then --multiplication
  local result = x * y
 elseif op == 'D' or 4 then --divison
  local result = x / y
 elseif op == 'P' or 5 then --to power
  local result = x ^ y
 else --anything defaults to addition
  local result = x + y
 end
 
 return result
end
--[[ Math() example
do
 a = Math(3, 7, 3)
 b = Math(a, 2, 3)
 print(b)

 c = Math(3, 7, M)
 d = Math(c, 2, M)
 print(d)
end
--]]

function Equals(x, y) --analogous to C#'s thing.equals
 if x == y then --values equal? 
  return true --if equal then true
 else
  return false --if not equal then false
 end
end
--[[ Equals() example
do
 a = 9
 b = 11
 print(Equals(a, b))
 
 c = 'one'
 d = 'two'
 if Equals(c, d) == true then
  print('c is 2')
 else
  print('c is not 2')
 end
end
--]]

function Default(val, def) --if the given value is nil, instead return the given default
 if val == nil then
  return def
 elseif val ~= nil then
  return val
 end
end
--[[
--]]

function Clamp(val, min, max) --if the given value goes above/below the given maximum/minimum, return the maximum/minimum
 min = Default(min, 0)
 max = Default(max, 1)
 if val < min then
  return min
 elseif val > max then
  return max
 else --elseif val 
  return val
 end
end