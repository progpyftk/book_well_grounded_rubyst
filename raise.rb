def fussy_method(x)
	raise "I need 10" unless x == 10
end

begin
	fussy_method(4)
rescue RuntimeError => e # se não definir o ArgumentError no método, não da pra pegar o e
	puts "this is not a 10"
	puts e.backtrace
	puts e.message
end
