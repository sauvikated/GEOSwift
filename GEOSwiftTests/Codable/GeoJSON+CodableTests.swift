import XCTest
@testable import GEOSwift

@available(iOS 11.0, *)
final class GeoJSON_CodableTests: CodableTestCase {
    func testCodableFeatureCollection() {
        verifyCodable(
            with: GeoJSON.featureCollection(.testValue),
            json: FeatureCollection.testJson)
    }

    func testCodableFeature() {
        verifyCodable(
            with: GeoJSON.feature(.testValue),
            json: Feature.testJson)
    }

    func testCodableGeometry() {
        verifyCodable(
            with: GeoJSON.geometry(.point(.testValue1)),
            json: Point.testJson1)
    }
}
