//
//  CircleImage.swift
//  Landmarks
//
//  Created by Megan OBryan on 2/27/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("mask")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color(.white)))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
