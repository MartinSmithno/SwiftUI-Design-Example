import Foundation
import SwiftUI

struct OrderVC: View {
    
    @State var order: [Item]
    @State var checkList: [Item] = []
    @State var paymentIsApproved: Bool = false
    @State var totalPayment: Float = 0.0
    
    var body: some View {
        VStack(){
            
            List(){
                ForEach(order){ item in
                    OrderCellDesign(item: item).frame(height: 50)
                }.onDelete(perform: deleteFromOrderList)
            }
            
            HStack(){
                Text("Sum:").font(.title3)
                Spacer()
                Text("\(String(format: "%.2f", totalPayment)) $").foregroundColor(.blue).underline().font(.title3)
            }.padding(.horizontal, 20)
            
            Toggle(isOn: $paymentIsApproved) {
                Text("Payment Approvement").font(.title3)
            }.toggleStyle(CheckboxStyle())
            
            NavigationLink(destination: ConfirmationVC()) {
                Text("CONFIRM")
                    .frame(minWidth: 0, maxWidth: 300)
                    .padding()
                    .foregroundColor(.white)
                    .background(paymentIsApproved ? LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing) : LinearGradient(gradient: Gradient(colors: [Color.white, Color.green]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                    .font(.title)
            }.navigationBarTitle("Order Confirmation")
        }.onAppear{
            for item in order {
                totalPayment += item.price
            }
        }
    }
    
    func deleteFromOrderList(at offsets : IndexSet){
        self.order.remove(atOffsets: offsets)
    }
}
