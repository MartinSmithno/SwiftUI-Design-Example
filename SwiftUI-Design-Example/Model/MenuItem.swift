import Foundation
import SwiftUI

class MenuItem: Identifiable {
    var id: String?
    var name: String?
    var photo: String?
    var price: Float?
    var type: String?
    
    init() {
        
    }
    
    init(id: String, name: String, photo: String, price: Float, type: String) {
        self.id = id
        self.name = name
        self.photo = photo
        self.price = price
        self.type = type
    }
    
}
