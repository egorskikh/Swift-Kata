import UIKit

// Street Fighter 2 - Character Selection - Part 2

func superStreetFighterSelection(fighters: [[String]], position: (row: Int, column: Int), moves: [Direction]) -> [String] {
    
    var y = position.row
    var x = position.column
    let h = fighters.count
    let w = fighters[0].count
    
    return moves.reduce(into: [], { acc, e in
        switch e {
        case .up:
            if (y>0 && fighters[y-1][x].count>0) { y -= 1 }
        case .down:
            if (y<h-1 && fighters[y+1][x].count>0) { y += 1 }
        case .left:
            while (true) {
                x=(x+w-1)%w
                if (fighters[y][x].count>0) { break }
            }
        default:
            while (true) {
                x=(x+1)%w
                if (fighters[y][x].count>0) { break }
                
            }
        }
        acc.append(fighters[y][x])
    })
}
