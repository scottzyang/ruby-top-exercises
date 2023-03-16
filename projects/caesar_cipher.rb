def caesar_cipher(message, offset, result = '')
  message.each_byte do |letter|
    new_letter = letter + offset
    if letter.between?(97, 122)
      new_letter > 122 ? new_letter = new_letter - 122 + 96 : new_letter
    elsif letter.between?(65, 90)
      new_letter > 90 ? new_letter = new_letter - 90 + 64 : new_letter
    end
    result = result + new_letter.chr
  end
  puts result
end


caesar_cipher("tuvwxyz", 5)
