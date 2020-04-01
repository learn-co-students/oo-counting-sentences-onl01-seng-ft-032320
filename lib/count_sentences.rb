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
      new_array = self.split(/[.?!]/).reject {|string| string.empty?}
      #Reject returns a new array containing the items in self for which the given block is not true.
      return new_array.length
    end
  end
