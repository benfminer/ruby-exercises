# Create a method to scan a dictionary and look for substrings in a provided
# word. Then create a hash with the substrings and thier counts

def substrings(string, dictionary)
  sub_hash = {} # Create empty hash

  dictionary.each do |dict_word|  # Loop through dictionary
    count = 0 # create count variable

    string.split(" ").each do |sub_word|  # Loop through string
      strip_sub_word = sub_word.gsub(/[[:punct:]]/, "") #create new variable to with word stripped of punctuation
      if strip_sub_word.downcase.include?(dict_word)  #Check if string word is in dictionary word, if so increase count
        count += 1
      end
    end
    if count > 0  # If string word found in dictionary then create hash entry with count of number of times string included
      sub_hash[dict_word] = count
    end
  end
  return sub_hash
end