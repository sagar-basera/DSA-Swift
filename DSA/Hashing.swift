//
//  Hashing.swift
//  DSA
//
//  Created by SAGAR SINGH on 01/01/24.
//

import Foundation

class Hashing {
    
    //MARK: - Count frequency of each element in the array.
    func countFreq(arr: [Int]) {
        let mappedItem = arr.map{($0, 1)}
        
        let count = Dictionary(mappedItem, uniquingKeysWith: +)
        
        count.forEach { (key, value) in
            print("\(key) -> \(value)")
        }
    }
    
    //MARK: - Find the highest/lowest frequency element.
    func findLowHighFreq(arr: [Int]) {
        var (hFreq, hElement) = (0,0)
        var (lFreq, lElement) = (0,0)
        
        let mappedItem = arr.map{($0, 1)}
        let count = Dictionary(mappedItem, uniquingKeysWith: +)
        
        hFreq = count.values.max() ?? 0
        hElement = count.keys.max() ?? 0
        lFreq = count.values.min() ?? 0
        lElement = count.keys.min() ?? 0
        
       print("hElement \(hElement) with frequency \(hFreq), lElement \(lElement) with frequency \(lFreq)")
    }
    
}
