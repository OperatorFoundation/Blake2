import XCTest
@testable import Blake2
import Datable

final class Blake2Tests: XCTestCase {
    func testHash()
    {
        DatableConfig.stringLiteralEncoding = .hex
        
        // From: https://github.com/BLAKE2/BLAKE2/blob/master/testvectors/blake2s-kat.txt
        let input: Data = Data(repeating: 0, count: 1)
        let key: Data = "000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f"
        let outputlen: Int = 32
        let correct: Data = "40d15fee7c328830166ac3f918650f807e7e01e177258cdc0a39b11f598066f1"

        let output = blake2Hash(input: input, key: key, outputlen: outputlen)
        print("\(input as NSData)")
        print("\(key as NSData)")
        print("\(output as NSData)")
        print("\(correct as NSData)")
        XCTAssertEqual(output, correct)
    }

    static var allTests = [
        ("testHash", testHash),
    ]
}
