require './game'

describe Game do
 context "initialized with 5 hits" do
  subject do
    game = Game.new
    game.roll(5)
    game
  end

  describe "#score" do
    it "returns 0 for all gutter game" do
      20.times { subject.roll(0) }

      subject.score.should == 0
    end

    it "returns the sum of hitted pins for all gutter game" do
      subject.roll(5)
      subject.roll(10)

      subject.score.should == 15
    end
  end
 end
end

