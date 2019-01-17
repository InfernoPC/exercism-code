class Hamming
	def self.compute(dna_1, dna_2)
		raise ArgumentError if dna_1.size != dna_2.size	
		dist = 0
		(0...dna_1.size).each do |index|
			dist += 1 if dna_1[index] != dna_2[index]
		end
		dist
	end
end
class ArgumentError < StandardError
end
