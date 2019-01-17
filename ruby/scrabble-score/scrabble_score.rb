class Scrabble
	def initialize(word)
		@word = word.upcase
	end
	def score
		[@word.scan(/[AEIOULNRST]/).size * 1, 
		@word.scan(/[DG]/).size * 2,
		@word.scan(/[BCMP]/).size * 3,
		@word.scan(/[FHVWY]/).size * 4,
		@word.scan(/[K]/).size * 5,
		@word.scan(/[JX]/).size * 8,
		@word.scan(/[QZ]/).size * 10].sum
	end
end
