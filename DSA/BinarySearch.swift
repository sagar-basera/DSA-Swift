//
//  BinarySearch.swift
//  DSA
//
//  Created by SAGAR SINGH on 07/10/23.
//

import Foundation

class BinarySearch {
    
    //MARK: - Binary Search Algorithm.
    func binarySearch(arr: [Int], target: Int) -> Int {
        var low = 0
        var high  = arr.count-1
        
        while(low <= high) {
            let mid = low + (high-low) / 2
            
            if arr[mid] == target { return mid }
            if arr[mid] < target {
                low = mid + 1
            }else{
                high = mid - 1
            }
        }
        return -1
    }
    
     //MARK: - Binary Search Recursive.
    func binarySearchRecursive(arr: [Int], target: Int, start: Int, end: Int) -> Int {
        if start > end { return -1 }
        
        let mid = start + (end-start)/2
        
        if arr[mid] == target { return mid}
        if arr[mid] < target {
            return binarySearchRecursive(arr: arr, target: target, start: mid+1, end: end)
        }else{
            return binarySearchRecursive(arr: arr, target: target, start: start, end: mid-1)
        }
    }
    
    //MARK: - Lower Bound.
    /// The index of the first element that is not less than K.
    /// i.e., arr[mid] >= K.
    func lowerBound(arr: [Int], K: Int) -> Int {
        var low = 0
        var high = arr.count-1
        var ans = arr.count
        
        while low <= high {
            let mid = low + (high-low)/2
            
            if arr[mid] >= K {
                ans = mid
                high = mid - 1
            }else {
                low = mid + 1
            }
        }
        
        return ans
    }
    
    //MARK: - Upper Bound.
    /// The index of the element that is greater than K.
    /// i.e., arr[mid] > K.
    func upperBound(arr: [Int], K: Int) -> Int {
        var low = 0
        var high = arr.count-1
        var ans = arr.count
        
        while low <= high {
            let mid = low + (high-low)/2
            
            if arr[mid] > K {
                ans = mid
                high = mid - 1
            }else {
                low = mid + 1
            }
        }
        return ans
    }
    
    
}
