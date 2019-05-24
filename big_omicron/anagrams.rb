def bonus_anagram?(str1, str2)
  
  hash = Hash.new(0)
  str1.each_char { |char| hash[char] += 1}
  str2.each_char { |char| hash[char] -= 1}

  hash.values.all? { |val| val.zero? }
end

def fourth_anagram?(str1, str2)

  hash1 = Hash.new(0)
  hash2 = Hash.new(0)
  str1.each_char { |char| hash1[char] += 1}
  str2.each_char { |char| hash2[char] += 1}
  hash1 == hash2

end

def third_anagram?(str1, str2)
  str1.chars.sort == str2.chars.sort
end

def second_anagram?(str1, str2)
  arr2 = str2.chars 
  return false if str1.length != str2.length
  str1.each_char do |char|
   return false if  arr2.find_index(char).nil?
    # arr2.delete_at(idx2) unless idx2.nil?
  end
  true
end

def first_anagram?(str1, str2)
  perms = str1.chars.permutation.to_a
 perms.each do |perm|
  return true if perm == str2.chars
 end
 false
end

p first_anagram?("elvis", "pelvis")
p first_anagram?("elvis", "lives")