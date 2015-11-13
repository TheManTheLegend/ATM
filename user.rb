require_relative "atm"

class User
	
	def initialize(name, pin, balance)
		@name = name 
		@pin = pin.to_i
		@balance = balance
		@logged = false
		@derp = 7
	end
	
	def check(pin)
		pin == @pin.to_i
	end

	def name
		@name.to_s
	end

	def pin
		@pin.to_i
	end

	def balance
		@balance.to_i
	end

end