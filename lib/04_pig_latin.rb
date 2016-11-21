def translate word

  # vowels = ['a','e','i','o','u']
  word = word.split();

  ans = word.map do |x|
    if(x == x.capitalize)
      (helper(x)).capitalize
    else
      helper(x)
    end
  end

  ans.join(" ")

end

def helper word
  vowels = ['a','e','i','o','u']
  if vowels.include?(word[0])
    return word + 'ay'
  elsif word.include?("qu")
    arr = word.split("qu")
    if arr[0].length == 0
      return arr[1] + 'qu' + 'ay'
    else
      return arr[1] +arr[0] + 'qu' + 'ay'
    end
  else
    count = 0
    cont = true;
    letters = []
    while cont
      if !vowels.include?(word[count])
        letters.push(word[count])
        count = count + 1
        # letters.push(word[count])
      else
        cont = false
      end

    end

    return word.slice(count,word.length) + letters.join("") + "ay"
  end

end
