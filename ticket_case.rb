class Ticket
	attr_accessor :venue, :date
	def initialize(venue, date)
		@venue = venue
		@date = date
	end
	def ===(other_ticket)
		self.venue == other_ticket.venue
	end
end

t1 = Ticket.new("Town Hall", "07-08-18")
t2 = Ticket.new("Conference Center", "07-08-18")

puts t1.date
puts t1.venue