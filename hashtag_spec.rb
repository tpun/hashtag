require './hashtag'

describe HashTag do
  describe "#words" do
    let(:expected) { ['things', 'i', 'like']}
    it "returns array of proper words" do
      HashTag.new(expected.join).words.should == expected
    end

    let(:tricky) { ['thing', 'so', 'true', 'is', 'it', 'i'] }
    it "handles overlapping words" do
      HashTag.new(tricky.join).words.should == tricky
    end

    let(:random) { ["badtaaaag"] }
    it "returns untouched string if there is any non proper word" do
      HashTag.new(random.join).words.should == random
    end
  end
end