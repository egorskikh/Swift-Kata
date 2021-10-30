/*
 Swift.

 Wolves have been reintroduced to Great Britain. You are a sheep farmer, and are now plagued by wolves which pretend to be sheep. Fortunately, you are good at
 spotting them.

 Warn the sheep in front of the wolf that it is about to be eaten. Remember that you are standing at the front of the queue which is at the end of the array
 */

func warnTheSheep(_ queue: [String]) -> String {

    let index = Array(queue.reversed()).firstIndex(where: { $0 == "wolf" })

    return index! == 0 ?
        "Pls go away and stop eating my sheep"
        :
        "Oi! Sheep number \(index!)! You are about to be eaten by a wolf!"
}



