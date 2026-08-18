class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int:Int] = [:]

        for (i,n) in nums.enumerated(){
            let complement = target - nums[i]
            if let complementIndex = dict[complement]{
                return [complementIndex,i]
            }
            dict[n] = i
        }
        return []
    }
}
