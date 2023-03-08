# File: letter_counter.rb

class LetterCounter
    def initialize(text)
      @text = text
    end
  
    def calculate_most_common()
      #removed(1) from creating the Hash.new otherwise it adds 1 to the count.
      counter = Hash.new
      most_common = nil
      most_common_count = 0
      @text.chars.each do |char|
        next unless is_letter?(char)
        #counter[char] || 1 changed to 0 to fix the count
        counter[char] = (counter[char] || 0) + 1
        if counter[char] > most_common_count
          most_common = char
          #most_common_count += counter[char] changed to = to fix the letter and count being 1 extra
          most_common_count = counter[char]
        end
      end
      return [most_common_count, most_common]
    end
  
    private
  
    def is_letter?(letter)
      return letter =~ /[a-z]/i
    end
  end
  
  counter = LetterCounter.new("Digital Punk")
  p counter.calculate_most_common
  
  # Intended output:
  # [2, "i"]