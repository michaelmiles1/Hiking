//
//  ContentView.swift
//  Hiking
//
//  Created by Michael Miles on 11/26/20.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = Hike.all()
    
    var body: some View {
        NavigationView {
            List(self.hikes, id: \.name) { hike in
                NavigationLink(
                    destination: HikeDetailView(hike: hike),
                    label: {
                        HikeCell(hike: hike)
                    })
            }
            .navigationBarTitle("Hikes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    
    let hike: Hike
    
    var body: some View {
        HStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 70)
            VStack(alignment: .leading) {
                Text(hike.name)
                Text(String(format: "%.1f miles", hike.miles))
            }
        }
    }
}
