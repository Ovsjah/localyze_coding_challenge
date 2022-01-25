# frozen_string_literal: true

# frozen_stringing_literal: true

module LocalyzeCodingChallenge
  # Challenge 5
  class Five
    def self.find_symmetric_difference(arr1, arr2)
      constraints = check_constraints(arr1, arr2)
      return constraints unless constraints.empty?

      arr1 - arr2 | arr2 - arr1
    end

    def self.check_constraints(arr1, arr2)
      constraints = []
      constraints << "Both arrays should be <= 100" if arr1.size > 100 || arr2.size > 100
      constraints
    end
  end
end
