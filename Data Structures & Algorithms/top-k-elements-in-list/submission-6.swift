class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict: [Int:Int] = [:]

        for n in nums{
            dict[n, default:0] += 1
        }

        var buckets: [[Int]] = Array(repeating:[Int](),count: nums.count+1)
        for (n,freq) in dict{
            buckets[freq].append(n)
        }

        var result: [Int] = []
        for i in stride(from: buckets.count-1, through: 1, by: -1){
            for n in buckets[i]{
                result.append(n)
                if result.count == k{
                    return result
                }
            }
        }
        return result
    }
}
