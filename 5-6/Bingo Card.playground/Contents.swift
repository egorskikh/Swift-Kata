import UIKit

// Bingo Card

func getCard() -> [String] {
  typealias BingoLetter = (column: String, max: Int, range: CountableClosedRange<Int>)
  let board: [BingoLetter] = [
    ("B", 5, 1...15),
    ("I", 5, 16...30),
    ("N", 4, 31...45),
    ("G", 5, 46...60),
    ("O", 5, 61...75),
  ]

  return board.flatMap({ letter -> [String] in
    let randomNumbers = letter.range.sorted(by: { _, _ in drand48() < drand48() }).prefix(letter.max)
    return randomNumbers.flatMap({ letter.column + String($0) })
  })
}
