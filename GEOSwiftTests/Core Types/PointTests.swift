import XCTest
@testable import GEOSwift

final class PointTests: XCTestCase {
    func testInitWithLonLat() {
        let point = Point(longitude: 1, latitude: 2)

        XCTAssertEqual(point.longitude, 1)
        XCTAssertEqual(point.latitude, 2)
    }
}
