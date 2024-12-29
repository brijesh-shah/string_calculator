require 'rails_helper'

RSpec.describe Calculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(Calculator.add("")).to eq(0)
      expect(Calculator.add(" ")).to eq(0)
      expect(Calculator.add(nil)).to eq(0)
    end

    it 'returns the sum of numbers separated by commas' do
      expect(Calculator.add("1")).to eq(1)
      expect(Calculator.add("1,5")).to eq(6)
      expect(Calculator.add("1,2,3")).to eq(6)
    end

    it 'supports large number' do
      num1 = 1000022220221113334
      num2 = 100002222022111
      expect(Calculator.add("#{num1},#{num2}")).to eq(num1+num2)
    end
  end
end
