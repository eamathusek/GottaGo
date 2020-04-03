import SwiftUI
import CoreLocation
import FirebaseDatabase

struct Toilet: Hashable, Codable, Identifiable {
    
    internal init(id: String, name: String, rating: Rating, imageName: String, coordinates: Coordinates) {
        self.id = id
        self.name = name
        self.rating = rating
        self.imageName = imageName
        self.coordinates = coordinates
    }
    
    var id: String
    var name: String
    var rating: Rating
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    init?(snapshot: DataSnapshot) {
        guard
            let value = snapshot.value as? NSDictionary,
            let name = value["name"] as? String,
            let rating = (value["rating"] as? NSDictionary),
            let generalRating = rating["general"] as? Int,
            let cleanlinessRating = rating["cleanliness"] as? Int,
            let locationRating = rating["location"] as? Int,
            let accessibilityRating = rating["accessibility"] as? Int,
            let trafficRating = rating["traffic"] as? Int,
            let sizeRating = rating["size"] as? Int,
            let imageName = value["imageName"] as? String,
            let coordinates = value["coordinates"] as? NSDictionary,
            let latitude = coordinates["latitude"] as? Double,
            let longitude = coordinates["longitude"] as? Double,
            let id = value["id"] as? String
            else {
                return nil
            }
        self.name = name
        self.rating = Rating(general: generalRating, cleanliness: cleanlinessRating, location: locationRating, accessibility: accessibilityRating, traffic: trafficRating, size: sizeRating)
        self.imageName = imageName
        self.coordinates = Coordinates(latitude: latitude, longitude: longitude)
        self.id = id
    }
    
    func toAnyObject() -> Any {
        return [
            "id" : id,
            "rating" : ["general": rating.general, "cleanliness": rating.cleanliness, "location": rating.location, "accessibility": rating.accessibility, "traffic": rating.traffic, "size": rating.size],
            "imageName" : imageName,
            "coordinates" : ["longitude": coordinates.longitude, "latitude": coordinates.latitude],
            "name" : name
        ]
    }
}

extension Toilet {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable {
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    var latitude: Double
    var longitude: Double
}

struct Rating: Hashable, Codable {
    
    init(general: Int, cleanliness: Int, location: Int, accessibility: Int, traffic: Int, size: Int) {
        self.general = general
        self.cleanliness = cleanliness
        self.location = location
        self.accessibility = accessibility
        self.traffic = traffic
        self.size = size
    }
    
    var general: Int
    var cleanliness: Int
    var location: Int
    var accessibility: Int
    var traffic: Int
    var size: Int
}



































































































































































































































































































































































































































// Hi
