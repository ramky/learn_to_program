$depth = 0
def log(description, &block)
	#puts "Depth: #{$depth}"
	puts ("\t" * $depth) + "Beginning #{description}"
	$depth += 1
	return_value = block.call
	$depth -= 1
	puts ("\t" * $depth) + "Returning #{return_value}, finished #{description}"	
end

log 'outer' do
	log 'inner 1' do
		log 'inner 12' do
			"Inner 12"
		end
		"Inner 1"
	end
	log 'inner 2' do
		"Inner 2"
	end
	"Outer"
end