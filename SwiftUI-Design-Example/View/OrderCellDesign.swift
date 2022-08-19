import SwiftUI

struct OrderCellDesign: View {
    
    var item: MenuItem = MenuItem(id: "13kadayif", name: "Kadayif", photo: "13.kadayif", price: 3.5, type: "toRest", count: 2)
    
    var body: some View {
        GeometryReader { geometry in
            
            HStack(){
                
                Image(self.item.photo!)
                    .resizable()
                    .frame(width: 100, height: 100)
                
                VStack(alignment:.leading, spacing: 40){
                    
                    Text(self.item.name!).bold().font(.title3)
                   
                    HStack(){
                        
                        Text("Count: \(self.item.count)")
                        Spacer()
                        Text("Sum: $ \(String(format: "%.2f", Float(self.item.count)*(self.item.price!)))").underline().foregroundColor(.blue)
                        
                    }
                }
            }.frame(width: geometry.size.width, height: 150)
        }
    }
}
