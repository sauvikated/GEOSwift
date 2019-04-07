import XCTest
@testable import GEOSwift

extension MultiPolygon {
    static let testValue = MultiPolygon(
        polygons: [.testValueWithHole, .testValueWithoutHole])
    static let testJson = #"{"coordinates":[[[[2,2],[-2,2],[-2,-2],[2,-2],[2,2"#
        + #"]],[[1,1],[1,-1],[-1,-1],[-1,1],[1,1]]],[[[7,2],[3,2],[3,-2],[7,-2"#
        + #"],[7,2]]]],"type":"MultiPolygon"}"#
}

@available(iOS 11.0, *)
final class MultiPolygon_CodableTests: CodableTestCase {
    func testCodable() {
        verifyCodable(with: MultiPolygon.testValue, json: MultiPolygon.testJson)
    }
}
