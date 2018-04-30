require 'pry'

class String

  def sentence?
    if self[self.length-1] == "."
      return true
    else
      return false
    end
  end

  def question?
    if self[self.length-1] == "?"
      return true
    else
      return false
    end
  end

  def exclamation?
    if self[self.length-1] == "!"
      return true
    else
      return false
    end
  end

  def count_sentences
    array = self.split
    count = 0
      for fragment in array
        if fragment.sentence? || fragment.question? || fragment.exclamation?
          count += 1
        end
      end
    count
  end
end
