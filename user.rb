

class User
	action = ""
	def initialize(name, pin, balance)
		@name = name 
		@pin = pin.to_f
		@balance = balance
		@logged = false
	end
	def ask
		puts "Welcome #{@name}!"
		if @name == "Mr.Padjen"
			puts "What grade are you going to give Nik Young this semester?"
			grade = gets.chomp
			if grade == "A"
				puts "Thank you, you're balance is $#{@balance}!."
			else
				@balance = 7
				puts "Poor choice, your balance is now $#{@balance}"
			end
		end
		puts "Would you like to (W)ithdraw or (D)eposit?"
		action = gets.chomp
		if action == "w"
			withdraw
		elsif action == "d"
			deposit
		else "Sorry please enter w or d to specify if you would like to deposit or withdraw."
		end	
	end

	def deposit
		puts "How much would you like to deposit?"
		with = gets.to_f
		
		@balance = @balance.to_f + with.to_f

		puts "Thank you for your deposit of $#{with}."
		puts "You have $#{@balance} left in your account."
		puts "Have a nice day, #{@name}!"
		@logged = false
	end

	def withdraw
		puts "How much would you like to withdraw?"
		with = gets.to_f
		if @balance >= with
			@balance = @balance.to_f - with.to_f

			puts "Thank you for your withdraw of $#{with}."
			puts "You have $#{@balance} left in your account."
			puts "Have a nice day, #{@name}!"
		else
			puts "Sorry #{@name}, you don't have that much in your account."
		end
		@logged = false
	end
end