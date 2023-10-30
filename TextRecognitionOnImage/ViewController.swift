//
//  ViewController.swift
//  TextRecognitionOnImage
//
//  Created by SomnicsAndrew on 2023/10/30.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        TextRecognition().recognizeText(in: UIImage(named: "testImage")!)
    }
}

