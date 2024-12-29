class Calculator
  def self.add(numbers)
    return 0 if numbers.nil? || numbers.empty?

    delimiter = get_delimiter(numbers)
    num_array = numbers.split(/#{delimiter}/).map(&:to_i)
    num_array.sum
  end

  private

  def self.get_delimiter(numbers)
    delimiter = /,/

    if numbers.start_with?("//")
      delimiter_info, _numbers = numbers.split("\n", 2)
      delimiter = Regexp.escape(delimiter_info[2..-1])
    end
    delimiter
  end
end
