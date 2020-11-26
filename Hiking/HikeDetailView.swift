//
//  HikeDetailView.swift
//  Hiking
//
//  Created by Michael Miles on 11/26/20.
//

import SwiftUI

struct HikeDetailView: View {
    
    let hike: Hike
    
    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Text(hike.name)
            Text(String(format: "%.1f miles", hike.miles))
        }
    }
}

struct HikeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetailView(hike: Hike(name: "Gatlinburg", imageURL: "gatlinburg", miles: 3.2))
    }
}
