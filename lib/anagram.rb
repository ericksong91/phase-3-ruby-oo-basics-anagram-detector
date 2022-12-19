# Your code goes here!
require 'pry'


class Anagram

    def initialize(word)
        @word = word
        @array = []
    end

    def match(array_compare)

        array_word_orig = @word.chars

        @array = array_compare.filter do |element|
            element.chars.sort == array_word_orig.sort 
        end

        pp @array
    end
end

listen = Anagram.new("listen")

listen.match(%w[enlists google inlets banana])