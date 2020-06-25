//
//  ContentView.swift
//  TestApp001
//
//  Created by shimalab on 2020/06/24.
//  Copyright © 2020 shimalab. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var labelText="Hello World"
    @State var flag = false
    var body: some View{
        VStack{
            Text(labelText)
                .font(.largeTitle).padding(.bottom)
        
            Button(action:{
                if(self.flag){
                    self.labelText="SwiftUI Test"
                    self.flag.toggle()
                }else{
                    self.labelText="tapped !"
                    self.flag.toggle()
                }
            }){
                Text("Button").font(.largeTitle).foregroundColor(Color.white)
                }.padding(.all).background(Color.blue).overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.blue, lineWidth: 1))
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
