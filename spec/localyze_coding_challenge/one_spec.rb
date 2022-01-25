# frozen_string_literal: true

RSpec.describe LocalyzeCodingChallenge::One do
  describe ".find_longest_sequence" do
    context "with sequence of same characters" do
      it "finds the longest sequence" do
        expect(described_class.find_longest_sequence("Pressuuuuuure")).to eq("uuuuuu")
      end

      it "finds the first longest sequence" do
        expect(described_class.find_longest_sequence("Pressuure")).to eq("ss")
      end

      it "finds the longest sequence with spaces" do
        expect(described_class.find_longest_sequence("A hot  dog    is not a dog")).to eq("    ")
      end
    end

    context "without sequence of same characters" do
      it "returns first letter" do
        expect(described_class.find_longest_sequence("Boat")).to eq("B")
      end
    end
  end
end
