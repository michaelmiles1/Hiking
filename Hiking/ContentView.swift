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
        
        List(self.hikes, id: \.name) { hike in
            Text(hike.name)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
