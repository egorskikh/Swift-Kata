import UIKit

/*
 How Much?. Swift.

 I always thought that my old friend John was rather richer than he looked,
 but I never knew exactly how much money he actually had. One day (as I was plying him with questions) he said:

 "Imagine I have between m and n Zloty..." (or did he say Quetzal? I can't remember!)
 "If I were to buy 9 cars costing c each, I'd only have 1 Zloty (or was it Meticals?) left."
 "And if I were to buy 7 boats at b each, I'd only have 2 Ringglets (or was it Zloty?) left."
 Could you tell me in each possible case:

 how much money f he could possibly have ?
 the cost c of a car?
 the cost b of a boat?
 So, I will have a better idea about his fortune. Note that if m-n is big enough, you might have a lot of possible answers.

 Each answer should be given as ["M: f", "B: b", "C: c"] and all the answers as [ ["M: f", "B: b", "C: c"], ... ].
 "M" stands for money, "B" for boats, "C" for cars.
 */

func howMuch(_ m: Int, _ n: Int) -> [(String, String, String)] {
    return min(m, n)...max(m, n)
        .filter { $0 % 9 == 1 && $0 % 7 == 2 }
        .map {
            ("M: \($0)",
             "B: \($0 / 7)",
             "C: \($0 / 9)")
        }
}


