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
 p my_min(list)  # =>  -5