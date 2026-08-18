class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict: [Int:Int] = [:]
        var result: [Int] = []
        for n in nums{
            dict[n, default: 0] += 1
        }
        for i in 0..<k{
            let pair = dict.max{ $0.value < $1.value}!
            result.append(pair.key)
            dict[pair.key] = nil

        }
        return result
    }
}
