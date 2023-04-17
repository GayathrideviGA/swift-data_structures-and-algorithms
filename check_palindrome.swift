func checkPalindrome(_ inputString: String) {
    let cleanString = inputString.lowercased().filter { $0.isLetter || $0.isNumber }
    
    for i in 0..<cleanString.count/2 {
        let startIndex = cleanString.index(cleanString.startIndex, offsetBy: i)
        let endIndex = cleanString.index(cleanString.endIndex, offsetBy: -i - 1)
        if cleanString[startIndex] != cleanString[endIndex] {
            print("It is not a palindrome.")
            return
        }
    }
    
    print("It is a palindrome!")
}

checkPalindrome("A man, a plan, a canal: Panama!")
