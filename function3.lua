-- Closure 
function closeCounter()
    local i = 0
    return function()
      i = i + 1
      return i
    end
  end
  getFunction = closeCounter()
  print(getFunction())
  print(getFunction())