class Towers
  attr_accessor :positions

  def initialize
    @positions = [[3, 2, 1], [], []]
  end

  def move(arr)
    raise MoveError unless valid_move?(arr)

    start, target = arr

    self.positions[target] << self.positions[start].pop
  end

  def won?
    self.positions[0].empty? && self.positions[1..-1].any?(&:empty?)
  end

  private

  def valid_move?(arr)
    start, target = arr

    return false if target >= 3
    return false if positions[start].empty?
    return false if start == target
    return true if  positions[target].empty?
    return false if positions[start].last > positions[target].last

    true
  end
end

class MoveError < ArgumentError

end
