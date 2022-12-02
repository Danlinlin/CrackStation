# CrackStation, a Decrypter implementation

A tool that can crack encrpted passwords.

## Overview

* This package is a crack station to crack different encrpted password with three division.
* More complex passwords could be cracked each version while the time complexity is O(1).
* The interest of this project is that cracking the password is progressively more difficult and you need to consider the complexity and time complexity of the password.


## Mission Statement

This package is useful for those who want to learn how to build a crack station to decrypt unsalted hashes. It's educational for hacker beginners. The purpose of this library is to deepen users' understandings of password cracking and to practice the use of Swift and Python.


## Installation

### Swift Package Manager

The [Swift Package Manager](https://www.swift.org/package-manager/) is a tool for managing the distribution of Swift code. It's integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies."

Once you have your Swift package set up, add CrackStation to the list of dependencies in your Package. swift file:
```
    dependencies: [
        .package(url: "git@github.com:Danlinlin/CrackStation.git", from: "1.3.1")
    ]
```

## Usage

### The API

~~~
static private func loadDictionaryFromDisk() -> [String : String]
~~~

* Explanation: Generate look-up Dictionary loading from Data.json file. Return an Empty Dictionary if the file can't be found or the Dictionary can't be generated. Print Error Messsage if the Dictionary can't be generated.

~~~
public func decrypt(shaHash: String) -> String?
~~~

* Explanation: Decrypt passwords with Parameter shaHash(The SHA-1 or SHA-256 digest that corresponds to the encrypted password). Return the plain-text password corresponding with shaHash or Return nil if unable to crack.


### An example

~~~
import CrackStation
let crackPassword = CrackStation().decrypt(shaHash:"f62e2ae559db0107b0a5b1f597441d0af709b3a807eb3e4f98f5e05ef2774177")
~~~

This is a example call site of the decrypt function. Create an object called crackPassword, and call the decrypt function while assigning value to shaHash using actual encrypted hash (f62e2ae559db0107b0a5b1f597441d0af709b3a807eb3e4f98f5e05ef2774177).


## Author

* Danlin Song


## Version History

* 1.3.1
    * MVP(fixed bugs)
    * See [commit change](https://github.com/Danlinlin/CrackStation/commit/0594c1d1713b23c3ce3c1369fb4e015afc74c79e)
* 1.3.0
    * MVP
    * See [commit change](https://github.com/Danlinlin/CrackStation/commit/30c09b303007fcb1823bd9d8a8f19fb4ba783749)
* 1.2.0
    * POC v2
    * See [commit change](https://github.com/Danlinlin/CrackStation/commit/04c71e7b0932acfdef13941949243bd408920101)
* 1.0.0
    * Initial Release(POC v1)
    * See [commit change](https://github.com/Danlinlin/CrackStation/commit/189224ee17e1f82884b495745c34b7175bbc34cd)
