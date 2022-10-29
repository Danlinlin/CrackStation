<h1 align="center">CrackStation</h1>

## Description
* This package is a crack station to crack different encrpted password.
* POC v1: This crack station could crack any single-character password, which (a) matches the regular expression [A-Za-z0-9] and (b) is encrypted using SHA-1.(1.0.0)
* POC v2: This crack station could crack any password up to two characters in length, which (a) matches the regular expression[A-Za-z0-9]{1,2} and (b) is encrypted using SHA-1.(1.2.0)
  

## How To Use

### Swift Package Manager
The Swift Package Manager is a tool for automating the distribution of Swift code and is integrated into the swift compiler.

Once you have your Swift package set up, adding CrackStation as a dependency is as easy as adding it to the dependencies value of your Package.swift.
```
    dependencies: [
        .package(url: "git@github.com:Danlinlin/CrackStation.git", from: "1.2.0")
    ]
```
    
## Version History

* 1.2.0
    * POC v2
    * See [commit change](https://github.com/Danlinlin/CrackStation/commit/04c71e7b0932acfdef13941949243bd408920101)
* 1.0.0
    * Initial Release(POC v1)
    * See [commit change](https://github.com/Danlinlin/CrackStation/commit/189224ee17e1f82884b495745c34b7175bbc34cd)


## Author

**Danlin Song**
- [Email](mailto:danlinsong0202@gmail.com?subject=Hi "Hi!")
