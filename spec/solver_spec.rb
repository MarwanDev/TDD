require_relative '../solver'

describe Solver do
  describe '#fizzbuzz' do
    it 'returns fizz if N divisible by 3' do
      solver = Solver.new
      expect(solver.fizzbuzz(9)).to eq 'fizz'
    end
    it 'returns buzz if N divisible by 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(100)).to eq 'buzz'
    end
    it 'returns fizzbuzz if N divisible by 15' do
      solver = Solver.new
      expect(solver.fizzbuzz(75)).to eq 'fizzbuzz'
    end
    it 'returns number as string if N not divisible divisible by any' do
      solver = Solver.new
      expect(solver.fizzbuzz(4)).to eq '4'
    end
  end

  describe '#reverse' do
    it 'returns the string reversed' do
      solver = Solver.new
      expect(solver.reverse('fizz')).to eq 'zzif'
    end
  end

  describe '#factorial' do
    it 'raises a NotImplementedError after calling a negative number' do
      solver = Solver.new
      expect { solver.factorial(-7) }.to raise_error(NotImplementedError)
    end
    it 'returns the factorial of a given number' do
      solver = Solver.new
      expect solver.factorial(1).should eq 1
      expect solver.factorial(3).should eq 6
      expect solver.factorial(5).should eq 120
      expect solver.factorial(7).should eq 5040
      expect solver.factorial(10).should eq 3_628_800
      expect solver.factorial(0).should eq 1
    end
  end
end
