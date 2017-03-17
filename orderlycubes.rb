#!/usr/bin/env ruby
if Gem::Specification.find_all_by_name('colorize').any?
	require 'colorize'
	Colors = [ :red, :green, :blue ].shuffle
end

Cycles = Integer( ARGV[0] || 33 )
Expont = "\u00b3" # Unicode superscript 3
Groups = 3        # Named constant for clarity
Number = [ "1", "5", "3" ]
Trails = [ "6", "0", "3" ]

Cycles.times do |n|

	num = []
	Groups.times { |i| num[i] = Number[i] + Trails[i] * n }

	# Make some arbitrary adjustments and see what happens:
	# num[0] = String(Integer(num[0]) + 1) if num[0].length > 1
	# num[1] = String(Integer(num[1]) - 1) if num[1].length > 1
	# num[2] = String(Integer(num[2]) * 3)

	res = String( Integer(num[0]) ** 3 + Integer(num[1]) ** 3 + Integer(num[2]) ** 3 )

	if defined?(Colors)
		len = res.length
		res = res.chars.to_a.each_slice(len / Groups).map(&:join)

		Groups.times do |i|
			res[i] = res[i].colorize(Colors[i])
			num[i] = num[i].colorize(Colors[i])
		end
	else
		res = Array(res)
	end

	puts num.join(Expont + "+") + Expont + " = " + res.join

end
