def merge_sort(arr)
	return arr if arr.size == 1
	midpoint = (arr.size/2).floor
	merge(merge_sort(arr[0..midpoint-1]), merge_sort(arr[(midpoint)..-1]))
end

def merge(array1, array2)
	sorted = []
	while (!array1.empty? && !array2.empty?)
		if array1.first < array2.first
			sorted << array1.shift
		else
			sorted << array2.shift
		end
	end
	sorted + array1 + array2
end


p merge_sort([5,2,8,1,1,20,0,5,7])
p merge_sort([1,2,3,3,2,1])
p merge_sort([10,9,8,7,6,5,4,3,2,1,0])
p merge_sort([0])