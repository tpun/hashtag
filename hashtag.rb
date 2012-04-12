class HashTag < String
  Dictionary = %w( i so like bad things and it is a true thing )

  def words
    word = longest_word_from_end
    return [self] if word.nil? || self==word
    [self[0..(length-1-word.length)].words, word].flatten
  end

private
  def longest_word_from_end
    length.times do |index|
      return self[index..-1] if Dictionary.include? self[index..-1]
    end
    nil
  end
end