import Foundation
import SwiftUI

struct Item: Identifiable, Decodable {
    
    var id: String
    var name: String
    var photo: String
    var price: Float
    var type: String
    var count: Int
    
}
