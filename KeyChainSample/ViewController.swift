//
//  ViewController.swift
//  KeyChainSample
//
//  Created by Kosuke Ogawa on 2017/02/21.
//  Copyright © 2017年 koogawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let int: Int = 555
        let data = Data(from: int)
        let status = KeyChain.save(key: "MyNumber", data: data)
        print("status: ", status)
        
        if let receivedData = KeyChain.load(key: "MyNumber") {
            let result = receivedData.to(type: Int.self)
            print("result: ", result)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
