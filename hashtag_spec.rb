require './hashtag'

describe HashTag do
  describe "#words" do
    def hashtag words
      words.join ''
    end

    let(:expected) { ['things', 'i', 'like']}
    it "returns array of proper words" do
      HashTag.new(hashtag expected).should == expected
    end

    let(:expected) { "badtaaaag" }
    it "returns untouched string if there is any non proper word" do
      HashTag.new(hashtag expected).should == expected
  end
end