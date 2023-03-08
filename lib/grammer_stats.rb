class GrammarStats
  def initialize
    @good = 0.0
    @failed = 0.0
    @total = 0
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    fail "Nothing provided!" if text.empty?
    if text.start_with?(/[A-Z]/) && text[-1].match?(/[[:punct:]]/)
      @good += 1
      @total += 1
      return true      
    else
      @failed += 1
      @total += 1
      return false
    end
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    return @good/@total * 100
  end
end