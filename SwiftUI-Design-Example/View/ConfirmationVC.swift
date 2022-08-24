import Foundation
import SwiftUI

struct ConfirmationVC: View {
    var body: some View {
        
        VStack(){
            Text("Your order has been confirmed!").foregroundColor(Color("ColorGreen")).font(.largeTitle)
            Image("green-check-icon").resizable().frame(width: 200, height: 200, alignment: .center)
        }
        
    }
}
