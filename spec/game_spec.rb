require 'game'

describe Game do
  describe '#computer_hand' do
    it { is_expected.to respond_to(:computer_hand)}

    it 'Computer can pick a random option' do
      expect(subject.computer_hand).to be_between(0, 2)
    end
  end
  describe '#who_wins' do
    it { is_expected.to respond_to(:who_wins).with(1).argument}
  end
end
