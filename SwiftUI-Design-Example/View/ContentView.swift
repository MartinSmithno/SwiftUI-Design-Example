import SwiftUI

struct ContentView: View {
    
    @State var order : [Item] = []
    
    var body: some View {
        
        NavigationView(){
            
            VStack(){
                
                List(){
                    
                    Section(header:Text("to drink")){
                        
                        ForEach(items){ item in
                            if item.type == "toDrink" {
                                CellDesign(item: item).onTapGesture{
                                    order.append(item)
                                }
                            }
                        }.frame(height: 110)
                    }
                    
                    Section(header:Text("to eat")){
                        
                        ForEach(items){ item in
                            if item.type == "toEat" {
                                CellDesign(item: item).onTapGesture{
                                    order.append(item)
                                }
                            }
                        }.frame(height: 110)
                    }
                    
                    Section(header:Text("to enjoy")){
                        
                        ForEach(items){ item in
                            if item.type == "toEnjoy" {
                                CellDesign(item: item).onTapGesture{
                                    order.append(item)
                                }
                            }
                        }.frame(height: 110)
                    }
                    
                    Section(header:Text("to rest")){
                        
                        ForEach(items){ item in
                            if item.type == "toRest" {
                                CellDesign(item: item).onTapGesture{
                                    order.append(item)
                                }
                            }
                        }.frame(height: 110)
                    }
                    
                }
                
                NavigationLink(destination: OrderVC(order: self.order)) {
                    Text("ORDER")
                        .frame(minWidth: 0, maxWidth: 300)
                        .padding()
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(40)
                        .font(.title)
                }.navigationBarTitle("Menu")
            }
        }
    }
}

