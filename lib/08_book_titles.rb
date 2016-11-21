class Book
	def title
		@title
	end

	def title=(name)
		name = name.split
		sp = name.map do |ele|
			if ele == "and" || ele == "the" || ele == "in" || ele == "of" || ele == "a" || ele == "an"
				ele.downcase
			else
				ele.capitalize
			end
		end
		sp[0].capitalize!
		@title = sp.join(" ")
	end
end
