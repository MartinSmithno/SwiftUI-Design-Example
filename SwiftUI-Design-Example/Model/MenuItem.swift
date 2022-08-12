import Foundation
import SwiftUI

class MenuItem: Identifiable {
    var id: String?
    var name: String?
    var photo: String?
    var price: Float?
    
    init() {
        
    }
    
    init(id: String, name: String, photo: String, price: Float) {
        self.id = id
        self.name = name
        self.photo = photo
        self.price = price
    }
    
}
