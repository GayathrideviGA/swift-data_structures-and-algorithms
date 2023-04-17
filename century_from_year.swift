func centuryFromYear(year: Int) -> Int {
    var century = (year - 1) / 100 + 1
    if year % 100 != 0 {
        century += 1
    }
    return century
}
print(centuryFromYear(year: 1998))
