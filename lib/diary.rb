class Diary
    def initialize
        @diary = []
    end
  
    def add(entry) # entry is an instance of DiaryEntry
        @diary << entry
    end
  
    def all
        @diary
    end
  
    def count_words
      # Returns the number of words in all diary entries
      # HINT: This method should make use of the `count_words` method on DiaryEntry.
      return @diary.sum(&:count_words)
    end
  
    def reading_time(wpm) # wpm is an integer representing
                          # the number of words the user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # if the user were to read all entries in the diary.
      fail "Reading speed must be above zero." unless wpm.positive?
      return (count_words / wpm.to_f).ceil
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
          # `wpm` is an integer representing the number of words the user can read
          # per minute.
          # `minutes` is an integer representing the number of minutes the user
          # has to read.
      # Returns an instance of diary entry representing the entry that is closest 
      # to, but not over, the length that the user could read in the minutes they
      # have available given their reading speed.
      readable_entires = @diary.filter do |entry|
        entry.reading_time(wpm) <= minutes
      end
      readable_entires.max_by do |entry|
        entry.count_words
      end
    end
  end
