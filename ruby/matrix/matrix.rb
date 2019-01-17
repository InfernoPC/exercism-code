class Matrix
	def initialize(content)
		@matrix = content.split("\n").map do |row_content|
			row_content.split.map(&:to_i)
		end
	end
	def rows
		@matrix
	end
	def columns
		Array.new(@matrix.first.size) do |index|
			@matrix.map{|row| row[index]}
		end
	end
end
