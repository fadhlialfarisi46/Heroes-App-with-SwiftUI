//
//  DetailView.swift
//  Heroes-App-with-SwiftUI
//
//  Created by muhammad.alfarisi on 28/04/23.
//

import SwiftUI

struct DetailView: View {
    
    let heroData: HeroData
    
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    AsyncImage(url: URL(string: heroData.imageAsset)) {image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(maxWidth: .infinity)
                }
                Text(heroData.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                Text(heroData.deskripsi)
                    .font(.caption)
                    .lineLimit(4)
                    .frame(alignment: .center)
                    .padding()
                NavigationLink(destination: WikipediaView(url: heroData.urlWiki)) {
                   Text("Go To Wikipedia")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                }.buttonStyle(.bordered)
                    .background(.red)
                    .padding()
            }
        }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(heroData: HeroData(id: 1, name: "Ahmad Yani", deskripsi: "Jenderal TNI Anumerta Ahmad Yani (juga dieja Achmad Yani; lahir di Purworejo, Jawa Tengah, 19 Juni 1922 – meninggal di Lubang Buaya, Jakarta, 1 Oktober 1965 pada umur 43 tahun) adalah komandan Tentara Nasional Indonesia Angkatan Darat, dan dibunuh oleh anggota Gerakan 30 September saat mencoba untuk menculik dia dari rumahnya.", imageAsset: "https://upload.wikimedia.org/wikipedia/commons/3/3f/Ahmad_Yani.jpg", urlWiki: "https://id.wikipedia.org/wiki/Ahmad_Yani"))
    }
}
