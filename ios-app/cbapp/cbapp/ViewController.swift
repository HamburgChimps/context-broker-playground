//
//  ViewController.swift
//  cbapp
//
//  Created by Alex Olson on 8/23/19.
//  Copyright © 2019 HamburgChimps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var simpleBluetoothIO: SimpleBluetoothIO!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("something is happening")
        
        simpleBluetoothIO = SimpleBluetoothIO(serviceUUID: "4fafc201-1fb5-459e-8fcc-c5c9c331914b", delegate: self)
    }


}

extension ViewController: SimpleBluetoothIODelegate {
    func simpleBluetoothIO(simpleBluetoothIO: SimpleBluetoothIO, didReceiveValue value: String) {
        print("got value")
        print(value)
    }
}

