class InventoryManagement
  def checksum(puzzles)
    count_2s = 0
    count_3s = 0

    puzzles.each do |puzzle|
      count_2s += 1 if scan(puzzle, 2)
      count_3s += 1 if scan(puzzle, 3)
    end

    count_2s * count_3s
  end

  def common_letters(puzzles)
    puzzles.combination(2).map do |a, b|
      simple_levenshtein_distance(a, b)
    end.min_by(&:first).last
  end

  private

  def scan(str, times)
    str.chars.group_by(&:ord).values.any? do |ary|
      ary.size == times
    end
  end

  def simple_levenshtein_distance(str1, str2)
    diff = 0
    common_letters = ''

    str1.chars.each_with_index do |char, i|
      if char == str2[i]
        common_letters << char
      else
        diff += 1
      end
    end

    [diff, common_letters]
  end
end
