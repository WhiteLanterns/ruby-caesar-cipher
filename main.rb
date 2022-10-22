def caesar_cipher(string, shift)
    upper_letters = ('A'..'Z').to_a
    lower_letters = ('a'..'z').to_a
    result = ''
    
    string.each_char { |ch|
        unless lower_letters.find_index(ch).nil? && upper_letters.find_index(ch).nil?
            unless ch == ch.upcase
                i = lower_letters.find_index(ch)
                i += shift
                if i + shift > lower_letters.length
                    i -= 26
                    result += lower_letters[i]
                else
                    result += lower_letters[i]
                end
            else
                i = upper_letters.find_index(ch)
                i += shift
                if (i  > upper_letters.length)
                    i -= 26
                    result += upper_letters[i]
                else
                    result += upper_letters[i]
                end
            end
        else
            result += ch
        end
    }
    return result
end


puts caesar_cipher("What a string!", 5)