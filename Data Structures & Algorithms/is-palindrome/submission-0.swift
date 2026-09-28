class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var sArr = Array(s.lowercased()).filter{
            $0.isLetter || $0.isNumber
        }
        var left = 0
        var right = sArr.count - 1

        while left < right{
            if sArr[left] != sArr[right]{
                return false
            }
            left += 1
            right -= 1
        }
        return true
    }
}
