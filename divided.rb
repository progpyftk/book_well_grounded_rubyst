def divide_by_user
	print "enter a number"
	n = gets.to_i
	binding.irb
	begin
		result = 100/n
	rescue ZeroDivisionError
		puts "Your number does not work. Was it Zero?"
		exit
	end
	puts "the result is #{result}"
end

divide_by_user