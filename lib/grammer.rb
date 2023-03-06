def grammer(text)
    fail "Nothing provided!" if text.empty?
    if text.to_s.start_with?(/[A-Z]/)  && text.to_s[-1].match?(/[[:punct:]]/)
        return "Correct grammer."
    elsif !text.to_s.start_with?(/[A-Z]/)
        return "Incorrect grammer no capital letter at start of sentence."
    elsif !text.to_s[-1].match?(/[[:punct:]]/)
        return "Incorrect grammer no punctuation at the end."
    end
end