// The time complexity of the given code is O(n) because it uses a loop to generate the Fibonacci series.
// This loop runs n-1 times to generate the Fibonacci series up to the n-th number.

// The space complexity of the given code is O(n) because it uses an array of size n+1 to store the Fibonacci series.

let result = generateFibonacciNumber(num: 10)
print(result)

func generateFibonacciNumber(num: Int) -> Int {
    var f = Array(repeating: 0, count: num + 1)
    f[0] = 0
    f[1] = 1
    
    for i in 2...num {
        f[i] = f[i-1] + f[i-2]
    }
    return f[num]
}
