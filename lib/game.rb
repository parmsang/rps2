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
    [:rock,:paper,:scissors].sample
  end

  def who_wins(player, computer)
    GAME_RULES[player][computer]
  end
end
