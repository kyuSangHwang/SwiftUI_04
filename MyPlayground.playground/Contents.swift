import UIKit

var greeting = "Hello, playground"

//class 클래스 이름: 부모 클래스 {
//    프로퍼티
//    let, var wjddml
//    인스턴스 메서드 -> 클래스 멤버
//    타입 메서드 -> 클래스 멤버
//}

class BankAccount {
    // 프로퍼티
    var accountBlance: Float = 0
    var accountNumber: Int = 0
    
    // 인스턴스 메서드
    func displayBalance() -> Void {
        print("Number \(accountNumber)")
        print("Current balance is \(accountBlance)")
    }
    
    // 타입 메서드, 전역함수 || 전역 메소트
    // class 타입 메소드 상속 재정의 가능
    // static 재정의 불가능
    static func getMaxBalance() -> Float {
        return 100000.00
    }
}

var bankAccount = BankAccount()

print(bankAccount.accountBlance)
print(bankAccount.accountNumber)
bankAccount.displayBalance()

print(BankAccount.getMaxBalance())
