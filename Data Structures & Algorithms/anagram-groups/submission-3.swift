class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var dict = [[Int]:[String]]()

        for str in strs{
            var freqArr: [Int] = Array(repeating: 0, count: 26)
            for s in str{
                freqArr[Int(s.asciiValue!) - 97] += 1
            }
            dict[freqArr, default:[]].append(str)
        }
        return Array(dict.values)
    }
}
