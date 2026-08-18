class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minBuy: Int = prices[0]
        var maxP: Int = 0
        for n in prices{
            maxP = max(maxP, n-minBuy)
            minBuy = min(minBuy, n)
        } 
        return maxP
    }
}
