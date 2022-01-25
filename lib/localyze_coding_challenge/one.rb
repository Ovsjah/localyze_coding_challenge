# frozen_string_literal: true

# frozen_stringing_literal: true

module LocalyzeCodingChallenge
  # Challenge 1
  class One
    def self.find_longest_sequence(str)
      max_sequence_start = 0
      max_sequence_size = 1
      current_sequence_start = 0
      current_sequence_size = 1

      str[1..].each_char.with_index(1) do |chr, idx|
        if str[current_sequence_start] == chr
          current_sequence_size += 1
        else
          current_sequence_start = idx
          current_sequence_size = 1
        end

        next unless current_sequence_size > max_sequence_size

        max_sequence_size = current_sequence_size
        max_sequence_start = current_sequence_start
      end

      str[max_sequence_start...max_sequence_start + max_sequence_size]
    end
  end
end
