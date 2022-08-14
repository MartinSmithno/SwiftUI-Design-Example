import Foundation
import SwiftUI

struct OrderVC: View {
    
    @State var order: [MenuItem]
    
    @State var orderIsApproved: Bool = false
    @State var paymentIsApproved: Bool = false
    
    var body: some View {
        VStack(){
            
            Toggle(isOn: $orderIsApproved) {
                Text("Order Approvement")
            }.toggleStyle(CheckboxStyle())
            
            Toggle(isOn: $paymentIsApproved) {
                Text("Payment Approvement")
            }.toggleStyle(CheckboxStyle())
            
        }
    }
}
