class Solver
  def factorial(num)
    if num.negative?
      raise NotImplementedError, "Error'"
    elsif num.zero?
      return 1
    else
      output = 1
      (1..num).each do |i|
        output *= i
      end
    end

    output
  end

  def reverse(word)
    rev = ''
    (1..word.length).each do |i|
      rev += word[word.length - i]
    end
    rev
  end

  def fizzbuzz(num)
    if (num % 5).zero? && (num % 3).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
