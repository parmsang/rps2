class Game

  GAME_RULES = {
  rock: {
    rock: :tie,
    paper: :lose,
    scissors: :win
  },
  paper: {
    rock: :win,
    paper: :tie,
    scissors: :lose
  },
  scissors: {
    rock: :lose,
    paper: :win,
    scissors: :tie
  }
}

  def computer_hand
    [0,1,2].sample
  end

  def who_wins(player_hand)
    if computer_hand == 0
      computer = :rock
    elsif computer_hand == 1
      computer = :paper
    else
      computer = :scissors
    end

    GAME_RULES[player_hand][computer]
  end
end
