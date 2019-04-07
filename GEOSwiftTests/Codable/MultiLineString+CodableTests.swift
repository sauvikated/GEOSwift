import XCTest
@testable import GEOSwift

extension MultiLineString {
    static let testValue = MultiLineString(
        lineStrings: [.testValue1, .testValue5])
    static let testJson = #"{"coordinates":[[[1,2],[3,4]],[[5,6],[7,8]]],"type"#
        + #"":"MultiLineString"}"#
}

@available(iOS 11.0, *)
final class MultiLineString_CodableTests: CodableTestCase {
    func testCodable() {
        verifyCodable(
            with: MultiLineString.testValue,
            json: MultiLineString.testJson)
    }
}
