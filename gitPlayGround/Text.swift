//
//  WordList.swift
//  gitPlayGround
//
//  Created by Gabriel Blaine Palmer on 10/10/18.
//  Copyright © 2018 Justin Snider. All rights reserved.
//

import Foundation

class Text: NSObject, NSCoding {
    var word: String
    
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory,    in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("text")
    
    struct PropertyKey {
        static let word = "word"
    }
    
    init(str: String) {
        self.word = str
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        guard let word = aDecoder.decodeObject(forKey: PropertyKey.word) as? String else {return nil}
        
        self.init(str: word)
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(word, forKey: "word")
    }
    
}
