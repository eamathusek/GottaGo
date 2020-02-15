import SwiftUI
import CoreLocation

struct Toilet: Hashable, Codable {    
    var id: Int
    var name: String
    var rating: Rating
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}

extension Toilet {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

struct Rating: Hashable, Codable {
    var general: Int
    var cleanliness: Int
    var location: Int
    var accessibility: Int
    var traffic: Int
    var size: Int
}
