//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Tawfiq Hamid on 25/04/2018.
//  Copyright © 2018 Tawfiq Hamid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var model:FizzBuzzModel?;
  
  @IBOutlet weak var numberOutlet: UILabel!
  @IBOutlet weak var emojiOutlet: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    model = FizzBuzzModel();
    emojiOutlet.text = ""
    numberOutlet.text = "0"

    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func fizzBuzz(_ sender: Any) {
    
    let fizzBuzzResult = model?.increment()
    
    if let i = fizzBuzzResult?.i {
      numberOutlet.text = String(i);
    }
    
    var emojiResult = "";

    if let fb = fizzBuzzResult?.fizzBuzz {
      switch fb{
      case .buzz:
        emojiResult = "🐝";
      case .fizz:
        emojiResult = "💨";
      case.fizzBuzz:
        emojiResult = "💨🐝";
      }
    }
    
    emojiOutlet.text = emojiResult;
    
  }
  
}

