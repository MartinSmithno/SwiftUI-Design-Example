import SwiftUI

struct ContentView: View {
    
    @State private var items: [MenuItem] = [MenuItem]()
    
    //We need to create array or we can create .json mock data file to feed the list
    @State var order: [MenuItem] = [MenuItem(id: "13kadayif", name: "Kadayif", photo: "13.kadayif", price: 3.5, type: "toRest", count: 0)]
    
    var body: some View {
        
        NavigationView(){
            
            List(){
                
                Section(header:Text("to drink")){
                    
                    ForEach(items){ item in
                        
                        if item.type == "toDrink" {
                            CellDesign(item: item)
                        }
    
                    }.frame(height: 150)
                }
                
                Section(header:Text("to eat")){
                    
                    ForEach(items){ item in
                        
                        if item.type == "toEat" {
                            CellDesign(item: item)
                        }
    
                    }.frame(height: 150)
                }
                
                Section(header:Text("to enjoy")){
                    
                    ForEach(items){ item in
                        
                        if item.type == "toEnjoy" {
                            CellDesign(item: item)
                        }
    
                    }.frame(height: 150)
                }
                
                Section(header:Text("to rest")){
                    
                    ForEach(items){ item in
                        
                        if item.type == "toRest" {
                            CellDesign(item: item)
                        }
    
                    }.frame(height: 150)
                }
                
                Button("ORDER", action : {
                }).buttonStyle(.borderedProminent)
                
                NavigationLink("Order Page", destination: OrderVC(order: order))
                
            }.navigationBarTitle("Menu")
        }.onAppear(){
            let item1 = MenuItem(id: "1water", name: "Water", photo: "1.water", price: 0.5, type: "toDrink", count: 0)
            let item2 = MenuItem(id: "5doner", name: "Doner", photo: "5.doner", price: 5.0, type: "toEat", count: 0)
            let item3 = MenuItem(id: "9curlyfries", name: "Curly Fries", photo: "9.curly_fries", price: 2.5, type: "toEnjoy", count: 0)
            let item4 = MenuItem(id: "13kadayif", name: "Kadayif", photo: "13.kadayif", price: 3.5, type: "toRest", count: 0)
            
            self.items.append(contentsOf: [item1, item2, item3, item4])
        }
    }
}
