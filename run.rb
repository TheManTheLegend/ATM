
require_relative "user"
require "gosu"


def login
		puts "Please input you PIN"
		pin = gets.to_i
		if pin == 1771
			@person = User.new("John", pin, 1250)
			@logged = true
		elsif pin == 1221
			@person = User.new("Sarah", pin, 9000)
			@logged = true
		elsif pin == 9999
			@person = User.new("Karl", pin, 7)
			@logged = true
		elsif pin == 1499
			@person = User.new("Mr.Padjen", pin, 1000000)
			@logged = true
		else
			puts "I'm sorry that PIN does not match any users in our database, please try again."
		end
		if @logged == true
				@person.ask
		end
end

login

