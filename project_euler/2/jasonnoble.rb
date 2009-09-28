require 'benchmark'
include Benchmark


class Jason
  def self.Fibonacci(num)
    return 1 if num == 0 || num == 1
    @cache[num] ||= Fibonacci(num-1) + Fibonacci(num-2)
  end
  def self.run
    @cache = Hash.new
    i = 1
    sum = 0
    while(sum < 4000000000) do
      num = Fibonacci(i)
      sum += num if num % 2 == 0
      i += 1
    end  
  end
end

class Rein
  def self.run
    @cache2 = Hash.new {|hash, value| hash[value] = value < 2 ? value : hash[value-2] + hash[value-1]}
    i = 1
    sum = 0
    while sum < 4_000_000_000 do
      sum = @cache2[i]
      i += 1
    end
  end
end
n = 5000

3.times do
  Benchmark.benchmark(" "*7 + CAPTION, 7, FMTSTR, ">total:", ">avg:") do |x|
    tf = x.report("Jason:")   { n.times do Jason.run; end }
    tt = x.report("Rein:") { n.times do Rein.run; end }
    [tf+tt, (tf+tt)/2]
  end
end
