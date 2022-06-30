import UIKit

// Street Fighter 2 - Character Selection. Swift.

func streetFighterSelection(fighters: [[String]], position: (row: Int, column: Int), moves: [Direction]) -> [String] {
    var row = position.row
    var col = position.column
    return moves.reduce(into: [], { acc, n in
      row = (row == 0 && n == Direction.down) ? 1 : (row == 1 && n == Direction.up) ? 0 : row
      col = ((col + (n == Direction.left ? -1 : n == Direction.right ? 1 : 0)) + 6) % 6
      acc.append(fighters[row][col])
    })
}
