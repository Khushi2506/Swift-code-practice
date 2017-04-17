/*Input Format
The first line contains an integer,"n", denoting the size of the array. 
The second line contains  space-separated integers describing an array of numbers .
6
-4 3 -9 0 4 1 

Output Format
You must print the following  lines:
A decimal representing of the fraction of positive numbers in the array.
A decimal representing of the fraction of negative numbers in the array.
A decimal representing of the fraction of zeroes in the array.*/

func plusMinus(n : Int, arr : Int...) {
    var positiveFranction = 0.0
    var negativeFranction = 0.0
    var zeroFranction = 0.0
    
    for i in 0..<n {
        
        let temp = arr[i]
        if(temp > 0) {
            positiveFranction += 1
        } else if(arr[i] < 0) {
            negativeFranction += 1
        } else {
            zeroFranction += 1
        }
    }
    
    let pFrac =  positiveFranction/Double(n)
    let nFrac =  negativeFranction/Double(n)
    let zeroFrac =  zeroFranction/Double(n)
    
    print("\(String(format: "%.6f", pFrac))")
    print("\(String(format: "%.6f", nFrac))")
    print("\(String(format: "%.6f", zeroFrac))")
}
