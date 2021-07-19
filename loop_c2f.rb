class Temperature
	def Temperature.c2f(c)
		c * 9 / 5 + 32
	end
end

c = [0, 10, 20, 30, 40, 50]
puts "Celsius\tFahrenheit\t"

for each in c
	puts "#{each}\t #{Temperature.c2f(each)}"
end