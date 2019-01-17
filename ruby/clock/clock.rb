class Clock
	attr_reader :hour, :minute
	def initialize(hour: 0, minute: 0)
		@hour = hour
		@minute = minute
		roll_over()
	end

	def to_s
		"#{"%02d" % @hour}:#{"%02d" % @minute}"
	end
	
	def +(clock)
		@hour += clock.hour
		@minute += clock.minute
		roll_over()
	end

	def -(clock)
		@hour -= clock.hour
		@minute -= clock.minute
		roll_over()
	end

	def ==(clock)
		@hour == clock.hour and @minute == clock.minute
	end

	private
	def roll_over
		time = (@hour * 60 + @minute) % (24 * 60)
		@hour = time / 60
		@minute = time % 60
		self
	end
end
