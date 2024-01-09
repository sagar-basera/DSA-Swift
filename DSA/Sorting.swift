//
//  Sorting.swift
//  DSA
//
//  Created by SAGAR SINGH on 08/01/24.
//

import Foundation

class Sorting {
    //MARK: - SELECTION SORT.
    /// Time Complexity:- O(N2).
    /// Space Complexity:- O(1).
    /// (n-1) + (n-2) + (n-3) + ……..+ 3 + 2 + 1.
    /// The summation is approximately the sum of the first n natural numbers i.e. (n*(n+1))/2.
    /// The precise time complexity will be O(n2/2 + n/2)
    
    func selectionSort(arr: inout [Int]) -> [Int] {
        var min: Int
        
        for i in stride(from: 0, to: arr.count, by: 1) {
            min = i
            
            for j in stride(from: i, to: arr.count, by: 1) {
                if arr[min] > arr[j] {
                    min = j
                }
            }
            
            arr.swapAt(i, min)
        }
        
        return arr
    }
    
    //MARK: - BUBBLE SORT.
    /// Time Complexity:- O(N2).
    /// Space Complecity:- O(1).
    
    func bubbleSort(arr: inout [Int]) -> [Int] {
        var didSort: Bool
        
        for i in  stride(from: arr.count-1, to: 0, by: -1) {
            didSort = false
            for j in stride(from: 0, to: i, by: 1) {
                if arr[i] < arr[j] {
                    arr.swapAt(i, j)
                    didSort = true
                }
            }
            
            if !didSort { break }
        }
         return arr
    }
    
    //MARK: - INSERTION SORT.
    /// Time Complexity => O(n2).
    /// Space Complexity => O(1).
    func insertionSort(arr: inout [Int]) -> [Int] {
        for i in stride(from: 1, to: arr.count, by: 1) {
            for j in stride(from: 0, to: i, by: 1) {
                if arr[j] > arr[j+1] {
                    arr.swapAt(j, j+1)
                }
            }
        }
        
        return arr
    }
}