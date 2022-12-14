import Foundation
import SwiftUI

struct CellDesign: View {
    @State var item : Item
    @State private var count: Int = 0
    
    var body: some View {
        
        GeometryReader { geometry in
            
            HStack(){
                
                Image(self.item.photo)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
                
                VStack(alignment:.leading, spacing: 40){
                    Text(self.item.name).bold().font(.title3)
                    Text("\(String(format: "%.2f", self.item.price)) $").foregroundColor(.blue)
                }
                Spacer()
            }.frame(width: geometry.size.width, height: 110)
        }
    }
}
