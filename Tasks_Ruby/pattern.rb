class Iterator
  def initialize(max)
    @max = max
  end

  def each
    (1..@max).each do |num|
      yield num
    end
  end
end

numbers = Iterator.new(5)
numbers.each { |num| puts num }
