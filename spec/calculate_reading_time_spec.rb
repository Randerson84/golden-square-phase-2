require "calculate_reading_times"

RSpec.describe "calculate_reading_times method" do
    context "given an empty string" do
        it "no text provided return 0" do
            result = calcualte_reading_times("")
            expect(result).to eq 0
        end
    end
    context "given a string with less than two hundred words" do
        it "text under two hundred words return 1" do
            result = calcualte_reading_times("some words to test ")
            expect(result).to eq 1
        end
    end
    context "given a string with more than two hundred words" do
        it "text over two hundred words return text length /200" do
            result = calcualte_reading_times("words " * 200)
            expect(result).to eq 1
        end
    end
    context "given a string with two thousand words" do
        it "text over two thousand words return 10" do
            result = calcualte_reading_times("words " * 1000)
            expect(result).to eq 5
        end
    end    
end