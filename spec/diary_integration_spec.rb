require "diary"
require "diary_entry"

RSpec.describe "integration" do
    context "when we add a diary entry into the diary" do
        it "comes back in the diary." do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my_title_1", "my_contents_1")
            diary_entry_2 = DiaryEntry.new("my_title_2", "my_contents_2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect(diary.all).to eq [diary_entry_1, diary_entry_2]
        end
    end
    context "word counting behaviour" do
        it "counts the words in all diary entries contents." do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my_title_1", "my_contents_1")
            diary_entry_2 = DiaryEntry.new("my_title_2", "my_contents_2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect(diary.count_words).to eq 2
        end
    end
    context "reading time behaviour" do
        it "calculates the reading time for all entries" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my_title_1", "my_contents_1")
            diary_entry_2 = DiaryEntry.new("my_title_2", "my_contents_2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect{diary.reading_time(0)}.to raise_error "Reading speed must be above zero."
        end
        it "calculates the reading time for all entries" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my_title_1", "my_contents_1")
            diary_entry_2 = DiaryEntry.new("my_title_2", "my_contents_2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect(diary.reading_time(2)).to eq 1
        end
        it "calculates the reading time for all entries odd" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my_title_1", "my_contents_1")
            diary_entry_2 = DiaryEntry.new("my_title_2", "my_con tents_2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect(diary.reading_time(2)).to eq 2
        end
    end
    context "best entry by reading time behaviour" do
        it "fails where wpm is 0" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my_title_1", "my_contents_1")
            diary.add(diary_entry_1)
            expect{diary.find_best_entry_for_reading_time(0,1)}.to raise_error "Reading speed must be above zero."
        end
        it "return entry if only one entry" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my_title_1", "my_contents_1")
            diary.add(diary_entry_1)
            result = diary.find_best_entry_for_reading_time(2, 1)
            expect(result).to eq diary_entry_1
        end
        it "returns nil if entry is unreadable" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my_title_1", "my contents longer")
            diary.add(diary_entry_1)
            result = diary.find_best_entry_for_reading_time(2, 1)
            expect(result).to eq nil
        end
        it "returns the longest of multiple diary entries that could be read in the time" do
            diary = Diary.new
            best_entry = DiaryEntry.new("my title", "one two")
            diary.add(DiaryEntry.new("my title", "one"))
            diary.add(DiaryEntry.new("my title", "one two three"))
            diary.add(best_entry)
            diary.add(DiaryEntry.new("my title", "one two three four"))
            diary.add(DiaryEntry.new("my title", "one two three four five"))
            result = diary.find_best_entry_for_reading_time(2, 1)
            expect(result).to eq best_entry
        end
    end
end