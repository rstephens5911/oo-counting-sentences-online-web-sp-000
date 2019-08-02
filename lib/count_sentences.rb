require 'pry'

class String

  def sentence?
    self.end_with?(".")? true : false
  end

  def question?
    self.end_with?("?")? true : false
  end

  def exclamation?
    self.end_with?("!")? true : false
  end

  def count_sentences
    array = []
    self.each do |sentence|
    if self == ""
      0
    else
      array << sentence.split(/[.!?] /)
    end

    array.count
  end

end
