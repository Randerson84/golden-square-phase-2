def calcualte_reading_times(string)
    split_words = string.split(" ")
    if split_words.length == 0
        return 0
    elsif split_words.length <= 200
        return 1
    elsif split_words.length > 200
        return (split_words.length / 200.to_f).ceil
    end
end
