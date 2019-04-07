import XCTest
@testable import GEOSwift

final class FeatureTests: XCTestCase {
    func testInitWithGeometryPropertiesId() {
        let geometry = Geometry.point(Point(longitude: 0, latitude: 0))
        let properties = ["a": JSON.string("b")]
        let id = Feature.FeatureId.number(2)

        let feature = Feature(geometry: geometry, properties: properties, id: id)

        XCTAssertEqual(feature.geometry, geometry)
        XCTAssertEqual(feature.properties, properties)
        XCTAssertEqual(feature.id, id)
    }
}
