require 'diary_entry'

RSpec.describe DiaryEntry do
    it "returns title, contents and word count" do
        diary_entry = DiaryEntry.new("alphabet", "abcdefghijklmnopqrstuvxwyz")
        expect(diary_entry.title).to eq "alphabet"
        expect(diary_entry.contents).to eq "abcdefghijklmnopqrstuvxwyz"
        expect(diary_entry.count_words).to eq 1
    end
    it "reading_time" do
        diary_entry = DiaryEntry.new("numbers", "one two three four five six seven eight nine ten")
        expect(diary_entry.reading_time(30)).to eq 1
    end
    it "reading_time 2" do
        diary_entry = DiaryEntry.new("numbers", "one two three four five six seven eight nine ten")
        expect(diary_entry.reading_time(2)).to eq 5
    end
    it "reading_time odd" do
        diary_entry = DiaryEntry.new("numbers", "one two three four five six seven eight nine")
        expect(diary_entry.reading_time(2)).to eq 5
    end
    it "given wpm of 0" do
        diary_entry = DiaryEntry.new("numbers", "one two three four five")
        expect {diary_entry.reading_time(0)}.to raise_error "Reading speed must be above zero."
    end
    it "reading_chunk readable within the time" do
        diary_entry = DiaryEntry.new("numbers", "one two three four five six seven eight nine ten")
        chunk = diary_entry.reading_chunk(200, 1)
        expect(chunk).to eq "one two three four five six seven eight nine ten"
    end
    it "reading_chunk not readable in the time" do
        diary_entry = DiaryEntry.new("numbers", "one two three four five six seven eight nine ten")
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "one two three"
    end
end