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
        TextRecognition().recognizeText(in: UIImage(named: "testImage2")!)
        TextRecognition().recognizeText(in: UIImage(named: "testImage3")!)
        TextRecognition().recognizeText(in: UIImage(named: "testImage4")!)
        TextRecognition().recognizeText(in: UIImage(named: "testImage5")!)


    }
}

