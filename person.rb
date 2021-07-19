class Person
	PEOPLE = []
	attr_reader :name, :hobbies, :friends
	def initialize(name)
		@name = name
		@hobbies = []
		@friends = []
		PEOPLE << self
	end
	def has_hobby(hobby)
		@hobbies << hobby
	end
	def has_friends(friend)
		@friends = friend.name
	end
	def Person.method_missing(m, *args)
		method = m.to_s
		if method.start_with?("all_with_")
			attr = method[9..-1]
			if Person.public_method_defined?(attr)
				puts "entrei aqui, pois tem o método #{attr} definido"
				puts attr
				PEOPLE.find_all do |person|
					puts "iterando"
					if person.send(attr).include?(args[0])
						puts "entrei na porra"
						puts "#{person.name} has as #{attr} #{args[0]}"
					end
						
                        	end
			else
				raise ArgumentError, "Cant find the #{attr}"
			end
		else
			super
		end
	end
end

e = Person.new("Eric B.")
puts Person::PEOPLE[0].hobbies[0]
r = Person.new("Rakim")
e.has_friends(r)
e.has_hobby("cycling")
r.has_hobby("drums")
r.has_friends(e)
#puts Person::PEOPLE[0].hobbies[0]
puts Person::PEOPLE[0].friends[0]
Person.all_with_hobbies("cycling")
Person.all_with_hobbies("drums")
Person.all_with_friends("Rakim")



