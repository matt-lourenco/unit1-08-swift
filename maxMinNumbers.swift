//
//  maxMinNumbers.swift
//  This program calculates the maximum and minimum integer in an array that
//     is ten integers long and contains integers randomized between 1 and 99
//
//  Created by Matthew Lourenco on 20/02/18.
//  Copyright © 2018 MTHS. All rights reserved.
//

import Foundation

var intArray: [Int] = []

func min(array: [Int]) -> Int {
	//returns the minimum integer in the array
	var minNumber: Int = array[0]
	for item in array {
		if item<minNumber {
			minNumber = item
		}
	}
	return minNumber
}
func max(array: [Int]) -> Int {
	//returns the maximum integer in the array
	var maxNumber: Int = array[0]
	for item in array {
		if item>maxNumber {
			maxNumber = item
		}
	}
	return maxNumber
}

// generates an array containing random integers between 1 and 99 that is
// 10 integers long
srand(UInt32(time(nil)))
for _ in 0...9 {
	intArray.append(Int(random()%(99) + 1))
}

print("\(intArray)")
print("The minimum number is \(min(array: intArray)).")
print("The maximum number is \(max(array: intArray)).")