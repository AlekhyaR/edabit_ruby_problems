You are given a string s and an array of strings words of the same length. Return all starting indices of substring(s) in s that is a concatenation of each word 
in words exactly once, in any order, and without any intervening characters.
You can return the answer in any order.
Example 1:
Input: s = "barfoothefoobarman", words = ["foo","bar"]
Output: [0,9]
Explanation: Substrings starting at index 0 and 9 are "barfoo" and "foobar" respectively.
The output order does not matter, returning [9,0] is fine too.

Example 2:
Input: s = "wordgoodgoodgoodbestword", words = ["word","good","best","word"]
Output: []

Example 3:
Input: s = "barfoofoobarthefoobarman", words = ["bar","foo","the"]
Output: [6,9,12]
 
Constraints:
1 <= s.length <= 104
s consists of lower-case English letters.
1 <= words.length <= 5000
1 <= words[i].length <= 30
words[i] consists of lower-case English letters.

Solution:
def find_substring(s, words)
    result = []
    words_after_combination = words.permutation.to_a.map {|a| a.join("")}
    words_after_combination.each do |word|    
        if s.include?(word)
            occurances_of_char = (0...s.length).find_all{|i| s[i,1] == word[0]}
            occurances_of_char.each do |index|
                first_index = index
                last_index = word.length
                if s[first_index, last_index] == word
                    result.push(first_index)
                end
            end
        end 
    end  
    return result.sort
end

s = find_substring("barfoothefoobarman", ["foo","bar"])
output : [0,9]
