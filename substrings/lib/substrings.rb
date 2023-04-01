def find_substrings(string, dictionary)
    l = string.downcase
    results = Hash.new
    for substring in dictionary do
        results[substring] = l.scan(/#{substring}/i).length
    end
    results
end