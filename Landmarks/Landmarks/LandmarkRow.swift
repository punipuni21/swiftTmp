//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by shimalab on 2020/07/01.
//  Copyright © 2020 shimalab. All rights reserved.
//



import SwiftUI

struct LandmarkRow : View {
    var landmark: Landmark

    var body: some View {
        HStack { //HorizontalStack横にViewが積み上がる
            landmark.image(forSize: 50) //Landmarkから画像Viewの呼び出し
            Text(landmark.name)
        }
    }
}

#if DEBUG
import SwiftUI

struct LandmarkRow : View {
    var landmark: Landmark

    var body: some View {
        HStack { //HorizontalStack横にViewが積み上がる
            landmark.image(forSize: 50) //Landmarkから画像Viewの呼び出し
            Text(landmark.name)
        }
    }
}

#if DEBUG
struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[0]) // jsonデータから先頭データを取得
    }
}
#endif
