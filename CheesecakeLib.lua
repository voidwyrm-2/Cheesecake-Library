function Default(val, def) --if the given value is nil, instead return the given default
 if val == nil then
  return def
 elseif val ~= nil then
  return val
 end
end
--[[ Default() example
see Clamp() below
--]]

function Clamp(val, min, max) --if the given value goes above/below the given maximum/minimum, return the maximum/minimum
 min = Default(min, 0)
 max = Default(max, 1)
 if val < min then
  return min
 elseif val > max then
  return max
 else
  return val
 end
end

function Equals(val, check) --analogous to C#'s thing.equals()
  val = Default(val, 1)
  check = Default(check, 1)
 if val == check then
  return true
 else
  return false
 end
end
--[[ Equals() example
do
 a = 9
 b = 11
 print(Equals(a, b))
 
 c = 'one'
 d = 'two'
 if Equals(c, d) then
  print('c is 2')
 else
  print('c is not 2')
 end
end
--]]

function NumToLett(num)
 LetterTable = {
  
 }
end
