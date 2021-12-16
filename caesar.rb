def caesar_cipher(message,offset)
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    new_message = ''

    message.each_char do |l|
        if !alphabet.include?(l.downcase)
            new_message += l
            next
        end
        original_letter_index = alphabet.index(l.downcase)
        new_letter_index = (original_letter_index + offset) % 26
        new_message += l.upcase == l ? alphabet[new_letter_index].upcase : alphabet[new_letter_index]

    end

    new_message

end


puts caesar_cipher("What a string!", 5)