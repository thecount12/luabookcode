-- Variadic Function process unkown amount of numbers
function totalSum(...)
    local sum = 0
    for k, v in pairs{...} do
      sum = sum + v
    end
    return sum
  end
  io.write("Sum : ", totalSum(1,2,3,4,5), "\n")