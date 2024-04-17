let connectionOK = true
let connectionSpeed = 30.00
let fileFound = false

enum FileTransferError: Error {
    case noConnection
    case lowBandwidth
    case fileNotFound
}

func transferFile() throws {
    
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
    do {
        try fileTransfer()
    } catch FileTransferError.noConnection {
        return("No Network Connection")
    } catch FileTransferError.lowBandwidth {
        return("File Transfer Speed too Low")
    } catch FileTransferError.fileNotFound {
        return("File not Found")
    } catch {
        return("Unknown error")
    }
    return("Successful transfer")
}

func fileTransfer() throws {
    
}
