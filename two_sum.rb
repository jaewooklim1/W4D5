

def brute_force_two_sum?(arr, target_sum)    

    (0...arr.length).each do |idx1|
        (idx1+1...arr.length).each do |idx2|
            return true if arr[idx1] + arr[idx2] == target_sum                            
        end
    end
    
    false
end

arr = [0, 1, 5, -1, 3, 4]
# p brute_force_two_sum?(arr, 6) # => should be true
# p brute_force_two_sum?(arr, 10) # => should be false
require 'byebug'
def sorting_two_sum?(arr, target_sum)    
    sorted = arr.sort
    sorted.each_with_index do |ele,idx|
        dupl = sorted.dup
        current = dupl.delete_at(idx) # [1,2,4,5,6,7]
        unless dupl.bsearch {|ele2| ele2 + current == target_sum}.nil?
            return true
        end
    end

    false
end

# p sorting_two_sum?(arr, 6) # => should be true
# p sorting_two_sum?([1,2,3,4,5], 10) # => should be false


arr2 = [0, 1, 5, -1, 3, 4]

def sorting_two_sum?(arr, target_sum)    
    sorted = arr.sort
    sorted.each_with_index do |ele, idx|        
        sorted.bsearch do |ele2| 
            if ele2 + ele == target_sum && arr.index(ele2) != idx 
                return true
            end        
        end
    end

    false
end

# p sorting_two_sum?(arr2, 6) # => should be true
# p sorting_two_sum?([1,2,3,4,5], 10) # => should be false
# p sorting_two_sum?([1,2,3,4,5,6 ], 10) # => should be true
# p sorting_two_sum?([1,2,3,4,5], 15) # => should be false
# p sorting_two_sum?([1,2,3,4,5,10], 15) # => should be true

arr3 = [0, 1, 5, -1, 3, 4]

def hash_map_two_sum?(arr, target_sum)    

    hash1 = Hash.new(0) #{0 => 1, 1 => 1, 5 => 1...}

    arr.each do |ele|
        return true if hash1.has_key?(target_sum-ele)
        hash1[ele] += 1       
    end

    false
end

p hash_map_two_sum?(arr3, 6) # => should be true
p hash_map_two_sum?([1, 2, 3, 4, 5], 10) # => should be false
p hash_map_two_sum?([1, 2, 3, 5, 4], 10) # => should be false
p hash_map_two_sum?([1, 2, 3, 4, 5, 6], 10) # => should be true
p hash_map_two_sum?([1, 2, 3, 4, 5], 15) # => should be false
p hash_map_two_sum?([1, 2, 3, 4, 5, 10], 15) # => should be true