import XCTest
@testable import GEOSwift

extension FeatureCollection {
    static let testValue = FeatureCollection(
        features: [.testValue, .testValueWithNils])
    static let testJson = #"{"features":[\#(Feature.testJson),"#
        + #"\#(Feature.testJsonWithNils)],"type":"FeatureCollection"}"#
}

@available(iOS 11.0, *)
final class FeatureCollection_CodableTests: CodableTestCase {
    func testCodable() {
        verifyCodable(
            with: FeatureCollection.testValue,
            json: FeatureCollection.testJson)
    }
}
