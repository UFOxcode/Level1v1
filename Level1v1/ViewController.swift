//
//  ViewController.swift
//  Level1v1
//
//  Created by UFO Xcode on 2019/12/26.
//  Copyright © 2019 UFO Xcode. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var labelEnglish: UILabel!
    @IBOutlet weak var labelChinese: UILabel!
    
    
    var quizBrain = QuizBrain()
    let synthesizer = AVSpeechSynthesizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        updateUI()
        
        
    }

    @IBAction func btnPressed(_ sender: UIButton) {
       
        quizBrain.nextQuestion()
        updateUI()
        
        
        
        
        
    }
    
    func updateUI(){
        
        // function 後面若要 return 多個數值 用 getDic.eng  .chinese..
        let getDic = quizBrain.getQuestion()
        print(" temp1: \(getDic.eng)")
        labelEnglish.text = getDic.eng
        labelChinese.text = getDic.chinese
        
        cardImage.image = UIImage(named: getDic.eng)
        
        
        speakOut(feedback: getDic.eng)
        

        
    }
    
  
    fileprivate func speakOut(feedback : String) {
        
        

            synthesizer.stopSpeaking(at: .immediate)            // 這 可以即時中斷停止之前說話的聲音，才不會 串音。。
            let utterance = AVSpeechUtterance(string: feedback)
            utterance.voice = AVSpeechSynthesisVoice(language: "en-US")

            utterance.rate = 0.3        // 說話速度 愈小越慢
            utterance.pitchMultiplier = 1.2     //聲調 愈大越高

            synthesizer.speak(utterance)

        
}


    @IBAction func btnRepeat(_ sender: UIButton) {
        updateUI()
    }
    
    
}

