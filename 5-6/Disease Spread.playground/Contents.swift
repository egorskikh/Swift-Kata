import UIKit

// Disease Spread

func epidemic(_ tm: Int, _ n: Int, _ s0: Int, _ i0: Int, _ b: Double, _ a: Double) -> Int {
    return epidemicAssistant(dt: Double(tm)/Double(n), s0: Double(s0), i0: Double(i0), b: b, a: a)
}

func epidemicAssistant(dt: Double, s0: Double, i0: Double, b: Double, a: Double) -> Int {
    let nextS: Double = s0  - (dt * b * s0 * i0)
    let nextI: Double  = i0 + (dt * ((b * s0 * i0) - (a *  i0)))
    return ((nextI - Double(i0)) / dt ) < 0 ? Int(i0) : epidemicAssistant(dt: dt, s0: nextS, i0: nextI, b: b, a: a)
}
