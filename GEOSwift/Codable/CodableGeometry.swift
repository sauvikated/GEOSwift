protocol CodableGeometry: Codable {
    associatedtype Coordinates: Codable
    static var geoJSONType: GeoJSONType { get }
    var coordinates: Coordinates { get }
    init(coordinates: Coordinates) throws
}

enum CodableGeometryCodingKeys: CodingKey {
    case type
    case coordinates
}

extension CodableGeometry {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodableGeometryCodingKeys.self)
        guard case Self.geoJSONType = try container.decode(GeoJSONType.self, forKey: .type) else {
            throw GEOSwiftError.invalidGeoJSONType
        }
        try self.init(coordinates: container.decode(Coordinates.self, forKey: .coordinates))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodableGeometryCodingKeys.self)
        try container.encode(Self.geoJSONType, forKey: .type)
        try container.encode(coordinates, forKey: .coordinates)
    }
}
