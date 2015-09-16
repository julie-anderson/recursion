def fibs(number)
	fibonacci = []
	(1..number).each do |num|
		if num <= 2
			fibonacci << 1
		else
			fibonacci << (fibonacci[-1] + fibonacci[-2])
		end
	end
	fibonacci.last
end

def fibs_rec(number)
	number <= 2 ? 1 : fibs_rec(number-1) + fibs_rec(number-2)
end

puts fibs(1)
puts fibs(2)
puts fibs(3)
puts fibs(4)
puts fibs(5)
puts fibs(6)
puts fibs(7)
puts fibs(8)
puts fibs(9)

puts fibs_rec(1)
puts fibs_rec(2)
puts fibs_rec(3)
puts fibs_rec(4)
puts fibs_rec(5)
puts fibs_rec(6)
puts fibs_rec(7)
puts fibs_rec(8)
puts fibs_rec(9)