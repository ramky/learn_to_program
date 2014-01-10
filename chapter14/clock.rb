def act_as_clock(&block)
	hour = Time.now.hour

	clock_hour = (hour >= 12 ? hour - 12 : hour)
	clock_hour.times do 
		block.call
	end
end

act_as_clock do
	puts 'DONG!'
end