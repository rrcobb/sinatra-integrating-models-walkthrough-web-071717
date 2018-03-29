#your text analyzer model code will go here.
class TextAnalyzer
  attr_accessor :text

  def initialize(words)
    @text = words
  end

  def word_count
    @text.split(' ').length
  end

  def vowels
    @text.scan(/[aeiou]/i).count
  end

  def consonants
    @text.scan(/[^aeiou ]/i).count
  end

  def most_common
    @text.gsub(' ', '').downcase.chars.group_by { |x| x }.max_by { |k, v| v.length}[0]
  end

  def common_count
    @text.downcase.count(most_common)
  end
end
