import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    func testCrack(){
        let encrptedPassword = "d6a6a094432de0d5077f2bcc417c723e5d69c9b7269cdc17d019b67529936c71"
        let crackPassword = CrackStation().decrypt(shaHash:encrptedPassword)
        //then
        XCTAssertEqual(crackPassword, "1?9")
    }
}
