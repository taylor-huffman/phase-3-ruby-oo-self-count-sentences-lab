require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/(?!\w\.\w.)(?<![A-Z][a-z]\.)(?<=\.|\?|\!)\s/).count
  end
end