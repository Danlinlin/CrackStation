import XCTest
@testable import CrackStation

final class CrackStationTests: XCTestCase {
    func testCrack(){
        let encrptedPassword = "f62e2ae559db0107b0a5b1f597441d0af709b3a807eb3e4f98f5e05ef2774177"
        let crackPassword = CrackStation().decrypt(shaHash:encrptedPassword)
        //then
        XCTAssertEqual(crackPassword, "?6a")
    }
}
