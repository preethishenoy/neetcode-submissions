class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var numSet: Set<Int> = Set<Int>()

        for n in nums{
            if numSet.contains(n){
                return true
            }
            numSet.insert(n)
        }
        return false
    }
}
