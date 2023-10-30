//
//  TextRecognition.swift
//  TextRecognitionOnImage
//
//  Created by SomnicsAndrew on 2023/10/30.
//

import UIKit
import Vision

class TextRecognition {

    func recognizeText(in image: UIImage) {
        guard let cgImage = image.cgImage else { return }
        let start = Date()
        let textRecognitionRequest = VNRecognizeTextRequest { (request, error) in
            guard let observations = request.results as? [VNRecognizedTextObservation] else { return }
            
            let recognizedStrings = observations.compactMap { observation in
                return observation.topCandidates(1).first?.string
            }
            
            // Do something with the recognized text, such as updating the UI
            DispatchQueue.main.async {
                // Update UI with recognizedStrings
                print("test11 recognizedStrings: \(recognizedStrings), duration: \(Date().timeIntervalSince(start))")
            }
        }
        textRecognitionRequest.recognitionLanguages = ["zh-TW"]
        textRecognitionRequest.usesLanguageCorrection = true
        
        let handler = VNImageRequestHandler(cgImage: cgImage, options: [:])
        DispatchQueue.global(qos: .userInitiated).async {
            do {
                try handler.perform([textRecognitionRequest])
            } catch {
                print(error)
            }
        }
    }

    
}
