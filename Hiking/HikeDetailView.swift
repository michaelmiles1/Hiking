//
//  HikeDetailView.swift
//  Hiking
//
//  Created by Michael Miles on 11/26/20.
//

import SwiftUI

struct HikeDetailView: View {
    
    let hike: Hike
    @State private var zoomed = false
    
    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .padding()
                .onTapGesture {
                    //withAnimation can be used without Result
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
            
            Text(hike.name)
            Text(String(format: "%.1f miles", hike.miles))
        }
        .navigationBarTitle(hike.name, displayMode: .inline)
    }
}

struct HikeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetailView(hike: Hike(name: "Gatlinburg", imageURL: "gatlinburg", miles: 3.2))
    }
}
