def make_snippet (string)
    split_string = string.split(" ").to_a
    if split_string.length >= 5
        return split_string[0..4].join(" ") + "..."
    else
        return split_string.join(" ")
    end
end