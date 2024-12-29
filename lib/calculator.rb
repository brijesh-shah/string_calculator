class Calculator
  def self.add(numbers)
    return 0 if numbers.nil? || numbers.empty?

    delimiter = /,/
    num_array = numbers.split(/#{delimiter}/).map(&:to_i)
    num_array.sum
  end
end
