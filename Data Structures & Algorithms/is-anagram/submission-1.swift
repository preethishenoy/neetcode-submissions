class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count{
            return false
        }

        let sortedS = s.sorted()
        let sortedT = t.sorted()

        if sortedS == sortedT{
            return true
        }else{
            return false
        }
    }
}
