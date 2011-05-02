require './game'

describe Game do
  before do
    @game = Game.new
  end

  describe "#score" do
    it "returns 0 for all gutter game" do
      20.times { @game.roll(0) }

      @game.score.should == 0
    end

    it "returns the sum of hitted pins for all gutter game" do
      @game.roll(5)
      @game.roll(10)

      @game.score.should == 15
    end
  end
end

