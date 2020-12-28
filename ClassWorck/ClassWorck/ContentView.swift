//
//  ContentView.swift
//  ClassWorck
//
//  Created by Hanan Dashti on 28/12/2020.
//

import SwiftUI

struct ContentView: View {
    @State var h: String = ""
    @State var w: String = ""
    @State var Bm: String = ""
    var body: some View {
        VStack{
        Text("calculat the BMI")
            TextField("the length in meter", text: $h)
            TextField("the weight in KG", text: $w)
            
            Button("Calculate"){
                
                let he = Double(h) ?? 1
                let  we = Double(w) ?? 1
                
                Bm = String(we / (he * he))
                
            }
              Text(Bm)
          
           
            
        }
        
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

