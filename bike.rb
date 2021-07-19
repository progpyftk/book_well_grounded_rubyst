class Bicycle
	attr_reader :gears, :wheels, :seat
	def initialize(gears = 1)
		@wheels = 2
		@seats = 1
		@gears = gears
	end
end

class Tandem < Bycicle
	def initialize(gears)
		super
		@seats = 2
	end
end