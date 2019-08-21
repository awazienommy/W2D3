class Array

  def uniq
    output = []

    self.each do |ele|
      output << ele if !output.include?(ele)
    end

    output

  end  

  def two_sum
    pairs = []

    (0...length).each do |i|
      (1...length).each do |j|
        if self[i] + self[j] == 0 && i < j
          pairs << [i, j]
        end
      end
    end
    pairs
  end

  def my_transpose
 
    self.transpose

  end



end