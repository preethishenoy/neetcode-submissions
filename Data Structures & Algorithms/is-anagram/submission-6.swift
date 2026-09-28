class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var count: [Int] = Array(repeating: 0, count: 26)
        for c in s{
            count[Int(c.asciiValue!) - 97] += 1
        }

        for c in t{
            count[Int(c.asciiValue!) - 97] -= 1
        }

        for n in count{
            if n != 0{
                return false
            }
        }
        return true
    }
}
