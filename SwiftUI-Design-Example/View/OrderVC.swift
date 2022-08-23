import Foundation
import SwiftUI

struct OrderVC: View {
    
    @State var order: [Item]
    
    @State var orderIsApproved: Bool = false
    @State var paymentIsApproved: Bool = false
    @State private var showingCredits = false
    
    var body: some View {
        VStack(){
            
            List(){
                ForEach(order){ item in
                    OrderCellDesign(item: item)
                }.frame(height: 140)
            }
            
            VStack(alignment: .leading){
                Toggle(isOn: $orderIsApproved) {
                    Text("Order Approvement")
                }.toggleStyle(CheckboxStyle())
                
                Toggle(isOn: $paymentIsApproved) {
                    Text("Payment Approvement")
                }.toggleStyle(CheckboxStyle())
            }
            
            NavigationLink(destination: ConfirmationVC()) {
                Text("CONFIRM")
                    .frame(minWidth: 0, maxWidth: 300)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                    .font(.title)
            }.navigationBarTitle("Order Confirmation")
        }
    }
}
