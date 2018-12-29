require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require 'chronal_calibration'
require 'input'

class TestChronalCalibration < Minitest::Test
  def test_calibrate
    assert_equal 3, ChronalCalibration.new(+1, +1, +1).calibrate
    assert_equal 0, ChronalCalibration.new(+1, +1, -2).calibrate
    assert_equal -6, ChronalCalibration.new(-1, -2, -3).calibrate
    assert_equal 445, ChronalCalibration.new(*ChronalCalibration::PUZZLES).calibrate
  end

  def test_first_repeats
    assert_equal 0, ChronalCalibration.new(+1, -1).first_repeats
    assert_equal 10, ChronalCalibration.new(+3, +3, +4, -2, -4).first_repeats
    assert_equal 5, ChronalCalibration.new(-6, +3, +8, +5, -6).first_repeats
    assert_equal 14, ChronalCalibration.new(+7, +7, -2, -7, -4).first_repeats
    assert_equal 219, ChronalCalibration.new(*ChronalCalibration::PUZZLES).first_repeats
  end
end
