//
//  Memo.swift
//  ColorMemo
//
//  Created by 황규상 on 4/23/24.
//

import Foundation
import SwiftData

@Model
class Memo {
    var id = UUID()
    var text: String
    var created: Date
    
    var createdString: String {
        get {
            let dateFormatter: DateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            
            return dateFormatter.string(from: created)
        }
    }
    
    init(text: String) {
        self.text = text
        self.created = Date()
    }
}
