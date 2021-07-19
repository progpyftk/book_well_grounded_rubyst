class Array
	def my_each
		j = 0
		until j == size
			yield self[j]
			j += 1
		end
		self
	end
end

class Integer
	def my_times
		j = 0
		array = []
		until j == self
			array << j
			j += 1
		end
		array.my_each do |x|
			yield x			
		end
		self
	end
end

5.my_times {|i| puts "iteration number #{i}"}
		