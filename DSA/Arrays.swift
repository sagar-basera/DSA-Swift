//
//  Arrays.swift
//  DSA
//
//  Created by SAGAR SINGH on 16/12/23.
//

import Foundation

class Arrays {
    
    //MARK: - LARGEST ELEMENT IN AN ARRAY.
    func largestElementInArr(arr: [Int]) -> Int{
        var largestElement = -1
        
        for i in 0..<arr.count {
            if arr[i] > largestElement {
                largestElement = arr[i]
            }
        }
        
        return largestElement
    }
    
    //MARK: - SECOND LARGEST ELEMENT IN AN ARRAY.
    func secondLargestElementInArr(arr: [Int]) -> Int{
        var largestElement = arr[0]
        var secondLargest = -1
        
        for i in 0..<arr.count {
            if arr[i] > largestElement {
                secondLargest = largestElement
                largestElement = arr[i]
            }
            else if (arr[i] < largestElement && arr[i] > secondLargest) {
                secondLargest = arr[i]
            }
        }
        return secondLargest
    }
    
    //MARK: - CHECK IF ARRAY IS SORTED OR NOT.
    func checkSortedArr(arr: inout [Int]) -> Bool {
        for i in stride(from: 1, to: arr.count, by: 1) {
            if (arr[i] < arr[i-1]) { return false }
        }
        return true
    }
    
    //MARK: - REMOVE DUPLICATES IN AN ARRAY.
    func removeDuplicates(arr: inout [Int]) -> [Int] {
        /// using Swift algorithms module Package(SPM).
        /// import ALgorithms.
       // return arr.uniqued()
        
        /// Using Extension on Array.
        /// Can be seen in bottom of this class.
        
        /// Using Contains() methods.
        var filteredArr: [Int] = []
        
        for i in stride(from: 0, to: arr.count, by: 1) {
            if !filteredArr.contains(arr[i]) {
                filteredArr.append(arr[i])
            }
        }
        
        return filteredArr
    }
    
    //MARK: - ROTATE THE ARRAY BY 1 PLACE.
    func rotateArrByOnePlace(arr: inout [Int]) -> [Int] {
        var temp = arr[0]
        
        for i in stride(from: 1, to: arr.count, by: 1) {
            arr[i-1] = arr[i]
        }
        
        arr[arr.count-1] = temp
        return arr
    }
     
}

//MARK: - EXTENSION ON ARRAY'S TO REMOVE DUPLICATE ELEMENTS.
extension Array where Element: Equatable {
    func removeDupes() -> [Element] {
        var filteredArr: [Element] = []
        
        for item in self {
            if !filteredArr.contains(item) {
                filteredArr.append(item)
            }
        }
        
        return filteredArr
    }
}
