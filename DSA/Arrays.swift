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
    /// Time Complexity:- O(n).
    /// Space Complexity:- O(1).
    func rotateArrByOnePlace(arr: inout [Int]) -> [Int] {
        let temp = arr[0]
        
        for i in stride(from: 1, to: arr.count, by: 1) {
            arr[i-1] = arr[i]
        }
        
        arr[arr.count-1] = temp
        return arr
    }
     
    //MARK: - LINEAR SEARCH.
    func linearSearch(arr: [Int], k: Int) -> Int {
        for i in stride(from: 0, to: arr.count, by: 1) {
            if arr[i] == k {
                return i
            }
        }
        return -1
    }
    
    //MARK: - UNION OF ARRAY'S.
    /// Time Complexity:- O(n1+n2).
    /// Space Complecity:- O(n1+n2).
    func unionArr(arr1: [Int], arr2: [Int]) -> [Int] {
        var (i, j) = (0, 0)
        var (n1, n2) = (arr1.count, arr2.count)
        var unionArr: [Int] = []
        
        while(i < n1 && j < n2) {
            if(arr1[i] <= arr2[j]) {
                if (unionArr.count == 0 || unionArr.last != arr1[i]) {
                    unionArr.append(arr1[i])
                }
                i += 1
            }else {
                if (unionArr.count == 0 || unionArr.last != arr2[j]) {
                    unionArr.append(arr2[j])
                }
                j += 1
            }
        }
        
        while(i < n1) {
            if(unionArr.count == 0 || unionArr.last != arr1[i]) {
                unionArr.append(arr1[i])
            }
            i += 1
        }
        
        while(j < n2) {
            if(unionArr.count == 0 || unionArr.last != arr2[j]) {
                unionArr.append(arr2[j])
            }
            j += 1
        }
        
        return unionArr
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
