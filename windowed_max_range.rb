arr = [1, 2, 3, 5]
# arr2 = [1, 4, 5, 7, -1, 10, 2]

def windowed_max_range(arr, w) # o(n^2)
    current_max_range = 0

    arr.each_index do |i|
        window = arr[i...i+w]
        max = window.max
        min = window.min
        if max - min > current_max_range
            current_max_range = max - min
        end
    end
    current_max_range
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5