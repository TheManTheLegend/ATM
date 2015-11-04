

class User
	def initialize(name, pin, balance)
		@name = name 
		@pin = pin.to_f
		@balance = balance
		@logged = false
	end
end