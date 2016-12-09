# #5
module RandomData
    def self.random_paragraph
        sentences = []
        rand(4..6).times do
           sentences << random_sentences
        end
        
        sentences.join(" ")
    end

# #7
    def self.random_sentences
        strings = []
        rand(3..8).times do
            strings << random_word
        end
        
        sentence = strings.join(" ")
        sentence.capitalize << "."
    end
    
# #8
    def self.random_word
        letters = ('a'..'z').to_a
        letters.shuffle!
        letters[0,rand(3..8)].join
    end
end

##
        