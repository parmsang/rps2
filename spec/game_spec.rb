require 'game'

describe Game do
  describe '#computer_hand' do
    it { is_expected.to respond_to(:computer_hand)}

    # xit 'Computer can pick a random option' do
    #   #expect(subject.computer_hand).to be_between(0, 2)
    # end
  end
  describe '#who_wins' do
    it { is_expected.to respond_to(:who_wins).with(2).argument}
    it 'lets player beat computer' do
      expect(subject.who_wins(:rock, :scissors)).to be :win
    end
    it 'lets player lose to computer' do
      expect(subject.who_wins(:rock, :paper)).to be :lose
    end
    it 'lets player tie with computer' do
      expect(subject.who_wins(:rock, :rock)).to be :tie
    end
  end
end
