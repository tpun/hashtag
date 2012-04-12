class HashTag < String
  Dictionary = %w( i so like bad things and it is a true thing )

  def words
    word = longest_word_from_end
    return [word] if word.nil? || self==word
    out = [self[0..(length-1-word.length)].words, word].flatten
    out = [] if out.join.length < length
    out
  end

private
  def longest_word_from_end
    length.times do |index|
      return self[index..-1] if Dictionary.include? self[index..-1]
    end
    nil
  end
end
