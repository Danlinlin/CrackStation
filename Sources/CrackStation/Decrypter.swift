import Foundation
public protocol Decrypter {
    init()
    func decrypt(shaHash: String) -> String?
}
