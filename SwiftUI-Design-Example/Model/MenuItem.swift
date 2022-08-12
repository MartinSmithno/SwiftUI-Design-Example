import Foundation
import SwiftUI

class MenuItem: Identifiable {
    var id: String?
    var name: String?
    var photo: String?
    var price: Float?
    var count: Int = 0
    
    init() {
        
    }
    
    init(id: String, name: String, photo: String, price: Float, count: Int) {
        self.id = id
        self.name = name
        self.photo = photo
        self.price = price
        self.count = count
    }
    
}
