# Our goal today is to write a method that determines if two given words are anagrams. 
# This means that the letters in one word can be rearranged to form the other word. 
# For example:

def first_anagram?(string1, string2)  # space/time o(n!)
    string1.chars.to_a.permutation.map(&:join).include?(string2)
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(string1, string2)   #o(n^2)
    return false if string1.length!=string2.length
    splitString2 = string2.split("")
    string1.each_char do |char|
        if splitString2.include?(char)
            splitString2.delete_at(splitString2.index(char))
        end
    end
    
    splitString2.join("") == ""
end


# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true


def third_anagram?(string1, string2)    # Ruby uses quicksort. Time: o(n*log(n)) space = o(n)
    string1.split("").sort == string2.split("").sort
end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true

def fourth_anagram?(string1, string2) # Time: O(n) * O(n) => O(n) Space = O(1)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)
    string1.split("").each {|char1| hash1[char1]+=1}
    string2.split("").each {|char2| hash2[char2]+=1}

    hash1 == hash2
end

# p fourth_anagram?("gizmo", "sally")    #=> false
# p fourth_anagram?("elvis", "lives")    #=> true

def fifth_anagram?(string1, string2) # Time: O(n) * O(n) * O(n) => O(n) Space = O(1)
    count = Hash.new(0)
    string1.split("").each {|char1| count[char1]+=1}
    string2.split("").each {|char2| count[char2]-=1}
    count.all? {|k,v| v.zero?}
end

# p fifth_anagram?("gizmo", "sally")    #=> false
# p fifth_anagram?("elvis", "lives")    #=> true

