Describe the Problem:
User wants to recieve an estimate of reading time for a text if they can read 200 words a minute.

Design the Method Signature:
# EXAMPLE

# `calculate reading time` counts the number of words in a string and calculates the reading time in minutes
split_words = string.split
words = split_words.length
estimated_time = count_words / 200

string: Original input text (e.g. "Hello world")
split_words: split string into an array of words (e.g. ["Hello", "world"])
words: count's split_words
estimated time: words / 200

# The method returns the estimated time in an integer that represents minutes rounded up to the nearest minute.

Create Examples as Tests:
# EXAMPLE

reading_time("") => 0
reading_time(nil) throws an error
reading_time("upto two hundred words") => 1
reading_time("three hundred words") => 2
reading_time("four hundred words") => 2
reading_time("ten thousand words") => 50



Implement the Behaviour: