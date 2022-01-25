# frozen_string_literal: true

module LocalyzeCodingChallenge
  # Challenge 2
  class Two
    def self.find_subset_by_max_sum(nums)
      max_sum_start = nil
      max_sum_finish = nil
      max_sum = 0

      current_sum_start = 0
      current_sum = 0

      nums.each_with_index do |num, idx|
        current_sum += num

        if current_sum.negative?
          current_sum = 0
          current_sum_start = idx + 1
        end

        next unless current_sum > max_sum

        max_sum = current_sum
        max_sum_start = current_sum_start
        max_sum_finish = idx
      end

      [max_sum_start, max_sum_finish].compact
    end
  end
end
