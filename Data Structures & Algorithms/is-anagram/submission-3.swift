class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var arrS = Array(repeating: 0, count: 26)
        var arrT = Array(repeating: 0, count: 26)

        for c in s{
            arrS[Int(c.asciiValue!) - 97] += 1
        }

        for c in t{
            arrT[Int(c.asciiValue!) - 97] += 1
        }

        if arrS == arrT{
            return true
        }else{
            return false
        }
    }
}
