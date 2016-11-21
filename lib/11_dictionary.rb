class Dictionary
  @book

  def initialize
    @book = {}
  end

  def entries
    @book
  end

  def add (x)
    if x.class == String
      x = {x => nil}
    end
    @book = @book.merge(x)
  end

  def keywords
    @book.keys.sort
  end

  def include? (val)
    @book.keys.sort.include?(val)
  end

  def find (val)
    if @book == {}
      return {}
    end

    @book.select do |x,y|
      x==val || x.include?(val)
    end
  end

  def printable
    ans = ""
    @book.sort.each do |key,val|
      ans = ans + %Q{[#{key}] "#{val}"\n}
    end
    ans.chomp
  end


end
