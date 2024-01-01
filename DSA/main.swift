//
//  main.swift
//  DSA
//
//  Created by SAGAR SINGH on 07/10/23.
//

import Foundation

let binarySearch = BinarySearch()
let patterns = Patterns()
let array = Arrays()
let maths = Maths()
let recursion = Recursion()
let hashh = Hashing()

//MARK: - 1.Binary Search Algorithm.
let arr: [Int] = [1, 4, 5, 7, 9, 11, 14]
print(binarySearch.binarySearch(arr: arr, target: 1))

//MARK: - 2.Binary Search Recursive.
print(binarySearch.binarySearchRecursive(arr: arr, target: 7, start: 0, end: arr.count-1))

//MARK: - 3.Lower Bound.
print(binarySearch.lowerBound(arr: arr, K: 22))

//MARK: - 4.Upper Bound.
print(binarySearch.upperBound(arr: arr, K: 7))

//MARK: - 5.Floor in Sorted Array.
print("Floor in Sorted Array: \(binarySearch.floor(arr: arr, K: 10))")

//MARK: - 5.Ceil in Sorted Array.
print("Ceil in Sorted Array: \(binarySearch.ceil(arr: arr, k: 10))")


//MARK: - PATTERNS.
print(patterns.pattern1(n: 4))

//MARK: - ARRAY QUESTIONS.
print("QUESTIONS ON ARRAY'S__________________________________________")
//MARK: - 1. Largest element in an Array.
print(array.largestElementInArr(arr: [3, 2, 1, 9, 2, 7]))

//MARK: - 2. Second largest element in an Array.
print(array.secondLargestElementInArr(arr: [2,5,5,8,8,3,7]))


//MARK: - MATHS QUESTIONS.
print("QUESTIONS ON MATH'S__________________________________________")
//MARK: - 1. COUNT DIGITS OF NUMBERS.
var dig = 3524
print(maths.countDigits(n: &dig))

//MARK: - 2. ARMSTRONG NUMBER.
print("is Armstrong Number, \(maths.armstrongNumber(371))")

//MARK: - 3. PRINT ALL DIVISORS.
print(maths.allDivisors(n: 32))

//MARK: - 4. PRIME NUMBERS.
print(maths.primeNumber(n: 7))

//MARK: - 5. GCD/HCF.
print(maths.gcd(n1: 5, n2: 15))


//MARK: - RECURSION QUESTIONS.
print("QUESTIONS ON RECURSION __________________________________________")

//MARK: - 1.
print()

//MARK: - 2.


//MARK: - HASHING QUESTIONS.
print("QUESTIONS ON HASHING __________________________________________")

//MARK: - 1. Count frequency of each element in the array.
hashh.countFreq(arr: [10,5,10,15,10,5])

//MARK: - 2. Find the highest/lowest frequency element.
hashh.findLowHighFreq(arr: [10,5,10,15,10,5])
