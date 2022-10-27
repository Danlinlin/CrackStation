import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    func testLoadingLookupTableFromDisk() throws {
        
        //when
        let lookupTable = try CrackStation().loadDictionaryFromDisk()

        let answer = lookupTable["some_hash"]
        
        //then
        XCTAssertEqual(answer, "you got me")
    }
    
    func testCrack(){
        let encrptedPassword = "7a38d8cbd20d9932ba948efaa364bb62651d5ad4"
        let crackPassword = CrackStation().decrypt(shaHash:encrptedPassword)
        //then
        XCTAssertEqual(crackPassword, "v")
    }
}
