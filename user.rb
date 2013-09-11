class User

	attr_accessor :out, :books

	def initialize
		@out = []
		@overdue = []
		@books = []
	end

	def history
		#show which books user currently has checked out
		#show which books the user has checked out in the past.
		#show which books are overdue
	end

	
	def checkout(book)
		if library.out.include?(book)												#check book status
			if user.out.length < 2 	&& user.overdue.length == 0						#Check user books out and overdue
				@due = Time.now + 7
				library.out << book													#Change status
				user.out << book													#Add to users @out array
				user.books << book													#Add to users @books array	
				puts "It's all yours"
			else																	#Checkout denied
				puts "Sorry, you already have the maximum number of books out."		#explain error
			end
		else
			puts "Sorry, it's already checked out, but is due in #{due} days"
		end
	end

	def return(book)
		if library.overdue.include(book)?
			puts "Sorry, it looks like you have to pay a fine"
		else
			puts "Thanks, we really appreciate your patronage"
		end
		@due = nil
	end


end