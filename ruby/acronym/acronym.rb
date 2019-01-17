class Acronym
	def self.abbreviate(phrase)
	#	phrase.gsub('-', ' ').split.map do |word|
	#		word[0]
	#	end.join.upcase
		phrase.scan(/(\w)\w*/).join.upcase
	end
end
