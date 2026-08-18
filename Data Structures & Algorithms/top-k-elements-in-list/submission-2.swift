class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict: [Int:Int] = [:]
        var result: [Int] = []

        for n in nums{
            dict[n, default: 0] += 1
        }

        var sortedDict = dict.sorted{ $0.value > $1.value }
        for i in 0..<k{
            result.append(sortedDict[i].key)
        }
        return result

    }
}

