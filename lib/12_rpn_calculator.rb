class RPNCalculator
  @array

  def initialize
    @array = []
  end

  def push value
    @array.push(value)
  end

  def plus
    if @array.length < 2
      raise "calculator is empty"
    end
    @ans = (@array[@array.length-1]) + (@array[@array.length-2])
     @array.delete(@array[@array.length-2])
     @array.delete(@array[@array.length-1])
     @array.push(@ans)
  end

  def minus
    if @array.length < 2
      raise "calculator is empty"
    end
    @ans = (@array[@array.length-2]) - (@array[@array.length-1])
    @array.delete(@array[@array.length-2])
    @array.delete(@array[@array.length-1])
    @array.push(@ans)
  end

  def times
    if @array.length < 2
      raise "calculator is empty"
    end
    @ans = (@array[@array.length-2]) * (@array[@array.length-1])
    @array.delete(@array[@array.length-2])
    @array.delete(@array[@array.length-1])
    @array.push(@ans)
  end

  def divide
    if @array.length < 2
      raise "calculator is empty"
    end
    @ans = (@array[@array.length-2]).to_f / (@array[@array.length-1]).to_f
    @array.delete(@array[@array.length-2])
    @array.delete(@array[@array.length-1])
    @array.push(@ans)
  end

  def value
    @ans
  end
  def array
    @array
  end

end
