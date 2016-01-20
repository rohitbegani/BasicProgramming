def InsertionSort(arr)
	for j in 1..arr.length - 1
		key = arr[j]
		i = j - 1
		while i >= 0 &&  arr[i] > key do
			arr[i+1] = arr[i]
			i = i - 1
		end
		arr[i + 1] = key
	end
	p arr
end

unsortedArray = [5, 2, 4, 6, 1, 3]
unsortedArray1 = [3, 7, 4, 9, 5, 2, 6, 1]

InsertionSort(unsortedArray)
InsertionSort(unsortedArray1)