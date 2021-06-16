require 'spec_helper'

describe 'palindrome' do

    context 'with valid parameters' do
        it 'when it get a phrase palindrome, return true' do
            expect(is_palindrome?('A dama admirou o rim da amada')).to be_truthy
        end

        it 'when it get the string racificar, return true' do
            expect(is_palindrome?('racificar')).to be_truthy
        end

        it 'when it get the string mamam, return true' do
            expect(is_palindrome?('mamam')).to be_truthy
        end

        it 'when it get a phrase palindrome with pontuation and accents, return true' do
            expect(is_palindrome?('A Rita, sobre vovô, verbos atira')).to be_truthy
        end

        it "when it get a string date, return true" do
            expect(is_palindrome?('20/02/2002')).to be_truthy
        end

        it 'when it get a string of numbers, return true' do
            expect(is_palindrome?('8744478')).to be_truthy
        end

        it 'when it get a string of with a single letter, return true' do
            expect(is_palindrome?('a')).to be_truthy
        end
    end

    context 'with invalid parameters' do
        it 'when it get a a simple string that is not a palindrome, return false' do
            expect(is_palindrome?('casa')).to be_falsey
        end

        it "when it get a phrase, return false" do
            expect(is_palindrome?('Um teste para saber se é um palindromo')).to be_falsey
        end

        it "when it get a phrase with accentuation, return false" do
            expect(is_palindrome?('É um palindromo ou não é?')).to be_falsey
        end

        it 'when it get a integer values, return false' do
            expect(is_palindrome?(125236523)).to be_falsey
        end
    end
end