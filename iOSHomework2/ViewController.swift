//
//  ViewController.swift
//  iOSHomework2
//
//  Created by Bodour Alrashidi on 6/7/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var membersNamesArray  : [String] = [""]
    
    var convertToLetter = true
    @IBOutlet weak var secretSocietyNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func addMember(_ sender: Any) {
        
        let member = nameTextField.text!
        
        // MARK: -   1️⃣ تحت الخط membersNamesArray إلي المصفوفه memberقم بإضافة المتغير
        
        membersNamesArray.append(member.capitalized)
        
        // MARK: -   النهاية
        
        nameTextField.text = ""
    }
    
    
    
    
    @IBAction func letterButton(_ sender: Any) {
        
        // MARK: -  4️⃣ functionCall داخل المتغير  secretNameLetter قم باستدعاء الدالة
        
        let functionCall = encryptWith(eomji: false, array: membersNamesArray)
        
        
        // MARK: -   النهاية
        
        
        secretSocietyNameLabel.text =  functionCall
    }
    
    
    
    
    @IBAction func emojiButton(_ sender: Any) {
        
        
        
        // MARK: -  5️⃣ functionCall داخل المتغير  secretNameEmoji قم باستدعاء الدالة
        
        let functionCall = encryptWith(eomji: true, array: membersNamesArray)
        
        // MARK: -   النهاية
        
        secretSocietyNameLabel.text =  functionCall
        
        
    }
    
    
    
    
    // MARK: - 2️⃣ تحت هذا الخط secretNameLetter قم بكتابة الداله
    func secretNameLetter(membernamearray:[String]) -> String{
        var firstletterarray: [String] = []
        for memberName in membersNamesArray {
            firstletterarray.append(String (memberName.prefix(1)))
        }
        print(firstletterarray.joined())
        return firstletterarray.joined()
    }
    
    // MARK: -   النهاية
    
    
    
    
    
    // MARK: - 3️⃣ تحت هذا الخط secretNameEmoji قم بكتابة الداله
    func secretNameEmoji(membernamearray: [String] ) -> String{
        let emojiDictionaryEnglish = [ "A": "💧", "B": "🚥", "C": "☀️", "D": "📸", "E": "👀", "F": "🦋", "G": "⚡️", "H": "🌈", "I": "🙈", "J": "❓", "K": "⭕️", "L": "😍", "M": "😇", "N": "🔒", "O": "🤍", "P": "🈴", "Q": "🆔", "R": "🅰️", "S": "⚜️", "T": "⚠️", "U": "〽️", "V": "💲", "W": "🎶", "X": "🟣", "Y": "🎵", "Z": "®️", " ": " ", " ": " ", ]
        var emojiletterarray: [String] = []
        var firstletterarray: [String] = []
        for memberEmoji in membersNamesArray {
            firstletterarray.append(String (memberEmoji.prefix(1)))
            var emoji = emojiDictionaryEnglish[String (memberEmoji.prefix(1)).uppercased()]
            emojiletterarray.append(emoji!)
            print(emojiletterarray.joined())
        }
        return emojiletterarray.joined()
    }
    
    // MARK: -   النهاية
    
    // Bonus
    func encryptWith(eomji: Bool,  array: [String]) -> String{
        if eomji{
            return secretNameEmoji(membernamearray: array)
        }
        else{
            return secretNameLetter(membernamearray: array)
        }
    }
}

