import UIKit

// Weird prime generator

func gcd(_ m: Int, _ n: Int) -> Int {
  var a = 0
  var b = max(m, n)
  var r = min(m, n)

  while r != 0 {
    a = b
    b = r
    r = a % b
  }
  return b
}

func an(_ n: Int) -> [Int] {
  var a = [Int]()
  var previous = 7
  if n < 2 {
    return [previous]
  }
  for i in 2...(n+1) {
    let ai = previous + gcd(i, previous)
    a.append(previous)
    previous = ai
  }
  return a
}

func gn(_ a: [Int]) -> [Int] {
  return [1] + Array(zip(a, a[1...])).map { $0.1 - $0.0 }
}

func pn(_ n: Int) -> [Int] {
  var p = Set<Int>()
  var a_prev = 7
  var i = 2
  
  while(p.count < n) {
      let ai = a_prev + gcd(i, a_prev)
      let gi = ai - a_prev
      if gi != 1 {
        p.insert(gi)
      }
      a_prev = ai
      i += 1
  }
  
  return Array(p)
}

func countOnes(_ n: Int) -> Int {
  let a = an(n)
  let g = gn(a)
  var ones = 0
  for i in g {
    if i == 1 {
      ones += 1
    }
  }
  return ones
}

func maxPn(_ n: Int) -> Int {
  let p = pn(n)
  let mx = p.max() ?? 0
  return mx
}

func anOver(_ n: Int) -> [Double] {
  var ano = [Double]()
  var a_prev = 7
  var i = 2
  
  while(ano.count < n) {
      let ai = a_prev + gcd(i, a_prev)
      let gi = ai - a_prev
      if gi != 1 {
        ano.append(Double(ai)/Double(i))
      }
      a_prev = ai
      i += 1
  }
  
  return Array(ano)
}

func anOvernAverage(_ n: Int) -> Int {
  let ano = anOver(n)
  return Int(ano.reduce(0.0, +)) / ano.count
}
