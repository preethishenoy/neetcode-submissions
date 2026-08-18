class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int:Int] = [:]

        for (i,n) in nums.enumerated(){
            let complement = target - n
            if let compIndex = dict[complement]{
                return [compIndex, i]
            }
            dict[n] = i
        }
        return []
    }
}
