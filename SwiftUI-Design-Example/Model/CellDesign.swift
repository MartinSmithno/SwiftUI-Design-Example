import Foundation
import SwiftUI

struct CellDesign: View {
    var item = MenuItem()
    
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
                
            }
            
            
            
            
        }
        
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        CellDesign()
    }
}
