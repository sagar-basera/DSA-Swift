//
//  Sorting.swift
//  DSA
//
//  Created by SAGAR SINGH on 08/01/24.
//

import Foundation

class Sorting {
    //MARK: - SELECTION SORT.
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
}
