// for internal use only; GeoJSON encoding & decoding helpers
extension Point: CodableGeometry {
    static let geoJSONType = GeoJSONType.point

    var coordinates: [Double] {
        return [longitude, latitude]
    }

    init(coordinates: [Double]) throws {
        guard coordinates.count >= 2 else {
            throw GEOSwiftError.invalidCoordinates
        }
        self.init(longitude: coordinates[0], latitude: coordinates[1])
    }
}
