//
//  Maths.swift
//  DSA
//
//  Created by SAGAR SINGH on 26/12/23.
//

import Foundation

class Maths {
    
    //MARK: - COUNT DIGIT OF NUMBER.
    func countDigits(n: inout Int) -> Int {
        var count = 0
        
        while (n > 0) {
            let lastDigit  = n % 10
            count += 1
            n = n / 10
        }
        /// Using log.
//        let count = Int(log10l(Double(n))) + 1
        return count
    }
    
    //MARK: - ARMSTRONG NUMBER.
    func armstrongNumber(_ n: Int) -> Bool {
        var (sum, num) = (0, n)
        let count = String(n).count
        
        while (num > 0) {
            let lastDigit = num % 10
            sum = sum + Int(pow(Double(lastDigit), Double(count)))
            num = num / 10
        }
        
        return sum == n
    }
    
}
