def quit_or_not
	print "Exit the program? (Yes or No): "
	ans = gets.chomp
	case ans
	when "yes"
		puts "Goodbye"
		exit
	when "no"
		puts "Ok, we will continue"
	else
		puts "I cant understand the answer"
		quit_or_not
	end
end

quit_or_not