def stock_picker(history)
    history.each_with_index.to_a.combination(2).max_by { |b, s| s[0] - b[0]}.map {|v| v[1]}
end