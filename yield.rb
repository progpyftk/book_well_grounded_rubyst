def pass_control
	puts "inside the pass_control"
	yield
	puts "back to the pass_control"
end

pass_control