//
//  Patterns.swift
//  DSA
//
//  Created by SAGAR SINGH on 25/10/23.
//

import Foundation

class Patterns {
    
    //MARK: -  Pattern 1.
    /*
           * * * * * *
           * * * * * *
           * * * * * *
           * * * * * *
           * * * * * *
           * * * * * *
    */
    func pattern1(n: Int) {
        for _ in 0..<n {
            for _ in 0..<n {
                print("*", terminator: "")
            }
            print("")
        }
    }
    
    //MARK: - Pattern 2.
    /*
            *
            * *
            * * *
            * * * *
     */
    func pattern2(n: Int) {
    }
    
}
