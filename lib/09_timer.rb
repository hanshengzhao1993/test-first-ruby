class Timer

  def initialize
    @time = 0
  end

  def seconds
    @time
  end

  def seconds=(time)
    @time = time
  end


  def time_string
    hr = 0
    min = 0
    sec = 0
    if @time > 3600
      hr = @time/3600
      @time = @time % 3600
    end
    if @time > 60
      min = @time / 60
      @time = @time % 60
      sec = @time
    end

      sec = @time

    clockTime = [hr,min,sec]
    tim = clockTime.map do |x|
      if x.to_s.length == 1
        "0" + x.to_s
      else
        x.to_s
      end

    end
  tim.join(":")
  end
end
