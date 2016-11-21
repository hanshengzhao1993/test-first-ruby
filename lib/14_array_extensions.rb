class Array

  def sum
    if self == []
      return 0
    end
    self.reduce(:+)
  end

  def square
    if self == []
      return []
    end

    self.map {|x| x*x}
  end

  def square!
    if self == []
      return []
    end
     self.map! {|x| x*x}
  end

end
