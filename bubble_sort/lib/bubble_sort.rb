def bubble_sort(arr)
    unsorted = true
    while unsorted do
        unsorted = false
        (0..arr.length-2).each do |i|
            if arr[i] > arr[i+1]
                unsorted = true
                arr = arr.insert(i+2, arr[i])
                arr.delete_at(i)
            end
        end
    end
    arr
end
