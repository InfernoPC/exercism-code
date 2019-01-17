class Series
	def initialize(text)
		@text = text
	end

	def slices(length)
		digits = @text.chars
		raise ArgumentError if length > digits.size	
	#	results = [digits.first(length).join]
	#	(digits.size - length).times do
	#		results << digits.rotate!.first(length).join
	#	end
	#	results
		digits.each_cons(length).map(&:join)
	end
end
class ArgumentError < StandardError
end
