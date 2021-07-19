puts "Reading the number from file..."
num = File.read("temp.dat")
f = (num.to_i * 9 / 5) + 32
puts "Writing the result to the output file"
fh = File.new("output.dat", "w")
fh.puts f
fh.close