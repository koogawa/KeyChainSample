# KeyChainSample

KeyChain Sample

## Example usage:

```swift
    let int: Int = 555
    let data = Data(from: int)
    let status = KeyChain.save(key: "MyNumber", data: data)
    print("status: ", status)

    if let receivedData = KeyChain.load(key: "MyNumber") {
        let result = receivedData.to(type: Int.self)
        print("result: ", result)
    }
```
