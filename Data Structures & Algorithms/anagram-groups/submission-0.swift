class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict: [[Int]:[String]] = [:]
        for str in strs{
            var count = [Int](repeating: 0, count:26)
            for c in str{
                count[Int(c.asciiValue!) - 97] += 1
            }
            dict[count, default:[]].append(str)
        }
        return Array(dict.values)
    }
}
