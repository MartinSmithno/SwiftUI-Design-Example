import Foundation
import SwiftUI

struct CellDesign: View {
    var item : Item
    @State private var count: Int = 0
    
    var body: some View {
        
        GeometryReader { geometry in
            
            HStack(){
                
                Image(self.item.photo)
                    .resizable()
                    .frame(width: 100, height: 100)
                
                VStack(alignment:.leading, spacing: 40){
                    Text(self.item.name).bold().font(.title3)
                    Text("\(String(format: "%.2f", self.item.price)) $").foregroundColor(.blue)
                }
                
                Spacer()
                
                VStack(alignment: .trailing){
                    
                    Stepper("", value: $count, in: 0...10).padding(.top, 15)
                    Text("Count:  \(self.item.count + count)")
                    Spacer()
                    Text("Sum: \(String(format: "%.2f", Float(self.item.count + count)*(self.item.price)))").padding(.bottom, 15)
                
                }
                
            }.frame(width: geometry.size.width, height: 150)
        }
    }
}
