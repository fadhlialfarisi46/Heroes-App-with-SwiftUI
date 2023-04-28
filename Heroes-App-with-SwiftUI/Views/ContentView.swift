//
//  ContentView.swift
//  Heroes-App-with-SwiftUI
//
//  Created by muhammad.alfarisi on 28/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.heroes) { hero in
                NavigationLink(destination: DetailView(heroData: hero)) {
                    HStack(spacing: 16) {
                        AsyncImage(url: URL(string: hero.imageAsset), scale: 3)
                            .frame(width: 100.0, height: 110.0)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.black, lineWidth: 2))
                        Text(hero.name).bold().font(.system(size: 20))
                    }
                }
            }
            .navigationBarTitle("Indonesian Heroes")
        }
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
