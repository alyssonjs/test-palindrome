
def is_palindrome?(string)
    return false unless string.is_a? String 
    return false if string.empty?
    return true if string.size == 1

    normalized_string = normalize_string(string)
    normalized_string == normalized_string.reverse
end

def normalize_string(string)
    return false unless string.is_a? String

    no_accents_string = remove_accents(string)

    no_accents_string.downcase.gsub(/\W+/ , "")
end

def remove_accents(str)
    accents = {
      ['á','à','â','ä','ã'] => 'a',
      ['Ã','Ä','Â','À'] => 'A',
      ['é','è','ê','ë'] => 'e',
      ['Ë','É','È','Ê'] => 'E',
      ['í','ì','î','ï'] => 'i',
      ['Î','Ì'] => 'I',
      ['ó','ò','ô','ö','õ'] => 'o',
      ['Õ','Ö','Ô','Ò','Ó'] => 'O',
      ['ú','ù','û','ü'] => 'u',
      ['Ú','Û','Ù','Ü'] => 'U',
      ['ç'] => 'c', ['Ç'] => 'C',
      ['ñ'] => 'n', ['Ñ'] => 'N'
    }
    accents.each do |ac,rep|
      ac.each do |a|
        str = str.gsub(a, rep)
      end
    end

    str = str.gsub(/[^a-zA-Z0-9\. ]/,"")
    str = str.gsub(/[ ]+/," ")
    str = str.gsub(/ /,"-")
    str = str.downcase
    str
end