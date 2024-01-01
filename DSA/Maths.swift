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
//            let lastDigit  = n % 10
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
    
    //MARK: - PRINT ALL DIVISORS.
    func allDivisors(n: Double) {
        /// Brute Force
        /// Time Complexity => O(n)
    /*
        var i = 1
        while (i <= n) {
            if ((n % i) == 0) {
                print(i, terminator: ",")
            }
            i += 1
        }
     */
        /// Optimised Solution.
        /// Time Complexity => O(sqrt(n)).
        /// sqrt(n) => (i * i <= n).
        var i = 1.0
        
        while (i <= sqrt(n)) {
            if ((n.truncatingRemainder(dividingBy: i)) == 0) {
                print(Int(i), terminator: ",")
                
                if ((n / i) != i) {
                    print(Int(n/i), terminator: ",")
                }
            }
            
            i += 1
        }
    }
    
    //MARK: - PRINT PRIME NUMBERS.
    func primeNumber(n: Double) -> Bool{
        var count = 0
        var i: Double = 1
        
        if n == 1 { return true }
        /// Brute Force.
        /// Time Complexity => O(n).
       /*
        while (i <= n) {
            if ((n.truncatingRemainder(dividingBy: i)) == 0) {
                count += 1
            }
            i += 1
        }
        */
        
        /// Optimised Approach.
        /// Time Complexity => O(sqrt(n)).
        while (i <= sqrt(n)) {
            if ((n.truncatingRemainder(dividingBy: i)) == 0) {
                count += 1
                
                if ((n/i) != i) {
                    count += 1
                }
            }
            
            i += 1
        }
        
        return count == 2 ? true : false
    }
    
    //MARK: - GCD/HCF.
    func gcd(n1: Double, n2: Double) -> Int {
        /// Brute Force.
        /// Time Complexity => O(min(n1, n2)).
        /*
         var i = 1.0
        var gcd: Double = 0
        let min = min(n1, n2)
        
        while (i <= min) {
            if (n1.truncatingRemainder(dividingBy: i) == 0) && (n2.truncatingRemainder(dividingBy: i) == 0) {
                gcd = i
            }
            i += 1
        }
         
         return Int(gcd)
        */
        
        /// Optimal Approach.
        /// Using Euclidean’s theorem.
        /// Gcd is the greatest number which is divided by both a and b.If a number is divided by both a and b, it is should be divided by (a-b) and b as well.
        /// gcd(a,b) = gcd(a % b, b), where a > b.
        /// Time Complexity => O()
        
        var num1 = n1
        var num2 = n2
        
        while (num1 > 0 && num2 > 0) {
            if num1 > num2 {
                num1 = num1.truncatingRemainder(dividingBy: num2)
            }else {
                num2 = num2.truncatingRemainder(dividingBy: num1)
            }
        }
        
        return num1 == 0 ? Int(num2) : Int(num1)
    }
    
}
