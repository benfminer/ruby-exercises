# Create a method to scan a dictionary and look for substrings in a provided
# word. Then create a hash with the substrings and thier counts

def substrings(string, dictionary)
  subs = {}
  dictionary.each do |word|
    if string.include?(word)
     subs = {word.to_s => string.scan(word).length}
    end
  end
  puts subs
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
