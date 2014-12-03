class Fixnum  
  def prime?
    return false if self <= 1
    2.upto(Math.sqrt(self).to_i) do |x|
      return false if self % x == 0
    end 
    true
  end
  
  def to_a
    quotient, remainder = divmod(10)
    (quotient > 0 ? quotient.to_a : []) + [remainder]
  end
  
end

class PrimeRotation
  
  def self.list_until(range)
    return if range.to_i <= 1 || range.to_i > 1000000
    rotating_primes = []
    range.times do |number|
      if number.prime? && number > 9
        arr = number.to_a
        arr.permutation(arr.length).to_a.drop(1).each do |d|
          rotated_digit = d.join.to_i
          rotating_primes << rotated_digit if rotated_digit.prime? && rotated_digit != number
        end
      end
    end
    unless rotating_primes.empty?
      puts "Rotating primes for #{range} are #{rotating_primes.uniq}"
    end
  end
  
end

PrimeRotation.list_until(100)