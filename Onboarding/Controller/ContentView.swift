//
//  ContentView.swift
//  Landmarks
//
//  Created by Megan OBryan on 2/27/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)

            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Alias Pseudonym")
                    .font(.title)
                    .foregroundColor(.green)
                VStack {
                    Text("Favorite Item: Dentures")
                        .font(.subheadline)
                    Spacer()
                    Text("Midwest American Accent for 4 years")
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
