# frozen_string_literal: true

def find_substrings(string, dictionary)
    l = string.downcase
    results = Hash.new
    dictionary.each { |s| results[s] = l.scan(/#{s}/i).length }
    results
end