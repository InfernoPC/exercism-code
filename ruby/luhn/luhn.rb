class Luhn
	def self.valid?(text)
		
		return false unless text.scan(/[^\d ]/).empty?
		return false if text.scan(/\d/) == ["0"]

		sum_of_double_even_digits(text) % 10 == 0
	end

	def self.sum_of_double_even_digits(text)
		digits = text.scan(/\d/).map(&:to_i).reverse
		digits.map.with_index do |digit, index|
			if index.odd?
				digit *= 2
				digit -= 9 if digit >= 10
			end
			digit
		end.sum
	end
end
