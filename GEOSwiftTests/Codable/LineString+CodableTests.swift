import XCTest
@testable import GEOSwift

extension LineString {
    static let testValue1 = try! LineString(points: [.testValue1, .testValue3])
    static let testJson1 = #"{"coordinates":[[1,2],[3,4]],"type":"LineString"}"#

    static let testValue5 = try! LineString(points: [.testValue5, .testValue7])
}

@available(iOS 11.0, *)
final class LineString_CodableTests: CodableTestCase {
    func testCodable() {
        verifyCodable(with: LineString.testValue1, json: LineString.testJson1)
    }
}
