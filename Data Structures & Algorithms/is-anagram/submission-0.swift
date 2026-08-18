class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var dict1: [Character:Int] = [:]
        var dict2: [Character:Int] = [:]

        for char in s{
            dict1[char, default:0] += 1
        } 
        for char in t{
            dict2[char, default:0] += 1
        }
        if dict1 == dict2{
            return true
        }else{
            return false
        }

    }
}
