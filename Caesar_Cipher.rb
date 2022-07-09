def caesar_cipher(string, shift)
  lower_case_array = ('a'..'z').to_a.reverse
  upper_case_array = ('A'..'Z').to_a.reverse

  new_string = string.split(//).map do |char|
    if char.ord > 96 && char.ord < 123
      new_index = lower_case_array.index(char) - shift
      char = lower_case_array[new_index]
    elsif char.ord < 91 && char.ord > 40
      new_index = upper_case_array.index(char) - shift
      char = upper_case_array[new_index]
    else
      char = char
    end
  end
  new_string = new_string.join
  puts new_string
end

caesar_cipher('What a string!', 5)
