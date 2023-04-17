
let listOfNum = [1, 4, 3, 6, 7, 0]
print(maxPairWiseProduct(numList: listOfNum))

func maxPairWiseProduct(numList: [Int]) -> Int {
  var max1 = 0
  var max2 = 0
  for i in 0..<numList.count {
    if numList[i] > max1 {
      max2 = max1
      max1 = numList[i]
    }
    if numList[i] > max2 && numList[i] < max1 {
      max2 = numList[i]
    }
  }
  return max2 * max1
}

