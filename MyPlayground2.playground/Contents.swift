
protocol MessageBulider {
    var name: String { get }
    func buildMessage() -> String
}

class MyClass: MessageBulider {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func buildMessage() -> String {
        // 표현식 1
        // 표현식 2
        // 표현식 3
        // 표현식 4
        // 표현식 5
        // ... 마지막 표현식이 반환 타입과 일치할 경우, 함수의 결과로 반환 (즉 return 생략 가능)
        // 단순리턴하면 안 써도 리턴해줌, 컴파일러가 알아서 해줌
        // return 생략을 추천하진 않음
        return "Hello" + name
    }
}
