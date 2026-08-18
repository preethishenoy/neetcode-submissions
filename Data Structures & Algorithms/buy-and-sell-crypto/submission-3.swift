class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minBuy = prices.max()!
        var maxProfit = 0

        for price in prices{
            minBuy = min(minBuy, price)
            maxProfit = max(maxProfit, price-minBuy)
        }
        return maxProfit
    }
}
