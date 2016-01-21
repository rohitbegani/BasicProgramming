def InsertionSortRev(arr)
	for i in 1..arr.length-1
		key = arr[i]
		j = i - 1
		while j >= 0  && arr[j] < key do
			arr[j+1] = arr[j]
			j = j - 1	
		end
		arr[j+1]=key
	end
	p arr
end

unsortedArray = [5, 2, 4, 6, 1, 3]
unsortedArray1 = [3, 7, 4, 9, 5, 2, 6, 1]
unsortedArray2 = [4, 1, 5, 7, 2, 3, 9]

InsertionSortRev(unsortedArray)
InsertionSortRev(unsortedArray1)
InsertionSortRev(unsortedArray2)