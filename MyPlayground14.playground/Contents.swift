
/**  Array  **/

// 리터럴, 값의 나열, 타입 선언할 수 있지만 추론하기 때문에 생략 가능
//var treeArray: [String] = ["pine", "Oak", "Yew"]
var treeArray: [String] = ["pine", "Oak", "Yew"]
var priceArray = [Float]()
var nameArray = [String](repeating: "MyString", count: 10)

let firstArray = ["Red", "Green", "Blue"]
let secondArray = ["Indigo", "Violet"]
let thirdArray = firstArray + secondArray

print(thirdArray.count) // 배열의 요소 개수

print(treeArray.isEmpty) // 빈 배열인지 여부

print(treeArray[2]) // 배열의 특정 요소 접근 (출력)

treeArray[1] = "Redwood" // 배열의 특정 요소 접근 (수정)

treeArray.append("Yellowood") // 배열의 특정 요소 접근 (추가1)
treeArray += ["Bluewood"] // 배열의 특정 요소 접근 (추가2)
treeArray = treeArray + ["Maple", "Birch"] // 배열의 특정 요소 접근 (추가2와 같은 표현법)

treeArray.shuffle() // 배열의 요소를 섞어줌.
print(treeArray)

print(treeArray.randomElement() ?? "") // 배열의 요소를 랜덤으로 뽑아줌, 비어있을 수 있으니 옵셔널



/**  Dictionary  **/

//var bookDict: [String:String] = ["100-432112" : "Wind in the Willows"] // 타입 명시 but 타입 생략 가능
var bookDict1 = ["100-432112" : "Wind in the Willows"]
var myDictionary = [Int: String]() // 빈 딕셔너리 초기화 정수형 키값, 문자열

let keys = ["1", "2", "3", "4", "5", "6", "7"]
let values = ["Value1", "Value2", "Value3", "Value4", "Value5", "Value6", "Value7"]

//let bookDict2 = Dictionary(uniqueKeysWithValues: zip(keys, values))
var bookDict2 = Dictionary(uniqueKeysWithValues: zip(1..., values))

print(bookDict2.count)

// 해당 키의 값이 찍는 시점에 있는지 없는지 모르기 때문에 옵셔널이다. 그래서 디폴트 값을 선언해야한다.
print(bookDict2[1, default: "NoValue"])
bookDict2[1231000] = "Value"

for (bookId, value) in bookDict2 {
    print("Book Id: \(bookId), Value: \(value)")
}
