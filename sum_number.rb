class SumNumber
  def self.get_sum_until(n)
    return nil if n <= 0
    sum = 0
    n.times do |i|
      sum += sum_digits(i+1)
    end
    sum
  end
  
  def self.sum_digits(n)
    return n if n < 10
    quotient, remainder = n.divmod(10)
    (quotient > 0 ? sum_digits(quotient) : 0) + remainder
  end
  
end


puts SumNumber.get_sum_until(10)