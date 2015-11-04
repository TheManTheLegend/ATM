require_relative "user"
class Atm
	def initialize(pin)
		@pin = pin
		@person = "nan"
	end
	if @pin == 1771
		@person = User.new("John", 1771, 1250)
	elsif @pin == 0220
		@person = User.new("Sarah", 0220, 9000)
	elsif @pin == 9999
		@person = User.new("Karl", 9999, 7)
	end
	def login
		puts "Please input you PIN"
		pin = gets.to_f
		if pin == @pin 
			@logged = true
			puts "Welcome #{@name}"
		else
			puts "I'm sorry that PIN does not match any users in our database, please try again."
		end
		if @logged == true
			withdraw
		end
	end
	def withdraw
		puts "How much would you like to withdraw?"
		with = gets.to_f
		if @balance >= with
			@balance = @balance.to_f - with
			puts "Thank you for your withdraw of $#{with}."
			puts "You have $#{@balance} left in your account."
			puts "Have a nice day, #{@name}!"
		else
			puts "Sorry #{@name}, you don't have that much in your account."
		end
		@logged = false
	end
end