class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var numCount: Set<Int> = Set<Int>()

        for n in nums{
            if numCount.contains(n){
                return true
            }else{
                numCount.insert(n) 
            }
        }
        return false
    }
}
