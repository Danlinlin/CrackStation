import Foundation
import CryptoKit

public class CrackStation: Decrypter{
    required public init() {
        // TODO: Implement
        
    }

    public func decrypt(shaHash: String) -> String? {
        // TODO: Implement
        var plainTextPasswords: [String: String] = [:]
        //POC v1
//        let pocv1String = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
//        for char in pocv1String{
//            let str = String(char)
//            if #available(macOS 10.15, *) {
//                var encryptStr = CrackStation.encryptUsingSha1(from: str)
//                let start = encryptStr.index(encryptStr.startIndex, offsetBy: 0)
//                let end = encryptStr.index(encryptStr.startIndex, offsetBy: 12)
//                encryptStr.removeSubrange(start...end)
//                plainTextPasswords[encryptStr] = str
//            }
//        }
        do {
            try plainTextPasswords = loadDictionaryFromDisk()
        } catch let (err as NSError) {
            print(err)
        }
        print(plainTextPasswords)
        guard let crackedPassword = plainTextPasswords[shaHash] else { return nil }
        return crackedPassword
    }
    
    /// Input: a string.
    /// Output: the string encrypted using the SHA-1 algorithm.
    @available(macOS 10.15, *)
    static func encryptUsingSha1(from input: String) -> String {
        let inputData = Data(input.utf8)
        let output = Insecure.SHA1.hash(data: inputData)
        return output.description
    }
    
    func loadDictionaryFromDisk() throws -> [String : String] {
        guard let path = Bundle.module.url(forResource: "data", withExtension: "json") else { return [:] }

        let data = try Data(contentsOf: path)
        let jsonResult = try JSONSerialization.jsonObject(with: data)

        if let lookupTable: Dictionary = jsonResult as? Dictionary<String, String> {
            return lookupTable
        } else {
            return [:]
        }
    }
}
