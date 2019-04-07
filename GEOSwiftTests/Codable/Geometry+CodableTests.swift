import XCTest
@testable import GEOSwift

@available(iOS 11.0, *)
final class Geometry_CodableTests: CodableTestCase {
    func testCodablePoint() {
        verifyCodable(
            with: Geometry.point(.testValue1),
            json: Point.testJson1)
    }

    func testCodableMultiPoint() {
        verifyCodable(
            with: Geometry.multiPoint(.testValue),
            json: MultiPoint.testJson)
    }

    func testCodableLineString() {
        verifyCodable(
            with: Geometry.lineString(.testValue1),
            json: LineString.testJson1)
    }

    func testCodableMultiLineString() {
        verifyCodable(
            with: Geometry.multiLineString(.testValue),
            json: MultiLineString.testJson)
    }

    func testCodablePolygon() {
        verifyCodable(
            with: Geometry.polygon(.testValueWithHole),
            json: Polygon.testJsonWithHole)
    }

    func testCodableMultiPolygon() {
        verifyCodable(
            with: Geometry.multiPolygon(.testValue),
            json: MultiPolygon.testJson)
    }

    func testCodableGeometryCollection() {
        verifyCodable(
            with: Geometry.geometryCollection(.testValue),
            json: GeometryCollection.testJson)
    }
}
