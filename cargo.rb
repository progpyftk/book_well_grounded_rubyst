require_relative "module"

class Suitcase
end

class CargoHold
	include Stacklike
	def load_and_report(obj)
		print "Loading object"
		puts obj.object_id
		add_to_stack(obj)
	end
	
	def unload
		take_from_stack
	end
end

ch = CargoHold.new
sc1 = Suitcase.new
sc2 = Suitcase.new
sc3 = Suitcase.new
sc4 = Suitcase.new
sc5 = Suitcase.new

ch.load_and_report(sc1)
ch.load_and_report(sc2)
ch.load_and_report(sc3)
ch.load_and_report(sc4)
ch.load_and_report(sc5)

first_unloaded = ch.unload
puts "the first unloaded is: "
print first_unloaded.object_id