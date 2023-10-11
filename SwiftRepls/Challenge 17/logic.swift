enum GameState {
  case gamble, nextPlr, replay
}

enum Gamble {
    case won, lost
}

let associatedGamble = [
    0: Gamble.lost,
    1: Gamble.won
]

class PlayerStats {
  var running = 0
  var banked = 0

  func roll() -> GameState {
      let roll1 = Int.random(in: 1...6)
      let roll2 = Int.random(in: 1...6)
    running = roll1 + roll2

    if roll1 == 1 && roll2 == 1 {
      running = 0
      banked = 0
      return GameState.nextPlr
    }
    else if roll1 == 1 || roll2 == 1 {
        running = 0
      return GameState.nextPlr
    }
      else {
          return GameState.gamble
      }
  }

  func gamble() -> Gamble {
      let choice = associatedGamble[Int.random(in: 0...1)]!
      return choice
  }
}
