require 'grammer_stats'

RSpec.describe GrammarStats do
    it "check" do
        grammer_stats = GrammarStats.new
        expect(grammer_stats.check("Hello world.")).to eq true
        expect(grammer_stats.check("hello world.")).to eq false
        expect(grammer_stats.check("Hello world")).to eq false
        expect{grammer_stats.check("")}.to raise_error "Nothing provided!"
    end
    it "percentage_good" do 
        grammer_stats =GrammarStats.new
        grammer_stats.check("Hello world.")
        grammer_stats.check("hello world.")
        expect(grammer_stats.percentage_good).to eq 50
    end
end