class Team
	attr_accessor :name, :match_played, :wins, :draws, :loses, :point
	def initialize(name)
		@name = name
		@match_played, @wins, @draws, @loses, @point = 0, 0, 0, 0, 0
	end
	def win(team)
		@match_played += 1
		@wins += 1
		@point += 3

		team.match_played += 1
		team.loses += 1
	end
	def loss(team)
		team.win self
	end
	def draw(team)
		@match_played += 1
		@draws += 1
		@point += 1

		team.match_played += 1
		team.draws += 1
		team.point += 1
	end

	def <=>(team)
		team.point == @point ? @name <=> team.name : team.point <=> @point
	end
end

class Tournament

	def self.tally(input)
		teams = Hash.new{|team, name| team[name] = Team.new(name)}
		input.split("\n").each do |competition|
			team_a, team_b, result = competition.split(';')
			teams[team_a].send result, teams[team_b]
		end
			
		<<-RESULT.gsub(/^[ \t]*/, '')
    Team                           | MP |  W |  D |  L |  P#{
		"\n" << teams.values.sort.map do |team|
		"%-30s | %2d | %2d | %2d | %2d | %2d" % [team.name, team.match_played, team.wins, team.draws, team.loses, team.point]
		end.join("\n") unless teams.empty?}
		RESULT
		
	end

 end
