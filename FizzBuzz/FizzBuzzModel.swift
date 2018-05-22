//
//  FizzBuzz.swift
//  FizzBuzz
//
//  Created by Tawfiq Hamid on 25/04/2018.
//  Copyright © 2018 Tawfiq Hamid. All rights reserved.
//

import UIKit


class FizzBuzzModel {
 
  enum FizzBuzz {
    case fizz
    case buzz
    case fizzBuzz
  }
  
  struct FizzBuzzResult {
    let i: Int
    let fizzBuzz: FizzBuzz?
  }
  
  var i: Int;
  init(){
    i = 0;
  }
  
  
  func increment() -> FizzBuzzResult{
    i+=1;
    var returnVal:FizzBuzz?;
    if ((i % 3) == 0) && ((i % 5) == 0){
      returnVal = FizzBuzz.fizzBuzz;
    }
    else if ((i % 3) == 0){
     returnVal = FizzBuzz.fizz;
    }
    else if ((i % 5) == 0){
      returnVal = FizzBuzz.buzz;
    }
    return FizzBuzzResult(i: i, fizzBuzz:returnVal);
  }
  
  
}
