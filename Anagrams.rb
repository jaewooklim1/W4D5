# Our goal today is to write a method that determines if two given words are anagrams. 
# This means that the letters in one word can be rearranged to form the other word. 
# For example:

def first_anagram?(string1, string2)

    string1.chars.to_a.permutation.map(&:join).include?(string2)

end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true

def second_anagram?(string1, string2)

    splitString2 = string2.split("")
    string1.each_char do |char|
        if splitString2.include?(char)
            splitString2.delete_at(splitString2.index(char))
        end
    end
    
    splitString2.join("") == ""
end


p second_anagram?("gizmo", "sally")    #=> false
p second_anagram?("elvis", "lives")    #=> true