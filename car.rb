class Car
	def self.total_count=(n)
		@total_count = n
	end

	def self.total_count
		@total_count ||= 0
	end

	def self.makes
		@makes
	end

	def self.add_make(make)
		@makes ||= []
		@cars ||= {}
		unless @makes.include?(make)
			@makes << make
			@cars[make] = 0
			puts "Adding a new make: #{make}"
		else
			puts "The make is already created"
		end
	end
	
	def self.cars
		@cars
	end
	
	def make
		@make
	end
	
	def make_mates(make)
		self.class.cars[make]
	end
	
	def initialize(make)
		p self.class.makes
		if self.class.makes.include?(make)
			@make = make
			puts "Creating a new car: #{make}"
			self.class.cars[make] += 1
			self.class.total_count += 1
		else
			raise "No such make: #{make}."
		end
	end
		
end

Car.add_make("Honda")
h1 = Car.new("Honda")
puts Car.total_count
h2 = Car.new("Honda")
puts Car.total_count



