class RomanNumber
	ROMAN_FORMAT = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
	DIGITS_CODE = %w(IVX XLC CDM M)
	def self.to_roman(number)
		number.digits.map.with_index do |digit, index|
			ROMAN_FORMAT[digit].tr DIGITS_CODE[0], DIGITS_CODE[index]
		end.reverse.join
	end
end

class Numeric
	def to_roman
		RomanNumber.to_roman(self)
	end
end

