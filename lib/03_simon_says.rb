def echo sound
  sound
end

def shout sound
  sound.upcase
end

def repeat (*x)

  if x.length == 1
    return x[0] + " " + x[0]
  else
    x[0] = x[0] + " "
    return (x[0] * x[1]).chomp(" ")
  end

end

def start_of_word (word,num)

	word[0..(num-1)]

end


def first_word sentence
  sentence.split()[0]
end


#I believe there is a much more efficient way of doing titleize
def titleize sentence

	if(sentence.split.length == 1)
		return sentence.capitalize
	end


  sen = sentence.split().map {|x| x.capitalize}
	if sen.length == 2
		return sen.join(" ")
	end
  second = sen[1...sen.length-1].map do |x|
  	if x.length < 5
  		x.downcase
  	else
  		x.capitalize
  	end
  end

  sen[0] + " " +second.join(" ") + " " + sen[-1]

end
