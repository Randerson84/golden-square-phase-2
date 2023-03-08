class VowelRemover
    def initialize(text)
      @text = text
      @vowels = ["a", "e", "i", "o", "u"]
    end
  
    def remove_vowels()
      i = 0
      while i < @text.length()
      #  binding.irb
        if @vowels.include? @text[i].downcase
           # binding.irb
          @text = @text.slice(0,i) + @text.slice(i+1..-1)            
       # added an else to only increment i when a letter is not removed.
        else 
          i += 1
        end        
      end
      return @text
    end
  end