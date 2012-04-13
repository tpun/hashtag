require './hashtag'

describe HashTag do
  describe "#words" do
    it "returns array of words" do
      HashTag.new("thingsilike").words.should == %w( things i like )
    end

    it "handles overlapping words" do
      HashTag.new("thingsotrueisiti").words.should ==
        %w( thing so true is it i)
    end

    it "returns empty array if there is any unmatched word" do
      HashTag.new("abbbadthing").words.should be_empty
    end
  end
end