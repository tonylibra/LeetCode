import Foundation

class SingleNumber {
    func singleNumber(_ nums: [Int]) -> Int {
        var rst = nums[0]
        for n in 1..<nums.count {
            rst = rst ^ nums[n]
        }
        return rst
    }
}
