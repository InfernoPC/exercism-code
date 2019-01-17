class TwelveDays
	def self.song
		present_list = {
			first: "and a Partridge in a Pear Tree",
			second: "two Turtle Doves",
			third: "three French Hens",
			fourth: "four Calling Birds",
			fifth: "five Gold Rings",
			sixth: "six Geese-a-Laying",
			seventh: "seven Swans-a-Swimming",
			eighth: "eight Maids-a-Milking",
			ninth: "nine Ladies Dancing",
			tenth: "ten Lords-a-Leaping",
			eleventh: "eleven Pipers Piping",
			twelfth: "twelve Drummers Drumming"
		}
		present_list.keys.map.with_index do |day, index|
			gave_day = "On the #{day} day of Christmas my true love gave to me:"
			present = index.zero? ? present_list.values[index].scan(/and (.*)/).join : present_list.values[0..index].reverse.join(", ")
			"#{gave_day} #{present}."
		end.join("\n\n") << "\n"
	end
end
