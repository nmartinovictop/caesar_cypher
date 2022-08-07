# > caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"


ALPHABET = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

def caesar_cipher(phrase,offset)

  phrase_list = phrase.split("")
  new_phrase = []
  phrase_list.each do |l|

    if ALPHABET.index(l.upcase) != nil
      
      letter_to_add = ALPHABET[(ALPHABET.index(l.upcase) + offset) % 26]

      new_phrase << (l.upcase == l ? letter_to_add : letter_to_add.downcase)
    else 
      new_phrase << l
    end

  end
  new_phrase.join("")
end


puts caesar_cipher("What a string!", 5)