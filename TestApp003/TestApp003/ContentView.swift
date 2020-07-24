//
//  ContentView.swift
//  TestApp003
//
//  Created by shimalab on 2020/06/25.
//  Copyright © 2020 shimalab. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var position:CGSize=CGSize(width: 200, height: 300)
    @State var scaleValue:CGFloat=1.0
    @State var angle = Angle(degrees: 0.0)
    
    
    var drag:some Gesture{
        DragGesture().onChanged{ value in self.position = CGSize(width:value.startLocation.x+value.translation.width,height:value.startLocation.y+value.translation.height)}
            .onEnded{value in self.position = CGSize(width:value.startLocation.x+value.translation.width,height:value.startLocation.y+value.translation.height)}
        
    }

    var rotation: some Gesture {
        RotationGesture()
            .onChanged { angle in
                self.angle = angle
        }
    }
    
    var body: some View {
        VStack {
            Text("x: \(position.width)")
            Text("y: \(position.height)")
        
            Image("img-1")
                .resizable().scaleEffect(scaleValue).frame(width:200,height:300,alignment: .center)
                .position(x: position.width, y: position.height)
                .rotationEffect(self.angle)
                .gesture(drag)
                .gesture(MagnificationGesture()
                    .onChanged { value in
                        self.scaleValue = value
                    }
            ).gesture(rotation)
            /*Button(action: {
                self.scaleValue += 0.2
            }){
                Text("Button")
            }.padding(.top, 200)*/
            Text("angle: \(Int(self.angle.degrees)) degree")
        }
    }
}

struct MagnificationGestureView: View {
    
    @GestureState var magnifyBy = CGFloat(1.0)
    
    var magnification: some Gesture {
        MagnificationGesture()
            .updating($magnifyBy) { currentState, gestureState, transaction in
                gestureState = currentState
            }
    }
    
    var body: some View {
        Circle()
            .frame(width: 100 * magnifyBy,
                   height: 100 * magnifyBy,
                   alignment: .center)
            .gesture(magnification)
    }
}

struct RotationGestureView: View {
    @State var angle = Angle(degrees: 0.0)
    
    var rotation: some Gesture {
        RotationGesture()
            .onChanged { angle in
                self.angle = angle
            }
    }
    
    var body: some View {
        Rectangle()
            .frame(width: 200, height: 200, alignment: .center)
            .rotationEffect(self.angle)
            .gesture(rotation)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
