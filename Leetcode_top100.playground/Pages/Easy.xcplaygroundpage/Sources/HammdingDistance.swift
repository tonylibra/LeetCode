import Foundation

// https://leetcode.com/problems/hamming-distance/description/
class HammingDistance {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var dist = x ^ y
        var cnt = 0
        while dist != 0  {
            if dist & 1 == 1 {
                cnt += 1
            }
            dist = dist >> 1
        }
        return cnt
    }
}
