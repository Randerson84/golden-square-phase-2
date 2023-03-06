require 'grammer'

RSpec.describe "grammer method" do
    context "Given an empty string" do
        it "fails" do
            expect{grammer("")}.to raise_error "Nothing provided!"
        end
    end
    context "Given a string with correct grammer" do
        it "Correct grammer output Correct grammer." do
            result = grammer("Hello world.")
            expect(result).to eq "Correct grammer."
        end
    end
    context "Given a string with no capital letter at the start" do
        it "No capital letter at the start." do
            result = grammer("hello world.")
            expect(result).to eq "Incorrect grammer no capital letter at start of sentence."
        end
    end
    context "Given a string with no punctation at the end" do
        it "No punctuation at the end." do
            result = grammer("Hello world")
            expect(result).to eq "Incorrect grammer no punctuation at the end."
        end
    end
end