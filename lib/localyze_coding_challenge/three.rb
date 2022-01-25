# frozen_string_literal: true

module LocalyzeCodingChallenge
  # Challenge 3
  class Three
    def self.get_last_max_word_length(str)
      constraints = check_constraints(str)
      return constraints unless constraints.empty?

      str.split(/\s/).max { |word| word.size }.size
    end

    def self.check_constraints(str)
      constraints = []
      unless str.size.between?(1, 104)
        constraints << "Input string length should be between 1 and 104 characters inclusive"
      end
      if str.match?(/[^a-zA-Z\s+]/)
        constraints << "Input string should consist of only English letters and regular spaces"
      end
      constraints
    end
  end
end
