class Robot
	attr_reader :name
	def initialize
		@name = get_new_name
	end
	def self.forget
		@@names = ('AA000'..'ZZ999').to_a.shuffle
	end
	def reset
		@name = get_new_name
	end
	def get_new_name
		@@names.pop
	end
end
