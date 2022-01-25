# frozen_string_literal: true

RSpec.describe LocalyzeCodingChallenge::Two do
  describe ".find_subset_by_max_sum" do
    it "returns the position of the first and last element of the subset with maximum sum" do
      expect(described_class.find_subset_by_max_sum([2, -4, 6, 8, -10, 100, -6, 5])).to eq([2, 5])
    end

    context "with positive numbers" do
      it "returns the position of the first and last element of the subset with maximum sum" do
        expect(described_class.find_subset_by_max_sum([1, 2, 3])).to eq([0, 2])
      end
    end

    context "with zero at start of array" do
      it "returns the position of the first and last element of the subset with maximum sum" do
        expect(described_class.find_subset_by_max_sum([0, 1, 2, 3])).to eq([0, 3])
      end
    end

    context "with max sum at the end of array" do
      it "returns the position of the first and last element of the subset with maximum sum" do
        expect(described_class.find_subset_by_max_sum([-1, 2, 3, -9, 11])).to eq([4, 4])
      end
    end

    context "with max sum at the beginning of array" do
      it "returns the position of the first and last element of the subset with maximum sum" do
        expect(described_class.find_subset_by_max_sum([100, -9, 2, -3, 5])).to eq([0, 0])
      end
    end

    context "with previous max sum" do
      it "returns the position of the first and last element of the subset with maximum sum" do
        expect(described_class.find_subset_by_max_sum([1, -3, 7, 8, -15, -1, 9, 2, 5, 7])).to eq([6, 9])
      end
    end

    context "with empty array" do
      it { expect(described_class.find_subset_by_max_sum([])).to eq([]) }
    end

    context "without max sum" do
      it { expect(described_class.find_subset_by_max_sum([-1, -2])).to eq([]) }
    end
  end
end
