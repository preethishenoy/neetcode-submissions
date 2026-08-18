class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count{
            return false
        }
        var countsS: [Character:Int] = [:]
        var countsT: [Character:Int] = [:]

        for char in s{
            countsS[char, default:0] += 1
        }

        for char in t{
            countsT[char, default:0] += 1
        }

        if countsS != countsT{
            return false
        }
        return true
    }
}
