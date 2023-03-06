require 'count_words'

RSpec.describe "Counts words method" do
    context "Takes a string as an argument and returns the number of words in that string" do
        it "counts an empty string" do
            result = count_words("")
            expect(result).to eq 0
        end
        it "counts a string of words" do
            result = count_words("I know how to code that")
        end
    end
end