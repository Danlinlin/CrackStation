# crackStation
##description
* This package is a crack station to crack different encrpted password.
* POC v1: we can carck password which only contains one character[A-Za-z0-9]

## How To Use

To use this crack station, you'll need to input the password you want to decrypt in file `Tests/crackStationTests/crackStaionTests.swift` . In function `testCrack()`:
    ```
    let encrptedPassword = "<inpu the password you want to decrpt>"
    XCTAssertEqual(crackPassword, "<input the password without crypting>")
    ```

