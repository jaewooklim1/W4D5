 list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
 
 def my_min(arr)    # runs in O(n^2)
    min = arr.first
    arr.each do |ele1|
        arr.each do |ele2|
            if ele1 < ele2 && ele1 < min
                min = ele1
            end
        end
    end
    min
 end

 def my_min2(arr)   # runs in O(n)
    arr.inject do |ele, accum| 
        if ele<accum
            ele
        else
            accum
        end
    end
 end
# p my_min(list)  # =>  -5
# p my_min2(list)  # =>  -5
list = [5, 3, -7]

#   # possible sub-sums
#   [5]           # => 5
#   [5, 3]        # => 8 --> we want this one
#   [5, 3, -7]    # => 1
#   [3]           # => 3
#   [3, -7]       # => -4
#   [-7]          # => -7

def largest_contiguous_subsum(arr)
    max = arr[0]
    new_arr = []
    # p new_arr
    (0...arr.length).each do |idx1|
        (idx1...arr.length).each do |idx2|
            if idx1 == idx2
                new_arr << [arr[idx1]]
            else
                new_arr << arr[idx1..idx2]
            end           
        end
    end

    new_arr.each do |subArray|    #[[5], [[5, 3]], [[5, 3, -7]], [3], [[3, -7]], [-7]]
        sum = subArray.sum
        if sum > max
            max = sum
        end        
    end

    max
end
p largest_contiguous_subsum(list) # => 8
# [[5], [5, 3], [5, -7], [3, -7]]
p largest_contiguous_subsum([5]) # => 8
p largest_contiguous_subsum([5, 1, 3]) # => 9

