class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count{
            return false
        }

        var sArr = Array(s)
        var tArr = Array(t)
        var count = Array(repeating: 0, count: 26)

        for c in sArr{
            count[Int(c.asciiValue!) - 97] += 1
        }

        for c in tArr{
            count[Int(c.asciiValue!) - 97] -= 1
        }

        for value in count{
            if value != 0{
                return false
            }
        }
        return true
    }
}
