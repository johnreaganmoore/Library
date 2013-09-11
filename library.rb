class Library 

	attr_accessor :title, :author, :desc, :status, :due

	def initialize
		@books = []
		@out = []
		@overdue = []
	end

	def add_book(book)
		@books << book
	end

	def checkout(user, book)
		if library.out.include?(book) == false												
			if user.out.length >= 2
				puts "Sorry, you already have the maximum number of books out."

			elseif user.overdue.length >= 0
				puts "Sorry, you have an overdue book or two, you can't checkout until your clear that up"

			else
				book.due = Time.now + 7
				@out << book													
				user.out << book													
				user.books << book													
				puts "It's all yours"
			end
		else
			puts "Sorry, it's already checked out, but is due in #{due} days"
		end
	end

	def due_check(library)
		@books.each do |book|
				@overdue << book if book.due > 7
			end
		end

	end

	def books_overdue
		@books.each do |book|
			if @books.out.include(book)?
				@overdue << book if book.due > 7
				puts @overdue
		end
	end

	def books_out
		#check to see which books are checked out, by whom, and when due.
	end


#overdue = []
#out = []

end
