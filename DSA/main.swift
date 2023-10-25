//
//  main.swift
//  DSA
//
//  Created by SAGAR SINGH on 07/10/23.
//

import Foundation

let binarySearch = BinarySearch()
let patterns = Patterns()

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
