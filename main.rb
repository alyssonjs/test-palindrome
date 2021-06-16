require_relative './lib/palindrome'

def main
    p "Está na duvida se uma palavra ou numero é um palindromo?"
    p "Digite aqui e descubra"
    string = gets.chomp

    p is_palindrome?(string)

    p is_palindrome?(string) ? 'Olha só!!! isso é realmente um palindromo.' : 'Ahh, não é palindromo, tenta outra!!!'
end

main