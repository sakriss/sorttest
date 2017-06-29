//
//  SortTestTests.swift
//  SortTestTests
//
//  Created by Scott Kriss on 6/29/17.
//  Copyright © 2017 Scott Kriss. All rights reserved.
//

import XCTest

class SortTestTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            var myIntArray:[Int] = [6, 77, 3, 67, 8, 9, 3, 69, 2, 1, 4, 5]
            var myStringArray:[String] = ["Xander", "Scott", "Bob", "John", "Matt", "Boris", "Mona", "Dan", "James", "Ratul", "Leif"]
            var myFloatArray:[Float] = [6.5, 77.6, 77.4, 67.5, 67, 9, 3, 69, 2, 1, 4, 5]
            
            func sort<T:Comparable> (_ myArray:[T]) {
                var newArray = myArray
                while true {
                    var numOfSwaps = 0
                    
                    
                    for i in 0..<newArray.count-1 {
                        let nextArrayItem = newArray[i + 1]
                        
                        if  newArray[i] > nextArrayItem {
                            let temp = newArray[i]
                            newArray[i] = newArray[i + 1]
                            newArray[i + 1] = temp
                            numOfSwaps += 1
                        }
                    }
                    if numOfSwaps == 0 {
                        print(newArray)
                        break //array is sorted, we're done!
                    }
                }
                
            }
            
            //sort(myStringArray)
            
            
            func hugeUnsortedArray() -> [Int] {
                let arraySize = 2000
                let range = 10000
                let halfRange = 5000
                var array:[Int] = []
                for _ in 0..<arraySize {
                    array.append(Int(arc4random()) % range - halfRange)
                }
                return array
            }
            
            print(sort(hugeUnsortedArray()))
        }
    }
    
}
