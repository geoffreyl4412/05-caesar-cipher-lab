def caesar_encode(string, offset)
  # code
  capital_alphabet = [*("A".."Z")]
  lowercase_alphabet = [*("a".."z")]
  string.split("").collect do |character|
    if lowercase_alphabet.include?(character)
      lowercase_alphabet[(lowercase_alphabet.index(character) + offset) % 26]
    elsif capital_alphabet.include?(character)
      capital_alphabet[(capital_alphabet.index(character) + offset) % 26]
    else
      character
    end
  end.join("")
end

puts "What would you like to encode?"
user_string = gets.chomp
puts "What do you want the offset to be?"
user_offset = gets.chomp.to_i
puts caesar_encode(user_string,user_offset)

# caesar_encode("I <3 Ruby", 2)
# returns "K <3 Twda"

def caesar_decode(string, offset)
  # code
  capital_alphabet = [*("A".."Z")]
  lowercase_alphabet = [*("a".."z")]
  string.split("").collect do |character|
    if lowercase_alphabet.include?(character)
      lowercase_alphabet[(lowercase_alphabet.index(character) - offset) % 26]
    elsif capital_alphabet.include?(character)
      capital_alphabet[(capital_alphabet.index(character) - offset) % 26]
    else
      character
    end
  end.join("")
end

puts "What would you like to decode?"
user_string = gets.chomp
puts "What do you want the offset to be?"
user_offset = gets.chomp.to_i
puts caesar_decode(user_string,user_offset)

# caesar_decode("K <3 Twda", 2)
# returns "I <3 Ruby"