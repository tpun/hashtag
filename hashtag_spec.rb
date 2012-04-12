require './hashtag'

describe HashTag do
  describe "#words" do
    let(:expected) { ['things', 'i', 'like']}
    it "returns array of proper words"

    let(:tricky) { ['thing', 'so', 'true', 'is', 'it', 'i'] }
    it "handles overlapping words"

    let(:random) { ["badtaaaag"] }
    it "returns untouched string if there is any non proper word"

    let(:camel_case) { "tRuethIngs" }
    it "ignores case"
  end
end