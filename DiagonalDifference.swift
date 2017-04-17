//Print the absolute difference between the two sums of the matrix's diagonals as a single integer.
/*Example: 
3
11 2 4
4 5 6
10 8 -12

Output : 15*/


func diagonalDiff (n : Int, arr : [[Int]]) {
    
    var tempArr = arr
    for _ in 0..<n {
        tempArr.append(readLine()!.components(separatedBy: " ").map{ Int($0)! })
    }
    
    var total = 0
    
    for i in 0..<n {
        total += tempArr[i][i]
        total -= tempArr[i][(n-1)-i]
    }
    
    print(abs(total))
}
