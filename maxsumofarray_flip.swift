// Function to find the maximum sum
// after flipping a subarray
func maxSumFlip(_ a: [Int], _ n: Int) -> Int {
    // Find the total sum of array
    var totalSum = 0
    for i in 0..<n {
        totalSum += a[i]
    }
  
    // Using Kadane's Algorithm
    var maxEndingHere = -a[0] - a[0]
    var currSum = -a[0] - a[0]
  
    for i in 1..<n {
        // Either extend previous
        // sub_array or start
        // new subarray
        currSum = max(currSum + (-a[i] - a[i]),
                      (-a[i] - a[i]))
  
        // Keep track of max_sum array
        maxEndingHere = max(maxEndingHere, currSum)
    }
  
    // Add the sum to the totalSum
    var maxSum = totalSum + maxEndingHere
  
    // Check maxSum was maximum
    // with flip or without flip
    maxSum = max(maxSum, totalSum)
  
    // Return maxSum
    return maxSum
}

// Driver Code
let arr = [-2, 3, -1, -4, -2]
let n = 5

// Function Call
print(maxSumFlip(arr, n))
