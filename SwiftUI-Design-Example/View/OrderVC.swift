import Foundation
import SwiftUI

struct OrderVC: View {
    
    @State var order: [(item: Item, count: Int)]
    
    @State var orderIsApproved: Bool = false
    @State var paymentIsApproved: Bool = false
    
    var body: some View {
        VStack(){
            
            List(){
                
                ForEach(order){ item in
                    
                    if item.count != 0{
                        OrderCellDesign(item: item.item)
                    }
                    
                }.frame(height: 140)
                
                Toggle(isOn: $orderIsApproved) {
                    Text("Order Approvement")
                }.toggleStyle(CheckboxStyle())
                
                Toggle(isOn: $paymentIsApproved) {
                    Text("Payment Approvement")
                }.toggleStyle(CheckboxStyle())
                
            }
            
            NavigationLink(destination: OrderVC(order: order)) {
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
