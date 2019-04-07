public struct LineString: Hashable {
    public let points: [Point]

    public var firstPoint: Point {
        return points[0]
    }

    public var lastPoint: Point {
        return points.last!
    }

    public init(points: [Point]) throws {
        guard points.count >= 2 else {
            throw GEOSwiftError.tooFewPoints
        }
        self.points = points
    }
}
