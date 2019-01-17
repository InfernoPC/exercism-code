class Sieve

	def initialize(limit)
		@limit = limit
	end

	def primes
		primes ||= []
		candidates = (2..@limit).to_a
		until candidates.empty?
			primes << candidates.shift
			candidates.reject!{|number| number % primes.last == 0}
		end
		primes
	end
end
