
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

// 제네릭처럼 반환타입을 구현하고 싶을 때 some을 사용
func doubleFun1 (value: Int) -> some Equatable {
    return value * 2
}

// 이 프로토콜만 지키면 반환타입을 받을 수 있다 라고 이해해도 됨.
func doubleFun2 (value: String) -> some Equatable {
    value + value
}

let intOne = doubleFun1(value: 10)
print(intOne)

let stringOne = doubleFun2(value: "Hello")
print(stringOne)

// 동작하지 않는다.
//if (intOne == stringOne) {
//    print("They match")
//}
