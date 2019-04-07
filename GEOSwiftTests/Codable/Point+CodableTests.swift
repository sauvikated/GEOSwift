import XCTest
@testable import GEOSwift

extension Point {
    static let testValue1 = Point(longitude: 1, latitude: 2)
    static let testJson1 = #"{"coordinates":[1,2],"type":"Point"}"#

    static let testValue3 = Point(longitude: 3, latitude: 4)

    static let testValue5 = Point(longitude: 5, latitude: 6)

    static let testValue7 = Point(longitude: 7, latitude: 8)
}

@available(iOS 11.0, *)
final class Point_CodableTests: CodableTestCase {
    func testCodable() {
        verifyCodable(with: Point.testValue1, json: Point.testJson1)
    }
}
