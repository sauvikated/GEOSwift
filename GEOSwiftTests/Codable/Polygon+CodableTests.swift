import XCTest
@testable import GEOSwift

extension Polygon.LinearRing {
    // counterclockwise
    static let testValueExterior2 = try! Polygon.LinearRing(points: [
        Point(longitude: 2, latitude: 2),
        Point(longitude: -2, latitude: 2),
        Point(longitude: -2, latitude: -2),
        Point(longitude: 2, latitude: -2),
        Point(longitude: 2, latitude: 2)])

    // clockwise
    static let testValueHole1 = try! Polygon.LinearRing(points: [
        Point(longitude: 1, latitude: 1),
        Point(longitude: 1, latitude: -1),
        Point(longitude: -1, latitude: -1),
        Point(longitude: -1, latitude: 1),
        Point(longitude: 1, latitude: 1)])

    // counterclockwise
    static let testValueExterior7 = try! Polygon.LinearRing(points: [
        Point(longitude: 7, latitude: 2),
        Point(longitude: 3, latitude: 2),
        Point(longitude: 3, latitude: -2),
        Point(longitude: 7, latitude: -2),
        Point(longitude: 7, latitude: 2)])
}

extension Polygon {
    static let testValueWithHole = Polygon(
        exterior: .testValueExterior2,
        holes: [.testValueHole1])
    static let testJsonWithHole = #"{"coordinates":[[[2,2],[-2,2],[-2,-2],[2,-"#
        + #"2],[2,2]],[[1,1],[1,-1],[-1,-1],[-1,1],[1,1]]],"type":"Polygon"}"#

    static let testValueWithoutHole = Polygon(
        exterior: .testValueExterior7,
        holes: [])
    static let testJsonWithoutHole = #"{"coordinates":[[[7,2],[3,2],[3,-2],[7,"#
        + #"-2],[7,2]]],"type":"Polygon"}"#
}

@available(iOS 11.0, *)
final class Polygon_CodableTests: CodableTestCase {
    func testCodableWithoutHoles() {
        verifyCodable(
            with: Polygon.testValueWithoutHole,
            json: Polygon.testJsonWithoutHole)
    }

    func testCodableWithHole() {
        verifyCodable(
            with: Polygon.testValueWithHole,
            json: Polygon.testJsonWithHole)
    }
}
