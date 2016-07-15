require "sort"

describe Sort do
  let(:sorts){Sort.new([1,3,7,2,5])}

  describe "#insertion" do
    it "sorts the array" do
      expect(sorts.insertion(sorts.arr)).to eq([1,2,3,5,7])
    end
  end

  describe "#bubble" do
    it "sorts the array" do
      expect(sorts.bubble(sorts.arr)).to eq([1,2,3,5,7])
    end
  end


  describe "#merge_sort" do
    it "merge sorts the array" do
      expect(sorts.merge_sort(sorts.arr)).to eq([1,2,3,5,7])

    end
  end

  describe "#merge" do
    it "merges two arrays" do
      expect(sorts.merge([1],[2])).to eq([1,2])
    end
  end






end
