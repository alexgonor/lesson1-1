class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    @array.size
  end

  def reverse
    @array.reverse
  end

  def max
    @array.max
  end

  def min
    @array.min
  end

  def desc
    @array.sort! { |a, b| b <=> a }
  end

  def asc
    @array.sort! { |a, b| a <=> b }
  end

  def odd
    @array.select { |elem| elem.odd? }
  end

  def multiple_to_three
    @array.select { |elem| elem % 3 == 0 }
  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    @array.select { |elem| elem / 10.0 }
  end

  def chars
    "abcdef".chars.to_a.values_at(*@array)
  end

  def switch
    min = @array.min
    max = @array.max
    @array[min], @array[max] = @array[max], @array[min]
  end

  def before_min
    @array[0...@array.index(@array.min)]
  end

  def three_smallest
    @array.sort[0..2]
  end
end
