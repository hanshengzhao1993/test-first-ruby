def add (x,y)
  x + y
end

def subtract (x,y)
  x-y
end

def sum arr
  if arr.length == 0
    return 0
  else
    arr.reduce(:+)
  end
end

def multiply (*x)
  x.reduce(:*)
end

def power (x,y)
  x**y
end


def factorial (x)

  if x == 0 || x == 1
    return 1
  else
    return [*1..x].reduce(:*)
  end

end
