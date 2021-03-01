
co = coroutine.create(function()
  for i = 1, 10, 1 do
    print(i)
    print(coroutine.status(co))
    if i == 5 then 
      coroutine.yield() 
    end
  end 
end)
  
-- start off status suspended
print(coroutine.status(co))
  
-- Call to resume 
coroutine.resume(co)

-- After execution status becomes dead
print(coroutine.status(co))
print("-------")
co2 = coroutine.create(function()
  for i = 50, 60, 1 do
    print(i)
  end 
end)
  
coroutine.resume(co2)
print("======")
coroutine.resume(co)