import Foundation
import SwiftUI

class MenuItem: Identifiable {
    var id: String?
    var name: String?
    var photo: String?
    var price: Float?
    var type: String?
    var count: Int = 0
    
    init() {
        
    }

    init(id: String, name: String, photo: String, price: Float, type: String, count: Int) {
        self.id = id
        self.name = name
        self.photo = photo
        self.price = price
        self.type = type
        self.count = count
    }
    
}
