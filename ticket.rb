class Ticket
	def initialize (venue, date, price)
		@venue = venue
		@date = date
		@price = price
	end
	
	def price
		@price
	end

	def venue
		@venue
	end

	def price=(price)
		@price = price
	end

	def discount(percent)
		@price = @price * (100 - percent) / 100
		@price
	end
end

t1 = Ticket.new("Show da Anitta", "01/01/2022", 10.00)
puts "The ticket for #{t1.venue} costs $#{"%.2f" % t1.price}, mas com o desconto de 15% o preco ficou $#{"%.2f" % t1.discount(15)}"
