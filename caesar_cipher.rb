# This program will take a string and return a caesar cipher 
# encoded string.

def caesar_cipher(string, shift)

  alphabet = ('a'..'z').to_a # Make a Alphabet array
  caesar_alphabet = alphabet.rotate(shift) # Rotate Alphabet for cipher
  new_string = "" # new string to return cipher

  string.each_char do |char| # Cycle through each character in string
    if alphabet.include?(char.downcase) # Check if char is alphabet or non-alphabet
      if char.ord.between?("A".ord, "Z".ord) # Check capitilization
        new_string.concat(caesar_alphabet[alphabet.index(char.downcase)].upcase) # Update new string with upcase cipher
      else
        new_string.concat(caesar_alphabet[alphabet.index(char.downcase)]) # Update new string with lowercase cipher
      end
    else
      new_string.concat(char) # Update new string with non-alphabet character
    end
  end
    return new_string # Return new string
end