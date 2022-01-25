# frozen_string_literal: true

RSpec.describe LocalyzeCodingChallenge::Three do
  let(:length_constraint) { "Input string length should be between 1 and 104 characters inclusive" }
  let(:eng_letters_spaces_constraint) { "Input string should consist of only English letters and regular spaces" }

  describe ".get_last_max_word_length" do
    context "without constraints violation" do
      it "returns length of the last longest word" do
        expect(described_class.get_last_max_word_length("luffy is still joyboy")).to eq(6)
      end

      context "with normal spaces" do
        it "returns length of the last longest word" do
          expect(described_class.get_last_max_word_length("Hello World")).to eq(5)
        end
      end

      context "with sequence of spaces" do
        it "returns length of the last longest word" do
          expect(described_class.get_last_max_word_length(" fly me   to   the moon   ")).to eq(4)
        end
      end
    end

    context "with constraints violation" do
      it { expect(described_class.send(:check_constraints, " ")).to eq([eng_letters_spaces_constraint]) }
    end
  end

  describe ".check_constraints" do
    context "with constraints violation" do
      context "with 0 characters" do
        it { expect(described_class.send(:check_constraints, "")).to eq([length_constraint]) }
      end

      context "with 105 characters" do
        it { expect(described_class.send(:check_constraints, "a" * 105)).to eq([length_constraint]) }
      end

      context "with non English letters" do
        it { expect(described_class.send(:check_constraints, "Здравствуйте")).to eq([eng_letters_spaces_constraint]) }
      end

      context "with not regular spaces" do
        it { expect(described_class.send(:check_constraints, "regular spaces")).to eq([eng_letters_spaces_constraint]) }
      end
    end

    context "without constrints violation" do
      it { expect(described_class.send(:check_constraints, "a")).to eq([]) }
    end
  end
end
