class Temperature
  @@temp
  def initialize(hash)
    @temp = {}
    @temp = @temp.merge(hash)
  end

  def in_fahrenheit

    @temp[:f] || (@temp[:c]*(9/5.0))+32
  end

  def in_celsius

    @temp[:c] || (@temp[:f]-32) *(5/9.0)
  end

  def Temperature.from_celsius(temper)
      Temperature.new({:c=>temper})
  end

  def Temperature.from_fahrenheit(temper)
      Temperature.new({:f=>temper})
  end

end


class Celsius < Temperature
  @temp
  def initialize(temper)
    @temp = {}
    ans = {:c => temper}
    @temp = @temp.merge(ans)
  end

end

class Fahrenheit < Temperature
  @temp
  def initialize(temper)
    @temp = {}
    ans = {:f => temper}
    @temp = @temp.merge(ans)
  end

end
