def fibonacchi(index_num)
	fib = [0,1]
	if (index_num == 0 || index_num == 1)
		return index_num;
	else
		(index_num-1).times do |i|
			last_element = fib[fib.length-1]
			second_last_element = fib[fib.length-2]
			fib.push(last_element + second_last_element)
		end 
	end
	return fib[fib.length-1]
end
puts fibonacchi(7)