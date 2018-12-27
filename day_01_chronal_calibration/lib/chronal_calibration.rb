class ChronalCalibration
  attr_reader :puzzles

  def initialize(*puzzles)
    @puzzles = puzzles
  end

  def calibrate
    puzzles.reduce(0, &:+)
  end

  def first_repeats
    puzzles.cycle.reduce([0]) do |fh, n|
      f = fh.last + n

      return f if fh.include?(f)

      fh << f
    end
  end
end
