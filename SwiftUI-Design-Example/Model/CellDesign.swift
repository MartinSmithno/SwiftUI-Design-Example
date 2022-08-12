import Foundation
import SwiftUI

struct CellDesign: View {
    var item = MenuItem()
    @State private var count: Int = 0
    
    var body: some View {
        
        GeometryReader { geometry in
            
            HStack(){
                
                Image(self.item.photo!)
                    .resizable()
                    .frame(width: 100, height: 100)
                
                VStack(alignment:.leading, spacing: 50){
                    Text(self.item.name!).bold().font(.title3)
                    Text("\(String(format: "%.2f", self.item.price!))").foregroundColor(.blue)
                }
                
                Spacer()
                
                VStack(alignment: .trailing){
                    
                    Stepper("", value: $count, in: 0...10)
                    Text("Count:  \(self.item.count + count)")
                    Spacer()
                    Text("Sum: \(Float(self.item.count + count)*(self.item.price!))")
                
                }
                
            }
        }
        
    }
}
