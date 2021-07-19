puts "Reading C temp from data file ..."
num = File.read("temp.dat")
c = num.to_i
f = (c * 9 / 5) + 32
#print "The number in the file is: ", num, "\n"
#print "The number in the file is: ", num.to_i, "\n"
#puts "The number in the file is: ", num
puts "The number in the file is: " + num