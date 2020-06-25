//
//  SwiftUIView.swift
//  TestApp001
//
//  Created by shimalab on 2020/06/24.
//  Copyright © 2020 shimalab. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Image("img")
        .clipShape(Circle())
        .overlay(Circle()
        .stroke(Color.gray, lineWidth: 10))
        .shadow(radius: 20)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
