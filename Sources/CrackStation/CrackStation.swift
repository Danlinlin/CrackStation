import Foundation
import CryptoKit

public class CrackStation: Decrypter{
    static private var plainTextPasswords: [String: String] = loadDictionaryFromDisk()
    
    required public init() {
    }

    public func decrypt(shaHash: String) -> String? {
        return Self.plainTextPasswords[shaHash]
    }
    
    static private func loadDictionaryFromDisk() -> [String : String] {
        guard let path = Bundle.module.url(forResource: "data", withExtension: "json") else { return [:] }
        do{
            let data = try Data(contentsOf: path)
            let jsonResult = try JSONSerialization.jsonObject(with: data)
            return jsonResult as? Dictionary<String, String> ?? [:]
        }catch{
            print("Error: ", error)
            return [:]
        }
    }
}
