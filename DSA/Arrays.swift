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
}
