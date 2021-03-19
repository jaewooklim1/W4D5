

def brute_force_two_sum?(arr, target_sum)    

    (0...arr.length).each do |idx1|
        (idx1+1...arr.length).each do |idx2|
            return true if arr[idx1] + arr[idx2] == target_sum                            
        end
    end
    
    false
end

arr = [0, 1, 5, 7]
# p brute_force_two_sum?(arr, 6) # => should be true
# p brute_force_two_sum?(arr, 10) # => should be false

def sorting_two_sum?(arr, target_sum)    
    sorted = arr.sort

    i = 0
    
    while i < sorted.length
        j = i+1
        while j < sorted.length
            return true if sorted[i] + sorted[j] == target_sum
            j += 1
        end
        i += 1
    end

    false
end

p sorting_two_sum?(arr, 6) # => should be true
p sorting_two_sum?(arr, 10) # => should be false

def sorting_two_sum_two?(arr, target_sum)    
