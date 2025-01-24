def substrings(string, dictionary) 
  dictionary.reduce(Hash.new(0)) do |acc, item| 
    if string.downcase.include?(item.downcase)
      acc[item] = string.downcase.scan(item.downcase).count
    end
    acc
  end  
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

