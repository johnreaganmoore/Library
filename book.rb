class Book

	attr_accessor :title, :author, :desc, :status, :due

	def initialize(author, title, desc, status, due)
		@author = author
		@title = title
		@desc = desc
		@due = due
	end

	def overdue?
		#show which books are overdue
	end

	def out?
		#show which books are currently out
	end


end