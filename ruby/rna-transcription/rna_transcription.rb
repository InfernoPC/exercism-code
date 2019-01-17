class Complement

	def self.of_dna(code)
		code.tr 'CGTA', 'GCAU'
	end
end
