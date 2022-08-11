import UIKit

// Resistor Color Codes. Part 2

func encodeResistorColors(_ ohmsString: String) -> String {
    let IntToColor = [0: "black", 1: "brown", 2: "red", 3: "orange", 4: "yellow", 5: "green", 6: "blue", 7: "violet", 8: "gray", 9: "white"]
    let str = ohmsString.prefix(upTo: ohmsString.firstIndex(of: " ")!)
    var countOhms: Double
    //var result = "gold"
    switch str[str.index(before: str.endIndex)]{
    case "k": countOhms = Double(str.prefix(upTo: str.firstIndex(of: "k")!))!*1000
    case "M":  countOhms = Double(str.prefix(upTo: str.firstIndex(of: "M")!))!*1000000
    default: countOhms = Double(str)!
    }
    let arrResult:[Int] = String(Int(countOhms)).map {Int(String($0))!}
    if arrResult[1] != 0 { return IntToColor[arrResult[0]]! + " " + IntToColor[arrResult[1]]! + " " + IntToColor[arrResult.filter{$0 == 0}.count]! + " " + "gold"}
    else {return IntToColor[arrResult[0]]! + " " + IntToColor[arrResult[1]]! + " " + IntToColor[arrResult.filter{$0 == 0}.count-1]! + " " + "gold"}
}
