def get_most_common_letter(text)
    counter = Hash.new(0)
   # puts "text.chars #{text.chars}"
    string = text.gsub(/\W/, '')
    string.chars.each do |char|
      counter[char] += 1
    end
    puts "counter after the loop #{counter.to_a.sort_by { |k, v| v }}"
    counter.to_a.sort_by { |k, v| v }[-1][0]

  end
  
  # Intended output:
  # 
   p get_most_common_letter("the roof, the roof, the roof is on fire!")
  # => "o"
  