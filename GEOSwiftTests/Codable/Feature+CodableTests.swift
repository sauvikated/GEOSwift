import XCTest
@testable import GEOSwift

extension Feature {
    static let testValue = Feature(
        geometry: .point(.testValue1),
        properties: ["a": .string("b")],
        id: .number(0))
    static let testJson = #"{"geometry":\#(Point.testJson1),"id":0,"properties"#
        + #"":{"a":"b"},"type":"Feature"}"#
    static let testValueWithNils = Feature(
        geometry: nil,
        properties: nil,
        id: nil)
    static let testJsonWithNils = #"{"geometry":null,"properties":null,"type":"#
        + #""Feature"}"#
}

@available(iOS 11.0, *)
final class Feature_CodableTests: CodableTestCase {
    func testCodable() {
        verifyCodable(
            with: Feature.testValue,
            json: Feature.testJson)
    }

    func testCodableWithNils() {
        verifyCodable(
            with: Feature.testValueWithNils,
            json: Feature.testJsonWithNils)
    }
}
