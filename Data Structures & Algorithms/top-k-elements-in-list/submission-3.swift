struct Heap<T: Comparable> {
    private var elements: [T] = []

    var count: Int { elements.count }
    var isEmpty: Bool { elements.isEmpty }

    mutating func insert(_ value: T) {
        elements.append(value)
        siftUp(from: elements.count - 1)
    }

    mutating func removeMin() -> T {
        elements.swapAt(0, elements.count - 1)
        let min = elements.removeLast()
        siftDown(from: 0)
        return min
    }

    private mutating func siftUp(from index: Int) {
        var child = index
        var parent = (child - 1) / 2

        while child > 0 && elements[child] < elements[parent] {
            elements.swapAt(child, parent)
            child = parent
            parent = (child - 1) / 2
        }
    }

    private mutating func siftDown(from index: Int) {
        var parent = index

        while true {
            let left = 2 * parent + 1
            let right = left + 1
            var candidate = parent

            if left < elements.count && elements[left] < elements[candidate] {
                candidate = left
            }
            if right < elements.count && elements[right] < elements[candidate] {
                candidate = right
            }
            if candidate == parent { return }

            elements.swapAt(parent, candidate)
            parent = candidate
        }
    }
}
struct NumFreq: Comparable{
    let num: Int
    let freq: Int

    static func < (lhs: NumFreq, rhs: NumFreq) -> Bool{
        return lhs.freq < rhs.freq
    }
}

class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        var heap: Heap<NumFreq> = Heap<NumFreq>()
        var result: [Int] = []

        for n in nums{
            dict[n, default: 0] += 1
        }

        for (num,freq) in dict{
            heap.insert(NumFreq(num: num, freq: freq))
            if heap.count > k{
                heap.removeMin()
            }
        }

        while !heap.isEmpty{
            result.append(heap.removeMin().num)
        }
        return result
    }
}
