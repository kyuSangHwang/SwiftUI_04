//
//  Memo.swift
//  ColorMemo
//
//  Created by 황규상 on 4/23/24.
//

import Foundation
import SwiftUI

struct Memo: Identifiable {
    var id: UUID = UUID()
    var text: String
    var color: Color
    var created: Date
    
    var createdString: String {
        get {
            let dateFormatter: DateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            
            return dateFormatter.string(from: created)
        }
    }
}

class MemoStore: ObservableObject {
    @Published var memos: [Memo] = []
    
    func addMemo(_ text: String, color: Color) {
        let memo: Memo = Memo(text: text, color: color, created: Date())
        
        memos.insert(memo, at: 0) // 앞에 추가
        // memos.append(memo) // 뒤에 추가
    }
    
    func removeMemo(_ targetMemo: Memo) {
//        if let index = memos.firstIndex(where: { $0.id == targetMemo.id }) {
//            memos.remove(at: index)
//        }
        
//        var index: Int = 0
//        for tempMemo in memos {
//            if tempMemo.id == targetMemo.id {
//                memos.remove(at: index)
//                break
//            }
//            index += 1
//        }
        
        // 워래는 배열에서 특정 요소를 지우고 끝났다면,
        // 이 녀석은 새로운 배열을 만든다 -> 지우려는 녀석을 제외한 다른 요소를 새로운 배열에 담아 보여준다.
        memos = memos.filter { $0.id != targetMemo.id}
        
    }
}
