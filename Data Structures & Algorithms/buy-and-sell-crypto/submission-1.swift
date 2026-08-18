class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minBuy: Int = prices[0]
        var maxP: Int = 0
        for n in prices{
            minBuy = min(minBuy, n)
            maxP = max(maxP, n-minBuy)
        } 
        return maxP
    }
}
