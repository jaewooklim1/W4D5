

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
def sorting_two_sum?(arr, target_sum)    #marginally better than brute force. 
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

p sorting_two_sum?(arr, 6) # => should be true
p sorting_two_sum?([1,2,3,4,5], 10) # => should be false



# p second_sorting_two_sum?(arr, 6) # => should be true
# p second_sorting_two_sum?(arr, 10) # => should be false

