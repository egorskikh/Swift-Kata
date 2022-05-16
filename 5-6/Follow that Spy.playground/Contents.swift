import UIKit

// Follow that Spy. Swift.

func findRoutes(routes: [[String]]) -> String? {
    var trace: [String] = []
    _ = routes.map { currentPair in
        if routes.first(where: { point in point[1] == currentPair[0]}) == nil {
            trace.append(currentPair[0])
            trace.append(currentPair[1])
        }
    }.map {
        routes.map { currentPair in
            if currentPair[0] == trace[trace.count - 1] {
                trace.append(currentPair[1])
            }
        }
    }
    return trace.joined(separator: ", ")
}
