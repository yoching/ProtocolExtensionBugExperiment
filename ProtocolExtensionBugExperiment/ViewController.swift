//
//  ViewController.swift
//  ProtocolExtensionBugExperiment
//
//  Created by Yoshikuni Kato on 2018/04/10.
//  Copyright © 2018 Yoshikuni Kato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let object = SampleObject()
        object.sampleMethod()
    }

}

class SampleObject: NSObject, SampleProtocol {
    
}

protocol SampleProtocol {
    func sampleMethod()
}

extension SampleProtocol where Self: SampleObject {
    func sampleMethod() {
        print(type(of: self))
    }
}
