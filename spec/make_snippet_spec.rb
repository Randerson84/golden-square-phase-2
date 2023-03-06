require 'make_snippet'

RSpec.describe "make_snippet method" do
    it "returns an empty string" do
        result = make_snippet("")
        expect(result).to eq ""
    end
    it "takes a string and outputs the first 5 words then ..." do
        result = make_snippet("Test-driven development is an approach to building software in the same way that Karate is an approach to combat.")
        expect(result).to eq "Test-driven development is an approach..."
    end
    it "takes a string of words less than 5 words" do
        result = make_snippet("Hello world")
        expect(result).to eq "Hello world"
    end
end
