def reverser
  yield.split.map{|x| x.reverse}.join(" ")
end

def adder (x = nil)
  if x == nil
    return yield + 1
  end
  yield + x
end


def repeater (x = nil)
  if x
    return x.times {yield}
  end
  yield
end
