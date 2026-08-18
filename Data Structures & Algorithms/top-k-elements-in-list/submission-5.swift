class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict: [Int:Int] = [:]
        var buckets: [[Int]] = Array(repeating: [Int](), count: nums.count+1)
        var result: [Int] = []

        for n in nums{
            dict[n, default: 0] += 1
        }
        for (num,freq) in dict{
            buckets[freq].append(num)
        }
        for i in stride(from: buckets.count-1, through: 1, by: -1){
            for num in buckets[i]{
                result.append(num)
                if result.count == k{
                    return result
                }
            }
        }
        return result
    }
}
