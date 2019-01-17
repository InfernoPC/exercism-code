class Squares
	def initialize(num)
		@num = num
	end

	def square_of_sum
		((1 + @num) * @num / 2)**2
	end

	def sum_of_squares
		@num * (@num + 1) * (@num * 2 + 1) / 6
	end

	def difference
		self.square_of_sum - self.sum_of_squares
	end
end
