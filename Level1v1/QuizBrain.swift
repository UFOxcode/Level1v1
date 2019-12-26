//
//  QuizBrain.swift
//  Level1v1
//
//  Created by UFO Xcode on 2019/12/26.
//  Copyright © 2019 UFO Xcode. All rights reserved.
//

import Foundation
struct QuizBrain {
    var questinNumber = 0
    var score = 0
    let quiz = ["box":"盒子", "cap":"棒球帽", "car":"汽車", "cat":"貓", "cup":"杯子", "dad":"爸爸", "dog":"狗"]
//    let arrayQuiz1 = ["bag","bed","big","box","cap","car","cat","cup","dad","dog","dam","fan","fox","hat","hit","jam","jet","man","map","mat","net","pen","rat","run","six","sun","van"]
    
    let arrayQuiz1 = ["box","cap","car","cat","cup","dad","dog"]
    
    
    
    
    
    
    
    mutating func nextQuestion() {
        if questinNumber + 1 < arrayQuiz1.count{
            questinNumber += 1
           
        } else {
            questinNumber = 0                                       // print(" 跑一圈了")
            
        }
    }
    
    
    func getQuestion() -> (eng: String, chinese: String) {
        
        let dicToChinese = String(quiz[arrayQuiz1[questinNumber]] ?? "default" )
        
        return (arrayQuiz1[questinNumber], dicToChinese)
    }
    
    
    
    
    
    
}
