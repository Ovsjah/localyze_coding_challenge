# frozen_string_literal: true

RSpec.describe LocalyzeCodingChallenge::Five do
  let(:length_constraint) { "Both arrays should be <= 100" }
  describe ".find_symmetric_difference" do
    context "without constraints violation" do
      it "finds symmetric difference" do
        expect(described_class.find_symmetric_difference([1, 2, 3], [3, 4])).to eq([1, 2, 4])
      end
    end

    context "with constraints violation" do
      it "returns constraints" do
        expect(
          described_class.find_symmetric_difference(
            Array.new(101, :a), Array.new(101, :b)
          )
        ).to eq([length_constraint])
      end
    end
  end

  describe ".check_constraints" do
    context "with violation" do
      it "returns message about violation of length constraint" do
        expect(described_class.check_constraints(Array.new(100, :a), Array.new(101, :b))).to eq([length_constraint])
      end
    end

    context "without violation" do
      it { expect(described_class.check_constraints([], [])).to eq([]) }
    end
  end
end
