class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let numSet: Set<Int> = Set(nums)
        var longest: Int = 0

        for n in numSet{
            if !numSet.contains(n-1){
                var length = 1
                while numSet.contains(n+length){
                    length += 1
                }
                longest = max(longest, length)
            }
        }
        return longest
    }
}
