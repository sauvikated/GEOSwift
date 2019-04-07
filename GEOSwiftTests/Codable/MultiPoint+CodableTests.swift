import XCTest
@testable import GEOSwift

extension MultiPoint {
    static let testValue = MultiPoint(points: [.testValue1, .testValue3])
    static let testJson = #"{"coordinates":[[1,2],[3,4]],"type":"MultiPoint"}"#
}

@available(iOS 11.0, *)
final class MultiPoint_CodableTests: CodableTestCase {
    func testCodable() {
        verifyCodable(with: MultiPoint.testValue, json: MultiPoint.testJson)
    }
}
