import SwiftUI

struct OrderCellDesign: View {
    
    var item: Item
    
    var body: some View {
        GeometryReader { geometry in
            
            HStack(){
                
                Image(self.item.photo)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(10)
                Text(self.item.name).bold().font(.body)
                Spacer()
                Text("\(String(format: "%.2f", self.item.price)) $").font(.body).foregroundColor(.blue).underline()
                
            }.frame(width: geometry.size.width, height: 50)
        }
    }
}
