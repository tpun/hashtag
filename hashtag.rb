class HashTag < String
  Dictionary = %w( i so like bad things and it is a true thing )

  def words
    matched = reverse_match
    return [self] if matched.nil? || self==matched
    [self[0..(length-1-matched.length)].words, matched].flatten
  end

  def reverse_match
    length.times do |index|
      return self[index..-1] if Dictionary.include? self[index..-1]
    end
    nil
  end
end