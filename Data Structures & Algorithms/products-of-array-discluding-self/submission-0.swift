class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prefix: Int = 1
        var postfix: Int = 1
        var output: [Int] = []
 
        for i in 0..<nums.count{
            if i == 0{
                output.append(1)
                prefix *= nums[i]
            }else{
                output.append(prefix)
                prefix *= nums[i]
            }
        }

        for i in nums.indices.reversed(){
            output[i] *= postfix
            postfix *= nums[i]

        }

        return output
    }
}
