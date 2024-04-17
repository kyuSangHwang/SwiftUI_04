import Foundation
let connectionOK = true
let connectionSpeed = 30.00
let fileFound = true

// LOcalizable.string(Korean)
// "noConnection" = "연결이 없습니다."
// "lowBandwidth" = "속도가 느립니다."
// "fileNotFound" = "파일을 찾을 수 없습니다.."

// LocalizedError: 소비자한테 에러를 친절하게 제공하고 싶을 때 사용
enum FileTransferError: Error, LocalizedError {
    case noConnection
    case lowBandwidth
    case fileNotFound
    
    var errorDescription: String? {
        switch self {
        case .noConnection:
            return NSLocalizedString("noConnection", comment: "no Connection")
        case .lowBandwidth:
            return NSLocalizedString("lowBandwidth", comment: "low Bandwidth")
        case .fileNotFound:
            return NSLocalizedString("fileNotFound", comment: "file Not Found")
        }
    }
}

func fileTransfer() throws {
    guard connectionOK else {
        throw FileTransferError.noConnection
    }
    
    guard connectionSpeed > 30 else {
        throw FileTransferError.lowBandwidth
    }
    
    guard fileFound else {
        throw FileTransferError.fileNotFound
    }
    // do something
}

func sendFile() -> String {
    
    defer {
        // 파일 닫기 등 종료 준비
        print("end of sendFile")
    }
    
    do {
        try fileTransfer()
    } catch FileTransferError.noConnection {
        return "Connection Problems"
    } catch FileTransferError.fileNotFound {
        return "File Not Found"
    } catch {
        return "Unknown error"
    }
    return "Successful transfer"
}

print(sendFile())
