class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var numSet: Set<Int> = Set(nums)

        if numSet.count != nums.count{
            return true
        }
        return false
    }
}
