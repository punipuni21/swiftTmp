//
//  ContentView.swift
//  TestApp002
//
//  Created by shimalab on 2020/06/25.
//  Copyright © 2020 shimalab. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var flg=true
    @State var flg2=true
    var body: some View {
        VStack {
            if(self.flg){
                Text("Hello, World!").onTapGesture {
                    self.flg.toggle()
                }
            }else{
                Text("Tapped!").onTapGesture {
                    self.flg.toggle()
                }
            }
            
            Text("Hello World!")
                .onTapGesture(count: 2){
                    print("Tapped!")
            }
           if self.flg2 {
                Text("Hello, World!")
                    .onLongPressGesture {
                        self.flg2.toggle()
                }
            }
            else{
                Text("Hello,World!")
                    .onLongPressGesture(minimumDuration: 2.0) {
                        print("Long Press 2.0sec")
                }
            }
            Text("Hello,World!")
                .onLongPressGesture(
                    minimumDuration: 2.0,
                    maximumDistance: 1000.0,
                    pressing:{ pressing in
                        if pressing {
                            print("\(pressing)")
                        }
                        else {
                            print("\(pressing)")
                        }
                })
                {
                    print("Long Pressed")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
