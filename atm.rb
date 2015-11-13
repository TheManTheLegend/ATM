require_relative "user"
class Atm

	attr_accessor :user, :person

	def initialize
		@users = []
		file = File.open("Users.csv", 'r')
		file.each_line do |line|
			array = line.split(",")
			@users.push(User.new(array[0], array[1].to_i, array[2].to_i))
		end
		
		@person = "nan"
	end

	def ask
		puts "Please input you PIN"
		pin = gets.to_i
		print "Logging you in."
		for i in 1..2
			sleep(1)
			print "."
		end
		(0..@users.length).each do |id|
			
			if @users[id].check(pin.to_i)
				
				@person = @users[id]
			end
		end
	


		puts "Welcome #{@person.name}!"
		if @name == "Mr.Padjen"
			puts "What grade are you going to give Nik Young this semester?"
			grade = gets.chomp
			if grade == "A"
				puts "Thank you, you're balance is $#{@person.balance}!."
			else
				@balance = 7
				puts "Poor choice, your balance is now $#{@person.balance}"
			end
		end
		puts "Would you like to (W)ithdraw or (D)eposit?"
		action = gets.chomp
		if action == "w"
			withdraw
		elsif action == "d"
			deposit
		else 
			"Sorry please enter w or d to specify if you would like to deposit or withdraw."
		end	
	end

	def deposit
		puts "How much would you like to deposit?"
		with = gets.to_f
		
		print "Getting permission from server."
		for i in 1..2
			sleep(1)
			print "."
		end
		puts
		@person.balance = @person.balance.to_i + with.to_i
		

		puts "Thank you for your deposit of $#{with}."
		puts "You have $#{@person.balance} left in your account."
		puts "Have a nice day, #{@person.name}!"
		@logged = false
	end

	def withdraw
		puts "How much would you like to withdraw?"
		with = gets.to_f
		puts
		print "Getting permission from server."
		for i in 1..2
			sleep(1)
			print "."
		end
		puts
		if @person.balance >= with
			@person.balance = @person.balance.to_i - with.to_i

			puts "Thank you for your withdraw of $#{with}."
			puts "You have $#{@person.balance} left in your account."
			puts "Have a nice day, #{@person.name}!"
		else
			puts "Sorry #{@person.name}, you don't have that much in your account."
		end
		@logged = false
	end
	
end

	
	
	